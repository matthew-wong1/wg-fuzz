struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 26>;

var<private> global2: i32 = 20065i;

var<private> global3: vec4<f32> = vec4<f32>(-1518f, 136f, -351f, -738f);

var<private> global4: array<bool, 17> = array<bool, 17>(false, false, false, true, false, true, false, false, false, false, true, true, true, false, false, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    global0 = 16272u;
    var var_0 = select(select(select(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 17u)], true)), select(!vec3<bool>(true, false, global4[_wgslsmith_index_u32(15414u, 17u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], false), select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 17u)], global4[_wgslsmith_index_u32(22638u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 17u)], global4[_wgslsmith_index_u32(0u, 17u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)], false, global4[_wgslsmith_index_u32(77313u, 17u)]))), all(vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], false, global4[_wgslsmith_index_u32(4294967295u, 17u)])) || true), select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(0u, 17u)], false), select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 17u)], global4[_wgslsmith_index_u32(u_input.d, 17u)], false), vec3<bool>(global4[_wgslsmith_index_u32(10602u, 17u)], global4[_wgslsmith_index_u32(0u, 17u)], true), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], true)), true), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 17u)], false), vec3<bool>(global4[_wgslsmith_index_u32(0u, 17u)], false, false), global4[_wgslsmith_index_u32(0u, 17u)]), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), global4[_wgslsmith_index_u32(~(u_input.e.x << (~u_input.e.x % 32u)), 17u)]), vec3<bool>(false, any(select(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.e.x, 17u)], true, false), !vec3<bool>(global4[_wgslsmith_index_u32(44206u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], false), !vec3<bool>(global4[_wgslsmith_index_u32(22519u, 17u)], false, false))), false), false);
    var var_1 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e >> (u_input.e % vec2<u32>(32u)), vec2<u32>(u_input.e.x, 16856u)), 1u));
    let var_2 = _wgslsmith_dot_vec3_u32(~max(abs(vec3<u32>(0u, u_input.d, 12662u)), ~vec3<u32>(var_1.x, var_1.x, u_input.e.x)) ^ vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(1u, u_input.e.x, 6775u)), _wgslsmith_add_u32(1u << (u_input.d % 32u), _wgslsmith_sub_u32(0u, 0u)), abs(min(var_1.x, u_input.d))), ~(~max(~vec3<u32>(56476u, 1u, u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, u_input.d, u_input.e.x), vec3<u32>(u_input.e.x, 19378u, 17624u)))));
    let var_3 = !var_0.x;
    return vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.x, -342f, var_0.x)), 2029f)), global3.x, global3.x, _wgslsmith_f_op_f32(min(1180f, 810f)));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 962f) + vec4<f32>(-890f, global3.x, -651f, arg_0.b.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(319f, global3.x, arg_0.b.x, -1227f) + vec4<f32>(616f, global3.x, global3.x, 518f))))) - vec4<f32>(global3.x, global3.x, -405f, _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, -263f))));
    global4 = array<bool, 17>();
    let var_0 = Struct_1(countOneBits(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.c, u_input.b.x, 39118i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 26u)], arg_0.a.x, 41568i), arg_0.a)) << (vec3<u32>(~arg_0.d.x, arg_0.d.x, 29749u) % vec3<u32>(32u))), arg_0.b, select(!(!select(vec3<bool>(global4[_wgslsmith_index_u32(12965u, 17u)], false, arg_0.c.x), arg_0.c, true)), select(!vec3<bool>(arg_0.c.x, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], false), vec3<bool>(!arg_0.c.x, false, arg_0.a.x != 1i), arg_0.c), arg_0.c), ~vec3<u32>(~31006u, 9783u, _wgslsmith_dot_vec2_u32(arg_0.d.xy ^ vec2<u32>(u_input.e.x, arg_0.d.x), min(arg_0.d.xx, vec2<u32>(arg_0.d.x, arg_0.d.x)))));
    global4 = array<bool, 17>();
    let var_1 = abs(~max(4294967295u, _wgslsmith_div_u32(arg_0.d.x, u_input.d))) ^ 81525u;
    return arg_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.d, 26u)];
    let var_1 = abs(global1[_wgslsmith_index_u32(u_input.d >> (51119u % 32u), 26u)]) | global1[_wgslsmith_index_u32(4294967295u, 26u)];
    global2 = u_input.a.x;
    var var_2 = Struct_1(select(_wgslsmith_add_vec3_i32(vec3<i32>(min(-2147483647i, 0i), -28874i, global1[_wgslsmith_index_u32(~u_input.d, 26u)]), vec3<i32>(-var_1, _wgslsmith_clamp_i32(23860i, var_1, u_input.b.x), 0i)), countOneBits(func_2(Struct_1(vec3<i32>(2147483647i, u_input.c, -1i), vec3<f32>(-1081f, global3.x, global3.x), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], true), vec3<u32>(84891u, u_input.e.x, u_input.e.x))) | _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, 0i, var_1), vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.d, 26u)], global1[_wgslsmith_index_u32(u_input.e.x, 26u)]))), vec3<bool>(false, true, true)), global3.yww, vec3<bool>(any(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 17u)], global4[_wgslsmith_index_u32(30165u, 17u)], false, true), !vec4<bool>(false, global4[_wgslsmith_index_u32(80958u, 17u)], false, false), select(vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.e.x, 17u)], true, global4[_wgslsmith_index_u32(u_input.e.x, 17u)]), vec4<bool>(global4[_wgslsmith_index_u32(0u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)], global4[_wgslsmith_index_u32(0u, 17u)], global4[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 17u)], false, global4[_wgslsmith_index_u32(u_input.d, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)])))), global3.x >= _wgslsmith_f_op_f32(-1144f + 1611f), true), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d, _wgslsmith_mod_u32(u_input.d, 71294u)), select(firstTrailingBit(vec3<u32>(83918u, 0u, 21488u)), vec3<u32>(4979u, u_input.e.x, 14200u), !vec3<bool>(true, global4[_wgslsmith_index_u32(27705u, 17u)], global4[_wgslsmith_index_u32(u_input.e.x, 17u)])), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.e.x, 56167u, 4294967295u)), abs(vec3<u32>(u_input.e.x, u_input.d, u_input.d)))));
    let var_3 = Struct_1(vec3<i32>(-var_1, -firstLeadingBit(32195i), -_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, var_2.a.x), 1i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-622f, -517f, global3.x)))) + _wgslsmith_f_op_vec3_f32(-global3.zyy)))), select(select(var_2.c, vec3<bool>(all(var_2.c.xy), !global4[_wgslsmith_index_u32(u_input.e.x, 17u)], false), vec3<bool>(var_2.c.x, var_2.c.x, false)), !(!var_2.c), !(!(!vec3<bool>(true, global4[_wgslsmith_index_u32(var_2.d.x, 17u)], true)))), max(abs(vec3<u32>(4294967295u & var_2.d.x, u_input.e.x, var_2.d.x)), vec3<u32>(_wgslsmith_mod_u32(35929u, 22586u), ~_wgslsmith_add_u32(19797u, var_2.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.e.x) << (var_2.d % vec3<u32>(32u)), var_2.d))));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    global1 = array<i32, 26>();
    let var_0 = -2147483647i;
    var var_1 = Struct_2(func_1(), arg_0.a, func_1(), vec4<i32>(var_0, 0i, _wgslsmith_add_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.e.x, 26u)], _wgslsmith_dot_vec4_i32(arg_0.d, vec4<i32>(-1i, 2147483647i, u_input.c, 0i))), -2147483647i), 83i), func_1());
    let var_2 = var_1.c.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(global3.x + arg_0.c.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(113f, arg_0.b.b.x)) * var_1.b.b.x)), _wgslsmith_f_op_f32(abs(arg_0.a.b.x))) - _wgslsmith_f_op_vec3_f32(arg_0.a.b - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * arg_0.b.b.x)), 972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1780f)) * 2675f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(), func_1(), func_1(), (-vec4<i32>(u_input.c, -1i, -2147483647i, global1[_wgslsmith_index_u32(1u, 26u)]) & (vec4<i32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d, 26u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.d, 26u)]) & vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.e.x, 26u)], global1[_wgslsmith_index_u32(u_input.d, 26u)], -1i))) | firstLeadingBit(-vec4<i32>(-20354i, 0i, global1[_wgslsmith_index_u32(u_input.d, 26u)], u_input.c)), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.b.x), ~vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.d, 26u)], -21780i)), _wgslsmith_f_op_vec3_f32(max(global3.zwx, vec3<f32>(-393f, global3.x, global3.x))), !func_1().c, _wgslsmith_mult_vec3_u32(vec3<u32>(90732u, 60843u, 1u) | vec3<u32>(u_input.e.x, 0u, u_input.d), vec3<u32>(1u, 1u, 32765u)))), _wgslsmith_div_f32(-352f, _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(abs(-681f))))), !(!vec2<bool>(any(vec3<bool>(false, global4[_wgslsmith_index_u32(42486u, 17u)], global4[_wgslsmith_index_u32(u_input.d, 17u)])), true)));
    let var_1 = Struct_1(~(-var_0.c.a << (~var_0.b.d % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -340f), -492f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(167f, var_0.a.b.x, 307f) - vec3<f32>(var_0.b.b.x, -1653f, -1291f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.x, global3.x, var_0.a.b.x))))), func_1().c, var_0.b.d);
    let var_2 = Struct_2(func_1(), func_4(func_4(func_4(Struct_2(Struct_1(vec3<i32>(-1065i, u_input.c, -14173i), vec3<f32>(752f, 1000f, -357f), vec3<bool>(true, true, global4[_wgslsmith_index_u32(38471u, 17u)]), vec3<u32>(56235u, 0u, 41646u)), var_1, Struct_1(var_0.b.a, vec3<f32>(835f, -1051f, 442f), var_0.c.c, var_1.d), var_0.d, Struct_1(vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 26u)], var_0.c.a.x), vec3<f32>(global3.x, -1891f, 618f), var_0.e.c, var_0.e.d)), var_1.b.x, !var_1.c.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1343f - var_1.b.x)), !(!var_0.a.c.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(sign(var_0.e.b.x)))) * 1406f), var_0.c.c.yx).a, func_4(func_4(Struct_2(var_1, var_1, var_0.a, -var_0.d, Struct_1(vec3<i32>(1i, -2147483647i, 1i), vec3<f32>(789f, global3.x, var_1.b.x), vec3<bool>(var_1.c.x, true, false), var_1.d)), _wgslsmith_f_op_f32(-global3.x), func_1().c.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2430f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1406f * -926f), _wgslsmith_f_op_f32(1355f + 217f))), !select(!vec2<bool>(var_0.a.c.x, var_1.c.x), vec2<bool>(var_0.c.c.x, global4[_wgslsmith_index_u32(u_input.d, 17u)]), all(vec2<bool>(true, var_1.c.x)))).e, var_0.d, func_4(func_4(func_4(Struct_2(Struct_1(var_1.a, vec3<f32>(1709f, 1109f, 636f), var_1.c, var_1.d), var_1, Struct_1(vec3<i32>(u_input.c, var_1.a.x, -26551i), var_0.a.b, vec3<bool>(true, true, global4[_wgslsmith_index_u32(40187u, 17u)]), var_1.d), vec4<i32>(17226i, global1[_wgslsmith_index_u32(u_input.d, 26u)], var_1.a.x, 0i), var_0.c), _wgslsmith_f_op_f32(ceil(var_0.b.b.x)), select(var_1.c.xz, var_1.c.xy, true)), var_0.e.b.x, vec2<bool>(true, false & var_1.c.x)), 541f, var_0.c.c.zx).b);
    global3 = vec4<f32>(-1018f, var_2.e.b.x, var_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1528f * -446f) + var_2.c.b.x));
    global4 = array<bool, 17>();
    global1 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e.b.yz * vec2<f32>(856f, var_0.b.b.x))))), var_1.a.x, func_2(var_2.b).x);
}

