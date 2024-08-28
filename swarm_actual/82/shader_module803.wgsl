struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: u32 = 2394u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    return !select(false, any(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<i32> {
    global0 = arg_0.c;
    var var_0 = Struct_2(1i, ~reverseBits(arg_0.b), true);
    let var_1 = ((!all(vec3<bool>(true, var_0.c, var_0.c)) && false) == !(!var_0.c || true)) | any(vec4<bool>(arg_0.c, false, !any(vec3<bool>(false, false, arg_2.x)), all(vec4<bool>(arg_2.x, true, true, false))));
    let var_2 = arg_0.a;
    global2 = 81414u;
    return _wgslsmith_div_vec4_i32(vec4<i32>(0i, _wgslsmith_sub_i32(arg_0.a, -1i), _wgslsmith_mod_i32(2147483647i, var_2), firstLeadingBit(2147483647i)) & abs(reverseBits(vec4<i32>(4990i, var_0.a, arg_0.a, var_0.a))), select(vec4<i32>(-17013i, u_input.c.x, arg_0.a, 0i), vec4<i32>(u_input.c.x, 0i, 30415i, var_2), 0u >= arg_0.b.x) << (reverseBits(vec4<u32>(u_input.d, 1u, arg_1.x, var_0.b.x)) % vec4<u32>(32u))) << (abs(~(~(~vec4<u32>(133200u, 4294967295u, 51607u, var_0.b.x)))) % vec4<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec4<i32> {
    return func_4(Struct_2(_wgslsmith_mult_i32(~(-1i), u_input.c.x), ~vec2<u32>(1u, 1u), all(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(47137u, u_input.d), vec2<u32>(71024u, 4294967295u))), vec2<bool>(!func_3(arg_1, u_input.b.x), false)) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 1u) ^ vec3<u32>(u_input.d, u_input.a, u_input.a), firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.a))), _wgslsmith_div_u32(u_input.a, ~u_input.a), ~(~u_input.a), ~_wgslsmith_mult_u32(u_input.a, 96205u)) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(4294967295u, _wgslsmith_clamp_vec4_i32(~(~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 34132i)), ~countOneBits(vec4<i32>(u_input.b.x, 73804i, -1i, -2147483647i)), max(~vec4<i32>(u_input.c.x, -16217i, u_input.c.x, -44243i), select(vec4<i32>(u_input.c.x, -22670i, 19464i, 55870i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), true)) & _wgslsmith_mult_vec4_i32(select(vec4<i32>(0i, 50423i, -16502i, 0i), vec4<i32>(101668i, u_input.b.x, -1i, u_input.b.x), false), ~vec4<i32>(u_input.c.x, -22820i, u_input.b.x, u_input.b.x))));
    let var_1 = Struct_1(3167u, _wgslsmith_add_vec4_i32(-func_2(true, -1058f), reverseBits(vec4<i32>(min(u_input.c.x, 1i), -var_0.b.x, -2147483647i, 0i))));
    var var_2 = !vec2<bool>(arg_0.x > -1000f, ((15544u == var_0.a) || true) == true);
    global1 = array<vec2<f32>, 16>();
    let var_3 = select(!vec4<bool>(arg_0.x < -1148f, !(arg_0.x != arg_0.x), !all(vec3<bool>(var_2.x, var_2.x, false)), ~24774i == -var_1.b.x), vec4<bool>(!all(vec4<bool>(var_2.x, var_2.x, true, var_2.x)), any(vec3<bool>(!var_2.x, any(vec3<bool>(var_2.x, var_2.x, false)), var_2.x)), all(select(!vec2<bool>(false, var_2.x), vec2<bool>(false, false), !var_2.x)), var_2.x), select(!(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x))), vec4<bool>(all(!vec3<bool>(var_2.x, false, var_2.x)), false | all(vec4<bool>(false, false, false, var_2.x)), select(true, false, true || var_2.x), any(!vec2<bool>(var_2.x, true))), !vec4<bool>(true, var_2.x, !var_2.x, !var_2.x)));
    return Struct_2(~firstTrailingBit(u_input.b.x), vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(~var_1.a, ~43962u, 53800u)), ~(~var_1.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 228f;
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1757f)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(135f, 885f)))))));
    global2 = _wgslsmith_div_u32(min(firstLeadingBit(~(~4294967295u)), ~(~(~4294967295u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(77036u, u_input.a, var_1.b.x) & firstTrailingBit(1u), u_input.d), ~var_1.b.x));
    var var_2 = var_1.b.x;
    let var_3 = -u_input.c.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -451f))));
    var var_5 = Struct_1(~(~u_input.d), ~vec4<i32>(func_4(Struct_2(-1777i, vec2<u32>(var_1.b.x, var_1.b.x), var_1.c), vec2<u32>(u_input.d, 0u), vec2<bool>(var_1.c, true)).x, var_1.a, u_input.c.x, _wgslsmith_add_i32(-8143i, u_input.c.x)) | select(firstTrailingBit(firstLeadingBit(vec4<i32>(15114i, var_1.a, var_1.a, 1i))), func_4(Struct_2(u_input.b.x, var_1.b, true), var_1.b, vec2<bool>(var_1.c, var_1.c)), !select(vec4<bool>(true, true, true, var_1.c), vec4<bool>(false, true, false, var_1.c), vec4<bool>(true, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(max(var_3, u_input.b.x), 230i), var_4, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4, _wgslsmith_f_op_f32(-var_4), select(true, true, var_1.c))))));
}

