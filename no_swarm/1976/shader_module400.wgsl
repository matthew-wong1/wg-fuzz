struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_2, 11>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 5729u) & ~abs(0u), 0u) & reverseBits(_wgslsmith_mult_vec2_u32(~arg_0.a.yx, min(~arg_1.yz, arg_0.a.yx >> (arg_0.a.ww % vec2<u32>(32u)))));
    return select(any(!arg_0.c), true, arg_0.c.x);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> i32 {
    global2 = array<Struct_2, 11>();
    let var_0 = global2[_wgslsmith_index_u32(0u & arg_1, 11u)];
    let var_1 = arg_0;
    global0 = array<Struct_2, 32>();
    var var_2 = var_1;
    return var_0.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> f32 {
    let var_0 = ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), u_input.a.x);
    var var_1 = !(!(!vec3<bool>(true, all(vec2<bool>(true, false)), true)));
    var var_2 = global2[_wgslsmith_index_u32(~1u, 11u)];
    var var_3 = Struct_1(var_0, arg_1, select(select(vec4<bool>(true, arg_2 == arg_2, all(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), false), !select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, var_1.x, var_1.x, false), true), var_1.x), !vec4<bool>(func_2(Struct_1(vec4<u32>(var_2.c.x, 1u, var_2.c.x, var_2.c.x), var_2.b.x, vec4<bool>(var_1.x, false, false, var_1.x), arg_0.b.x, -19234i), vec3<u32>(var_2.c.x, 23944u, 11786u), -491f), any(var_1.yy), var_1.x, true), true), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1722f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -1363f)))), -1181f)), reverseBits(func_3(Struct_1(vec4<u32>(u_input.a.x, var_0.x, 69688u, var_2.c.x), arg_1, select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, var_1.x, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x)), _wgslsmith_f_op_f32(trunc(var_2.b.x)), min(arg_2, -28203i)), u_input.a.x)));
    global1 = false;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_div_f32(-196f, 452f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1409f))))), _wgslsmith_f_op_f32(floor(-431f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-625f, 562f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_2(vec3<i32>(1i, -1i, 2147483647i), vec3<f32>(1715f, 423f, -1654f), vec2<u32>(u_input.a.x, 46471u)), _wgslsmith_div_f32(-660f, -1000f), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-736f))), -134f))));
    let var_1 = 0i;
    global0 = array<Struct_2, 32>();
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(abs(-524f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + var_0.x)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1808f, 448f, -1636f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(404f, -1029f, var_0.x), vec3<f32>(-1000f, var_0.x, var_0.x), false))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), 597f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-546f, 881f, -227f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(1441f, var_0.x, 1982f))))), vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 39761u))), _wgslsmith_mod_u32(18541u, u_input.a.x)), ~vec2<u32>(1u, 4294967295u)), 0i, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-666f - _wgslsmith_f_op_f32(f32(-1f) * -427f)), _wgslsmith_f_op_f32(var_0.x - 1683f)))));
}

