struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: array<f32, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_sub_u32((arg_2.x & 5904u) >> (26479u % 32u), ~4294967295u));
    global1 = array<f32, 9>();
    var var_1 = Struct_1(arg_3.a.a, select(~vec2<u32>(1u, arg_3.a.c.x), arg_2.xw, !arg_0.b.zy), vec3<u32>(90910u, arg_2.x, ~1u), (u_input.a | _wgslsmith_mult_i32(u_input.a << (arg_2.x % 32u), -arg_3.b.x)) != _wgslsmith_add_i32(u_input.b.x, ~abs(1i)));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3.a.c.x, arg_3.a.b.x), firstLeadingBit(var_1.c)), _wgslsmith_sub_u32(~1u, ~4294967295u)), 32801u);
    return select(vec3<bool>(true, false, any(!(!vec4<bool>(false, var_1.d, true, true)))), select(!(!(!vec3<bool>(var_1.d, var_2.a, var_1.d))), vec3<bool>(!arg_0.a == (var_1.a.x < u_input.c.x), false, any(!vec2<bool>(arg_3.a.d, true))), arg_0.b.x), var_1.d);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: vec4<u32>) -> f32 {
    global1 = array<f32, 9>();
    var var_0 = global0[_wgslsmith_index_u32(~(~65754u), 16u)];
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, -3094i), 1i), _wgslsmith_mod_i32(var_0.a.a.x & 1i, ~(-17455i)), reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, u_input.a, 33384i, -64133i), vec4<i32>(1i, -2147483647i, u_input.c.x, -11834i))) << (~firstLeadingBit(0u) % 32u), ~abs(~(-var_0.a.a.x)));
    let var_2 = Struct_1(-vec3<i32>(-var_0.b.x, select(42293i, -1i, true), u_input.a) << (max(_wgslsmith_clamp_vec3_u32(arg_3.xxy, var_0.a.c, ~vec3<u32>(var_0.a.c.x, 0u, arg_2)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 4294967295u), arg_3), abs(9664u), arg_2)) % vec3<u32>(32u)), arg_3.wy, vec3<u32>(0u, 10577u, _wgslsmith_dot_vec2_u32(arg_3.yx, ~var_0.a.c.xz)), all(select(!vec4<bool>(true, false, arg_1.b.x, var_0.a.d), vec4<bool>(var_0.a.d, true, arg_0, true), !arg_0)));
    let var_3 = arg_1;
    return -142f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<f32, 9>();
    var var_0 = _wgslsmith_f_op_f32(func_4(select(false, !arg_1.x, any(!select(arg_1, vec2<bool>(arg_0.d, arg_0.d), false))), Struct_2(arg_0.d, select(func_3(Struct_2(arg_1.x, vec3<bool>(arg_0.d, true, false), global1[_wgslsmith_index_u32(0u, 9u)]), global1[_wgslsmith_index_u32(arg_0.b.x ^ 18753u, 9u)], vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), global0[_wgslsmith_index_u32(3988u, 16u)]), !(!vec3<bool>(true, false, arg_0.d)), true), 2067f), arg_0.b.x, vec4<u32>(4294967295u, _wgslsmith_add_u32(max(arg_0.c.x, reverseBits(arg_0.c.x)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(52190u, 4294967295u, 4294967295u, 6379u)), ~vec4<u32>(arg_0.c.x, 0u, arg_0.b.x, arg_0.c.x))), 1u, 0u)));
    let var_1 = -1009f;
    let var_2 = Struct_2(arg_0.d, vec3<bool>(false, !arg_1.x, false), _wgslsmith_f_op_f32(sign(var_1)));
    let var_3 = arg_2.x;
    return Struct_2(all(var_2.b), !(!vec3<bool>(false, true, var_2.b.x | false)), _wgslsmith_f_op_f32(round(-2409f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<Struct_3, 16>();
    global1 = array<f32, 9>();
    global0 = array<Struct_3, 16>();
    global1 = array<f32, 9>();
    var var_0 = func_2(arg_1, !arg_0.b.zx, _wgslsmith_clamp_vec2_i32(~(-(~u_input.c.zx)), select(abs(arg_1.a.yx), _wgslsmith_mult_vec2_i32(u_input.b.xx, arg_1.a.xz) & ~arg_1.a.yz, true), ~arg_1.a.zx));
    return arg_1;
}

fn func_1() -> Struct_3 {
    global1 = array<f32, 9>();
    global0 = array<Struct_3, 16>();
    let var_0 = u_input.a;
    global1 = array<f32, 9>();
    var var_1 = func_5(func_2(Struct_1(vec3<i32>(~var_0, -var_0, -37800i), countOneBits(abs(vec2<u32>(1u, 0u))), vec3<u32>(~4294967295u, ~12482u, ~12122u), true), vec2<bool>(true, true), reverseBits(-u_input.b.xz)), Struct_1(_wgslsmith_sub_vec3_i32(u_input.c.zyx, vec3<i32>(var_0 >> (0u % 32u), ~var_0, 73418i)), ~vec2<u32>(1u, 1u), vec3<u32>(1u, 1u, 1u), !func_2(Struct_1(vec3<i32>(8322i, -2147483647i, 26529i), vec2<u32>(17360u, 4294967295u), vec3<u32>(4294967295u, 3965u, 0u), true), vec2<bool>(true, true), ~vec2<i32>(var_0, 0i)).a), vec4<u32>(4294967295u, 32092u, 51933u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(45125u, 0u, 39528u), abs(vec3<u32>(1u, 31221u, 6332u))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 1864u, 76429u), 1u))));
    return Struct_3(func_5(Struct_2(true, vec3<bool>(true, var_1.d, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 9u)]))))), func_5(Struct_2(var_1.d, !vec3<bool>(var_1.d, var_1.d, var_1.d), _wgslsmith_f_op_f32(723f * global1[_wgslsmith_index_u32(67481u, 9u)])), Struct_1(~u_input.c.www, vec2<u32>(var_1.c.x, 38803u) ^ vec2<u32>(1u, 97294u), var_1.c, all(vec4<bool>(false, true, true, var_1.d))), ~vec4<u32>(var_1.b.x, var_1.b.x, 1u, var_1.b.x) ^ ~vec4<u32>(var_1.b.x, 1u, var_1.b.x, var_1.c.x)), vec4<u32>(~var_1.c.x, 57888u, _wgslsmith_add_u32(var_1.b.x, 4294967295u), var_1.b.x) >> (select(~vec4<u32>(var_1.c.x, var_1.b.x, 0u, var_1.b.x), vec4<u32>(0u, var_1.c.x, var_1.c.x, var_1.c.x) | vec4<u32>(var_1.b.x, 33460u, var_1.c.x, 4294967295u), true) % vec4<u32>(32u))), vec2<i32>(23216i, _wgslsmith_dot_vec2_i32(-var_1.a.zz & var_1.a.yx, firstLeadingBit(min(var_1.a.zx, u_input.b.xw)))));
}

