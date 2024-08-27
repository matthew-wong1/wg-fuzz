struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<bool>(true, true, false), vec2<bool>(true, true), vec4<u32>(0u, 0u, 33666u, 4294967295u)), Struct_3(vec3<bool>(true, false, true), vec2<bool>(false, true), vec4<u32>(40640u, 0u, 109473u, 4294967295u)), Struct_3(vec3<bool>(true, false, true), vec2<bool>(false, false), vec4<u32>(4294967295u, 15520u, 4294967295u, 0u)), Struct_3(vec3<bool>(false, true, true), vec2<bool>(false, true), vec4<u32>(3003u, 43423u, 18911u, 17198u)), Struct_3(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_3(vec3<bool>(false, false, true), vec2<bool>(false, true), vec4<u32>(12068u, 0u, 0u, 58058u)), Struct_3(vec3<bool>(true, false, true), vec2<bool>(false, true), vec4<u32>(0u, 30729u, 4294967295u, 25550u)), Struct_3(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<u32>(1u, 6889u, 77793u, 1u)), Struct_3(vec3<bool>(false, true, true), vec2<bool>(true, true), vec4<u32>(2658u, 0u, 78026u, 14915u)), Struct_3(vec3<bool>(false, true, false), vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_3(vec3<bool>(false, true, true), vec2<bool>(true, false), vec4<u32>(1u, 29815u, 65964u, 4294967295u)), Struct_3(vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<u32>(26329u, 4294967295u, 0u, 24009u)), Struct_3(vec3<bool>(true, false, false), vec2<bool>(true, false), vec4<u32>(1u, 2384u, 0u, 1u)), Struct_3(vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<u32>(77802u, 79747u, 28453u, 18952u)), Struct_3(vec3<bool>(true, false, true), vec2<bool>(false, true), vec4<u32>(4294967295u, 4294967295u, 28703u, 110289u)), Struct_3(vec3<bool>(true, false, false), vec2<bool>(true, true), vec4<u32>(33205u, 28676u, 0u, 54686u)), Struct_3(vec3<bool>(false, true, false), vec2<bool>(true, false), vec4<u32>(997u, 4294967295u, 17973u, 26923u)), Struct_3(vec3<bool>(false, true, false), vec2<bool>(false, true), vec4<u32>(6722u, 1u, 1u, 0u)), Struct_3(vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<u32>(4294967295u, 25925u, 1u, 1u)), Struct_3(vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u)), Struct_3(vec3<bool>(false, true, true), vec2<bool>(true, true), vec4<u32>(4294967295u, 12715u, 4294967295u, 32617u)), Struct_3(vec3<bool>(false, false, false), vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_3(vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<u32>(4294967295u, 73355u, 4294967295u, 9270u)), Struct_3(vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<u32>(12093u, 49038u, 92325u, 8035u)), Struct_3(vec3<bool>(true, false, true), vec2<bool>(true, false), vec4<u32>(21975u, 26077u, 52060u, 0u)), Struct_3(vec3<bool>(true, false, false), vec2<bool>(true, false), vec4<u32>(16576u, 1u, 1u, 21793u)));

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(1u, 60171u, 4294967295u), 1i, 2147483647i);

