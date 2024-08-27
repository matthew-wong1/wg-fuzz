struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -993f);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1939f, -5935i), Struct_1(221f, -38253i), Struct_1(363f, -19216i), Struct_1(-927f, 28208i), Struct_1(177f, 2147483647i), Struct_1(-1573f, 14859i), Struct_1(-655f, i32(-2147483648)), Struct_1(-501f, i32(-2147483648)), Struct_1(-425f, -64484i), Struct_1(-1000f, i32(-2147483648)), Struct_1(975f, 53475i), Struct_1(1000f, i32(-2147483648)), Struct_1(562f, 0i), Struct_1(109f, 51211i), Struct_1(-1000f, 9342i), Struct_1(315f, -34673i), Struct_1(182f, -2429i), Struct_1(437f, -1i), Struct_1(907f, -80339i), Struct_1(-617f, 0i), Struct_1(565f, 2147483647i), Struct_1(-673f, 2147483647i), Struct_1(-709f, 66560i), Struct_1(-526f, i32(-2147483648)), Struct_1(-1107f, 18890i), Struct_1(-843f, 0i), Struct_1(2365f, 4101i), Struct_1(-1000f, 38907i), Struct_1(-942f, 431i), Struct_1(-1462f, 22336i), Struct_1(-693f, 23818i), Struct_1(-1230f, -4514i));

var<private> global2: array<vec4<i32>, 10>;

var<private> global3: bool;

var<private> global4: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<bool>(true, false, false), 2147483647i, 17879u), Struct_2(vec3<bool>(false, false, false), 2147483647i, 30469u), Struct_2(vec3<bool>(false, false, false), 4092i, 4294967295u), Struct_2(vec3<bool>(false, true, true), 2147483647i, 0u), Struct_2(vec3<bool>(false, false, true), -1i, 17464u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = arg_0.x;
    return any(vec4<bool>(false, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, 4294967295u)) < abs(4294967295u), true, !select(false, true, false)), u_input.c.x <= (i32(-1i) * -1i), 60930u >= u_input.b));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(887f, -1005f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -173f) - vec2<f32>(-1675f, var_0))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(648f, var_0)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1625f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global0.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, -1325f)), vec2<f32>(var_0, global0.x)))));
    let var_1 = -25993i;
    global3 = func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 346f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, var_0) * vec2<f32>(var_0, global0.x)) + vec2<f32>(var_0, -663f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1059f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -574f), -503f)))));
    let var_2 = !(!all(vec3<bool>(true, false, true)));
    return ~max(_wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(0u, 0u)), vec2<u32>(17234u, ~u_input.b), ~vec2<u32>(u_input.b, 34564u) | vec2<u32>(1u, 26252u)), vec2<u32>(max(u_input.b << (u_input.b % 32u), u_input.b << (1u % 32u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b)));
}

fn func_3(arg_0: i32) -> StorageBuffer {
    let var_0 = vec2<bool>(true, true);
    global2 = array<vec4<i32>, 10>();
    global3 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2583f)), abs(firstTrailingBit(_wgslsmith_sub_i32(abs(arg_0), _wgslsmith_add_i32(arg_0, u_input.c.x)))));
    global3 = var_0.x;
    return StorageBuffer(var_1.a, 17195u, reverseBits(~(vec2<u32>(1u, u_input.b) >> (select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), var_0) % vec2<u32>(32u)))), u_input.a.xz, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(step(global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i << (1u % 32u), u_input.a.x) >> (~func_1() % vec2<u32>(32u)), abs(-vec2<i32>(u_input.a.x, u_input.a.x))));
}

