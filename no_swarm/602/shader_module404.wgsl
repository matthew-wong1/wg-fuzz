struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, true), vec2<i32>(-50387i, 51486i), vec4<f32>(-146f, -1060f, 1096f, -1244f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>) -> vec2<i32> {
    var var_0 = global0.a.x;
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(34434u, u_input.a.x, u_input.c, 25235u), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)) | countOneBits(vec4<u32>(u_input.a.x, 0u, 1u, u_input.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yy), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 1u, ~u_input.a.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), ~vec4<u32>(u_input.c, 1u, 996u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, 27636u, u_input.c), vec4<u32>(1u, 4294967295u, 0u, 66094u)) << (vec4<u32>(3316u, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))) ^ ~vec4<u32>(min(u_input.a.x, 9677u) & _wgslsmith_dot_vec3_u32(vec3<u32>(15195u, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.c, 37282u)), 62744u, 63301u, select(select(39770u, u_input.a.x, global0.a.x), 36604u, true));
    var_0 = global0.a.x;
    let var_2 = Struct_2(~(-23911i), true);
    var_0 = any(global0.a);
    return abs(-(global0.b | vec2<i32>(_wgslsmith_mult_i32(global0.b.x, var_2.a), reverseBits(1i))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.a;
    return Struct_1(!vec3<bool>(false, true, false == arg_0.b), func_3(_wgslsmith_mult_i32(global0.b.x, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) + _wgslsmith_f_op_vec4_f32(global0.c + vec4<f32>(global0.c.x, global0.c.x, 434f, -1493f)))), global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = func_2(Struct_2(~(~_wgslsmith_mod_i32(arg_0.b.x, -1i)), !(!arg_0.a.x)));
    let var_0 = global0.a.x;
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, -23223i, ~(arg_0.b.x & -17955i)), vec3<i32>(~_wgslsmith_mult_i32(arg_0.b.x, -2147483647i), -30102i, i32(-1i) * -19868i)) | ~abs(vec3<i32>(~u_input.b, u_input.b << (u_input.a.x % 32u), u_input.d | global0.b.x));
    global0 = func_2(Struct_2(0i & global0.b.x, any(select(select(vec4<bool>(false, global0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(true, arg_0.a.x, global0.a.x, true), vec4<bool>(true, global0.a.x, true, false)), !vec4<bool>(false, true, false, arg_0.a.x), !global0.a.x))));
    global0 = Struct_1(vec3<bool>(any(vec3<bool>(true, func_2(Struct_2(var_1.x, true)).a.x, true)), global0.a.x, any(global0.a)), -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(func_3(global0.b.x, vec4<f32>(-334f, 1246f, arg_0.c.x, 1407f)), var_1.zz), vec2<i32>(arg_0.b.x, i32(-1i) * -8452i)), _wgslsmith_f_op_vec4_f32(sign(global0.c)));
    return Struct_1(!(!select(vec3<bool>(true, arg_0.a.x, true), !vec3<bool>(false, false, arg_0.a.x), !global0.a)), _wgslsmith_add_vec2_i32(global0.b, arg_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.x, global0.c.x, arg_0.c.x, arg_0.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(global0.c.x * global0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x), 1000f, _wgslsmith_f_op_f32(global0.c.x * 642f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_1(!(!(!vec3<bool>(false, global0.a.x, true))), ~_wgslsmith_mod_vec2_i32(firstTrailingBit(global0.b), -vec2<i32>(global0.b.x, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, 424f, global0.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(max(global0.c, vec4<f32>(global0.c.x, 831f, global0.c.x, 1000f)))))), ~countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(10866u, u_input.c), ~vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a.x, 20451u), abs(~(u_input.a.zz >> (u_input.a.xy % vec2<u32>(32u))))));
    var var_0 = Struct_2(u_input.d, func_2(Struct_2(_wgslsmith_clamp_i32(-u_input.d, max(1i, global0.b.x), global0.b.x), global0.a.x)).a.x);
    var_0 = Struct_2(min(u_input.d, 26204i), global0.a.x);
    var var_1 = vec2<f32>(1171f, global0.c.x);
    var var_2 = vec3<i32>(0i, func_3(18054i, _wgslsmith_f_op_vec4_f32(floor(func_2(Struct_2(var_0.a, false)).c))).x, (-11733i & _wgslsmith_sub_i32(u_input.b, 18340i)) << (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, 4294967295u), vec3<u32>(u_input.a.x, 1u, u_input.c)), 46890u) % 32u));
    let var_3 = Struct_3(vec2<bool>(!var_0.b, -func_2(Struct_2(var_0.a, global0.a.x)).b.x > -59898i), Struct_2(var_0.a, !(true | (false | global0.a.x))), func_1(func_1(func_2(Struct_2(-2147483647i, true)), min(1u, 4294967295u) << (~4294967295u % 32u), _wgslsmith_div_vec2_u32(u_input.a.zy, vec2<u32>(u_input.a.x, 130890u) << (u_input.a.yx % vec2<u32>(32u)))), select(firstTrailingBit(54818u) >> (u_input.c % 32u), u_input.a.x, func_2(Struct_2(global0.b.x, false)).a.x), select(u_input.a.xy, vec2<u32>(u_input.c, u_input.c), !global0.a.x)), Struct_2(-(~func_3(35285i, vec4<f32>(global0.c.x, 929f, -580f, -947f)).x), true));
    var var_4 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(~u_input.c, firstTrailingBit(75765u), _wgslsmith_add_u32(u_input.c, 14437u), u_input.a.x & 30271u)), abs(~min(vec4<u32>(6458u, u_input.c, 4294967295u, 60304u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.c, 0u, 1u), vec4<u32>(4294967295u, u_input.c, u_input.a.x, u_input.c), vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.c)))));
    var var_5 = _wgslsmith_add_vec2_u32(var_4.wy << ((~vec2<u32>(u_input.a.x, 10413u) & var_4.yw) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(select(~(vec2<u32>(39139u, var_4.x) >> (vec2<u32>(var_4.x, 4294967295u) % vec2<u32>(32u))), ~vec2<u32>(4294967295u, 0u), !var_0.b), vec2<u32>(var_4.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.c.yxx, global0.c.xwx, u_input.d);
}

