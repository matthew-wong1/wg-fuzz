struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(-7541i, -51820i, -26710i, -24354i, 25065i, -29710i, -1i, i32(-2147483648), 0i, 24809i, 13867i, -1412i, i32(-2147483648), -1i, 25962i, -4294i, 3428i);

var<private> global1: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = firstTrailingBit(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.xwz & vec3<u32>(0u, 4294967295u, 82980u), ~u_input.b.zyy), vec3<u32>(u_input.c.x, firstLeadingBit(u_input.d), reverseBits(45775u))));
    let var_1 = 262f;
    let var_2 = Struct_2(Struct_1(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), true), vec2<bool>(any(vec3<bool>(false, false, false)), false), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -442f) - -1000f), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, u_input.a.x), abs(u_input.a.wz)) ^ _wgslsmith_mod_vec2_u32(u_input.a.wx, u_input.b.xz), vec2<bool>(any(vec2<bool>(true, true)), true), global0[_wgslsmith_index_u32(7397u, 17u)]), Struct_1(vec2<bool>(any(vec4<bool>(false, false, false, false)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-802f + -1000f))) + var_1), countOneBits(vec2<u32>(firstLeadingBit(u_input.c.x), abs(u_input.d))), vec2<bool>(true, true), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(-21374i, -2147483647i), 1i)), ~vec4<u32>(u_input.d, _wgslsmith_mod_u32(33354u, u_input.b.x), ~1u, u_input.c.x ^ 0u) ^ u_input.a, vec2<u32>(u_input.a.x, u_input.b.x), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))))), vec2<u32>(u_input.d, 57444u), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), true), countOneBits(global0[_wgslsmith_index_u32(countOneBits(u_input.d), 17u)])));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(437f + var_1) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1431f, var_2.e.b)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(-var_1), true)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(287f, var_2.b.b))))) * 385f));
    return _wgslsmith_f_op_f32(sign(-2122f));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    var var_0 = Struct_3(Struct_2(arg_0, arg_0, vec4<u32>(select(u_input.b.x, abs(arg_0.c.x), any(arg_0.a)), ~_wgslsmith_sub_u32(arg_3, 4294967295u), ~_wgslsmith_add_u32(arg_3, arg_0.c.x), min(arg_3, ~u_input.d)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(14391u, 0u), vec2<u32>(arg_3, arg_0.c.x)), Struct_1(select(arg_0.d, vec2<bool>(true, arg_0.d.x), false), 730f, ~min(vec2<u32>(4294967295u, arg_3), u_input.b.wy), vec2<bool>(true, true), firstTrailingBit(~arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(953f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, -1440f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 731f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1955f), _wgslsmith_f_op_f32(abs(-521f)), -1062f, _wgslsmith_f_op_f32(f32(-1f) * -112f))), all(!(!select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(arg_0.d.x, true, false), vec3<bool>(arg_0.a.x, arg_0.d.x, false)))), Struct_2(Struct_1(vec2<bool>(true, arg_0.d.x), -2028f, _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(1u, 4530u)), vec2<u32>(arg_3, 11044u), arg_0.c), arg_0.a, _wgslsmith_mod_i32(arg_1.x, 1i) >> (1u % 32u)), Struct_1(arg_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), ~arg_0.c, vec2<bool>(true, arg_0.d.x), arg_0.e), ~u_input.b, ~vec2<u32>(firstLeadingBit(14498u), firstLeadingBit(32307u)), arg_0));
    var var_1 = arg_0;
    var var_2 = Struct_3(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(488f, -2740f)), _wgslsmith_f_op_f32(min(var_1.b, 688f)), _wgslsmith_f_op_f32(f32(-1f) * -1247f), _wgslsmith_f_op_f32(947f * var_1.b))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), 1273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - var_0.d.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))), arg_0.d.x, var_0.d);
    let var_3 = arg_1.wyx;
    var var_4 = !select(vec3<bool>(all(vec3<bool>(var_2.d.a.a.x, arg_0.d.x, true)), false, !all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.d.x, var_2.c, var_0.c), -2147483647i < var_1.e), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.d.x, false), vec3<bool>(arg_0.a.x, arg_0.a.x, var_2.c), false), vec3<bool>(arg_0.d.x, arg_0.a.x, true)), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(var_2.d.e.a.x, false, var_2.c), !var_0.d.b.a.x), vec3<bool>(!var_1.d.x, true, !var_0.d.b.a.x), all(vec4<bool>(false, var_2.a.b.d.x, true, arg_0.d.x)) | false));
    return var_3.x >> (_wgslsmith_mult_u32(1u, 4294967295u) % 32u);
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(!vec2<bool>(false, select(false, true, true)), _wgslsmith_f_op_f32(trunc(1f)), u_input.c, vec2<bool>(true, true), max(18133i, func_2(Struct_1(vec2<bool>(false, false), 107f, u_input.c, vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), countOneBits(vec4<i32>(-1i, 1i, global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(65553u, 17u)])), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(350f, 907f), vec2<f32>(558f, -1278f))), select(u_input.a.x, 1u, true)))), Struct_1(select(vec2<bool>(true, false), vec2<bool>(select(true, true, false), any(vec2<bool>(false, false))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(func_3()), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, 1u, 0u), u_input.a | vec4<u32>(u_input.d, 1u, u_input.a.x, u_input.c.x)), min(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b.x), firstLeadingBit(u_input.b.x))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(u_input.c.x != u_input.b.x, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(60272u, 17u)], 1i), vec3<i32>(-27498i, global0[_wgslsmith_index_u32(32123u, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)])), ~global0[_wgslsmith_index_u32(1946u, 17u)], 1i), -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(43947u, 21574u), 17u)])), vec4<u32>(u_input.b.x ^ 1u, 52651u, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.c.x, u_input.a.x)), ~u_input.d), ~countOneBits(_wgslsmith_div_u32(u_input.d, 26049u))), u_input.c, Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1543f + -601f), _wgslsmith_f_op_f32(1086f + -1972f)))), u_input.c, vec2<bool>(all(vec2<bool>(true, true)), true & all(vec3<bool>(false, true, false))), -1i));
    let var_1 = var_0.e;
    var var_2 = ~vec4<i32>(firstLeadingBit(-4614i), _wgslsmith_mult_i32(-60629i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(65057i, var_1.e, -28583i), global0[_wgslsmith_index_u32(var_0.b.c.x, 17u)] ^ global0[_wgslsmith_index_u32(var_0.b.c.x, 17u)])), max(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-12784i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec2<i32>(9951i, var_0.a.e))), -2147483647i), countOneBits(_wgslsmith_mod_i32(var_1.e, ~global0[_wgslsmith_index_u32(var_1.c.x, 17u)])));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1098f, 412f)), _wgslsmith_div_f32(1431f, -1502f), _wgslsmith_div_f32(-851f, var_1.b), _wgslsmith_f_op_f32(var_0.a.b + -279f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1527f, var_0.e.b, 452f, var_0.a.b)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(var_0.b.b * -1000f), _wgslsmith_f_op_f32(-var_0.e.b), 652f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -502f, -2915f, 839f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-325f, var_0.b.b, var_1.b, -317f) - vec4<f32>(var_1.b, -527f, -802f, -697f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1707f, var_0.b.b, var_0.a.b, var_0.e.b) + vec4<f32>(var_1.b, -1000f, -547f, 105f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, -231f, 897f, var_1.b) - vec4<f32>(var_0.a.b, var_0.a.b, var_1.b, 270f))))));
    var var_4 = Struct_2(Struct_1(vec2<bool>(!(!var_0.a.d.x), false), _wgslsmith_f_op_f32(var_0.e.b + _wgslsmith_f_op_f32(f32(-1f) * -604f)), firstTrailingBit(u_input.b.zw), vec2<bool>(all(vec3<bool>(var_1.d.x, true, var_0.e.d.x)), true), ~global0[_wgslsmith_index_u32(~(1u >> (1u % 32u)), 17u)]), var_0.b, firstLeadingBit(abs(vec4<u32>(~56466u, reverseBits(1u), ~1u, 1u))), var_0.e.c, Struct_1(var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1670f * var_3.x))), firstTrailingBit(u_input.c), vec2<bool>(false & select(false, true, var_0.b.d.x), !(688f > var_0.e.b)), reverseBits(55865i)));
    return select(vec3<bool>(var_4.e.d.x, select(any(var_4.a.a), var_0.e.d.x, var_0.e.a.x), select(false, true, true & var_0.b.d.x)), select(vec3<bool>(var_1.a.x, all(!vec4<bool>(var_4.a.d.x, var_1.a.x, var_1.d.x, var_4.e.a.x)), u_input.d == 4294967295u), vec3<bool>(true, var_0.b.a.x, true), any(select(!vec3<bool>(true, var_4.e.a.x, true), !vec3<bool>(false, true, var_4.e.a.x), var_1.d.x))), var_0.e.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), true), func_1(), all(!vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~(~4294967295u)), _wgslsmith_add_u32(1u, min(_wgslsmith_mult_u32(0u, 66114u), _wgslsmith_dot_vec3_u32(u_input.b.zyw, u_input.b.wwy)))));
}

