struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-1237f, -1000f, 491f, 2550f, 749f, 992f, -1201f, 873f, -1023f, 332f, 270f, -483f);

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(-1i, 23979i), vec2<i32>(-1i, 23708i), vec2<i32>(1i, -1i), vec2<i32>(-1048i, 1i), vec2<i32>(1797i, 2147483647i), vec2<i32>(-1i, -523i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global2: array<u32, 3> = array<u32, 3>(93368u, 1u, 32030u);

var<private> global3: Struct_1 = Struct_1(14000u, vec4<u32>(20735u, 60239u, 11117u, 0u), -1794f, -467f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> bool {
    global0 = array<f32, 12>();
    let var_0 = Struct_1(max(max(global3.a, _wgslsmith_dot_vec3_u32(global3.b.xwy & vec3<u32>(u_input.b, global3.a, 0u), vec3<u32>(global3.a, u_input.b, 1u))), _wgslsmith_mult_u32(~u_input.a, ~global2[_wgslsmith_index_u32(u_input.b | 0u, 3u)])), global3.b, -1634f, global0[_wgslsmith_index_u32(52104u, 12u)]);
    let var_1 = 264i;
    global1 = array<vec2<i32>, 8>();
    global3 = var_0;
    return true;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global1 = array<vec2<i32>, 8>();
    let var_0 = vec3<bool>(true, all(!vec4<bool>(all(vec2<bool>(true, false)), true, true, true)), func_2());
    return 12563u;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_clamp_i32(min(1i, ~select(2147483647i, -1i, false)), ~_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])), -20847i);
    global2 = array<u32, 3>();
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, 116f, arg_0))), 3u)], ~(~vec4<u32>(1u, abs(0u), 665u, firstLeadingBit(779u))), arg_0, _wgslsmith_f_op_f32(min(-2358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.d)) * -1000f) - -379f))));
    var var_2 = 1i;
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(1i, 1i, 1i, 1i);
    return global0[_wgslsmith_index_u32(~countOneBits(func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 208f, 1000f) - vec3<f32>(450f, var_1.d, 935f)))))), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(0u, vec4<u32>(func_1(vec3<f32>(-734f, _wgslsmith_f_op_f32(step(global3.d, -1350f)), -1000f)), 26867u, ~u_input.a, 4294967295u), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 3u)], 12u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global3.b.x, 12u)] + global3.c) * global3.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1238f + -591f), global0[_wgslsmith_index_u32(global3.b.x, 12u)])), global0[_wgslsmith_index_u32(global3.a, 12u)]));
    let var_1 = vec3<u32>(_wgslsmith_div_u32(0u, ~global3.a), 1u, ~_wgslsmith_clamp_u32(u_input.a, 100233u, var_0.a) ^ ~firstTrailingBit(u_input.a));
    global0 = array<f32, 12>();
    global3 = Struct_1(select(~u_input.b, _wgslsmith_div_u32(~u_input.a & 1u, 13541u), true), ~(~vec4<u32>(4294967295u >> (global2[_wgslsmith_index_u32(u_input.b, 3u)] % 32u), ~64137u, ~0u, min(4294967295u, 72135u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.c, vec3<bool>(true, true, true), Struct_1(1u, vec4<u32>(1u, global3.b.x, 0u, 0u), global3.c, global3.c)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-653f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -710f), _wgslsmith_f_op_f32(step(357f, var_0.d))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1007f))) - _wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(round(227f))))));
    let var_2 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, any(vec3<bool>(true, true, true)), true), func_2()));
    var var_3 = Struct_1(_wgslsmith_sub_u32(112967u, global3.b.x) << (_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_1.x, 30035u, global3.b.x)), vec3<u32>(var_1.x, global3.a, global3.a)) % 32u), ~max(~vec4<u32>(8951u, 59770u, global3.a, var_0.a), var_0.b), global0[_wgslsmith_index_u32(var_1.x, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1940f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(179f + global3.d), _wgslsmith_f_op_f32(1267f * 858f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(1i), -reverseBits(-28330i)), ~firstLeadingBit(min(global1[_wgslsmith_index_u32(86356u, 8u)], vec2<i32>(33654i, 2147483647i))), select(~global1[_wgslsmith_index_u32(0u, 8u)], vec2<i32>(_wgslsmith_mod_i32(-8248i, -6926i), _wgslsmith_div_i32(1i, -1i)), true)), -(~(-1i)));
}

