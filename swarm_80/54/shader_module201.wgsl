struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(10404u, 36779u, 0u), vec3<u32>(43397u, 1u, 103519u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    global0 = array<vec3<u32>, 2>();
    var var_0 = Struct_3(Struct_1(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), all(vec2<bool>(true, false)))), ~vec2<u32>(14660u, u_input.b) << (~firstLeadingBit(u_input.a.zx) % vec2<u32>(32u)), false, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 17236u, 54515u, 0u), u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(23890u, u_input.a.x, 1u, 12137u)))));
    var_0 = Struct_3(Struct_1((true & !var_0.a.a) && !var_0.a.c, ~(~select(u_input.a.xy, vec2<u32>(u_input.a.x, 0u), vec2<bool>(var_0.a.c, var_0.a.a))), true && (var_0.a.b.x > _wgslsmith_add_u32(u_input.a.x, 61912u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(15703u, 26399u, 40689u, u_input.b), vec4<u32>(u_input.a.x, 0u, 66100u, u_input.a.x)), ~vec4<u32>(31848u, var_0.a.b.x, var_0.a.b.x, u_input.b), true) ^ ~(~u_input.a)));
    return Struct_2(Struct_1(!(!any(vec4<bool>(false, var_0.a.c, true, var_0.a.c))), _wgslsmith_add_vec2_u32(vec2<u32>(58814u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.a.b.x, 0u, var_0.a.d.x), var_0.a.d)), ~countOneBits(u_input.a.yz)), var_0.a.c, var_0.a.d), Struct_1(!var_0.a.a, u_input.a.yz, any(vec3<bool>(select(var_0.a.a, var_0.a.a, var_0.a.a), var_0.a.a, !var_0.a.c)), ~(~(~vec4<u32>(4294967295u, u_input.a.x, 38377u, u_input.b)))), !vec4<bool>(var_0.a.a, true, false, any(vec2<bool>(true, var_0.a.a))), false);
}

fn func_3(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(arg_0.a.b.x, reverseBits(~arg_0.a.b.x) | 4870u) >> (vec2<u32>(20089u, arg_0.b.d.x) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1303f + _wgslsmith_f_op_f32(max(190f, 1955f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1663f * 1000f) - _wgslsmith_f_op_f32(520f * 622f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-172f)))))))));
    var var_2 = arg_0.a.d.x;
    var var_3 = -60206i;
    var var_4 = Struct_3(arg_0.b);
    return func_2();
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<vec3<u32>, 2>();
    var var_0 = vec4<bool>(true, true, false, all(vec4<bool>(select(true, true, true), true, !(551f == arg_0), _wgslsmith_dot_vec2_i32(vec2<i32>(-22666i, -43030i), vec2<i32>(-34066i, -1i)) <= ~(-9317i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, 356f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -464f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -210f) * vec2<f32>(1384f, arg_0))), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), var_0.xy, var_0.x), var_0.x))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), vec2<f32>(arg_0, 1385f))), vec2<f32>(_wgslsmith_f_op_f32(arg_0 + 206f), arg_0)))));
    let var_2 = func_3(func_2());
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_0) - vec2<f32>(arg_0, -1019f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -182f)) + vec2<f32>(-244f, -691f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2396f, var_1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, arg_0) * vec2<f32>(var_1.x, 1335f))))));
    return 715f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global0 = array<vec3<u32>, 2>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, ~1i), 0i, _wgslsmith_mod_i32(-(~(-11738i)), 1i)), 12696i);
    let var_2 = ~firstLeadingBit(~vec3<u32>(~u_input.a.x, var_0 | 17474u, u_input.b));
    global0 = array<vec3<u32>, 2>();
    let var_3 = abs(128381u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1398f), _wgslsmith_f_op_f32(max(180f, 555f)), _wgslsmith_f_op_f32(func_1(557f)))))), 0i, 14553u);
}

