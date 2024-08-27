struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.b.yy)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec4<bool>(!(u_input.a != u_input.b), true, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 1120f, -1266f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1202f)), _wgslsmith_f_op_f32(trunc(1465f)), _wgslsmith_f_op_f32(f32(-1f) * -989f))), u_input.b << (_wgslsmith_add_u32(0u, 4294967295u) % 32u), ~(~select(vec4<u32>(4294967295u, 128305u, u_input.b, 26214u), vec4<u32>(52788u, 4023u, u_input.e, u_input.a), arg_0)), ~vec3<u32>(u_input.a ^ u_input.e, 0u, firstLeadingBit(58406u))), ~u_input.a, !arg_0 && any(vec2<bool>(!arg_0, true))));
    let var_2 = Struct_4(_wgslsmith_sub_i32(-2147483647i, u_input.d.x), var_1.x, vec3<bool>(arg_0, u_input.e <= u_input.b, !arg_0), Struct_2(~(~(u_input.e & 8658u))), select(vec2<u32>(~(~u_input.b), ~_wgslsmith_add_u32(u_input.a, u_input.b)), vec2<u32>(48638u, ~(u_input.b >> (8736u % 32u))), select(arg_0, arg_0, arg_0 || arg_0)));
    var var_3 = !vec4<bool>(var_2.c.x, arg_0, true == all(select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, false), var_2.c.x)), true);
    let var_4 = ~_wgslsmith_mod_vec3_u32(select(~vec3<u32>(82124u, 4294967295u, u_input.a), vec3<u32>(~u_input.e, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(53702u, u_input.e, var_2.e.x, var_2.e.x), vec4<u32>(28967u, 1u, 28053u, 36616u))), vec3<bool>(!var_2.c.x, all(var_2.c), true)), reverseBits(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(2194u, 29230u), var_2.e), u_input.a)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(597f * var_2.b)))))))));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1045f))), arg_0 == ~(-48649i))));
    let var_1 = ~(abs(vec4<u32>(abs(41082u), 5005u, u_input.e << (6669u % 32u), abs(2751u))) ^ vec4<u32>(select(u_input.e, _wgslsmith_mod_u32(38139u, u_input.e), u_input.e != 92231u), u_input.a, ~14319u, 1u));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_u32(4294967295u, 4294967295u) >= var_1.x)), var_0), _wgslsmith_f_op_f32(234f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1217f, 747f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 883f)))), var_0, 188f);
    var var_3 = vec3<bool>((false & !all(vec3<bool>(false, false, false))) || all(vec3<bool>(true, true, true)), false, false);
    let var_4 = vec3<i32>(firstTrailingBit(reverseBits(max(~23949i, ~arg_0))), _wgslsmith_sub_i32(34737i, 51272i), 1i);
    return vec2<bool>(!var_3.x || true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 216f;
    let var_1 = Struct_2(u_input.b);
    var var_2 = true;
    var_2 = all(select(func_1(_wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_sub_i32(-4948i, -50001i))), vec2<bool>(true, true), vec2<bool>(true, _wgslsmith_add_u32(u_input.e, u_input.a) <= ~90652u)));
    var_2 = true;
    let var_3 = u_input.d.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(148f)), 1000f, var_0)))));
    var_2 = any(!vec3<bool>(true, var_4.x > -276f, true));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_4.x)), _wgslsmith_div_f32(var_4.x, var_4.x)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_4.zx), _wgslsmith_f_op_vec2_f32(select(var_4.xz, var_4.yz, false)))))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-64307i, 0i), u_input.d.zx << (vec2<u32>(12934u, u_input.a) % vec2<u32>(32u))), select(select(u_input.d.yz, vec2<i32>(u_input.c, -10779i), true), vec2<i32>(2147483647i, var_3), true)), _wgslsmith_mod_vec2_i32(u_input.d.yx, vec2<i32>(-30310i, max(2843i, var_3)))));
}

