struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: array<bool, 5> = array<bool, 5>(true, false, true, true, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> vec2<i32> {
    global1 = array<bool, 5>();
    global1 = array<bool, 5>();
    let var_0 = Struct_2(Struct_1(~u_input.a.yx, vec4<i32>(u_input.c, u_input.c, select(firstLeadingBit(u_input.c), ~u_input.a.x, !arg_1), u_input.a.x), vec2<bool>((u_input.a.x != u_input.c) | global1[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)], !(!arg_1)), u_input.a.zx, vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, 4294967295u), 0u)), 1i);
    global1 = array<bool, 5>();
    var var_1 = var_0;
    return vec2<i32>(-u_input.c, ~select(abs(var_1.b), -10158i, true));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    global1 = array<bool, 5>();
    var var_1 = Struct_5(Struct_1(u_input.a.zz, -vec4<i32>(u_input.a.x ^ -1i, u_input.c, _wgslsmith_clamp_i32(20103i, -46593i, u_input.a.x), 2147483647i), select(vec2<bool>(true, !global1[_wgslsmith_index_u32(4294967295u, 5u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(82388u, 5u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], false), true), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 5u)])), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], false), vec2<bool>(true, true))), vec2<i32>(1i, u_input.a.x), vec2<u32>(u_input.b.x, 29588u)));
    var var_2 = _wgslsmith_sub_u32(var_1.a.e.x << (~(~(u_input.b.x & var_1.a.e.x)) % 32u), ~(~var_1.a.e.x));
    return Struct_1(~_wgslsmith_clamp_vec2_i32(func_3(~u_input.b, false), countOneBits(func_3(vec3<u32>(4294967295u, 39022u, 34473u), global1[_wgslsmith_index_u32(37255u, 5u)])), -_wgslsmith_sub_vec2_i32(vec2<i32>(-59520i, -67513i), vec2<i32>(u_input.c, var_1.a.b.x))), reverseBits(var_1.a.b) << (reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.a.e.x, 4294967295u, 25555u), vec4<u32>(0u, 0u, var_1.a.e.x, var_1.a.e.x)) | vec4<u32>(46741u, 2389u, var_1.a.e.x, 0u)) % vec4<u32>(32u)), var_1.a.c, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(select(firstTrailingBit(vec2<i32>(var_1.a.a.x, u_input.c)), u_input.a.zx ^ vec2<i32>(-20028i, -1i), !var_1.a.c.x), u_input.a.xx), var_1.a.a), (_wgslsmith_mod_vec2_u32(~u_input.b.zx, var_1.a.e) << (var_1.a.e % vec2<u32>(32u))) >> (~var_1.a.e % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global0 = array<Struct_4, 3>();
    let var_0 = _wgslsmith_div_i32(arg_0.a.a.x, -_wgslsmith_mult_i32(5212i, arg_3.a.x));
    global1 = array<bool, 5>();
    global0 = array<Struct_4, 3>();
    let var_1 = Struct_3(_wgslsmith_add_vec4_i32(max(arg_3.b, ~arg_0.a.b), arg_0.a.b >> (vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, arg_1.x), firstTrailingBit(43880u), firstLeadingBit(arg_0.a.e.x), u_input.b.x) % vec4<u32>(32u))), func_2(), arg_0.a);
    return Struct_2(Struct_1(-(~func_2().a), ~func_2().b, var_1.b.c, vec2<i32>(_wgslsmith_clamp_i32(-38054i, ~0i, u_input.c), i32(-1i) * -1i), arg_0.a.e), 6323i << (arg_3.e.x % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> vec2<i32> {
    let var_0 = 1123f;
    var var_1 = vec2<u32>(8647u, min(~arg_0 >> (min(countOneBits(4294967295u), 62465u) % 32u), ~arg_0));
    var var_2 = vec3<i32>(firstLeadingBit(func_2().b.x), arg_3.x, _wgslsmith_add_i32(0i, u_input.c)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1356u, 711u, 32328u), u_input.b, false), ~u_input.b, vec3<u32>(var_1.x, arg_0, 14776u)), vec3<u32>(~var_1.x, u_input.b.x, 1u), u_input.b), vec3<u32>(arg_1.a.e.x << (func_1(Struct_5(Struct_1(vec2<i32>(-3565i, 1i), arg_1.a.b, vec2<bool>(global1[_wgslsmith_index_u32(26276u, 5u)], arg_2), vec2<i32>(-44299i, -49309i), vec2<u32>(34587u, 4294967295u))), vec3<u32>(1u, 4294967295u, 22508u), 669f, arg_1.a).a.e.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, arg_0), _wgslsmith_sub_u32(122363u, var_1.x), u_input.b.x), u_input.b.x)) % vec3<u32>(32u));
    var var_3 = -((-1i & ~_wgslsmith_dot_vec2_i32(var_2.yx, vec2<i32>(u_input.a.x, arg_1.a.b.x))) >> (_wgslsmith_add_u32(var_1.x, ~_wgslsmith_clamp_u32(64068u, arg_0, u_input.b.x)) % 32u));
    var var_4 = Struct_5(arg_1.a);
    return -vec2<i32>(firstTrailingBit(func_3(vec3<u32>(4294967295u, 4294967295u, 53386u), arg_2).x >> (var_1.x % 32u)), -13244i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 3>();
    let var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1774f))) <= -166f));
    var var_1 = u_input.a.xx | abs(_wgslsmith_add_vec2_i32(func_4(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), func_1(Struct_5(Struct_1(u_input.a.xy, vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c), vec2<bool>(var_0, true), vec2<i32>(2147483647i, -3604i), vec2<u32>(u_input.b.x, 1u))), vec3<u32>(4294967295u, 0u, u_input.b.x), 1337f, Struct_1(u_input.a.xy, vec4<i32>(u_input.a.x, -28604i, -46377i, -64076i), vec2<bool>(global1[_wgslsmith_index_u32(17141u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]), u_input.a.yx, vec2<u32>(61294u, u_input.b.x))), any(vec4<bool>(true, var_0, var_0, false)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.c)), -vec2<i32>(u_input.c, u_input.a.x)));
    let var_2 = true;
    global0 = array<Struct_4, 3>();
    let var_3 = Struct_2(func_1(Struct_5(func_1(Struct_5(Struct_1(u_input.a.yy, vec4<i32>(2147483647i, -2147483647i, var_1.x, u_input.a.x), vec2<bool>(true, var_0), u_input.a.xz, vec2<u32>(9725u, u_input.b.x))), ~vec3<u32>(u_input.b.x, 43105u, 0u), _wgslsmith_f_op_f32(sign(-1239f)), func_1(Struct_5(Struct_1(vec2<i32>(1i, u_input.a.x), vec4<i32>(44014i, u_input.c, 0i, 1i), vec2<bool>(var_2, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec2<i32>(var_1.x, -2147483647i), u_input.b.zy)), u_input.b, 511f, Struct_1(vec2<i32>(8150i, u_input.a.x), vec4<i32>(-5943i, var_1.x, 0i, u_input.c), vec2<bool>(var_0, global1[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.a.yy, u_input.b.xy)).a).a), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 21056u, 0u), vec4<u32>(44560u, 22181u, u_input.b.x, 10750u), vec4<u32>(11813u, 4294967295u, u_input.b.x, u_input.b.x)), max(vec4<u32>(u_input.b.x, 0u, 1u, 1u), vec4<u32>(u_input.b.x, 9607u, 4294967295u, 4294967295u))), 29802u, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -667f))), Struct_1(abs(func_1(Struct_5(Struct_1(vec2<i32>(-19301i, u_input.c), vec4<i32>(u_input.a.x, var_1.x, -9628i, var_1.x), vec2<bool>(true, var_2), vec2<i32>(var_1.x, 1i), u_input.b.yz)), u_input.b, -489f, Struct_1(vec2<i32>(var_1.x, var_1.x), vec4<i32>(22214i, u_input.c, u_input.c, 2147483647i), vec2<bool>(true, true), u_input.a.zz, vec2<u32>(u_input.b.x, u_input.b.x))).a.b.zw), vec4<i32>(var_1.x, -1i, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x), select(vec2<bool>(true, true), !vec2<bool>(var_2, false), !var_2), vec2<i32>(44768i, -3042i), func_1(Struct_5(Struct_1(vec2<i32>(u_input.c, 0i), vec4<i32>(u_input.c, 2147483647i, -2147483647i, 4728i), vec2<bool>(var_2, false), vec2<i32>(2147483647i, -1i), u_input.b.zz)), ~vec3<u32>(u_input.b.x, 67702u, 4294967295u), -261f, Struct_1(u_input.a.zz, vec4<i32>(1i, -2147483647i, 1i, 2830i), vec2<bool>(var_0, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec2<i32>(27608i, u_input.c), vec2<u32>(36953u, 4294967295u))).a.e)).a, i32(-1i) * -(-29928i ^ var_1.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(224f, -1769f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 230f), vec2<f32>(-663f, 1071f), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(939f, -825f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1061f, -1774f)))), vec2<f32>(475f, _wgslsmith_f_op_f32(floor(1481f))))) + vec2<f32>(1f, 1f));
    global1 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(u_input.b.zx, ~(~select(var_3.a.e, var_3.a.e, var_3.a.c)), _wgslsmith_add_vec2_u32(vec2<u32>(0u >> (u_input.b.x % 32u), u_input.b.x), var_3.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-614f * _wgslsmith_f_op_f32(floor(var_4.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))) - _wgslsmith_f_op_f32(trunc(400f))), var_4.x);
}

