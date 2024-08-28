struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: array<u32, 1>;

var<private> global1: array<bool, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    var var_0 = vec4<bool>((false | !(!global1[_wgslsmith_index_u32(9180u, 31u)])) || (_wgslsmith_f_op_f32(round(-238f)) == 491f), true, _wgslsmith_clamp_u32(abs(u_input.b), ~4294967295u, 1u) == max(7011u, ~reverseBits(3871u)), all(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], false, global1[_wgslsmith_index_u32(u_input.d.x, 31u)]))));
    var var_1 = vec4<u32>(12281u, u_input.d.x, _wgslsmith_dot_vec4_u32(firstLeadingBit(firstLeadingBit(reverseBits(vec4<u32>(55008u, 57228u, 4294967295u, 1u)))), ~min(firstTrailingBit(vec4<u32>(1u, 9500u, u_input.d.x, u_input.b)), vec4<u32>(84690u, 18964u, u_input.b, global0[_wgslsmith_index_u32(33376u, 1u)]))), ~(~select(~1u, _wgslsmith_sub_u32(5424u, global0[_wgslsmith_index_u32(u_input.b, 1u)]), any(vec3<bool>(true, var_0.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)], 31u)])))));
    var var_2 = ~vec4<u32>(~select(0u, var_1.x << (4294967295u % 32u), true), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(var_1.x, 1u)], u_input.d.x, var_1.x, var_1.x) | (vec4<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(0u, 1u)], 1u) | vec4<u32>(u_input.d.x, 1u, 1u, 32465u)), select(abs(vec4<u32>(var_1.x, 69218u, 0u, var_1.x)), max(vec4<u32>(u_input.d.x, var_1.x, 1u, var_1.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], u_input.b, 13230u, u_input.d.x)), true)), 309u, 1u);
    global0 = array<u32, 1>();
    var_2 = vec4<u32>(_wgslsmith_add_u32(4294967295u, var_2.x), u_input.d.x, 48907u, abs(u_input.d.x >> (var_2.x % 32u)));
    return any(!select(!vec4<bool>(false, false, false, var_0.x), vec4<bool>(global1[_wgslsmith_index_u32(~4294967295u, 31u)], true, all(vec4<bool>(var_0.x, true, true, true)), true), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 31u)], global1[_wgslsmith_index_u32(39677u, 31u)], false, false))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = Struct_1(!vec2<bool>(false, global1[_wgslsmith_index_u32(reverseBits(u_input.b), 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2645f) * _wgslsmith_f_op_f32(floor(-108f))), !vec2<bool>(global1[_wgslsmith_index_u32(~(~u_input.d.x), 31u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b & 1u, 26069u ^ global0[_wgslsmith_index_u32(u_input.b, 1u)]), 31u)]));
    global0 = array<u32, 1>();
    let var_1 = select(vec4<bool>(func_3(), any(select(select(vec4<bool>(false, false, var_0.a.x, global1[_wgslsmith_index_u32(2087u, 31u)]), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(60065u, 31u)]), vec4<bool>(var_0.c.x, true, global1[_wgslsmith_index_u32(u_input.b, 31u)], arg_0.x)), vec4<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29227u, 1u)], 1u)], 31u)], false, true), !global1[_wgslsmith_index_u32(29301u, 31u)])), !all(var_0.c), !(abs(u_input.c) > 31274i)), vec4<bool>(true, !(u_input.a < ~55011i), global1[_wgslsmith_index_u32(~min(82773u, abs(global0[_wgslsmith_index_u32(4294967295u, 1u)])), 31u)], u_input.d.x < global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 1u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.b, global0[_wgslsmith_index_u32(0u, 1u)]))), 1u)]), vec4<bool>(arg_0.x, true, !(!select(false, false, false)), true));
    let var_2 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(315f))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(856f)), var_0.b)), all(select(!vec4<bool>(var_1.x, var_1.x, false, var_0.a.x), !var_1, vec4<bool>(false, false, arg_0.x, var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f - _wgslsmith_f_op_f32(trunc(-148f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -616f) + _wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(sign(var_0.b)))))), arg_0);
    let var_3 = u_input.a;
    return select(select(var_0.a, var_0.a, vec2<bool>(true, !(var_2.b >= 243f))), var_1.zy, !var_0.c);
}

