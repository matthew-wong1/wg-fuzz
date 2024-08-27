struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false));

var<private> global1: vec3<u32> = vec3<u32>(24462u, 1u, 37572u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_f32(1485f, _wgslsmith_f_op_f32(select(arg_1.x, 674f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(426f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * 1000f) + _wgslsmith_f_op_f32(abs(var_0.a)))), false);
    var var_2 = ~(~vec3<i32>(arg_0.x >> (33648u % 32u), abs(i32(-1i) * -3154i), firstTrailingBit(arg_0.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(-1179f)), -620f);
    let var_4 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(0u) ^ abs(u_input.b.x), global1.x), u_input.b), _wgslsmith_div_vec3_i32(-firstTrailingBit(arg_0), -abs(arg_0)) << (~vec3<u32>(global1.x, 90327u, u_input.a.x) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - 1340f) - var_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(959f, arg_1.x))), true));
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> vec3<u32> {
    global1 = arg_1;
    global1 = vec3<u32>(global1.x, ~(~(~arg_1.x)), _wgslsmith_clamp_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, global1.x), _wgslsmith_sub_u32(0u, global1.x))), 35677u, 17622u));
    global1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 3334u), _wgslsmith_mult_vec3_u32(vec3<u32>(51956u, u_input.b.x, u_input.a.x), arg_1)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), abs(arg_1))) ^ vec3<u32>(40783u, _wgslsmith_mod_u32(1u << (1u % 32u), global1.x), arg_0);
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(52001u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 45365u, 14112u), vec3<u32>(47747u, global1.x, global1.x)), select(arg_1.x, 26795u, arg_2), arg_1.x), ~vec4<u32>(24113u, u_input.b.x, u_input.b.x, 17546u)), _wgslsmith_clamp_u32(arg_0, arg_1.x, reverseBits(arg_1.x & global1.x)), 4294967295u), ~(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) << (_wgslsmith_clamp_vec3_u32(~arg_1, vec3<u32>(u_input.b.x, 4294967295u, 106800u), arg_1 ^ vec3<u32>(0u, arg_1.x, global1.x)) % vec3<u32>(32u))));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1211f, 1839f))) + -844f))), false);
    var var_1 = _wgslsmith_div_i32(i32(-1i) * -37422i, i32(-1i) * -2147483647i);
    global1 = firstLeadingBit(func_4(~(_wgslsmith_mod_u32(global1.x, 1u) & abs(59232u)), ~vec3<u32>(1u, 29975u, u_input.b.x) & firstLeadingBit(vec3<u32>(u_input.b.x, 64863u, 1u) | vec3<u32>(4294967295u, global1.x, 13176u)), func_3(vec3<i32>(-1i, 2147483647i, select(0i, 0i, true)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1719f, var_0.a))))))));
    let var_2 = (_wgslsmith_dot_vec2_i32(-min(vec2<i32>(27191i, -2147483647i), vec2<i32>(-1i, 2147483647i)), max(firstTrailingBit(vec2<i32>(-20060i, 43512i)), vec2<i32>(20880i, 12127i))) ^ -33909i) >> (firstLeadingBit(27289u) % 32u);
    var_1 = 0i;
    return _wgslsmith_f_op_f32(exp2(var_0.a));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(13305u, 26u)], false);
    let var_1 = arg_1.c.a;
    var_0 = global0[_wgslsmith_index_u32(1u, 26u)];
    let var_2 = Struct_2(reverseBits(~_wgslsmith_clamp_vec2_u32(global1.zx, _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, arg_1.a.x)), func_4(1u, vec3<u32>(u_input.b.x, arg_1.a.x, arg_1.a.x), arg_0.x).yz)), -_wgslsmith_add_vec3_i32(~(vec3<i32>(arg_1.b.x, -1i, 0i) & vec3<i32>(-6053i, -1i, -1i)), abs(~vec3<i32>(arg_1.b.x, arg_1.b.x, arg_1.b.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, -1457f)), arg_1.c.b));
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    return arg_1;
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = 13623u;
    var_0 = firstLeadingBit(~(21360u | global1.x));
    global1 = func_4(min(54582u, 1u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.x, 4294967295u, global1.x, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, 40738u) << (vec4<u32>(arg_3.x, arg_1.a.x, global1.x, global1.x) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(11155u, 16404u)), func_4(~global1.x, _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 72990u, arg_1.a.x), vec3<u32>(4294967295u, 71690u, 4294967295u)), all(arg_0)).x) & (vec3<u32>(arg_1.a.x, global1.x, _wgslsmith_mod_u32(4294967295u, 47528u)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(global1.x, 1627u, global1.x), vec3<u32>(1u, arg_1.a.x, arg_3.x))), select(!(arg_1.b.x < _wgslsmith_add_i32(arg_1.b.x, arg_1.b.x)), any(global0[_wgslsmith_index_u32(~1u, 26u)]) || true, arg_1.c.b));
    global0 = array<vec4<bool>, 26>();
    global0 = array<vec4<bool>, 26>();
    return func_5(vec2<bool>(all(select(select(vec3<bool>(arg_1.c.b, true, true), vec3<bool>(false, true, arg_1.c.b), false), select(vec3<bool>(arg_1.c.b, arg_1.c.b, arg_1.c.b), vec3<bool>(arg_0.x, false, false), vec3<bool>(false, false, arg_1.c.b)), arg_1.c.b)), 486f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.a * arg_1.c.a), _wgslsmith_f_op_f32(560f - 788f)))), func_5(select(vec2<bool>(-493f <= arg_1.c.a, arg_0.x), arg_0, select(select(arg_0, arg_0, arg_0), arg_0, true)), Struct_2(vec2<u32>(arg_3.x, u_input.a.x) ^ (global1.xy ^ arg_1.a), -vec3<i32>(37518i, arg_2.x, 1i) | -arg_1.b, arg_1.c))).c;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(vec2<u32>(firstLeadingBit(4294967295u), _wgslsmith_div_u32(_wgslsmith_sub_u32(0u ^ u_input.a.x, 1u), u_input.b.x & global1.x)), countOneBits(~_wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, 32298i, -1625i)), _wgslsmith_div_vec3_i32(vec3<i32>(3550i, -2331i, 25071i), vec3<i32>(1i, 2147483647i, 2147483647i)))), Struct_1(-1793f, all(vec4<bool>(true, true, true, true))));
    var var_1 = vec2<bool>(1i > firstLeadingBit(countOneBits(_wgslsmith_mult_i32(0i, var_0.b.x))), false);
    var var_2 = func_6(vec2<bool>(any(!(!vec2<bool>(var_0.c.b, false))), true), func_5(vec2<bool>(any(!vec4<bool>(var_0.c.b, var_0.c.b, false, var_0.c.b)), _wgslsmith_f_op_f32(-555f - var_0.c.a) >= _wgslsmith_f_op_f32(func_2())), Struct_2(u_input.a, ~vec3<i32>(var_0.b.x, var_0.b.x, var_0.b.x), Struct_1(-117f, all(vec3<bool>(var_1.x, true, false))))), vec3<i32>(-(~(~1i)), abs(countOneBits(~30488i)), _wgslsmith_add_i32(-var_0.b.x, -_wgslsmith_mult_i32(var_0.b.x, var_0.b.x))), vec2<u32>(var_0.a.x, 4294967295u));
    var var_3 = max(vec3<i32>(2147483647i, var_0.b.x, _wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -6522i), var_0.b.x & var_0.b.x)), -var_0.b);
    let var_4 = func_5(vec2<bool>(_wgslsmith_mult_i32(var_0.b.x, min(var_3.x, -54856i)) != reverseBits(-1i), !(!(!var_2.b))), func_5(vec2<bool>(global1.x >= ~u_input.a.x, var_2.b), var_0));
    return func_5(vec2<bool>(all(vec2<bool>(!var_1.x, var_1.x)), var_4.c.b), func_5(vec2<bool>(!any(vec3<bool>(var_1.x, var_0.c.b, false)), !var_0.c.b), Struct_2(var_0.a, ~var_4.b, var_4.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<i32>(1i, 1i, 1i));
    var var_1 = var_0.x;
    var var_2 = func_1();
    var var_3 = Struct_3(select(select(select(vec2<bool>(true, true), select(vec2<bool>(var_2.c.b, var_2.c.b), vec2<bool>(var_2.c.b, true), vec2<bool>(true, false)), false), !select(vec2<bool>(false, var_2.c.b), vec2<bool>(var_2.c.b, true), vec2<bool>(false, var_2.c.b)), select(vec2<bool>(false, var_2.c.b), vec2<bool>(false, var_2.c.b), var_2.c.b)), select(!(!vec2<bool>(true, var_2.c.b)), !(!vec2<bool>(var_2.c.b, var_2.c.b)), select(select(vec2<bool>(false, var_2.c.b), vec2<bool>(false, true), vec2<bool>(var_2.c.b, var_2.c.b)), !vec2<bool>(var_2.c.b, var_2.c.b), var_2.c.b)), any(vec3<bool>(!var_2.c.b, !var_2.c.b, var_2.c.b))), Struct_2(vec2<u32>(1u, (2149u & var_2.a.x) | _wgslsmith_mult_u32(var_2.a.x, var_2.a.x)), var_2.b, var_2.c), func_6(vec2<bool>(var_2.c.b | var_2.c.b, func_1().c.b), func_5(!vec2<bool>(var_2.c.b, var_2.c.b), Struct_2(var_2.a, vec3<i32>(-16084i, var_2.b.x, var_0.x), var_2.c)), select(var_0, var_0, true), ~(vec2<u32>(81075u, u_input.a.x) & var_2.a)).b && true, _wgslsmith_f_op_vec4_f32(vec4<f32>(func_1().c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1648f)), var_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1671f - var_2.c.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-605f * var_2.c.a), _wgslsmith_f_op_f32(522f + var_2.c.a), -3114f, _wgslsmith_div_f32(var_2.c.a, -626f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -846f), -596f, _wgslsmith_f_op_f32(-var_2.c.a), _wgslsmith_f_op_f32(trunc(var_2.c.a))))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(max(~u_input.b.x, u_input.a.x), var_2.a.x), global1.x));
    var var_4 = ~vec4<u32>(u_input.b.x, (max(u_input.b.x, u_input.a.x) | 1u) << (4294967295u % 32u), ~(u_input.b.x ^ 0u), ~firstTrailingBit(1u));
    var var_5 = select(vec3<bool>(var_3.b.c.b, true && any(select(vec2<bool>(false, false), var_3.a, vec2<bool>(var_2.c.b, false))), any(vec3<bool>(!var_2.c.b, false, true & var_2.c.b))), !(!(!(!vec3<bool>(var_2.c.b, true, var_2.c.b)))), vec3<bool>(var_2.c.b, false, ~firstLeadingBit(1u) == (~9147u | _wgslsmith_div_u32(var_4.x, global1.x))));
    var_5 = vec3<bool>(!all(vec3<bool>(var_3.a.x, true, var_5.x | var_5.x)), false, !var_5.x);
    global1 = ~var_4.zwx;
    var_2 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.c.a, ~var_3.b.b.x);
}

