struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(47855u, _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x, global0[_wgslsmith_index_u32(u_input.d, 20u)]), 4294967295u), 8238u) & ~(~vec3<u32>(4294967295u, 4294967295u, 76862u) << (vec3<u32>(1u, arg_1.x, 28251u) % vec3<u32>(32u))), ~vec3<u32>(~(0u << (0u % 32u)), u_input.d, u_input.d));
    let var_1 = vec4<u32>(arg_1.x, ~1u, arg_1.x, var_0.x);
    let var_2 = vec4<bool>(any(arg_2), true | arg_2.x, !any(vec4<bool>(true, true, !arg_0.a.x, arg_0.a.x | true)), !(!arg_0.a.x));
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-284f))))))), _wgslsmith_f_op_f32(f32(-1f) * -2119f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1881f))));
}

fn func_1() -> Struct_4 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(false, false, true, false), u_input.d), vec2<u32>(14463u, u_input.d), vec3<bool>(true, true, true))))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(step(348f, 1347f))), -680f)), _wgslsmith_f_op_f32(f32(-1f) * -252f), true)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<bool>(true, false, true, false), 1u), vec2<u32>(0u, 1u) << (vec2<u32>(u_input.d, 9735u) % vec2<u32>(32u)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2290f, 521f, true)) + 1f), _wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(f32(-1f) * -100f)))))));
    return Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-314f * _wgslsmith_f_op_f32(exp2(var_1))), var_1)), Struct_3(Struct_2(vec4<bool>(false, true, all(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, true))), ~(~global0[_wgslsmith_index_u32(1u, 20u)])), ~1u, _wgslsmith_mod_i32(30896i, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = reverseBits(-abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 16777i), vec4<i32>(var_0.b.c, var_0.b.c, 2147483647i, -1i)), ~vec4<i32>(u_input.b, 2147483647i, 14971i, 16523i), vec4<i32>(0i, 10082i, -84769i, 24290i))));
    let var_2 = ~var_1 | countOneBits(var_1);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 658f))))), var_0.b);
    let var_4 = vec3<f32>(var_3.a, -914f, var_3.a);
    let var_5 = !vec3<bool>(all(vec4<bool>(!var_0.b.a.a.x, !var_3.b.a.a.x, var_0.b.a.a.x, false)), true, all(select(!var_3.b.a.a, vec4<bool>(var_3.b.a.a.x, var_0.b.a.a.x, var_3.b.a.a.x, var_0.b.a.a.x), vec4<bool>(true, true, var_0.b.a.a.x, var_0.b.a.a.x))));
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a))), var_0.a, var_3.a, _wgslsmith_f_op_f32(ceil(-1143f)));
    var var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1940f * _wgslsmith_f_op_f32(ceil(var_0.a))) + -1989f);
    let x = u_input.a;
    s_output = StorageBuffer(0i & _wgslsmith_dot_vec2_i32(~(~vec2<i32>(-23222i, -15679i)), var_2.wx), vec3<i32>(-45222i, -(16166i | min(var_2.x, 4090i)), -1i), vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))));
}

