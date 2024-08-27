struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32 = -1187f;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    var var_0 = global0.xy;
    global1 = 2199f;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_3.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.b) - _wgslsmith_f_op_vec4_f32(arg_3.b + arg_3.b))))), Struct_1(vec4<i32>(1i, 4258i, max(~13783i, 2147483647i), 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_1, 95435u, 9086u), vec4<u32>(4294967295u, arg_1, arg_1, 0u)) % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_3.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, -2224f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(583f, arg_3.b.x, 790f, arg_3.b.x) * vec4<f32>(759f, 181f, arg_3.b.x, arg_3.b.x))), global0.x))), select(!(!(!vec2<bool>(global0.x, true))), global0.zz, !(!select(global0.yy, vec2<bool>(false, false), global0.x))), -_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_3.a.x, u_input.d, arg_3.a.x), u_input.a), arg_3);
    var var_2 = _wgslsmith_f_op_f32(-var_1.e.b.x);
    var var_3 = 1f;
    return _wgslsmith_f_op_f32(188f * _wgslsmith_f_op_f32(-arg_3.b.x));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    global0 = vec3<bool>(!any(vec3<bool>(true, true, true)), !global0.x && true, arg_2.x != arg_2.x);
    global0 = vec3<bool>(true, any(!select(global0.zx, global0.yx, arg_1 | global0.x)), u_input.d >= -5167i);
    return -737f;
}

fn func_2() -> vec2<i32> {
    let var_0 = 19258u;
    let var_1 = u_input.a.x;
    let var_2 = var_0;
    global1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~u_input.c.x, ~u_input.c.x, Struct_4(46901u), Struct_1(vec4<i32>(-6276i, 5508i, var_1, -28091i), vec4<f32>(-161f, 890f, -707f, -391f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -434f), 2148f, true))))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -427f), -1560f, all(vec4<bool>(true, true, global0.x, global0.x))))))));
    let var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -35604i, -16601i, -24771i), vec4<i32>(var_1, u_input.d, u_input.a.x, 18402i))), -(vec4<i32>(var_1, var_1, 69911i, -2147483647i) & vec4<i32>(41537i, 58938i, var_1, -1i))), vec4<i32>(-1i, _wgslsmith_sub_i32(var_1, u_input.d), _wgslsmith_add_i32(var_1, -36073i), i32(-1i) * -84637i) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(48029u, var_0, u_input.b.x, u_input.b.x), vec4<u32>(1u, var_0, var_0, u_input.b.x), vec4<u32>(u_input.c.x, var_2, 12587u, var_2)), vec4<u32>(var_2, 0u, 23605u, 0u), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, false, false), global0.x)) % vec4<u32>(32u)), -_wgslsmith_div_vec4_i32(select(vec4<i32>(20549i, u_input.d, -1i, -2147483647i), vec4<i32>(6361i, 2147483647i, 1i, 15791i), vec4<bool>(false, false, false, global0.x)), ~vec4<i32>(u_input.a.x, -51380i, var_1, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1237f)), -993f, 456f, -2541f))));
    return firstLeadingBit(u_input.a.zx);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = !(!vec3<bool>(!(!global0.x), any(!global0.xz), !global0.x));
    let var_1 = select(!global0.yy, global0.xy, vec2<bool>(false, true));
    let var_2 = abs(select((vec3<i32>(-1i) * -u_input.a) ^ -(~vec3<i32>(-2147483647i, u_input.a.x, arg_1.x)), firstTrailingBit(firstLeadingBit(vec3<i32>(-1i, arg_1.x, u_input.d) | u_input.a)), select(vec3<bool>(var_1.x, true, 25710i <= arg_2), !select(vec3<bool>(false, global0.x, var_1.x), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(!global0.x, select(true, true, false), true))));
    var var_3 = true & all(vec4<bool>(!(false != global0.x), global0.x, !select(true, false, false), 483f < _wgslsmith_f_op_f32(floor(-1000f))));
    return vec3<bool>(select(true, true, false) && !all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_1.x, global0.x), vec3<bool>(false, true, true))), !all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, true, true), true != global0.x)), !(false | any(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), global0.x))));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> bool {
    global0 = func_5(arg_0, -func_2(), u_input.a.x);
    let var_0 = arg_0;
    let var_1 = Struct_4(_wgslsmith_div_u32(select(30464u & arg_0.a, ~u_input.b.x, global0.x) >> (firstTrailingBit(arg_0.a) % 32u), _wgslsmith_sub_u32(u_input.c.x, 4294967295u)));
    global1 = 242f;
    let var_2 = firstTrailingBit(~u_input.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(vec4<i32>(~(~(-25394i)), u_input.a.x << (~14214u % 32u), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.xz), max(-24031i, 7744i), 2147483647i), u_input.d), reverseBits(-vec4<i32>(u_input.d, 1i, 1i, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-663f * -591f))), -1000f, -1000f, 1080f));
    var var_1 = (min(-(var_0.a.zx & vec2<i32>(u_input.d, var_0.a.x)), -var_0.a.yz) & _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(0i, var_0.a.x)), _wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.xz))) ^ vec2<i32>(-11643i, var_0.a.x);
    var var_2 = vec3<u32>(~6871u, 0u, 18399u);
    global0 = vec3<bool>(!(!(!global0.x)), global0.x, func_1(Struct_4(~u_input.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.b.x))))) && any(vec2<bool>(global0.x, global0.x)));
    var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.a.x, _wgslsmith_mod_u32(~_wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(18492u, u_input.b.x)), 4294967295u));
}

