struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec3<u32>(42332u, 0u, 4294967295u), true, true, 1i), 18408i, Struct_1(vec2<i32>(0i, -22813i), vec2<i32>(-1i, 0i), -241f, vec3<f32>(-878f, 627f, -617f), vec4<i32>(-1i, 9487i, 23873i, 23606i)), Struct_1(vec2<i32>(-1i, 20787i), vec2<i32>(2147483647i, -6728i), 318f, vec3<f32>(179f, -1000f, 1000f), vec4<i32>(-1i, -20943i, -8870i, -58255i)), -1i);

var<private> global2: array<vec4<f32>, 13>;

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(1u), Struct_4(1u), Struct_4(0u), Struct_4(1u), Struct_4(0u), Struct_4(21282u), Struct_4(4294967295u), Struct_4(27589u), Struct_4(4294967295u), Struct_4(4294967295u), Struct_4(1u), Struct_4(1u), Struct_4(1u), Struct_4(1u), Struct_4(40802u), Struct_4(0u), Struct_4(1u), Struct_4(1u));

var<private> global4: u32 = 1u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(global1.d.d.x * arg_2.d.x);
    let var_1 = _wgslsmith_add_vec4_i32(select(-arg_1.c.e, vec4<i32>(abs(u_input.b), countOneBits(~u_input.b), reverseBits(_wgslsmith_mult_i32(-46095i, arg_1.d.b.x)), 0i), !select(!vec4<bool>(false, arg_0.b, true, true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, arg_1.a.b), vec4<bool>(arg_1.a.c, true, arg_1.a.b, global1.a.c), vec4<bool>(true, false, true, arg_0.b)))), vec4<i32>(~max(-arg_0.d, arg_2.e.x), ~min(u_input.b, -1i), _wgslsmith_dot_vec2_i32(select(arg_1.d.b | arg_1.c.e.yy, vec2<i32>(arg_2.b.x, u_input.b) & arg_3.zz, vec2<bool>(arg_1.a.c, global1.a.b)), reverseBits(~vec2<i32>(-49633i, -31142i))), 0i));
    var var_2 = countOneBits(25967u);
    var var_3 = select(vec2<bool>(true, true), !select(select(!vec2<bool>(global1.a.c, arg_0.c), vec2<bool>(global1.a.b, false), false), !select(vec2<bool>(arg_1.a.b, arg_0.c), vec2<bool>(true, false), vec2<bool>(false, arg_1.a.b)), arg_1.a.b && true), !select(select(!vec2<bool>(true, global1.a.b), select(vec2<bool>(arg_1.a.b, global1.a.b), vec2<bool>(arg_1.a.b, true), global1.a.c), vec2<bool>(arg_1.a.c, false)), select(vec2<bool>(true, arg_1.a.b), vec2<bool>(arg_1.a.c, arg_1.a.b), global1.a.b), select(true, arg_0.b, global1.a.b)));
    global0 = array<Struct_1, 31>();
    return vec4<bool>(true, !(false || (false && arg_1.a.b)) || true, !var_3.x, !(!arg_1.a.c));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    let var_0 = ~(~(-36700i ^ abs(reverseBits(u_input.b))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.c.c, global1.c.d.x)) - 1000f), -1000f, _wgslsmith_f_op_f32(floor(global1.c.d.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d.d - global1.d.d)), _wgslsmith_f_op_vec3_f32(-global1.d.d)), vec3<f32>(_wgslsmith_f_op_f32(-1739f - _wgslsmith_f_op_f32(global1.d.d.x * global1.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-208f - global1.d.c) - _wgslsmith_div_f32(global1.d.d.x, 1149f)), _wgslsmith_f_op_f32(-global1.d.c))));
    var var_2 = global1.e;
    var var_3 = global1.a.b;
    let var_4 = arg_0.zy;
    return _wgslsmith_mult_i32(max(1i, global1.d.e.x), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.c.b.x, _wgslsmith_mult_i32(u_input.b, u_input.b), firstTrailingBit(global1.d.b.x)), ~24786i));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = select(all(vec2<bool>(any(vec4<bool>(true, false, true, true)), arg_2 || all(vec2<bool>(false, true)))), true, true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, 3318f)));
    let var_2 = !(!(!select(vec2<bool>(arg_2, false), select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), false), vec2<bool>(false, global1.a.b))));
    let var_3 = global1.a.a;
    var var_4 = Struct_3(global1.a, ~func_4(select(vec4<bool>(arg_2, arg_2, var_2.x, arg_2), func_3(global1.a, Struct_3(global1.a, 27762i, Struct_1(vec2<i32>(-2147483647i, 1i), arg_1.e.xy, 607f, arg_3.wzz, global1.c.e), Struct_1(vec2<i32>(3417i, arg_1.a.x), global1.d.b, -961f, vec3<f32>(-1411f, 1803f, arg_1.d.x), arg_1.e), 78292i), global0[_wgslsmith_index_u32(1u, 31u)], vec3<i32>(arg_1.b.x, 0i, global1.e)), arg_2)), arg_1, Struct_1(_wgslsmith_sub_vec2_i32(global1.c.b, firstLeadingBit(~vec2<i32>(u_input.b, 15637i))), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(global1.d.e.zwx), abs(global1.d.e.xxx)), -19964i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(select(-446f, 235f, true)), true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1000f + arg_1.c), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.d.x)), vec3<f32>(_wgslsmith_f_op_f32(-797f + -1696f), -805f, -833f), func_3(Struct_2(vec3<u32>(global1.a.a.x, 4294967295u, 44046u), true, arg_2, -1i), Struct_3(global1.a, arg_1.e.x, global1.d, arg_1, -2147483647i), Struct_1(vec2<i32>(-1i, u_input.b), arg_1.e.xy, -201f, global1.c.d, arg_1.e), vec3<i32>(u_input.b, -36822i, 48557i) | global1.c.e.wxw).zzz)), arg_1.e >> (u_input.c % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b, abs(global1.a.d)), _wgslsmith_clamp_i32(arg_1.e.x, max(global1.b, arg_1.a.x) << (4294967295u % 32u), ~(-global1.e))));
    return firstTrailingBit(-vec4<i32>(6052i, -21876i, ~u_input.b, -68928i));
}

