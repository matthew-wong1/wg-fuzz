struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 21> = array<bool, 21>(false, false, false, true, true, false, false, true, true, false, true, false, false, false, true, false, false, true, true, true, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = max(vec4<u32>(global0.c.x, ~6943u, 20373u, ~4294967295u) & vec4<u32>(arg_0.c.x, arg_1.c.x, global1.x, ~(~global1.x)), min(min(firstLeadingBit(vec4<u32>(38418u, 26724u, 1u, arg_1.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global0.c.x, arg_0.c.x, arg_0.c.x), vec4<u32>(global0.c.x, 1u, global1.x, 1u))) ^ firstTrailingBit(vec4<u32>(arg_1.c.x, arg_0.c.x, 20429u, arg_1.c.x) >> (vec4<u32>(2518u, arg_1.c.x, 1u, 21029u) % vec4<u32>(32u))), max(~(vec4<u32>(arg_1.c.x, 0u, arg_0.c.x, arg_1.c.x) << (vec4<u32>(global0.c.x, global1.x, arg_0.c.x, global0.c.x) % vec4<u32>(32u))), vec4<u32>(~global0.c.x, ~71722u, 4294967295u, 4294967295u))));
    let var_0 = u_input.b.xw;
    var var_1 = arg_1;
    let var_2 = u_input.b.x;
    var_1 = arg_0;
    return all(!(!vec3<bool>(any(vec2<bool>(var_1.e.x, arg_0.e.x)), true & var_1.e.x, 18214u == arg_0.c.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.c.x, arg_2.c.x, 4294967295u, global0.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, global0.c.x), vec4<u32>(15261u, 4294967295u, 35180u, arg_2.c.x))) & _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.c.x, 4294967295u, 22097u, 1u)), ~vec4<u32>(global1.x, 31621u, global1.x, arg_2.c.x)), ~(~vec4<u32>(4294967295u, global1.x, global0.c.x, 4294967295u) >> (vec4<u32>(0u, arg_2.c.x, arg_2.c.x, 50816u) % vec4<u32>(32u)))));
    var var_1 = u_input.a;
    let var_2 = arg_2;
    let var_3 = vec4<bool>(true, true, (arg_0.x | (max(-46067i, -48193i) != (arg_2.a & var_2.d))) || all(select(vec3<bool>(true, true, true), !vec3<bool>(var_2.e.x, false, false), !vec3<bool>(arg_2.e.x, var_2.e.x, global0.e.x))), arg_2.c.x <= _wgslsmith_dot_vec3_u32(~global1.wxy | vec3<u32>(global1.x, arg_2.c.x, global1.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, global1.x), vec3<u32>(global0.c.x, 4828u, arg_2.c.x) << (vec3<u32>(global0.c.x, global0.c.x, 93716u) % vec3<u32>(32u)))));
    var_1 = _wgslsmith_div_i32(select(max(-859i, var_2.a ^ -2147483647i), arg_2.d, u_input.a < ~global0.a), -_wgslsmith_mod_i32(5131i, 2147483647i) << (_wgslsmith_mult_u32(global1.x & 19650u, _wgslsmith_dot_vec3_u32(global1.xxx, vec3<u32>(1u, global1.x, global1.x))) % 32u)) >> (global0.c.x % 32u);
    return -2147483647i;
}

