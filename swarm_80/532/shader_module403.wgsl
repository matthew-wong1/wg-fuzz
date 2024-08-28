struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(2147483647i, 31935i, -1i, 0i), vec4<i32>(1i, 10841i, -267i, 0i), vec4<i32>(47187i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(2147483647i, -5801i, i32(-2147483648), -42440i), vec4<i32>(i32(-2147483648), 1i, 16692i, -21574i), vec4<i32>(-20311i, -9075i, -1i, -19030i), vec4<i32>(-1035i, 1i, i32(-2147483648), 0i), vec4<i32>(0i, 9662i, -19199i, 1i), vec4<i32>(2147483647i, -3796i, -1i, 2147483647i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    var var_0 = arg_1;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(1256f - _wgslsmith_f_op_f32(abs(2644f))), -1050f, _wgslsmith_f_op_f32(f32(-1f) * -469f));
    let var_2 = Struct_1(all(!vec2<bool>(!global1.a, -1i == arg_1.x)), ~global1.b, abs(global1.c << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 1u, u_input.c.x)) % 32u)));
    global2 = array<vec4<i32>, 9>();
    var var_3 = !select(!(!vec4<bool>(var_2.a, global1.a, global1.a, false)), vec4<bool>(true, true, false, !(u_input.a >= u_input.a)), any(!vec3<bool>(global1.a, false, var_2.a)));
    return ~_wgslsmith_div_i32(var_2.b.x | ~global1.b.x, global1.b.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec3<bool>(!(2147483647i >= ~func_3(-2147483647i, vec3<i32>(arg_0, -1i, u_input.d))), false, global1.a);
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32(global0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, arg_0, 21893i), countOneBits(global1.b.xyy))));
    var var_2 = Struct_1(true, vec4<i32>(i32(-1i) * -62403i, -1i, u_input.d, 27323i), 15871i);
    var var_3 = Struct_1(true, vec4<i32>(u_input.b, arg_0, _wgslsmith_mod_i32(global1.b.x, -(-2147483647i >> (0u % 32u))), _wgslsmith_mod_i32(-2147483647i, -u_input.d)), -global0.x);
    let var_4 = Struct_1(select(true, global1.a, var_0.x), abs(vec4<i32>(~u_input.b, 2147483647i, global0.x, _wgslsmith_add_i32(var_3.b.x ^ -2147483647i, _wgslsmith_div_i32(-40912i, -5212i)))), -(~2069i));
    return var_4;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(arg_2, global0.x, 0i) >> (vec3<u32>(4294967295u, u_input.c.x, 9397u) % vec3<u32>(32u)), arg_1.b.yyw & arg_1.b.yyx), arg_1.b.xxx) << (select(vec3<u32>(_wgslsmith_add_u32(0u, u_input.a), countOneBits(1u), _wgslsmith_sub_u32(u_input.c.x, 54141u)), ~select(vec3<u32>(u_input.c.x, 1u, 4294967295u), vec3<u32>(0u, 1u, 0u), true), any(select(vec4<bool>(global1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(global1.a, global1.a, global1.a, global1.a), vec4<bool>(true, arg_1.a, false, global1.a)))) % vec3<u32>(32u)), ~(countOneBits(vec3<i32>(global1.b.x, arg_1.c, global1.b.x)) << (reverseBits(~vec3<u32>(14431u, 0u, 0u)) % vec3<u32>(32u))));
    global2 = array<vec4<i32>, 9>();
    global2 = array<vec4<i32>, 9>();
    global1 = func_2(global0.x);
    return Struct_1(!select(!(291f <= arg_0.x), true, (global1.a || true) & true), global1.b, _wgslsmith_sub_i32(func_2(global1.c >> (~u_input.c.x % 32u)).b.x, (-18416i ^ var_0.x) ^ -2147483647i));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> vec2<i32> {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(223f + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(250f, 210f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1950f))))), func_2(firstLeadingBit(~_wgslsmith_mult_i32(7780i, u_input.d))), 58335i, vec2<f32>(1f, 1f));
    var var_1 = var_0;
    var var_2 = Struct_1(false, var_1.b, ~global1.b.x);
    var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, -420f, 295f, 1071f)))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(244f, -246f, 1978f, 1048f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(181f, -1063f, -530f, 224f))), func_4(vec4<f32>(_wgslsmith_f_op_f32(sign(437f)), -431f, _wgslsmith_f_op_f32(-2307f * -1344f), _wgslsmith_div_f32(622f, 336f)), Struct_1(true, _wgslsmith_add_vec4_i32(var_0.b, var_1.b), var_1.b.x), _wgslsmith_sub_i32(func_3(-2147483647i, var_0.b.xyy), ~(-1i)), vec2<f32>(_wgslsmith_f_op_f32(1000f - -520f), _wgslsmith_f_op_f32(f32(-1f) * -281f))), var_2.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1428f, -725f))))), ~var_2.b.x, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(361f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-475f * 281f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-649f, 1875f)), _wgslsmith_f_op_f32(step(-512f, _wgslsmith_f_op_f32(step(1370f, -1016f))))))));
    global1 = Struct_1(func_2(var_0.c).a, var_2.b, var_2.c | -1i);
    return max(vec2<i32>(countOneBits(0i), _wgslsmith_add_i32(-8168i, 1i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, -2147483647i), var_2.b.xz) & -func_2(global1.c).b.xz) & ((_wgslsmith_clamp_vec2_i32(global1.b.zx, vec2<i32>(1i, var_0.c), _wgslsmith_mult_vec2_i32(var_2.b.zy, global1.b.zy)) | (var_1.b.yz << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))) ^ ((_wgslsmith_div_vec2_i32(vec2<i32>(-5735i, 0i), var_1.b.wz) ^ _wgslsmith_div_vec2_i32(var_0.b.yw, vec2<i32>(-9912i, var_0.b.x))) >> (vec2<u32>(u_input.a & u_input.a, abs(40917u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(30033i, _wgslsmith_sub_i32(u_input.d, ~(-3707i)), u_input.b);
    let var_0 = global0.x;
    var var_1 = global1.a;
    let var_2 = func_1(vec4<u32>(u_input.a, u_input.a, u_input.c.x, _wgslsmith_clamp_u32(0u, 65856u, 0u)), 1i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -793f) - vec2<f32>(380f, -811f))))))));
    var var_4 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(max(1466f, -585f)), -1000f, _wgslsmith_f_op_f32(-892f - 1181f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, var_3.x, var_3.x, -321f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(113f, -748f, -565f, -1830f)))))), func_2(u_input.b), global1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_3.x - -741f))), _wgslsmith_f_op_f32(exp2(var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.c.x, 19469u), vec3<u32>(2701u, 16372u, u_input.c.x), abs(vec3<u32>(1771u, u_input.c.x, u_input.a)))), ~(~max(~u_input.a, u_input.c.x)));
}

