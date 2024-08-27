struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, false, false, true)));

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_3) -> vec2<f32> {
    global0 = array<vec4<f32>, 6>();
    var var_0 = -u_input.e;
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(14892u | _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.d.x, 1u, 0u)) << ((u_input.d.x << (u_input.d.x % 32u)) % 32u), _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(4294967295u, 4294967295u)), u_input.a.x), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(223f, _wgslsmith_f_op_f32(step(1f, 1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1430f))) * 1f)))));
    let var_3 = u_input.c << (9513u % 32u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1037f, _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-1000f + var_2))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5) -> Struct_1 {
    var var_0 = vec2<bool>(arg_2.a.a.a.x, true);
    var var_1 = Struct_5(Struct_3(Struct_2(!(!vec4<bool>(global1.a.a.x, false, var_0.x, true)))));
    let var_2 = global4.a.x;
    var var_3 = min(u_input.a, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 103527u, 10698u, u_input.d.x), select(u_input.a, u_input.a, global3.x)) >> (1u % 32u), u_input.c, abs(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 1u, 1u, 1508u), u_input.a), u_input.a)), 88487u));
    var var_4 = Struct_4(~(~var_3.x));
    return Struct_1(u_input.a, var_3.x, min(-u_input.e.x & u_input.e.x, -(i32(-1i) * -u_input.e.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> Struct_4 {
    global0 = array<vec4<f32>, 6>();
    var var_0 = Struct_2(vec4<bool>(true, true, any(arg_1.a.a.a.yxx), false));
    global2 = array<Struct_2, 8>();
    var var_1 = arg_0;
    let var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -287f) - _wgslsmith_f_op_f32(round(459f))) + 699f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1579f, _wgslsmith_f_op_f32(min(479f, 475f)))))), -558f, 382f);
    return Struct_4(u_input.c & u_input.d.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_4 {
    global2 = array<Struct_2, 8>();
    var var_0 = true;
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(37729u, _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a)), 8u)]);
    global0 = array<vec4<f32>, 6>();
    var var_2 = u_input.a;
    return func_4(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -678f) * 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1, arg_1, arg_0.a.zw)) - _wgslsmith_f_op_vec2_f32(func_2(Struct_5(Struct_3(var_1.a)), global1.a.a, var_1.a, Struct_3(Struct_2(global4.a)))))), Struct_5(Struct_3(arg_0))), Struct_5(Struct_3(var_1.a)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>) -> bool {
    global3 = global1.a.a;
    let var_0 = vec2<bool>(global1.a.a.x, true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1f));
    var var_2 = u_input.d.zy;
    let var_3 = arg_1.ww;
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + -576f))))), _wgslsmith_f_op_f32(f32(-1f) * -1377f));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(147f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-600f + var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-813f, var_0.x))) + vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)), func_5(func_1(global1.a, vec2<f32>(var_0.x, 298f)), -vec4<i32>(2147483647i, 7342i, u_input.b, 0i)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 1681f), vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-800f, 1364f) - vec2<f32>(1000f, var_0.x)), vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, var_0.x) - vec2<f32>(var_0.x, 1005f))))))));
    let var_1 = Struct_1(vec4<u32>(4294967295u >> (u_input.d.x % 32u), ~(~_wgslsmith_add_u32(u_input.d.x, u_input.c)), ~u_input.c, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), ~select(~firstTrailingBit(u_input.c), u_input.a.x, any(vec4<bool>(false, global3.x, false, false))), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(63467i, u_input.e.x, -1i, -1i)), vec4<i32>(23691i, 2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, u_input.e.x, 9899i, u_input.b), vec4<i32>(0i, u_input.b, -21462i, u_input.b) << (u_input.a % vec4<u32>(32u))), u_input.e.x)));
    let var_2 = var_1;
    global2 = array<Struct_2, 8>();
    let var_3 = func_3(-255f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(693f, -246f), vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.x)), !global3.xw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), Struct_5(Struct_3(Struct_2(select(vec4<bool>(global3.x, global4.a.x, global4.a.x, false), global1.a.a, global1.a.a.x)))));
    let var_4 = 1u;
    let var_5 = func_3(_wgslsmith_f_op_f32(-var_0.x), vec2<f32>(var_0.x, -145f), Struct_5(Struct_3(Struct_2(select(vec4<bool>(false, global1.a.a.x, global4.a.x, false), vec4<bool>(false, global1.a.a.x, false, false), global4.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(10737u, 4294967295u ^ reverseBits(~u_input.c)), 1i, 37828u & abs(var_2.b), var_2.a.zw);
}