fn func_2() -> i32 {
    global2 = array<bool, 21>();
    global0 = Struct_1(1i, func_4(!global0.e, func_3(Struct_1(global0.d, 52897i, vec2<u32>(global1.x, global0.c.x), global0.d | u_input.a, vec2<bool>(true, global2[_wgslsmith_index_u32(global1.x, 21u)])), Struct_1(8569i, u_input.a, firstLeadingBit(global0.c), _wgslsmith_clamp_i32(0i, global0.b, -34323i), vec2<bool>(true, global0.e.x))), Struct_1(1i, _wgslsmith_mod_i32(min(u_input.a, -2147483647i), ~global0.b), reverseBits(min(vec2<u32>(63932u, global0.c.x), vec2<u32>(0u, global1.x))), _wgslsmith_clamp_i32(global0.b, u_input.b.x, global0.a), !(!vec2<bool>(global0.e.x, true)))), vec2<u32>(14380u, abs(~1u)), -25567i, global0.e);
    global2 = array<bool, 21>();
    return global0.d;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = all(!vec3<bool>(!global2[_wgslsmith_index_u32(global1.x, 21u)], global0.e.x, !global0.e.x)) && !(!(!all(vec4<bool>(global2[_wgslsmith_index_u32(global0.c.x, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(global1.x, 21u)], global0.e.x))));
    var_1 = any(!(!vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global0.e.x)), any(vec3<bool>(true, true, true)), true)));
    var var_2 = global0.e;
    var var_3 = Struct_1(2282i | (~(-1i) ^ firstLeadingBit(u_input.b.x)), ~(~_wgslsmith_clamp_i32(countOneBits(u_input.a), 37616i, -10450i)), abs(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, 21300u), global1.yy) & vec2<u32>(0u, global0.c.x))), func_2(), select(!global0.e, global0.e, any(vec4<bool>(true, false, true, !global2[_wgslsmith_index_u32(global0.c.x, 21u)]))));
    return _wgslsmith_dot_vec2_i32(u_input.b.xz, ~(~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-func_1(-u_input.b.x, -u_input.b.ww), u_input.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global0.c.x, global0.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 1u), vec2<u32>(global1.x, 0u))), min(select(global0.c, vec2<u32>(31956u, global0.c.x), global0.e.x), ~global0.c)) % 32u), vec2<u32>(global0.c.x, ~94777u), _wgslsmith_add_i32(u_input.a, _wgslsmith_add_i32(~1i, -20511i)), select(select(!vec2<bool>(global0.e.x, true), global0.e, global0.e), global0.e, global0.e.x));
    global2 = array<bool, 21>();
    var var_1 = ~(-45534i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(357f)), _wgslsmith_f_op_f32(ceil(-1094f)))))));
    var var_3 = Struct_1(-1i, global0.d, _wgslsmith_clamp_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_0.c.x), vec2<u32>(var_0.c.x, global1.x)), var_0.c, select(global0.e, vec2<bool>(false, true), true)), ~vec2<u32>(19644u, global0.c.x) & (vec2<u32>(1u, 22636u) ^ vec2<u32>(global1.x, var_0.c.x)), reverseBits(var_0.c >> (global0.c % vec2<u32>(32u)))) & global0.c, u_input.a, select(!global0.e, !global0.e, select(var_0.e, !(!vec2<bool>(false, global2[_wgslsmith_index_u32(global0.c.x, 21u)])), all(select(vec3<bool>(global0.e.x, global2[_wgslsmith_index_u32(var_0.c.x, 21u)], var_0.e.x), vec3<bool>(true, var_0.e.x, true), false)))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -567f), -122f, false))))));
    var_0 = Struct_1(28427i, _wgslsmith_sub_i32(min(-select(var_3.d, 19115i, global2[_wgslsmith_index_u32(global1.x, 21u)]), 2147483647i), var_3.b), vec2<u32>(~0u, var_0.c.x), var_3.d, vec2<bool>(true, func_3(Struct_1(-4423i, u_input.a, ~vec2<u32>(4294967295u, 1u), -1i, select(var_0.e, global0.e, vec2<bool>(var_3.e.x, global2[_wgslsmith_index_u32(var_0.c.x, 21u)]))), Struct_1(u_input.a >> (1u % 32u), global0.d, global1.xw, _wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.wx), vec2<bool>(false, false)))));
    var var_4 = ~(-select(vec2<i32>(-36126i, 2147483647i), ~countOneBits(vec2<i32>(var_0.d, u_input.a)), all(select(vec3<bool>(false, false, global0.e.x), vec3<bool>(true, global2[_wgslsmith_index_u32(15742u, 21u)], global0.e.x), vec3<bool>(global0.e.x, false, global2[_wgslsmith_index_u32(1u, 21u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 105f), vec2<f32>(-253f, 1138f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, -487f)), func_3(Struct_1(2147483647i, 2147483647i, vec2<u32>(var_3.c.x, global0.c.x), 1i, var_0.e), Struct_1(global0.b, var_0.a, vec2<u32>(global0.c.x, var_0.c.x), u_input.a, vec2<bool>(false, global0.e.x))))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(662f, 1331f, 1189f, 1295f))))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 896f, 1805f, -549f), vec4<f32>(-722f, -305f, -1638f, 380f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-269f, -659f, -960f, 1226f) + vec4<f32>(327f, 1625f, 399f, 567f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1284f, 1000f), -889f, _wgslsmith_f_op_f32(267f - 1049f), _wgslsmith_f_op_f32(1000f - -1790f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1166f, 1000f, 994f, -1000f), vec4<f32>(-923f, 520f, 312f, -614f))))))));
}

