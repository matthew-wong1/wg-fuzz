struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> vec2<u32> {
    let var_0 = -18378i;
    return ~(vec2<u32>(reverseBits(~29582u), ~37079u) >> (reverseBits(~vec2<u32>(4294967295u, 4294967295u) >> (reverseBits(vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_3(select(vec4<bool>(true, true, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), select(vec4<bool>(select(true, true, true), true, true, all(vec4<bool>(false, true, false, true))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, false, true)) | true, true, true, any(vec3<bool>(false, true, true)))));
    let var_1 = var_0.a;
    return -1416f;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(1000f, 1878f);
    let var_1 = _wgslsmith_f_op_f32(func_3(func_2()));
    let var_2 = vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(1097f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1674f)))), var_1);
    let var_3 = Struct_4(Struct_2(!all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), ~(~vec3<u32>(u_input.a, u_input.b, 1u))), 11169i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -558f, var_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 889f, -2843f)))) * _wgslsmith_f_op_vec3_f32(-var_2.wzz)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 706f, var_0)) * var_2.wyx), _wgslsmith_f_op_vec3_f32(-var_2.wwz)))), Struct_3(vec4<bool>(true, true, true, true)));
    var var_4 = var_3.b < 0i;
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x * _wgslsmith_f_op_f32(-var_3.c.x)) + _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(681f * var_2.x)))), _wgslsmith_f_op_f32(round(var_0)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(u_input.b), ~4294967295u, abs(2056u)), max(vec3<u32>(u_input.b, 1u, 25666u), ~vec3<u32>(u_input.b, u_input.b, u_input.c)))), firstLeadingBit(~(~(-1i))), vec3<f32>(2205f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), -1564f)))), _wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(536f)))))), _wgslsmith_f_op_vec3_f32(func_1()), Struct_3(!vec4<bool>(all(vec3<bool>(true, false, true)), true, true, false)));
    var var_1 = var_0.d.x;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, var_0.d.x))) + 315f)))));
    var var_3 = -592f;
    var var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.x, -1122f))), var_0.c.x), var_0.d.zy)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, var_0.a.b.x, var_0.a.b.x, 0u)), (~vec4<u32>(var_0.a.b.x, 1u, 1u, u_input.c) << (select(vec4<u32>(var_0.a.b.x, 0u, u_input.a, u_input.c), vec4<u32>(0u, 28719u, var_0.a.b.x, u_input.b), var_0.e.a) % vec4<u32>(32u))) ^ ~(vec4<u32>(var_0.a.b.x, u_input.a, u_input.c, 4294967295u) >> (vec4<u32>(1u, 1944u, 1u, var_0.a.b.x) % vec4<u32>(32u)))), vec3<u32>(1u, _wgslsmith_sub_u32(abs(var_0.a.b.x), u_input.c), var_0.a.b.x) << (abs(abs(~var_0.a.b)) % vec3<u32>(32u)));
}

