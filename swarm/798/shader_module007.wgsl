struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = vec4<bool>(false, !arg_1.a, all(select(!(!vec2<bool>(arg_2, arg_0)), !vec2<bool>(arg_0, false), vec2<bool>(select(arg_2, arg_0, arg_0), false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-300f)))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -376f))))));
    var_0 = select(select(vec4<bool>(true, false, any(!vec4<bool>(var_0.x, var_0.x, arg_0, arg_1.a)), arg_2), vec4<bool>(arg_1.a, countOneBits(u_input.a.x) > u_input.a.x, true, !arg_0), !(any(vec4<bool>(true, arg_1.a, true, true)) | true)), select(!(!vec4<bool>(true, arg_0, arg_1.a, arg_1.a)), !vec4<bool>(arg_2, true, arg_2, true), !select(vec4<bool>(false, arg_2, arg_1.a, arg_0), vec4<bool>(arg_1.a, true, var_0.x, arg_1.a), select(vec4<bool>(arg_1.a, arg_2, true, false), vec4<bool>(arg_0, arg_2, arg_0, true), arg_0))), !select(!select(vec4<bool>(false, arg_1.a, true, true), vec4<bool>(true, var_0.x, true, arg_2), vec4<bool>(true, false, true, var_0.x)), !select(vec4<bool>(true, arg_2, false, arg_0), vec4<bool>(arg_2, arg_0, false, false), true), true));
    let var_1 = Struct_2(true);
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.a.zxw, u_input.a.yxz);
    var_0 = !select(!vec4<bool>(true, arg_2, u_input.a.x <= var_2.x, true), select(select(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, arg_2, false, arg_1.a), true), !vec4<bool>(false, arg_2, false, false), select(arg_2, false, arg_1.a)), !(!vec4<bool>(true, false, arg_2, var_0.x)), vec4<bool>(!arg_0, var_1.a, all(var_0.yy), true)), select(false, all(var_0.yzw) | true, all(select(vec3<bool>(true, false, var_0.x), var_0.ywx, vec3<bool>(arg_1.a, false, arg_0)))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(727f, 117f, -261f, 1480f), vec4<f32>(-877f, 137f, 461f, -363f)) + vec4<f32>(_wgslsmith_div_f32(-765f, -549f), _wgslsmith_f_op_f32(step(1795f, -691f)), _wgslsmith_f_op_f32(640f * -1157f), _wgslsmith_f_op_f32(-305f * 825f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, -738f, 1607f, -1377f)))), vec4<f32>(_wgslsmith_f_op_f32(-629f - 346f), _wgslsmith_f_op_f32(sign(594f)), -560f, 649f))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_2(any(vec4<bool>(true, false, false, all(vec3<bool>(arg_0.b.x, true, arg_0.b.x)))));
    var var_1 = all(vec2<bool>(true, true)) || all(select(select(vec2<bool>(true, true), arg_2.yx, vec2<bool>(var_0.a, true)), select(vec2<bool>(false, arg_0.b.x), vec2<bool>(true, true), var_0.a), true));
    let var_2 = abs(~u_input.a.wy);
    var var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1), arg_1) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1311f, _wgslsmith_f_op_f32(ceil(arg_1)), arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, Struct_2(true), false, vec2<u32>(83903u, u_input.a.x))))))));
    return arg_0.b.x;
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_dot_vec2_i32(u_input.b ^ u_input.b, -abs(~u_input.b)), vec3<bool>(!func_2(Struct_1(-3173i, vec3<bool>(false, false, true), u_input.a.x), -617f, vec3<bool>(true, true, true)), true || (true || (u_input.a.x >= u_input.a.x)), !all(vec4<bool>(true, false, true, false))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = u_input.a.x;
    var_0 = 0u;
    var var_1 = func_1();
    let var_2 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec3<i32>(min(var_1.a, _wgslsmith_dot_vec2_i32(min(u_input.b, vec2<i32>(u_input.b.x, var_1.a)), vec2<i32>(-17028i, var_1.a) >> (vec2<u32>(1u, var_1.c) % vec2<u32>(32u)))), 1i, -21127i), ((u_input.a & u_input.a) ^ vec4<u32>(var_2, 10676u, var_1.c, min(37427u, 1u))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, var_1.c, var_2) ^ u_input.a), min(u_input.a, firstTrailingBit(u_input.a))) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_1.a), ~(-21841i), 1i, u_input.b.x ^ -3859i), ~(~vec4<i32>(2147483647i, 8545i, -16717i, -27i))), var_1.a, -1i));
}