var<private> global4: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(4294967295u, 6809u), vec2<u32>(26484u, 46083u), vec2<u32>(26934u, 0u), vec2<u32>(50329u, 22203u), vec2<u32>(25432u, 1u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    global3 = Struct_1(vec3<u32>(40914u, _wgslsmith_mod_u32(1u, max(arg_1.a.x >> (60028u % 32u), ~arg_1.a.x)), countOneBits(30912u >> (global3.a.x % 32u))), arg_1.b, u_input.a);
    let var_0 = Struct_3(vec3<bool>(true, !(any(vec4<bool>(false, false, true, true)) != any(vec4<bool>(false, false, true, true))), true), vec2<bool>(true, false), ~vec4<u32>(~67208u, ~81801u, arg_1.a.x, ~arg_1.a.x << ((0u & global3.a.x) % 32u)));
    let var_1 = (~(~global3.c) << (global3.a.x % 32u)) << (~(~arg_1.a.x) % 32u);
    var var_2 = global1[_wgslsmith_index_u32(~global3.a.x ^ firstTrailingBit(~select(max(0u, global3.a.x), min(arg_1.a.x, var_0.c.x), var_0.b.x)), 26u)];
    let var_3 = -1i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_2, arg_2) + vec4<f32>(arg_2, arg_2, arg_0, 972f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1836f, arg_2, 1573f, -223f))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, -679f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_2)), -3185f))), 926f, arg_0));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.a, arg_1.a, 1338f, arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, -1337f, -1706f, arg_1.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-204f, Struct_1(arg_1.b.c.xxy, 14014i, arg_0), -124f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(-2170f * arg_1.a), _wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, -387f, arg_1.a)) * vec4<f32>(arg_1.a, 1767f, arg_1.a, arg_1.a))))));
    var var_1 = 20257u;
    global0 = _wgslsmith_dot_vec3_u32(arg_1.c.c.xxy << ((~(~arg_1.b.c.ywy) >> (vec3<u32>(countOneBits(57496u), ~arg_1.c.c.x, 13018u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(global3.a.x, arg_1.c.c.x, global3.a.x), arg_1.b.c.x | 1u, 30147u), vec3<u32>(reverseBits(global3.a.x), max(18033u, 72147u), global3.a.x))));
    var var_2 = _wgslsmith_add_vec2_u32(arg_1.b.c.yx, vec2<u32>(countOneBits(arg_1.c.c.x), global3.a.x));
    var var_3 = ~(~select(0i, min(~arg_0, arg_2), true));
    return Struct_1(arg_1.b.c.xwx, 11070i, -(~(-6765i)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    global0 = arg_2.a.x;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(735f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 1669f), _wgslsmith_f_op_f32(f32(-1f) * -452f))), arg_1);
    var var_1 = arg_1 >= _wgslsmith_f_op_f32(-739f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1602f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(503f)))));
    let var_2 = 0i;
    let var_3 = _wgslsmith_add_i32(u_input.a, ~(-global3.c) & 1i) != _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-2147483647i, var_2), max(min(29605i, -13513i) << (func_2(-2147483647i, Struct_4(var_0.x, Struct_3(vec3<bool>(false, false, true), vec2<bool>(true, false), vec4<u32>(arg_0.a.x, arg_0.a.x, 0u, arg_2.a.x)), global1[_wgslsmith_index_u32(global3.a.x, 26u)], vec3<i32>(u_input.a, global3.c, 2147483647i)), var_2).a.x % 32u), 1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global3.b), vec2<i32>(u_input.a, u_input.a)), var_2) ^ ~(~18278i));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(trunc(var_0.x)), func_2(-2147483647i, Struct_4(-713f, Struct_3(vec3<bool>(var_3, var_3, var_3), vec2<bool>(false, false), vec4<u32>(5008u, 4294967295u, 0u, 38325u)), Struct_3(vec3<bool>(false, var_3, false), vec2<bool>(false, true), vec4<u32>(global3.a.x, 4294967295u, arg_0.a.x, arg_0.a.x)), vec3<i32>(arg_0.c, arg_2.b, arg_0.b)), 0i), arg_1)).x, -355f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1727f, -897f), vec2<f32>(-1238f, 406f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, -133f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_1 - arg_1)), select(select(vec2<bool>(false, true), vec2<bool>(var_3, true), vec2<bool>(false, var_3)), vec2<bool>(true, true), any(vec2<bool>(var_3, true))))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3) -> StorageBuffer {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -761f))));
    global1 = array<Struct_3, 26>();
    var var_1 = ~countOneBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(-43902i, global3.c, 160i) & vec3<i32>(-1i, arg_1.c, global3.c), firstLeadingBit(vec3<i32>(15621i, 15312i, 1i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_4(func_2(global3.b, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1791f), Struct_3(select(arg_2.a, vec3<bool>(arg_2.a.x, arg_2.b.x, arg_2.b.x), vec3<bool>(arg_2.a.x, arg_2.b.x, true)), vec2<bool>(arg_2.b.x, arg_2.a.x), arg_2.c ^ vec4<u32>(arg_1.a.x, global3.a.x, 52120u, 33171u)), arg_2, vec3<i32>(firstLeadingBit(u_input.a), -29677i, -1i | var_1.x)), arg_1.c), var_0.x, func_2(~arg_1.c, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-788f)), arg_0.x), Struct_3(select(arg_2.a, arg_2.a, arg_2.a), select(arg_2.b, arg_2.b, arg_2.a.x), _wgslsmith_sub_vec4_u32(arg_2.c, arg_2.c)), arg_2, vec3<i32>(-23016i, -2147483647i, _wgslsmith_add_i32(40496i, var_1.x))), 81447i))).x;
    var var_3 = select(vec2<bool>(true, !select(all(vec2<bool>(arg_2.a.x, arg_2.a.x)), false, arg_2.a.x)), !(!(!arg_2.a.zz)), min(_wgslsmith_mult_i32(-38591i, _wgslsmith_div_i32(global3.c, 0i)), abs(firstTrailingBit(global3.c))) == _wgslsmith_mod_i32(68588i, arg_1.b >> (~1u % 32u)));
    return StorageBuffer(u_input.a);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> StorageBuffer {
    var var_0 = ~(~global3.a.x);
    return func_5(_wgslsmith_f_op_vec2_f32(func_4(func_2(u_input.a, Struct_4(-1053f, global1[_wgslsmith_index_u32(arg_1.x, 26u)], global1[_wgslsmith_index_u32(27250u, 26u)], _wgslsmith_mod_vec3_i32(vec3<i32>(global3.c, global3.b, 20025i), vec3<i32>(u_input.a, 14294i, global3.c))), 1i), arg_0, Struct_1(firstLeadingBit(~global3.a), max(global3.c & u_input.a, i32(-1i) * -1i), global3.c))), Struct_1(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(18080u, 4530u, 1u)), ~vec3<u32>(21383u, arg_1.x, 46982u), max(global3.a, global3.a) | ~arg_1), 59647i, 21364i), global1[_wgslsmith_index_u32(~global3.a.x, 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-1289f, global3.a);
}

