struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16> = array<f32, 16>(530f, -607f, 560f, -1100f, -1000f, 393f, 164f, 1717f, 725f, 1788f, 850f, -617f, -2530f, -135f, 1000f, 1142f);

var<private> global1: vec2<f32> = vec2<f32>(1175f, -443f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c & 1u, 16u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27384u, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + _wgslsmith_f_op_f32(-1169f * global1.x)), -305f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19334u, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2183f + -1833f) - _wgslsmith_f_op_f32(f32(-1f) * -1564f)), _wgslsmith_f_op_f32(sign(-406f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 16u)]))))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.wx)));
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1278f)), global0[_wgslsmith_index_u32(29540u, 16u)]))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 766f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(7994u, 16u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(false)).x, _wgslsmith_f_op_vec2_f32(func_3(false)).x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_f32(-164f * global0[_wgslsmith_index_u32(57215u, 16u)]), true)), 682f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.c, 16u)])), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.d.x, 16u)])))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(9445u, 16u)], -2469f, global1.x) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global1.x, global0[_wgslsmith_index_u32(u_input.d.x, 16u)])))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 199f, global0[_wgslsmith_index_u32(u_input.c, 16u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, 1243f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 1264f, 564f) * vec3<f32>(1000f, global1.x, -995f))))));
    global1 = vec2<f32>(global1.x, global1.x);
    global0 = array<f32, 16>();
    var var_1 = ~_wgslsmith_div_vec4_u32(select(vec4<u32>(4294967295u | u_input.c, u_input.d.x, u_input.c >> (39363u % 32u), ~18474u), ~vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x) & (vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.d.x) << (vec4<u32>(0u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), all(vec3<bool>(true, false, false))), abs((vec4<u32>(u_input.d.x, 29913u, 0u, 17037u) & vec4<u32>(u_input.c, u_input.d.x, u_input.c, 1u)) >> (~vec4<u32>(9046u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(-606f)), var_1.x);
}

fn func_1() -> vec2<bool> {
    var var_0 = -1638f;
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 16u)] * _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(55111u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1467f * global0[_wgslsmith_index_u32(u_input.d.x, 16u)]))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(800f + -788f)))));
    var var_2 = func_2();
    let var_3 = Struct_2(vec2<bool>(true, true), func_2(), countOneBits(~firstLeadingBit(~vec4<u32>(var_2.b, 13604u, u_input.c, 33230u))), func_2(), func_2());
    var var_4 = firstLeadingBit(u_input.a >> (select(~vec3<u32>(0u, var_2.b, var_2.b), ~vec3<u32>(var_2.b, 10187u, var_2.b), vec3<bool>(var_3.a.x, var_3.a.x, false)) % vec3<u32>(32u))) >> (u_input.d % vec3<u32>(32u));
    return !vec2<bool>((u_input.b << (u_input.d.x % 32u)) < u_input.a.x, !var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), func_1()), vec2<bool>(true, true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 262f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -218f, global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), vec3<f32>(-145f, global0[_wgslsmith_index_u32(u_input.d.x, 16u)], global1.x)), vec3<f32>(-2266f, global1.x, global0[_wgslsmith_index_u32(1u, 16u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-440f, 1000f, -839f) - vec3<f32>(575f, 100f, 270f)) * vec3<f32>(855f, global0[_wgslsmith_index_u32(u_input.c, 16u)], -1818f)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.d.x, 16u)]), vec3<f32>(857f, -1381f, global1.x), vec3<bool>(var_0.x, true, var_0.x))))))), 415f);
}

