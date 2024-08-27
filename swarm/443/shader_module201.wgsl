struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
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

var<private> global0: array<u32, 20>;

var<private> global1: bool;

var<private> global2: vec4<f32> = vec4<f32>(-238f, -1991f, -1711f, -820f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(abs(~vec3<u32>(arg_1.a.x, arg_1.a.x, reverseBits(u_input.d))));
    let var_1 = Struct_2(!arg_0.zz, 8171u, Struct_1(arg_1.a));
    let var_2 = var_0.a.x;
    return 106432u;
}

fn func_2() -> u32 {
    var var_0 = vec3<i32>(~69571i, (u_input.b.x << ((func_3(vec3<bool>(false, true, true), Struct_1(u_input.a)) | 1u) % 32u)) >> (func_3(vec3<bool>(true, true, true), Struct_1(u_input.a)) % 32u), ~u_input.c);
    let var_1 = _wgslsmith_f_op_f32(1257f + global2.x);
    let var_2 = ~firstLeadingBit(-abs(~vec4<i32>(53371i, -9205i, -2147483647i, -35201i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - _wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) - var_1), _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(-var_1))), 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, global2.x, -608f, var_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, -1543f, 662f, 1035f))))));
    let var_4 = Struct_1(~(~select(abs(vec3<u32>(global0[_wgslsmith_index_u32(1u, 20u)], u_input.d, 33647u)), u_input.a, all(vec3<bool>(false, true, true)))));
    return 0u;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> bool {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 2308f, global2.x, -1482f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 865f, global2.x, 1255f) * vec4<f32>(global2.x, global2.x, global2.x, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, -1043f, -1256f, 345f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2165f, global2.x, global2.x, -827f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wxw));
    var var_1 = Struct_2(!arg_3.a, _wgslsmith_sub_u32(~(~45221u), ~global0[_wgslsmith_index_u32(func_2(), 20u)]), Struct_1(u_input.a));
    global1 = arg_1.a.x;
    global0 = array<u32, 20>();
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = ~vec4<u32>(arg_0.b, _wgslsmith_div_u32(0u, reverseBits(_wgslsmith_mult_u32(arg_0.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26421u, 20u)], 20u)]))), _wgslsmith_clamp_u32(~6260u, ~(~6518u), ~u_input.a.x), 57287u);
    var var_1 = Struct_2(vec2<bool>(arg_0.a.x, true), min(~u_input.a.x, ~var_0.x), arg_0.c);
    var var_2 = _wgslsmith_mod_u32(~(~1u), ~countOneBits(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0.b, 20u)] << (arg_0.c.a.x % 32u), 8425u)));
    var var_3 = -1679f;
    global2 = vec4<f32>(global2.x, 1000f, global2.x, _wgslsmith_f_op_f32(round(-899f)));
    return Struct_1(countOneBits(vec3<u32>(u_input.a.x ^ 79075u, u_input.a.x, 14157u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f * 491f)), global2.x)), global2.x)) != _wgslsmith_f_op_f32(min(global2.x, 653f));
    let var_0 = func_4(Struct_2(vec2<bool>(any(vec3<bool>(true, true, true)), true), u_input.a.x, Struct_1(~select(vec3<u32>(4294967295u, 0u, global0[_wgslsmith_index_u32(u_input.d, 20u)]), vec3<u32>(global0[_wgslsmith_index_u32(8266u, 20u)], 9752u, 26462u), vec3<bool>(false, true, true)))), !(!vec3<bool>(true, false, func_1(vec4<i32>(1i, u_input.c, u_input.b.x, u_input.b.x), Struct_2(vec2<bool>(true, true), 6222u, Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.d, 20u)], 36854u, 4294967295u))), 26238i, Struct_2(vec2<bool>(true, false), 1u, Struct_1(u_input.a))))));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -431f, 1114f, 760f) + vec4<f32>(global2.x, 375f, -718f, global2.x))))))));
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1458f, _wgslsmith_f_op_f32(-var_1), true))), -2147483647i >> (min(var_0.a.x, (4294967295u >> (global0[_wgslsmith_index_u32(5865u, 20u)] % 32u)) & max(35315u, 1u)) % 32u));
}

