struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<u32>(57973u, 98731u), -120f);

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(vec2<u32>(1u, 4294967295u), 0u, Struct_1(vec4<u32>(0u, 1u, 4294967295u, 11712u), 1u, 2147483647i)), Struct_5(vec2<u32>(76899u, 103270u), 1u, Struct_1(vec4<u32>(0u, 98845u, 1u, 13877u), 56709u, -1i)), Struct_5(vec2<u32>(99220u, 4294967295u), 33034u, Struct_1(vec4<u32>(24137u, 0u, 110072u, 4294967295u), 1u, -48570i)), Struct_5(vec2<u32>(1u, 4294967295u), 47526u, Struct_1(vec4<u32>(0u, 36386u, 51665u, 40312u), 1u, 21618i)), Struct_5(vec2<u32>(37682u, 30246u), 288u, Struct_1(vec4<u32>(4294967295u, 0u, 13428u, 1u), 23378u, i32(-2147483648))), Struct_5(vec2<u32>(81564u, 0u), 1u, Struct_1(vec4<u32>(0u, 0u, 1u, 23u), 0u, 2147483647i)), Struct_5(vec2<u32>(4294967295u, 67438u), 0u, Struct_1(vec4<u32>(81801u, 12940u, 0u, 22154u), 1u, 0i)), Struct_5(vec2<u32>(1u, 82340u), 0u, Struct_1(vec4<u32>(47183u, 0u, 20018u, 53702u), 4294967295u, -1i)));

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    global1 = array<Struct_5, 8>();
    var var_1 = Struct_3(vec2<u32>(global0.a.x, 4610u << (global0.a.x % 32u)), _wgslsmith_f_op_f32(global0.b + -1075f));
    global2 = vec3<bool>(true, true, !global2.x);
    let var_2 = ~abs(vec4<i32>(u_input.a.x | u_input.a.x, firstLeadingBit(u_input.a.x), 1i, u_input.a.x >> (16775u % 32u))) << (reverseBits(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 0u, var_1.a.x, 0u), vec4<u32>(23400u, global0.a.x, 52785u, 50945u)), vec4<u32>(global0.a.x, global0.a.x, 4294967295u, 19004u) & vec4<u32>(50697u, 95426u, 9572u, var_1.a.x))) % vec4<u32>(32u));
    return Struct_3(vec2<u32>(abs(69206u), _wgslsmith_sub_u32(global0.a.x, _wgslsmith_mult_u32(~1u, var_1.a.x))), var_1.b);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = global2.xy;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1037f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) - global0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, global0.b)), global0.b) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(886f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-181f + global0.b)), global0.b, global0.b)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, global0.b)))), global0.b, -198f, 279f));
    var var_2 = ~reverseBits(88441u);
    global0 = func_2();
    var var_3 = Struct_2(global0.a, var_1.x, Struct_1(arg_1, _wgslsmith_mod_u32(0u, ~_wgslsmith_div_u32(arg_1.x, 1u)), arg_0.x));
    return !select(vec3<bool>(arg_2, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x), select(!vec3<bool>(arg_2, global2.x, var_0.x), !(!vec3<bool>(var_0.x, true, false)), !(!vec3<bool>(true, var_0.x, true))), !(!global2.x));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    global0 = Struct_3(func_2().a, 116f);
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(361f)), _wgslsmith_f_op_f32(floor(global0.b))), _wgslsmith_div_f32(global0.b, 403f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) * vec2<f32>(global0.b, arg_2)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_2), vec2<f32>(global0.b, 763f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global0.b)))))))));
    global1 = array<Struct_5, 8>();
    let var_1 = vec4<i32>(u_input.a.x, 2147483647i, _wgslsmith_clamp_i32(16545i, -2147483647i, arg_0), countOneBits(firstTrailingBit(u_input.a.x)));
    var var_2 = !(!func_1(reverseBits(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(65626u, global0.a.x, global0.a.x, global0.a.x)), _wgslsmith_div_u32(global0.a.x, global0.a.x) > global0.a.x).yz);
    return !select(arg_1, arg_1, any(vec4<bool>(var_1.x == u_input.a.x, var_0.x > -2693f, select(true, global2.x, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!vec3<bool>(true, false, u_input.a.x >= u_input.a.x), func_3(1i, vec3<bool>(all(func_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(global0.a.x, global0.a.x, 20052u, 1u), global2.x)), false, !global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1249f) - global0.b)), global2.x);
    global2 = vec3<bool>(-2147483647i != countOneBits(_wgslsmith_dot_vec3_i32(u_input.a & u_input.a, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), true, true);
    global0 = Struct_3(global0.a, global0.b);
    global1 = array<Struct_5, 8>();
    var var_0 = global0.b;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.b), 451f, global0.b, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))));
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.a.x, u_input.a.x, u_input.a.x & 0i, 1i) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 6834u), vec4<u32>(global0.a.x, global0.a.x, 4294967295u, 33690u)), min(4294967295u, global0.a.x), 18592u, _wgslsmith_sub_u32(global0.a.x, global0.a.x)) % vec4<u32>(32u)), -(vec4<i32>(u_input.a.x, -17287i, u_input.a.x, -1i) << (vec4<u32>(4294967295u, global0.a.x, 23067u, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(-85237i << (global0.a.x % 32u), -59867i << (global0.a.x % 32u), 61276i >> (global0.a.x % 32u), u_input.a.x)), -721f);
}

