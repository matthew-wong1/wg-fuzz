struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2087f;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<bool>(false, true, false, true), Struct_1(2147483647i, false, -2829f, 10251u), 0i), Struct_2(vec4<bool>(false, true, true, false), Struct_1(0i, false, -2110f, 15746u), 0i), Struct_2(vec4<bool>(false, true, true, false), Struct_1(i32(-2147483648), false, -404f, 76240u), 0i), Struct_2(vec4<bool>(true, false, false, true), Struct_1(-31384i, false, 760f, 4294967295u), 30919i), Struct_2(vec4<bool>(true, false, false, false), Struct_1(i32(-2147483648), false, -186f, 1283u), -10985i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(1i, true, 1279f, 4294967295u), i32(-2147483648)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1i, false, -1000f, 4294967295u), 2147483647i), Struct_2(vec4<bool>(false, true, true, false), Struct_1(41587i, true, -1432f, 1u), 0i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(1i, false, 1319f, 29048u), 2147483647i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(i32(-2147483648), true, -663f, 54753u), -27172i), Struct_2(vec4<bool>(true, true, true, false), Struct_1(2147483647i, false, 930f, 1u), 1i), Struct_2(vec4<bool>(false, true, true, false), Struct_1(4931i, false, 1282f, 4294967295u), 2147483647i), Struct_2(vec4<bool>(true, false, false, false), Struct_1(-28923i, true, 1000f, 4294967295u), 6771i), Struct_2(vec4<bool>(true, false, true, false), Struct_1(1i, false, 1490f, 4294967295u), -5792i), Struct_2(vec4<bool>(true, false, true, false), Struct_1(-1i, false, -1397f, 21898u), i32(-2147483648)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(0i, true, -266f, 0u), 2147483647i), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-7037i, true, 438f, 1u), i32(-2147483648)), Struct_2(vec4<bool>(true, false, false, true), Struct_1(i32(-2147483648), true, 1000f, 6974u), -1i), Struct_2(vec4<bool>(false, false, true, true), Struct_1(-19471i, false, 293f, 5223u), 2147483647i), Struct_2(vec4<bool>(false, true, true, true), Struct_1(0i, false, -720f, 1u), 14290i), Struct_2(vec4<bool>(true, false, false, true), Struct_1(24248i, true, -442f, 29918u), -1i), Struct_2(vec4<bool>(true, false, true, true), Struct_1(-25318i, false, -1000f, 8379u), i32(-2147483648)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(1i, false, 135f, 4294967295u), -19014i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-13525i, false, 1462f, 4294967295u), -23801i));

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: f32) -> bool {
    global1 = vec3<bool>(global1.x, _wgslsmith_mult_u32(1u, arg_1.a.a.d) < ~(~(u_input.a ^ u_input.a)), false);
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f - arg_2)) + arg_2), -595f, _wgslsmith_f_op_f32(sign(arg_2))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.e, 1492f, arg_2)))));
    global3 = array<Struct_3, 6>();
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(25710u, arg_1.a.c.b.d, u_input.a, arg_1.b.a.d))), vec4<u32>(40843u, _wgslsmith_div_u32(min(arg_1.b.c.b.d, 0u), 0u), min(arg_1.b.a.d, 0u) ^ abs(arg_1.b.a.d), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(16500u, 27640u), vec2<u32>(arg_1.a.a.d, u_input.a)), vec2<u32>(30118u, u_input.a)))), countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a, arg_1.b.d, 45816u), vec4<u32>(arg_1.a.a.d, u_input.a, 0u, 19054u)), reverseBits(vec4<u32>(u_input.a, arg_1.b.d, u_input.a, u_input.a)))) << (~(~(vec4<u32>(u_input.a, arg_1.a.d, 4294967295u, u_input.a) >> (vec4<u32>(1u, arg_1.b.c.b.d, 4294967295u, 32946u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_2 = arg_1.b.c;
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> bool {
    let var_0 = Struct_2(vec4<bool>(global1.x, all(arg_0.xyy), func_3(!(global1.x && false), Struct_4(Struct_3(Struct_1(-15389i, false, -2666f, 1u), vec2<f32>(1535f, 820f), global2[_wgslsmith_index_u32(4294967295u, 24u)], 0u, 1545f), Struct_3(Struct_1(2147483647i, global1.x, -319f, 1u), vec2<f32>(-551f, 1257f), global2[_wgslsmith_index_u32(13130u, 24u)], u_input.a, 287f)), 1000f), func_3(all(select(arg_0.zyx, arg_0.zwy, vec3<bool>(true, true, arg_2))), Struct_4(Struct_3(Struct_1(arg_1.x, true, -1300f, u_input.a), vec2<f32>(-146f, -387f), Struct_2(vec4<bool>(arg_0.x, false, arg_2, arg_2), Struct_1(-1705i, arg_0.x, 1373f, 4294967295u), arg_1.x), u_input.a, 1533f), Struct_3(Struct_1(arg_1.x, true, 441f, u_input.a), vec2<f32>(-700f, -2539f), Struct_2(vec4<bool>(arg_0.x, arg_0.x, global1.x, global1.x), Struct_1(arg_1.x, global1.x, -199f, 1u), -1i), 1u, 160f)), _wgslsmith_f_op_f32(step(-1062f, -460f)))), Struct_1(~(~arg_1.x), all(arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f * 899f)) - _wgslsmith_f_op_f32(f32(-1f) * -1338f)), max(~1u, u_input.a)), -arg_1.x);
    var var_1 = _wgslsmith_add_vec4_u32(~(~((vec4<u32>(4294967295u, 44811u, 4294967295u, 1u) << (vec4<u32>(44565u, var_0.b.d, 47394u, 0u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, 43049u, var_0.b.d), vec4<u32>(10089u, 22562u, 40864u, 1u)))), _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(10547u, 1u, u_input.a, u_input.a)) << (~(~vec4<u32>(1u, 4294967295u, 773u, var_0.b.d)) % vec4<u32>(32u)), ~vec4<u32>(max(var_0.b.d, u_input.a), reverseBits(49867u), u_input.a, 0u ^ var_0.b.d)));
    var var_2 = vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(-var_0.b.c)));
    let var_3 = var_2.x;
    var_1 = ~min(~max(~vec4<u32>(41739u, var_1.x, var_1.x, var_0.b.d), vec4<u32>(1u, u_input.a, 35921u, 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(28702u, var_1.x, 1u, 0u), vec4<u32>(1u, var_0.b.d, 41709u, var_0.b.d)) >> (vec4<u32>(0u, 12717u, ~u_input.a, 154784u) % vec4<u32>(32u)));
    return var_0.a.x;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = u_input.a;
    global1 = select(vec3<bool>(!arg_2, func_2(select(vec4<bool>(arg_2, arg_2, false, global1.x), vec4<bool>(false, global1.x, true, global1.x), select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(arg_2, arg_2, false, false), global1.x)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, arg_1, -2147483647i, arg_1), true), !select(any(vec4<bool>(global1.x, false, false, true)), any(global1.xz), true)), vec3<bool>(true, false, true), true);
    let var_1 = global3[_wgslsmith_index_u32(49050u, 6u)];
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) - _wgslsmith_f_op_f32(f32(-1f) * -1143f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) - -900f)));
    var var_3 = ~(_wgslsmith_div_i32(abs(-2147483647i >> (var_1.a.d % 32u)), -14734i) ^ ~(-25399i));
    return Struct_4(Struct_3(Struct_1(abs(-var_1.c.b.a), !(true || global1.x), _wgslsmith_f_op_f32(1199f * _wgslsmith_f_op_f32(-var_1.a.c)), 1u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.c.b.c)))), var_1.c.b.c), global2[_wgslsmith_index_u32(0u, 24u)], 20726u, -379f), global3[_wgslsmith_index_u32(1u << (u_input.a % 32u), 6u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(2147483647i, _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, -2147483647i, 2147483647i) << (firstLeadingBit(64368u) % 32u), 1i, _wgslsmith_add_i32(abs(3422i), i32(-1i) * -16280i))), any(select(!(!vec3<bool>(true, global1.x, global1.x)), vec3<bool>(all(vec4<bool>(false, true, global1.x, global1.x)), all(vec4<bool>(global1.x, false, true, global1.x)), global1.x), false)));
    global2 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_mod_i32(var_0.a.a.a, 0i);
    var var_2 = Struct_1(max(~func_1(1i, var_0.b.c.b.a << (var_0.b.c.b.d % 32u), true).b.c.b.a, min(-_wgslsmith_mult_i32(var_1, var_1), var_1 << (~var_0.b.c.b.d % 32u))), true, 952f, 47985u);
    let var_3 = func_1(var_1, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(min(-vec4<i32>(var_0.a.a.a, -2147483647i, -1i, var_0.b.c.b.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-2520i, var_1, var_1, var_0.b.a.a), vec4<i32>(var_0.b.c.b.a, 0i, var_1, var_1))), _wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, var_0.b.c.b.a, 0i, 2147483647i), vec4<i32>(34764i, 12796i, -26409i, -1i))), countOneBits(_wgslsmith_div_i32(-var_0.b.c.b.a, -21533i)), _wgslsmith_add_i32(1733i, -var_0.a.c.c)), !((var_2.c == var_0.a.a.c) && true)).a;
    let x = u_input.a;
    s_output = StorageBuffer(31356i << (var_2.d % 32u), vec2<f32>(_wgslsmith_f_op_f32(floor(-1817f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_f_op_f32(-490f * var_3.a.c))))), 0i);
}