fn func_1(arg_0: u32) -> f32 {
    global2 = array<vec4<f32>, 13>();
    global2 = array<vec4<f32>, 13>();
    var var_0 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-2100i, _wgslsmith_add_i32(11966i, -8968i)), firstTrailingBit(vec2<i32>(u_input.b, u_input.b) ^ global1.c.b)) >> ((firstLeadingBit(vec2<u32>(u_input.c.x, 36952u) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) ^ _wgslsmith_div_vec2_u32(~vec2<u32>(global1.a.a.x, global1.a.a.x), global1.a.a.yy >> (u_input.c.yz % vec2<u32>(32u)))) % vec2<u32>(32u)), global1.c.e.xw, global1.c.c, global1.d.d, _wgslsmith_clamp_vec4_i32(func_2(vec2<f32>(_wgslsmith_div_f32(-979f, -157f), 1371f), global0[_wgslsmith_index_u32(abs(global1.a.a.x), 31u)], any(!vec2<bool>(global1.a.b, global1.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.c.x, 13u)] - vec4<f32>(1032f, global1.d.c, global1.d.c, global1.c.d.x)))), -global1.c.e, ~global1.d.e));
    global4 = 1u;
    var var_1 = vec4<u32>(firstLeadingBit(select(38589u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1.a.a.x), u_input.c.xz), _wgslsmith_add_vec2_u32(vec2<u32>(global1.a.a.x, 4294967295u), vec2<u32>(0u, u_input.a))), false)), 2349u, arg_0, arg_0);
    return _wgslsmith_f_op_f32(-var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(30703u)));
    let var_1 = 1i;
    var var_2 = u_input.c.x;
    global2 = array<vec4<f32>, 13>();
    let var_3 = Struct_4(~u_input.c.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(global1.c.d, vec3<f32>(2561f, global1.c.c, global1.d.c))))) * global1.c.d)), global1.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, 2147483647i, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~global1.c.b, countOneBits(vec2<i32>(var_1, -6736i))) << (vec2<u32>(~77680u, _wgslsmith_mod_u32(0u, 1u)) % vec2<u32>(32u)), (vec2<i32>(global1.d.e.x, var_1) << (_wgslsmith_add_vec2_u32(global1.a.a.zz, global1.a.a.yx) % vec2<u32>(32u))) | select(-global1.c.a, select(vec2<i32>(2147483647i, 14722i), vec2<i32>(global1.e, var_1), global1.a.b), !vec2<bool>(true, global1.a.b))), u_input.c.zyx, u_input.c);
}

