struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1452f, 1354f, -105f, 1316f, 2045f, -105f, 1439f, 799f, -602f, 293f, -1000f, 885f, 216f, -212f, -1000f, -1000f, 760f, -1576f, 1454f, 354f, -845f, 1000f, -224f, 423f, -1039f, 1596f, 711f, -436f, -164f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    global0 = array<f32, 29>();
    let var_0 = ~_wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.b, u_input.a, 51842i)), reverseBits(vec3<i32>(0i, -2147483647i, u_input.b) << (u_input.c % vec3<u32>(32u)))));
    let var_1 = (4294967295u | u_input.c.x) >> (~u_input.c.x % 32u);
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), ~u_input.c ^ ((u_input.c >> (u_input.c % vec3<u32>(32u))) << (~u_input.c % vec3<u32>(32u)))), u_input.c.x);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: bool) -> vec4<u32> {
    var var_0 = true && all(vec2<bool>(1u > arg_1, select(7622u >= arg_1, !arg_0.c.a.b.x, true)));
    var_0 = arg_0.c.a.a >= _wgslsmith_sub_i32(-35004i, 0i);
    var var_1 = arg_0.b;
    var_1 = arg_0.c;
    var_0 = any(select(!vec4<bool>(arg_0.b.a.c.x, arg_0.b.a.c.x, var_1.a.b.x, arg_2), vec4<bool>(any(vec4<bool>(arg_0.b.a.b.x, true, arg_2, arg_0.b.a.c.x)), false | arg_0.b.a.c.x, true & arg_2, false), vec4<bool>(any(var_1.a.c.zy), true, arg_2, true))) & false;
    return ~select(~firstLeadingBit(~vec4<u32>(arg_1, 47133u, arg_1, 55872u)), firstTrailingBit(~vec4<u32>(u_input.c.x, u_input.c.x, arg_1, arg_1)), var_1.a.c.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_4 {
    let var_0 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(abs(countOneBits(vec4<u32>(0u, 10602u, 0u, 6926u)))) >> (abs(vec4<u32>(4294967295u, ~0u, ~89405u, ~4294967295u)) % vec4<u32>(32u)), ~(~firstLeadingBit(vec4<u32>(u_input.c.x, 65578u, 57934u, 4294967295u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(arg_0.x), 4294967295u, arg_0.x, arg_0.x), countOneBits(vec4<u32>(u_input.c.x, arg_0.x, 39189u, 12297u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(firstTrailingBit(func_3(Struct_4(vec3<i32>(u_input.a, u_input.a, u_input.b), Struct_3(Struct_1(0i, vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, true), -15699i)), Struct_3(Struct_1(u_input.a, vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, true, arg_1), 2147483647i)), global0[_wgslsmith_index_u32(21520u, 29u)], u_input.a), _wgslsmith_mod_u32(1u, arg_0.x), false)), vec4<u32>(~_wgslsmith_mod_u32(71752u, u_input.c.x), 1u, 1u, ~40262u)));
    global0 = array<f32, 29>();
    let var_1 = Struct_2(Struct_1(reverseBits(0i), !vec3<bool>(true, !arg_1, !arg_1), vec3<bool>(arg_1 & arg_1, arg_1, false), 2147483647i), Struct_1(min(abs(u_input.a & -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b), vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.b, u_input.a, u_input.b))), !vec3<bool>(arg_1, arg_1, arg_1), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, arg_1, false), !vec3<bool>(true, arg_1, false)), 0i), u_input.a);
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    return Struct_4(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, var_1.b.a), vec2<i32>(var_1.b.a, u_input.a)), -min(-1i, 12480i), min(firstLeadingBit(1i), ~1482i))), Struct_3(var_1.b), Struct_3(var_1.a), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~54744u, 29u)])), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(2147483647i, var_1.c) << (vec2<u32>(arg_0.x, u_input.c.x) % vec2<u32>(32u))), ~vec2<i32>(-2147483647i, -32074i)), vec2<i32>(_wgslsmith_sub_i32(-var_1.c, u_input.b), var_1.b.a & 2147483647i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<f32>) -> i32 {
    let var_0 = !arg_1.b.a.b.x;
    global0 = array<f32, 29>();
    let var_1 = u_input.c.x;
    global0 = array<f32, 29>();
    let var_2 = func_2(u_input.c.xy, var_0).c.a.c.x;
    return arg_1.c.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_0 = min(u_input.c, ~vec3<u32>(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-2156f, global0[_wgslsmith_index_u32(0u, 29u)], -1039f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 1000f))), ~reverseBits(4294967295u), ~(~0u)));
    var var_1 = select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_mult_i32(u_input.a >> (u_input.c.x % 32u), 2147483647i), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(298f, -502f, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(38948u, 29u)]), vec4<f32>(625f, global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(32458u, 29u)], 1284f), vec4<bool>(false, true, false, true))), func_2(u_input.c.yx, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2041f, -853f) + vec2<f32>(1368f, global0[_wgslsmith_index_u32(u_input.c.x, 29u)])))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, -4748i, u_input.b), vec3<i32>(~(-1i), u_input.b, -u_input.a))), ~vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<bool>(false, abs(u_input.a & u_input.a) == u_input.b, !any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    let var_2 = func_2(vec2<u32>(4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 36963u)), func_2(vec2<u32>(40459u, _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x ^ var_0.x, 18318u)), !(_wgslsmith_add_i32(u_input.b, -63798i) != 0i)).c.a.b.x);
    var_0 = vec3<u32>(_wgslsmith_sub_u32(~((u_input.c.x & u_input.c.x) | var_0.x), ~_wgslsmith_mult_u32(var_0.x, u_input.c.x) | ~(~var_0.x)), ~(~(~_wgslsmith_mult_u32(u_input.c.x, 34508u))), var_0.x);
    var var_3 = !any(var_2.c.a.b) & any(vec2<bool>(true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~max(-2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.c.a.d, var_2.b.a.d, u_input.a, -25277i), vec4<i32>(60081i, var_1.x, -15493i, -3532i), false), firstLeadingBit(vec4<i32>(2147483647i, -12573i, u_input.a, var_2.a.x)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12550u, 29u)] * global0[_wgslsmith_index_u32(abs(u_input.c.x), 29u)]), max(~vec3<u32>(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(134436u, 1u, u_input.c.x), vec3<u32>(33205u, var_0.x, var_0.x)), max(var_0.x, u_input.c.x)), vec3<u32>(func_3(var_2, ~82460u, var_2.b.a.b.x | true).x, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, u_input.c.x), vec3<u32>(79364u, 4294967295u, u_input.c.x), u_input.c)))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, ~var_1.x, i32(-1i) * -1i) & var_2.a, var_2.a), 0i);
}

