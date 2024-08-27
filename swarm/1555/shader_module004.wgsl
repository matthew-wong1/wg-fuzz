struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(true, Struct_1(vec2<u32>(4294967295u, 26200u))), Struct_2(true, Struct_1(vec2<u32>(57563u, 4294967295u))), Struct_2(false, Struct_1(vec2<u32>(1u, 0u))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 25582u))), Struct_2(false, Struct_1(vec2<u32>(1u, 4294967295u))), Struct_2(true, Struct_1(vec2<u32>(0u, 1u))), Struct_2(true, Struct_1(vec2<u32>(15871u, 4294967295u))), Struct_2(true, Struct_1(vec2<u32>(0u, 14294u))), Struct_2(false, Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(false, Struct_1(vec2<u32>(4294967295u, 77384u))), Struct_2(true, Struct_1(vec2<u32>(61803u, 20387u))), Struct_2(true, Struct_1(vec2<u32>(32821u, 34375u))), Struct_2(false, Struct_1(vec2<u32>(38613u, 4716u))), Struct_2(false, Struct_1(vec2<u32>(1u, 1u))), Struct_2(true, Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(false, Struct_1(vec2<u32>(2205u, 5985u))), Struct_2(false, Struct_1(vec2<u32>(6096u, 10550u))), Struct_2(true, Struct_1(vec2<u32>(4294967295u, 1u))));

var<private> global1: array<vec3<f32>, 8>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    var var_0 = select(~_wgslsmith_mult_vec4_u32(select(reverseBits(vec4<u32>(arg_1.a.a.x, arg_1.a.a.x, 4294967295u, arg_1.a.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.a.x, 31934u, arg_1.a.a.x, 0u), vec4<u32>(arg_1.c.a.x, arg_1.c.a.x, 15217u, arg_1.a.a.x)), vec4<bool>(arg_1.b, false, true, arg_1.b)), vec4<u32>(~86162u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(56901u, 48074u, 1u), vec3<u32>(70440u, 11429u, arg_1.c.a.x)), arg_1.c.a.x & arg_1.c.a.x)), vec4<u32>(1u << (_wgslsmith_div_u32(arg_1.c.a.x, arg_1.c.a.x ^ arg_1.a.a.x) % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, arg_1.a.a.x, arg_1.a.a.x), vec3<u32>(arg_1.a.a.x, 16274u, 22924u), vec3<bool>(arg_1.b, false, arg_1.b)) >> (firstLeadingBit(vec3<u32>(arg_1.c.a.x, 4294967295u, 1u)) % vec3<u32>(32u)), ~vec3<u32>(arg_1.a.a.x, arg_1.c.a.x, arg_1.a.a.x)), (_wgslsmith_mult_u32(arg_1.a.a.x, arg_1.a.a.x) << (arg_1.a.a.x % 32u)) << ((firstLeadingBit(60950u) & firstLeadingBit(arg_1.a.a.x)) % 32u), 26357u), !select(!(!vec4<bool>(arg_1.b, false, arg_1.b, true)), select(!vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), select(vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(true, true, arg_1.b, false), vec4<bool>(arg_1.b, false, arg_1.b, false)), true || arg_1.b), select(!vec4<bool>(true, false, arg_1.b, false), !vec4<bool>(arg_1.b, false, true, true), vec4<bool>(false, arg_1.b, false, arg_1.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_0.x, 8u)]);
    var var_2 = min(37529i | ~u_input.a, firstTrailingBit(36757i));
    var var_3 = Struct_4(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -45353i), arg_0.yx), 8792i), 0u, _wgslsmith_f_op_vec2_f32(-var_1.xy), vec2<i32>(-arg_0.x, countOneBits(u_input.d.x)));
    let var_4 = arg_1;
    return true;
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -612f))))), _wgslsmith_f_op_f32(1380f * 221f));
    global1 = array<vec3<f32>, 8>();
    let var_1 = -2147483647i;
    global1 = array<vec3<f32>, 8>();
    let var_2 = Struct_4(34473i, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(3936u), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1662u, arg_0, arg_1), ~vec4<u32>(arg_0, arg_0, 38880u, 0u))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 73821u, arg_1), vec3<u32>(1u, arg_1, 1u)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, arg_1, 4294967295u), vec3<u32>(arg_0, 55882u, arg_0)) % vec3<u32>(32u)), vec3<u32>(15695u, max(58168u, 6670u), ~1u), func_3(reverseBits(vec4<i32>(-1i, -34850i, var_1, var_1)), Struct_3(Struct_1(vec2<u32>(36360u, arg_1)), true, Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec4<f32>(609f, -1000f, 212f, 1081f))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(var_0.x, var_0.x))))))), countOneBits(vec2<i32>(-20564i, 0i)));
    return Struct_2(!any(vec2<bool>(true, true)), Struct_1(~(vec2<u32>(56508u, var_2.b) << (vec2<u32>(25863u, 0u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.b.a.x, 18u)];
    var var_1 = vec2<bool>(all(select(select(vec4<bool>(var_0.a, false, false, arg_0.a), !vec4<bool>(var_0.a, arg_0.a, true, false), select(vec4<bool>(var_0.a, var_0.a, true, arg_0.a), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(true, var_0.a, false, false))), !vec4<bool>(var_0.a, arg_0.a, var_0.a, false), !vec4<bool>(arg_0.a, var_0.a, var_0.a, false))), any(select(vec2<bool>(true, arg_0.a), !vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, false & var_0.a))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1376f), -535f);
    var var_3 = Struct_2(false, func_2(1u, ~var_0.b.a.x).b);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1058f, -319f, 253f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1361f, 118f)))))));
    return func_2(var_0.b.a.x, 28852u).b;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = !(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-49022i, u_input.a)), _wgslsmith_sub_vec2_i32(u_input.b.zy, ~vec2<i32>(-39253i, -37316i))) <= abs(u_input.d.x));
    let var_1 = func_4(func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(max(0u, 4294967295u), _wgslsmith_div_u32(58297u, 4294967295u)), vec2<u32>(1u, _wgslsmith_add_u32(0u, 4294967295u))), ~min(~0u, 1u)));
    let var_2 = func_4(Struct_2(false, Struct_1(var_1.a)));
    var_0 = arg_0 && true;
    let var_3 = ~((min(u_input.b.zx, u_input.d.xx) | ~vec2<i32>(-4418i, -1i)) & _wgslsmith_add_vec2_i32(u_input.d.xz, ~u_input.d.yz)) & vec2<i32>(~u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b.yx), vec2<i32>(-45306i, 9948i) << (var_2.a % vec2<u32>(32u))), ~u_input.b.xx | firstLeadingBit(vec2<i32>(11073i, -2147483647i))));
    return func_3((_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, 71380i, u_input.b.x, var_3.x), vec4<i32>(u_input.b.x, var_3.x, 35458i, -74631i), vec4<i32>(50960i, 2158i, -2147483647i, 1i) ^ vec4<i32>(-46875i, 28432i, u_input.a, 0i)) | _wgslsmith_mod_vec4_i32(~vec4<i32>(-1i, 0i, u_input.d.x, 5712i), vec4<i32>(-18846i, -1066i, u_input.b.x, var_3.x))) << ((vec4<u32>(4294967295u ^ var_2.a.x, ~var_1.a.x, select(var_2.a.x, var_1.a.x, arg_0), var_1.a.x) << ((countOneBits(vec4<u32>(4294967295u, var_2.a.x, 0u, 64397u)) << (countOneBits(vec4<u32>(var_1.a.x, 8957u, 0u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_3(var_1, !(true & all(vec3<bool>(arg_0, true, true))), func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.x, 16368u, 8477u), vec3<u32>(29771u, var_2.a.x, 87341u)), max(1u, 27060u)).b, vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * 793f) * arg_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 9713u, 1u, 16790u), vec4<u32>(4294967295u, 1u, 1u, 0u))), 0u), 18u)];
    let var_2 = select(vec3<bool>(!any(vec4<bool>(false, false, var_1.a, var_1.a)), var_1.a, any(vec2<bool>(true, true))), !select(vec3<bool>(var_1.a, var_1.a, select(var_1.a, false, true)), !select(vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, false, true), var_1.a), _wgslsmith_f_op_f32(sign(357f)) >= 1662f), !(!vec3<bool>(false | var_1.a, false, var_1.a)));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_3 = select(select(select(select(!var_2, var_2, var_2.x), var_2, any(!var_2)), select(select(select(var_2, vec3<bool>(true, true, var_2.x), var_2.x), var_2, vec3<bool>(var_1.a, false, false)), !select(var_2, var_2, vec3<bool>(true, var_2.x, true)), var_2), false), select(select(vec3<bool>(func_1(var_2.x, -701f, -1443f), true, true), var_2, var_2.x || true), select(select(vec3<bool>(var_2.x, var_2.x, false), var_2, !var_2), select(select(vec3<bool>(false, false, false), var_2, true), !vec3<bool>(var_2.x, true, false), select(var_2, var_2, var_2.x)), var_2), true), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-736f, countOneBits((abs(vec2<u32>(4294967295u, 1u)) ^ _wgslsmith_mod_vec2_u32(var_1.b.a, vec2<u32>(7720u, var_1.b.a.x))) | (firstLeadingBit(var_1.b.a) ^ select(vec2<u32>(var_1.b.a.x, var_1.b.a.x), vec2<u32>(29363u, var_1.b.a.x), vec2<bool>(false, var_3.x)))), vec4<u32>(var_1.b.a.x, var_1.b.a.x, ~var_1.b.a.x, var_1.b.a.x));
}

