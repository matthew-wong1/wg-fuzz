struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(0i, -60515i, 55819i, 1i, -4967i, -22125i, -45030i, 3081i, 32378i, 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<u32>(4294967295u, firstLeadingBit(~u_input.e), countOneBits(countOneBits(u_input.b.x)));
    global0 = array<i32, 10>();
    return Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, true, true, true)), 1000f, 4294967295u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1218f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 489f))))))));
}

fn func_3() -> u32 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(57000u, 10u)], func_1().b, -1000f, ~abs(~(~u_input.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(218f, -311f) - vec2<f32>(461f, -507f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(197f, 1376f))))));
    let var_1 = vec4<i32>(min(-1i, func_1().a), var_0.a & global0[_wgslsmith_index_u32(var_0.d, 10u)], firstLeadingBit(var_0.a), var_0.a) >> (u_input.b % vec4<u32>(32u));
    return ~select(1u ^ ~u_input.c.x, _wgslsmith_sub_u32(4294967295u, firstTrailingBit(var_0.d)), !any(select(vec4<bool>(var_0.b.x, true, var_0.b.x, true), vec4<bool>(var_0.b.x, false, var_0.b.x, true), var_0.b.x)));
}

fn func_2() -> f32 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_0 = vec2<u32>(18583u, func_3());
    let var_1 = ~u_input.b >> (select(_wgslsmith_sub_vec4_u32(~vec4<u32>(49218u, var_0.x, 50575u, 4294967295u), firstTrailingBit(u_input.b)) << (reverseBits(~u_input.b) % vec4<u32>(32u)), u_input.b << (u_input.b % vec4<u32>(32u)), func_1().b) % vec4<u32>(32u));
    return 309f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    global0 = array<i32, 10>();
    let var_1 = func_1();
    global0 = array<i32, 10>();
    let var_2 = func_1();
    global0 = array<i32, 10>();
    var var_3 = vec3<f32>(var_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-640f + var_2.e.x))))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4.a, 15854i), _wgslsmith_sub_vec2_u32(~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.d, 1u), vec2<u32>(u_input.a, var_4.d))), vec2<u32>(u_input.b.x, ~(~var_4.d))), u_input.c);
}

