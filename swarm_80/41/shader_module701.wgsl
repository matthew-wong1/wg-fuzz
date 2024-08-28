struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<vec2<i32>, 28>;

var<private> global2: Struct_1 = Struct_1(1i, vec2<bool>(false, true), -602f, -468f);

var<private> global3: array<vec2<u32>, 13>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(~(~0i), !global2.b, global2.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(-arg_2.x))), false & global2.b.x)));
    let var_1 = Struct_1(_wgslsmith_sub_i32(1i, select(-2147483647i, _wgslsmith_clamp_i32(-43026i, 0i, -2147483647i), any(vec3<bool>(var_0.b.x, true, global2.b.x)))) & 2147483647i, global2.b, global2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-459f))))))));
    var var_2 = vec3<bool>((any(vec3<bool>(false, false, false)) && true) || select(any(!vec3<bool>(var_0.b.x, var_1.b.x, true)), all(select(var_0.b, var_1.b, var_1.b.x)), !global2.b.x), ((global2.b.x && true) | var_1.b.x) && select(!any(vec3<bool>(global2.b.x, var_1.b.x, true)), any(select(vec3<bool>(var_0.b.x, var_1.b.x, var_1.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x), true)), all(vec3<bool>(global2.b.x, var_0.b.x, var_1.b.x)) | !global2.b.x), var_0.b.x);
    var_0 = var_1;
    var_0 = var_1;
    return !select(vec3<bool>(!(var_0.b.x || false), 2542u <= _wgslsmith_dot_vec4_u32(arg_3, vec4<u32>(4294967295u, 30490u, 4294967295u, 34862u)), global2.b.x), vec3<bool>(select(var_1.b.x, var_0.b.x, global2.b.x), true, select(var_0.b.x, false, true)), var_2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> vec3<bool> {
    let var_0 = !(!select(func_3(0i, vec4<i32>(arg_1, 0i, -6811i, 0i) ^ vec4<i32>(global2.a, 0i, arg_1, arg_1), vec3<f32>(global2.c, 599f, 1367f), ~vec4<u32>(1u, 0u, u_input.a.x, 25665u)), vec3<bool>(global2.b.x, u_input.a.x != u_input.a.x, true & arg_0.x), !func_3(-1i, vec4<i32>(arg_1, -2147483647i, global2.a, 1i), vec3<f32>(global2.c, -496f, 617f), vec4<u32>(26233u, u_input.b, 33281u, 0u))));
    global3 = array<vec2<u32>, 13>();
    var var_1 = true;
    let var_2 = vec4<i32>(~arg_1, arg_1, -abs(31982i | arg_1), _wgslsmith_mult_i32(-countOneBits(-49704i), _wgslsmith_mult_i32(~global2.a, arg_1 >> (59247u % 32u)))) & ~vec4<i32>(global2.a, _wgslsmith_add_i32(41965i << (u_input.a.x % 32u), -22925i), -global2.a << (0u % 32u), global2.a);
    var_1 = !arg_0.x;
    return vec3<bool>(any(var_0), !global2.b.x, global2.c > -1150f);
}

fn func_1() -> Struct_3 {
    var var_0 = -2007f;
    global0 = array<Struct_4, 13>();
    let var_1 = select(vec3<bool>(global2.b.x, true, all(select(!vec3<bool>(global2.b.x, true, global2.b.x), vec3<bool>(true, global2.b.x, global2.b.x), global2.b.x))), !select(vec3<bool>(global2.a == 22676i, false, global2.b.x), vec3<bool>(global2.b.x, false, true), any(global2.b) && (-1075f >= global2.d)), func_2(vec2<bool>((global2.a < 0i) || true, select(true, select(true, false, false), false)), global2.a));
    let var_2 = Struct_2(vec3<i32>(~(~max(global2.a, global2.a)), global2.a, abs(_wgslsmith_mult_i32(global2.a, global2.a))), Struct_1(1i, vec2<bool>(true, global2.b.x), global2.d, _wgslsmith_f_op_f32(select(1591f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * 426f))), select(false, global2.b.x, false)))), Struct_1(global2.a, select(global2.b, global2.b, !select(vec2<bool>(global2.b.x, true), global2.b, vec2<bool>(false, global2.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-635f - global2.d))), global2.c), vec4<u32>(max(u_input.a.x, ~(~u_input.b)), firstTrailingBit(~(~24271u)), 1u, u_input.a.x), global2.a);
    global0 = array<Struct_4, 13>();
    return Struct_3(var_2, var_2.b, -abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, global2.a, var_2.b.a, -968i), vec4<i32>(global2.a, 1i, -62396i, global2.a) | vec4<i32>(-14465i, -3791i, -35413i, 78902i), vec4<i32>(var_2.e, var_2.e, 3536i, var_2.c.a))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.a.c;
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(~(arg_2.a & 9389i), -32075i), arg_2.a);
    let var_2 = Struct_4(!select(!select(vec2<bool>(global2.b.x, true), vec2<bool>(arg_2.b.x, arg_2.b.x), arg_2.b), !arg_3.a.c.b, vec2<bool>(true, arg_2.b.x)));
    let var_3 = Struct_4(func_1().b.b);
    let var_4 = 10892u;
    return arg_3;
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    return func_4(_wgslsmith_f_op_f32(259f - _wgslsmith_f_op_f32(-arg_0.b.d)), ~(~u_input.b), func_1().a.b, Struct_3(func_4(_wgslsmith_f_op_f32(abs(-758f)), 0u, func_4(384f, 1u, func_4(global2.d, 1u, arg_0.a.b, Struct_3(Struct_2(vec3<i32>(-1i, arg_0.b.a, arg_0.b.a), arg_0.b, Struct_1(global2.a, vec2<bool>(true, arg_0.a.b.b.x), arg_0.a.c.d, 1102f), vec4<u32>(4294967295u, u_input.a.x, arg_0.a.d.x, 52172u), -23277i), arg_0.b, arg_0.c)).a.b, arg_0).a.c, func_4(-2156f, arg_0.a.d.x | 35415u, Struct_1(arg_0.b.a, vec2<bool>(arg_0.a.b.b.x, global2.b.x), -647f, 546f), Struct_3(arg_0.a, arg_0.b, vec4<i32>(arg_0.a.b.a, arg_0.a.e, arg_0.c.x, global2.a)))).a, Struct_1(-global2.a, arg_0.b.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.b.c, 2393f), 131f, false)), arg_0.a.b.c), -firstTrailingBit(vec4<i32>(1i, global2.a, 27145i, -20408i)))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(-1000f, 17217u, Struct_1(-24193i, !vec2<bool>(true, global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.d)) - _wgslsmith_f_op_f32(min(global2.c, -453f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.d * 468f)))), func_1()));
    var var_1 = var_0.b.x;
    global2 = var_0;
    var var_2 = false & var_0.b.x;
    var var_3 = !(!select(select(select(vec4<bool>(false, false, global2.b.x, global2.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(true, var_0.b.x, global2.b.x, false)), vec4<bool>(false, global2.b.x, global2.b.x, global2.b.x), global2.b.x), vec4<bool>(true, func_2(var_0.b, -10980i).x, true, false), true));
    var var_4 = select(_wgslsmith_sub_u32(u_input.b, 0u), ((~u_input.b ^ 0u) >> (reverseBits(_wgslsmith_add_u32(4294967295u, 0u)) % 32u)) ^ (_wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 0u)) & (u_input.a.x ^ _wgslsmith_mult_u32(u_input.b, 61187u))), func_3(1i, vec4<i32>(~1i, ~(i32(-1i) * -5735i), _wgslsmith_div_i32(~(-18450i), _wgslsmith_mod_i32(21676i, -4615i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -28142i), vec2<i32>(-2147483647i, -2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 222f, var_0.d)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c, global2.c, -574f), vec3<f32>(1225f, -314f, global2.d))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 942f, -434f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.c, var_0.d)))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.b, 4294967295u, 1u, 80764u)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.b, 7162u), vec4<u32>(25200u, 1u, u_input.a.x, u_input.a.x)), vec4<u32>(0u, 0u, u_input.a.x, 1u)), vec4<u32>(~u_input.b, ~u_input.b, _wgslsmith_div_u32(47864u, u_input.b), min(0u, 53358u)))).x);
    var var_5 = _wgslsmith_div_i32(func_1().c.x, func_1().b.a);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.d)), _wgslsmith_f_op_f32(ceil(-468f)))), 1000f, global2.c, var_0.d), firstTrailingBit(_wgslsmith_mod_i32(abs(-7217i), select(-42346i, -1i, var_3.x) ^ _wgslsmith_div_i32(global2.a, global2.a))), min(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 35726u, u_input.a.x, u_input.b) >> (vec4<u32>(8587u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b) | firstTrailingBit(vec4<u32>(47287u, u_input.b, u_input.b, u_input.b))), ~(vec4<u32>(u_input.b, 81366u, 0u, u_input.a.x) << (vec4<u32>(33835u, 4294967295u, u_input.a.x, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b), select(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.a.x, u_input.b), var_0.b.x))));
}

