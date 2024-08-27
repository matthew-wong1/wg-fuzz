struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(false, 19795u);

var<private> global2: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4, arg_3: Struct_4) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, arg_0), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -155f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(911f, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(439f, arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))) + vec2<f32>(332f, arg_0))))));
    var var_1 = arg_2.a;
    let var_2 = Struct_1(arg_2.a.b, select(vec2<bool>(false, true), vec2<bool>(true, arg_3.a.a), vec2<bool>(false, true)));
    var var_3 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(183f, var_0.x, true))), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(arg_0 - arg_0)));
    return arg_1.a.b ^ 1850u;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    global0 = ~reverseBits(-1i);
    return global1.b;
}

fn func_2() -> Struct_2 {
    global2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(global1.b, u_input.a), ((~u_input.a | _wgslsmith_div_u32(69447u, global1.b)) >> (~_wgslsmith_mult_u32(3700u, 9637u) % 32u)) << (func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f - -1000f)), Struct_1(func_3(359f, Struct_4(Struct_2(true, 0u)), Struct_4(Struct_2(global1.a, global1.b)), Struct_4(Struct_2(global1.a, global1.b))), vec2<bool>(global1.a, global1.a)), Struct_2(true | global1.a, ~u_input.a), Struct_3(Struct_1(global1.b, vec2<bool>(true, false)), Struct_1(37997u, vec2<bool>(false, true)), select(vec2<bool>(global1.a, false), vec2<bool>(true, global1.a), true))) % 32u));
    global0 = 11575i;
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -646f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f))))));
    let var_1 = Struct_3(Struct_1(min(global1.b, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 87409u, 24029u, global1.b)), reverseBits(vec4<u32>(global1.b, global1.b, 1u, global1.b)))), !select(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), vec2<bool>(true, global1.a)), select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, true), global1.a), all(vec2<bool>(global1.a, true)))), Struct_1(~39487u, vec2<bool>(!(global1.b == u_input.a), global1.a)), vec2<bool>(!all(select(vec3<bool>(global1.a, global1.a, false), vec3<bool>(false, false, false), vec3<bool>(false, global1.a, true))), any(!select(vec4<bool>(true, false, global1.a, global1.a), vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(true, global1.a, false, true)))));
    global2 = _wgslsmith_dot_vec3_u32(min(~(vec3<u32>(u_input.b, u_input.b, var_1.a.a) << (~vec3<u32>(global1.b, var_1.b.a, var_1.b.a) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~(vec3<u32>(var_1.b.a, global1.b, var_1.b.a) & vec3<u32>(global1.b, 12452u, 65979u)), vec3<u32>(~24887u, 32569u, _wgslsmith_div_u32(u_input.a, 75762u)))), select(_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.b, 67938u, 4294967295u)), ~vec3<u32>(23800u, 1u, 55326u)), ~(vec3<u32>(u_input.a, var_1.a.a, 0u) >> ((vec3<u32>(35463u, global1.b, global1.b) >> (vec3<u32>(var_1.a.a, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), true));
    return Struct_2(all(select(select(vec3<bool>(var_1.c.x, false, true), !vec3<bool>(global1.a, var_1.b.b.x, false), vec3<bool>(true, true, true)), select(!vec3<bool>(false, true, global1.a), vec3<bool>(true, global1.a, var_1.c.x), global1.a), true)), 93302u);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_4(func_2());
    var var_1 = var_0.a;
    global1 = func_2();
    global0 = -9895i;
    global1 = Struct_2(!any(!(!vec2<bool>(var_0.a.a, var_1.a))), 1u);
    return Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(arg_0.xx), vec2<u32>(arg_0.x, global1.b)), select(select(select(vec2<bool>(true, var_1.a), select(vec2<bool>(false, global1.a), vec2<bool>(false, false), vec2<bool>(global1.a, false)), false), select(select(vec2<bool>(false, true), vec2<bool>(global1.a, true), var_1.a), vec2<bool>(false, var_0.a.a), false), all(vec4<bool>(false, true, false, false))), vec2<bool>(select(global1.a || false, true, var_1.a), func_2().a), !global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a != (global1.a || true);
    var var_1 = Struct_1(global1.b, vec2<bool>(true, reverseBits(4294967295u) <= global1.b));
    let var_2 = func_1(vec4<u32>(abs(~u_input.a), ~global1.b, var_1.a, u_input.a), 6493i);
    var_0 = func_2().a || false;
    var var_3 = func_1(abs(min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 45539u, var_2.a, var_1.a), vec4<u32>(var_2.a, var_1.a, 113435u, 5245u)), vec4<u32>(global1.b, 0u, 4294967295u, var_1.a)) & _wgslsmith_clamp_vec4_u32(min(vec4<u32>(global1.b, var_2.a, 4294967295u, 1u), vec4<u32>(var_2.a, global1.b, var_2.a, 4294967295u)), ~vec4<u32>(var_1.a, var_1.a, var_1.a, var_2.a), vec4<u32>(var_1.a, 0u, 36472u, 0u) >> (vec4<u32>(global1.b, var_2.a, 4294967295u, 2566u) % vec4<u32>(32u)))), abs(abs(_wgslsmith_add_i32(~1i, ~7021i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-29792i, -45520i))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-128f, -249f)), 1f, -574f, 636f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(453f, -392f, 956f, 1469f), vec4<f32>(156f, 1000f, -1000f, -767f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(755f))), _wgslsmith_f_op_f32(-690f - _wgslsmith_f_op_f32(562f - -420f)), -1280f, 1000f), -(i32(-1i) * -10821i) >= firstTrailingBit(1i))), -vec2<i32>(~0i, -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-605f, -1614f, select(false, true, false))), _wgslsmith_f_op_f32(1546f + _wgslsmith_f_op_f32(trunc(2132f)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -142f, 115f, 992f))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(floor(-394f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-978f)), 1362f))))));
}

