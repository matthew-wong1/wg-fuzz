struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 0i, 2147483647i);

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(false, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, true)));

var<private> global2: f32 = -234f;

var<private> global3: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(42534i, 0i, 1i), vec3<i32>(47724i, -3049i, -12669i), vec3<i32>(-25580i, 29390i, 3342i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(-1i, 1i, -9768i), vec3<i32>(-32764i, i32(-2147483648), -60063i), vec3<i32>(2147483647i, i32(-2147483648), -11419i), vec3<i32>(2147483647i, 88178i, -1i), vec3<i32>(32757i, -22162i, -5737i), vec3<i32>(42849i, -17199i, 0i), vec3<i32>(0i, 1i, 16568i), vec3<i32>(-2737i, -1i, 28989i), vec3<i32>(i32(-2147483648), i32(-2147483648), -19387i), vec3<i32>(-30523i, 7199i, -2186i), vec3<i32>(-3061i, -49120i, 1i), vec3<i32>(0i, 11119i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, -35153i), vec3<i32>(-1i, -4629i, -34087i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(2147483647i, 18038i, 5907i), vec3<i32>(0i, 40933i, 0i), vec3<i32>(12727i, 2147483647i, 2147483647i), vec3<i32>(-32512i, -12912i, 7952i), vec3<i32>(15785i, 0i, -21633i), vec3<i32>(2147483647i, -55920i, 23416i), vec3<i32>(-23550i, -44264i, i32(-2147483648)), vec3<i32>(0i, -1595i, -38060i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = ~abs(20548u);
    let var_1 = ~(~(~u_input.a.x | u_input.a.x));
    var var_2 = -global3[_wgslsmith_index_u32(795u, 28u)];
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_div_vec3_u32(~u_input.a, u_input.a);
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx << (var_0.zy % vec2<u32>(32u)), u_input.a.xz), 1u, 4294967295u);
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2412f)));
    let var_1 = countOneBits(~(vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, global0.x), u_input.b.x, i32(-1i) * -1i, -u_input.b.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(16468u, 4294967295u, 1u, var_0.x) & vec4<u32>(1612u, 1u, 4670u, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 4294967295u, 0u), vec4<u32>(54769u, 14602u, 22540u, arg_1))) % vec4<u32>(32u))));
    var var_2 = ~(~(-global0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)), Struct_1(select(-10219i, 22510i, arg_0)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -963f)))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), 514f))));
}

fn func_1() -> u32 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-495f, -1000f)), -544f, -296f, _wgslsmith_f_op_f32(func_2(false, u_input.a.x, global1[_wgslsmith_index_u32(32182u, 21u)]))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(399f, 898f, -289f, -647f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2244f, 502f, 756f, 661f))))));
    global3 = array<vec3<i32>, 28>();
    let var_2 = !any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)));
    var var_3 = _wgslsmith_f_op_f32(var_1.x * -1122f);
    return abs(44643u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(474f - _wgslsmith_f_op_f32(max(-570f, -1252f))), firstLeadingBit(4294967295u), vec2<u32>(1u, ~u_input.a.x), func_1());
}

