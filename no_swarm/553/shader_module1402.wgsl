struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = select(!select(vec4<bool>(true, global0.b, arg_1.b, false), !(!vec4<bool>(false, arg_1.b, global0.b, global0.b)), !vec4<bool>(global0.b, global0.b, global0.b, global0.b)), vec4<bool>(~4294967295u < firstTrailingBit(10889u), true, !all(vec2<bool>(arg_1.b, true)), global0.b), !vec4<bool>(arg_1.b, true, false, true));
    let var_1 = select(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, 10169u, 4294967295u, 1u)), firstTrailingBit(vec4<u32>(36808u, 0u, 0u, 0u)), vec4<u32>(6674u, 39542u, 149u, 4294967295u))), vec4<u32>(60835u, 68503u, _wgslsmith_sub_u32(countOneBits(1535u), _wgslsmith_mult_u32(615u, 0u)), _wgslsmith_clamp_u32(1u, 0u, 187u) ^ min(65091u, 1u))), firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)), false);
    global1 = _wgslsmith_mod_i32(-1i, arg_0.x) & ~(-(~u_input.a << (_wgslsmith_mod_u32(4294967295u, 43319u) % 32u)));
    var var_2 = arg_1;
    var var_3 = -1000f;
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a + global0.a), global0.b);
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(0i, 29944i, u_input.a, u_input.a), Struct_1(var_0.a, var_0.b))), 1083f, var_0.a.x, 1760f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(559f, var_0.a.x, var_0.a.x, -669f))))), global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(var_0.a.xww * vec3<f32>(_wgslsmith_f_op_f32(select(-1544f, var_0.a.x, global0.b)), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-var_0.a.x))));
    var var_2 = !(!vec2<bool>(any(!vec3<bool>(var_0.b, var_0.b, var_0.b)), false));
    var var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(923f, -2320f, -965f, 246f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, 172f, var_0.a.x, global0.a.x), global0.a))))), vec4<f32>(138f, _wgslsmith_f_op_f32(-1694f * 343f), _wgslsmith_f_op_f32(global0.a.x * 1510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), select(any(select(!vec4<bool>(global0.b, global0.b, false, global0.b), vec4<bool>(global0.b, var_0.b, var_0.b, true), vec4<bool>(var_2.x, global0.b, var_2.x, global0.b))), var_2.x, !(_wgslsmith_f_op_f32(f32(-1f) * -879f) >= _wgslsmith_f_op_f32(825f - var_1.x))));
    return Struct_1(vec4<f32>(-2224f, -1030f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1328f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-388f, _wgslsmith_f_op_f32(exp2(var_3.a.x)))), 262f, _wgslsmith_dot_vec2_u32(vec2<u32>(14916u, 0u), vec2<u32>(0u, 4294967295u)) >= ~1u))), !(_wgslsmith_f_op_f32(-var_1.x) < var_3.a.x) != all(!vec4<bool>(true, var_0.b, var_3.b, global0.b)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(select(arg_0.b, true, true), any(arg_3.zyw), arg_3.x)), arg_3.zzx, vec3<bool>(arg_1.x, all(vec3<bool>(true, -697f <= arg_2.a.x, true)), true & !all(arg_3.ww)));
    let var_1 = _wgslsmith_sub_u32(~1u, firstLeadingBit(1u));
    let var_2 = func_2();
    var_0 = vec3<bool>(all(vec4<bool>(true, arg_1.x, !arg_2.b && (global0.a.x > -705f), false)), (true && !(var_0.x == true)) || true, all(arg_3.zxy));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-427f, 241f, global0.a.x, var_2.a.x), vec4<f32>(179f, -346f, global0.a.x, var_2.a.x))))), arg_2.a), !(!arg_1.x));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = u_input.a << (arg_1 % 32u);
    let var_0 = min(vec4<u32>(arg_3, arg_1 >> (1u % 32u), arg_3, _wgslsmith_sub_u32(~0u, arg_3)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(3073u, 46452u, arg_1, arg_3), vec4<u32>(0u, arg_3, 10340u, 6122u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, arg_1), vec4<u32>(25777u, 82700u, arg_1, 32642u))), arg_1, 39781u)) >> (_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, arg_3) & vec4<u32>(15121u, arg_1, 4294967295u, arg_3), vec4<u32>(4294967295u, arg_1, 4294967295u, 73274u) & vec4<u32>(arg_1, arg_1, arg_1, arg_1)), ~vec4<u32>(arg_3, ~53960u, reverseBits(arg_3), _wgslsmith_mod_u32(arg_3, 22650u))) % vec4<u32>(32u));
    let var_1 = !(!global0.b);
    global2 = array<vec2<i32>, 26>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(func_2().a, _wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(196f, arg_0.a.x, arg_0.a.x, global0.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(667f, -1521f, -834f, _wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x)) - arg_0.a), false)), all(!select(vec4<bool>(false, var_1, false, true), vec4<bool>(true, true, false, arg_2.b), func_1(Struct_1(vec4<f32>(1000f, arg_0.a.x, -522f, arg_0.a.x), var_1), vec4<bool>(true, var_1, false, arg_0.b), arg_0, vec4<bool>(arg_2.b, arg_2.b, arg_0.b, true)).b)));
    return Struct_1(arg_0.a, !(~var_0.x < (arg_1 >> (arg_1 % 32u))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec2<i32>, 26>();
    global0 = Struct_1(arg_1.a, any(!select(!vec4<bool>(true, true, global0.b, arg_1.b), vec4<bool>(true, false, global0.b, true), any(vec2<bool>(false, true)))));
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, 0u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 22057u)), ~7204u, 14201u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(25828u, 15160u, 33944u), vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(firstTrailingBit(3071u), 6230u, ~141459u))), 4294967295u);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(85497u, 0u, 0u), vec3<u32>(0u, 0u, 75990u)))));
    let var_1 = ~(~(vec3<u32>(~var_0.x, var_0.x, 63326u) | (~vec3<u32>(1u, var_0.x, 27988u) >> (max(vec3<u32>(var_0.x, 62131u, var_0.x), vec3<u32>(36808u, var_0.x, var_0.x)) % vec3<u32>(32u)))));
    global1 = -u_input.a;
    let var_2 = ~((var_1 >> (vec3<u32>(11508u, ~1u, _wgslsmith_sub_u32(var_1.x, 4294967295u)) % vec3<u32>(32u))) << (vec3<u32>(firstTrailingBit(~var_0.x), 1u, firstLeadingBit(20647u & var_0.x)) % vec3<u32>(32u)));
    let var_3 = func_5(-vec3<i32>(~u_input.a | -1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(86729i, -2147483647i), abs(-64346i), 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, -28631i)), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a.x, global0.a.x, 800f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, global0.a.x, 585f, global0.a.x), vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -176f), false))), any(select(vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, false, global0.b), true))), 4294967295u, func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -247f, global0.a.x, 711f)), all(vec2<bool>(true, global0.b))), !select(vec4<bool>(false, false, true, false), vec4<bool>(global0.b, global0.b, global0.b, false), vec4<bool>(true, global0.b, true, false)), Struct_1(global0.a, any(vec3<bool>(false, global0.b, global0.b))), select(!vec4<bool>(global0.b, global0.b, false, false), select(vec4<bool>(global0.b, true, true, false), vec4<bool>(true, true, true, global0.b), global0.b), global0.b)), var_2.x));
    global1 = -firstTrailingBit(~36909i);
    var var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(func_1(Struct_1(vec4<f32>(-449f, global0.a.x, 371f, global0.a.x), false), vec4<bool>(false, false, global0.b, false), Struct_1(var_3.a, var_3.b), vec4<bool>(var_3.b, false, global0.b, global0.b)), vec4<bool>(var_3.b, var_3.b, true, var_3.b), var_3, select(vec4<bool>(var_3.b, var_3.b, global0.b, true), vec4<bool>(true, true, var_3.b, var_3.b), vec4<bool>(true, var_3.b, false, false))).a.xxy), vec3<f32>(-893f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 55925i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, 28162i, u_input.a)), func_5(vec3<i32>(-2147483647i, u_input.a, u_input.a), var_3))), 170f)), -_wgslsmith_add_vec2_i32(vec2<i32>(-24851i, -36446i), -global2[_wgslsmith_index_u32(0u, 26u)]) << (_wgslsmith_clamp_vec2_u32(~(~var_0.xy), var_0.zy, var_1.xx & vec2<u32>(1u, 1u)) % vec2<u32>(32u)), select(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a)), firstLeadingBit(vec3<i32>(-30684i, 1i, -54336i))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-39218i, u_input.a, u_input.a), vec3<i32>(u_input.a, -32972i, 72085i) >> (var_2 % vec3<u32>(32u)), vec3<i32>(u_input.a, -49852i, u_input.a)), abs(vec3<i32>(~(-26914i), _wgslsmith_mult_i32(u_input.a, u_input.a), 2147483647i)), !(u_input.a != u_input.a)), vec3<i32>(abs(abs(u_input.a)), u_input.a, 0i >> (var_1.x % 32u)) | abs(vec3<i32>(u_input.a | 9026i, u_input.a, u_input.a)), vec3<u32>(4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, var_1.x), vec2<u32>(var_0.x, 67605u)), abs(_wgslsmith_div_u32(var_1.x, var_2.x | 1u))));
}

