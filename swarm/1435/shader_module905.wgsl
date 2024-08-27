struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(357f), false, Struct_3(false, vec3<bool>(true, false, true)), 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = global0.a;
    var var_1 = Struct_3(global0.b, vec3<bool>(true, global0.c.b.x, !select(global0.c.b.x, true, global0.d < -7930i)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1064f);
    var_1 = global0.c;
    let var_3 = global0.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))) * arg_0.x) * 1346f);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: bool) -> vec3<u32> {
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(func_2(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.a.a)), _wgslsmith_div_f32(445f, 1287f), _wgslsmith_f_op_f32(trunc(arg_1.x)))))), any(global0.c.b), global0.c, u_input.d);
    var var_0 = Struct_1(_wgslsmith_sub_u32(reverseBits(arg_0.x | abs(1u)), 29185u), -1078f, abs(~(~vec3<u32>(0u, arg_0.x, 0u)) & abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, 1u), vec3<u32>(0u, arg_0.x, arg_0.x)))));
    global0 = Struct_4(global0.a, arg_2, Struct_3(any(!select(vec4<bool>(arg_2, false, global0.b, arg_2), vec4<bool>(global0.b, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, true))), global0.c.b), (1i ^ u_input.e) >> (arg_0.x % 32u));
    var var_1 = vec2<u32>(arg_0.x, 76951u);
    let var_2 = 27786i;
    return var_0.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global0.a.a, arg_1.b)), _wgslsmith_f_op_f32(abs(global0.a.a))))))), global0.b, Struct_3(global0.c.b.x, select(vec3<bool>(global0.c.b.x, global0.c.b.x, global0.b), select(!global0.c.b, vec3<bool>(global0.b, global0.c.b.x, false), global0.b), global0.b)), -2147483647i);
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~min(firstLeadingBit(arg_1.a), arg_1.a >> (arg_1.a % 32u))), arg_1.c.xz & ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a, arg_1.c.x), vec2<u32>(30878u, 17814u))), arg_1.c.yz);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.b))))), all(global0.c.b.yz), global0.c, 30640i & u_input.b);
    global0 = Struct_4(global0.a, true, Struct_3(arg_0.x > _wgslsmith_sub_i32(arg_0.x, -global0.d), global0.c.b), 1i);
    var var_1 = vec3<f32>(_wgslsmith_div_f32(global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_1.b) * _wgslsmith_div_f32(-243f, 539f)), _wgslsmith_div_f32(1000f, arg_1.b))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.b + -1503f))), arg_1.b));
    return global0.c;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    let var_0 = func_4(-max(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.a.x, 0i, -21387i, global0.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, u_input.b, 0i, 35981i), vec4<i32>(2147483647i, u_input.e, 0i, u_input.a.x))), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c.x, -27133i, -2147483647i), vec4<i32>(u_input.c.x, -18933i, global0.d, u_input.c.x))), Struct_1(~45482u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(func_2(vec3<f32>(1450f, global0.a.a, -219f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(882f, arg_1))), func_3(vec2<u32>(1u, ~0u), vec2<f32>(_wgslsmith_div_f32(1702f, global0.a.a), -200f), false)));
    var var_1 = Struct_1(0u & select(~_wgslsmith_div_u32(4877u, 1762u), ~reverseBits(4294967295u), var_0.b.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_1))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) >> (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    global0 = Struct_4(Struct_2(402f), !(!(!global0.c.a) | (all(vec3<bool>(false, global0.c.a, false)) && var_0.a)), Struct_3(global0.c.b.x, var_0.b), ~u_input.e);
    var_1 = Struct_1(76297u, _wgslsmith_f_op_f32(floor(-1000f)), var_1.c);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-var_1.b)), -2532f))), true, global0.c, -4042i);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(883f, global0.a.a)))))), _wgslsmith_sub_u32(1u, ~4294967295u) <= (~_wgslsmith_clamp_u32(66292u, 35561u, 0u) & 32446u), global0.c, min(global0.d, firstTrailingBit(~1i)));
    var var_0 = ~(~19490u);
    var var_1 = Struct_3(any(select(!(!global0.c.b.yx), vec2<bool>(func_1(global0.a, global0.a.a), true), select(select(vec2<bool>(false, global0.b), global0.c.b.xy, vec2<bool>(global0.c.b.x, false)), !global0.c.b.yx, global0.c.b.x))), global0.c.b);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - _wgslsmith_f_op_f32(-471f * global0.a.a))), global0.c.b.x, Struct_3(global0.b, func_4(-vec4<i32>(u_input.a.x, global0.d, 2147483647i, 38792i), Struct_1(0u, _wgslsmith_f_op_f32(select(203f, -2957f, true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(15027u, 1u, 1u), vec3<u32>(30641u, 0u, 4294967295u), vec3<u32>(1u, 69223u, 4294967295u)))).b), -u_input.c.x);
    var var_2 = ~firstLeadingBit(_wgslsmith_div_u32(3265u, ~1u) >> (firstLeadingBit(_wgslsmith_mult_u32(13834u, 14838u)) % 32u));
    var var_3 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(0u, 4294967295u, 23631u, 4294967295u)), firstLeadingBit(firstTrailingBit(vec4<u32>(6188u, 32905u, 4294967295u, 0u))))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_sub_u32(countOneBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(26134u, 1u, 4294967295u))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(15168u, 1u, 58096u), vec3<u32>(1u, 35148u, 21786u)), 1u, ~1u)) % vec4<u32>(32u));
    var_3 = ~abs(vec4<u32>(1u, _wgslsmith_mult_u32(var_3.x, 4294967295u), var_3.x ^ var_3.x, reverseBits(77329u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4061u, 1u, var_3.x), ~vec4<u32>(var_3.x, 4294967295u, 0u, var_3.x)) % vec4<u32>(32u)));
    var var_4 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, global0.d), _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(global0.d, 47702i))), -34285i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, u_input.d), global0.d), _wgslsmith_mod_i32(-17307i, min(u_input.c.x, global0.d)), 2147483647i)));
}