fn func_6(arg_0: Struct_3) -> bool {
    var var_0 = u_input.b.x;
    let var_1 = Struct_2((arg_0.a.d != any(vec3<bool>(arg_0.a.d, false, true))) && !select(true, all(vec3<bool>(arg_0.a.d, arg_0.a.d, arg_0.a.d)), func_1().a.d), !(!func_3(Struct_2(arg_0.a.d, vec3<bool>(arg_0.a.d, false, false), global1[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(84255u, 9u)], -1000f)), ~vec4<u32>(68303u, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.b.x), arg_0)), -1000f);
    let var_2 = arg_0.a.c;
    global1 = array<f32, 9>();
    let var_3 = arg_0.a.d;
    return !var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(func_6(func_1()), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(1u, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(102916u, 9u)])), 1654f)))));
    let var_2 = func_2(func_1().a, vec2<bool>(!(!var_0 && !var_0), var_0), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.b.xx, select(u_input.c.yw, vec2<i32>(2147483647i, -24816i), vec2<bool>(true, true)) & abs(vec2<i32>(u_input.b.x, u_input.c.x))), (u_input.c.xy ^ abs(vec2<i32>(1i, -2147483647i))) >> (~(~vec2<u32>(4294967295u, 1065u)) % vec2<u32>(32u))));
    global0 = array<Struct_3, 16>();
    var var_3 = func_1().a;
    var_3 = func_1().a;
    global0 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(-1208f, -abs(42805i), -1i, vec2<f32>(_wgslsmith_f_op_f32(trunc(-1634f)), -1405f));
}