fn func_1() -> u32 {
    var var_0 = Struct_1(select(select(func_2(select(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37738u, 1u)], 1u)], 31u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(67924u, 31u)])), vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b, 31u)], false), false), !vec2<bool>(true, !global1[_wgslsmith_index_u32(1u, 31u)]), !func_2(func_2(vec2<bool>(global1[_wgslsmith_index_u32(54197u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(152f, 471f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), select(select(select(func_2(vec2<bool>(true, global1[_wgslsmith_index_u32(12746u, 31u)])), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], true), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 1u)], 31u)])), !vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 31u)]), vec2<bool>(true, true)), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 31u)], false), true), true));
    var var_1 = Struct_2(false, select(var_0.c, var_0.c, select(select(!var_0.a, var_0.c, var_0.c), func_2(vec2<bool>(var_0.c.x, true)), false)), Struct_1(!(!var_0.a), var_0.b, vec2<bool>(firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 1u)], 1u)]) <= 41347u, !var_0.c.x)), select(vec3<bool>(!(!global1[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_sub_i32(2147483647i, u_input.c) >= 0i, select(true, all(var_0.a), false)), vec3<bool>(_wgslsmith_f_op_f32(var_0.b - var_0.b) >= var_0.b, false, var_0.c.x | global1[_wgslsmith_index_u32(abs(4294967295u), 31u)]), vec3<bool>(false, true, ~55670u > _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 41989u), u_input.d))), Struct_1(select(func_2(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 31u)])), !(!var_0.c), vec2<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(2087u, 31u)], var_0.c.x)), var_0.c.x)), var_0.b, vec2<bool>(false, !(global1[_wgslsmith_index_u32(u_input.b, 31u)] | global1[_wgslsmith_index_u32(u_input.b, 31u)]))));
    var var_2 = select(true || var_1.e.c.x, all(vec4<bool>(false, var_1.b.x, all(select(vec2<bool>(var_1.e.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 31u)]), var_1.c.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 31u)])), all(select(vec3<bool>(var_1.d.x, global1[_wgslsmith_index_u32(26542u, 31u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(81640u, 1u)], 31u)], var_1.d.x), var_1.d)))), !var_0.c.x);
    var var_3 = select(firstLeadingBit(_wgslsmith_mod_vec3_u32(~(vec3<u32>(86570u, u_input.b, global0[_wgslsmith_index_u32(1u, 1u)]) | vec3<u32>(16976u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)), ~vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 1u)], 14083u))), ~vec3<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32284u, 1u)], 1u)], u_input.d.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(42849u, 1u)]), 1u)], u_input.b) | _wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(global0[_wgslsmith_index_u32(2938u, 1u)], global0[_wgslsmith_index_u32(41928u, 1u)], 22186u)), _wgslsmith_add_vec3_u32(vec3<u32>(43984u, 1u, 0u), vec3<u32>(u_input.d.x, 29384u, 133837u)) | (vec3<u32>(0u, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]) >> (vec3<u32>(0u, u_input.b, 0u) % vec3<u32>(32u)))), var_0.c.x);
    var var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(27568u, 4294967295u, abs(_wgslsmith_div_u32(~52335u, min(18966u, var_3.x)))), ~(~(~(~vec3<u32>(12691u, global0[_wgslsmith_index_u32(u_input.b, 1u)], 37411u)))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, func_1()), 1u)];
    let var_1 = 1u;
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_2 = ~(~select(~(~vec2<u32>(399u, 39097u)), u_input.d, any(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 31u)]))));
    var_0 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

