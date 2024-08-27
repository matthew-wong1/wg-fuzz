struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(1809u, vec2<u32>(4294967295u, 29641u), Struct_3(-1051f, 7911u, 395f, Struct_2(vec2<i32>(10633i, -1i), Struct_1(true, vec4<f32>(-1302f, -1344f, 329f, 695f), vec2<f32>(611f, -186f), vec4<f32>(423f, -1076f, 378f, -105f), vec2<i32>(-1i, 10790i)), Struct_1(false, vec4<f32>(459f, 705f, -2261f, 1242f), vec2<f32>(384f, 1030f), vec4<f32>(-409f, 707f, -278f, -1054f), vec2<i32>(i32(-2147483648), -59941i)))));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = 1i;
    global0 = Struct_5(global0.b.x ^ 22973u, u_input.b.yx, Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.c.a))), _wgslsmith_dot_vec2_u32(select(global0.b, firstLeadingBit(u_input.b.wy), global0.c.d.c.a), vec2<u32>(_wgslsmith_dot_vec2_u32(global0.b, u_input.b.xx), ~67972u)), global0.c.d.b.d.x, Struct_2(_wgslsmith_add_vec2_i32(~vec2<i32>(global0.c.d.a.x, -21369i), abs(arg_1)), Struct_1(all(vec2<bool>(false, global0.c.d.b.a)), vec4<f32>(global0.c.a, -1525f, 1037f, -439f), global0.c.d.c.c, vec4<f32>(global0.c.d.c.d.x, global0.c.d.b.b.x, global0.c.c, global0.c.d.b.d.x), abs(vec2<i32>(u_input.a.x, global0.c.d.b.e.x))), Struct_1(any(vec4<bool>(global0.c.d.c.a, global0.c.d.b.a, global0.c.d.b.a, global0.c.d.b.a)), global0.c.d.b.b, _wgslsmith_f_op_vec2_f32(global0.c.d.c.b.yx * vec2<f32>(global0.c.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(global0.c.d.b.b - vec4<f32>(global0.c.c, global0.c.c, -334f, 1797f)), vec2<i32>(-44194i, 10739i) & u_input.a.xx))));
    global0 = Struct_5(1u, vec2<u32>(select(_wgslsmith_clamp_u32(~4294967295u, ~54163u, ~global0.a), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, global0.b), global0.c.d.b.a), _wgslsmith_clamp_u32(reverseBits(reverseBits(4294967295u)), 4294967295u, ~u_input.b.x >> (abs(74590u) % 32u))), Struct_3(global0.c.c, u_input.b.x, _wgslsmith_f_op_f32(sign(-297f)), Struct_2(global0.c.d.c.e, global0.c.d.b, global0.c.d.b)));
    global0 = Struct_5(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), countOneBits(vec2<u32>(global0.b.x, 0u) ^ global0.b)), u_input.b.zx, global0.c);
    var var_1 = u_input.b.xwy;
    return -398f;
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_1(false == (true == global0.c.d.b.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.d.b.d.x, _wgslsmith_f_op_f32(global0.c.c * -659f), _wgslsmith_f_op_f32(step(-1933f, _wgslsmith_f_op_f32(-global0.c.a))), 599f) + vec4<f32>(_wgslsmith_f_op_f32(sign(global0.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c.a, -315f))), _wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, 18848i, global0.c.d.b.e.x, -1i), vec2<i32>(-1i, 15545i))) + global0.c.d.c.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(-global0.c.a))), vec4<f32>(_wgslsmith_f_op_f32(global0.c.a - global0.c.c), _wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a + global0.c.c) - 1429f), _wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(func_3(vec4<i32>(global0.c.d.a.x, 1i, 2147483647i, global0.c.d.b.e.x), u_input.a.yx)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -422f)))), u_input.a.xz);
    global0 = Struct_5(arg_0, global0.b, global0.c);
    let var_1 = Struct_4(firstTrailingBit(80991u), ~(~max(1u, 8292u)), u_input.b.x);
    global0 = Struct_5(reverseBits(1u), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.c.b, u_input.b.x), vec2<u32>(4294967295u, var_1.c)) | vec2<u32>(6051u, 0u), _wgslsmith_mod_vec2_u32(u_input.b.yw, ~(global0.b & vec2<u32>(global0.a, var_1.c)))), Struct_3(-304f, global0.c.b, 707f, Struct_2(abs(~vec2<i32>(var_0.e.x, 24280i)), Struct_1(!global0.c.d.b.a, vec4<f32>(-191f, var_0.c.x, -1000f, var_0.b.x), vec2<f32>(var_0.d.x, 2190f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, var_0.d.x, 273f, 1309f) + vec4<f32>(910f, global0.c.c, -1863f, 1148f)), _wgslsmith_sub_vec2_i32(global0.c.d.a, vec2<i32>(16660i, u_input.a.x))), var_0)));
    global0 = Struct_5(var_1.c, u_input.b.wy | ~(~vec2<u32>(4294967295u, arg_0) >> (~u_input.b.ww % vec2<u32>(32u))), global0.c);
    return Struct_5(~(_wgslsmith_sub_u32(global0.a, _wgslsmith_dot_vec2_u32(u_input.b.wx, global0.b)) << (abs(arg_0) % 32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.a, 28766u), global0.b)) << (abs(~(~vec2<u32>(18733u, 18149u))) % vec2<u32>(32u)), Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(vec4<i32>(global0.c.d.a.x, -2147483647i, 13008i, 2010i), -vec2<i32>(u_input.a.x, -12497i))))), ~min(var_1.b, var_1.b) ^ var_1.a, -839f, Struct_2(vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, 10494i, u_input.a.x), -1049i), Struct_1(global0.c.d.c.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 324f, var_0.c.x, var_0.b.x)), vec2<f32>(var_0.d.x, global0.c.d.c.d.x), var_0.b, u_input.a.xz), global0.c.d.c)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<bool> {
    let var_0 = func_2(u_input.b.x);
    global0 = Struct_5(firstTrailingBit(reverseBits(26389u)), ~u_input.b.xx, Struct_3(_wgslsmith_f_op_f32(-arg_0.b.x), arg_1, 530f, func_2(firstLeadingBit(_wgslsmith_sub_u32(u_input.b.x, 31071u))).c.d));
    var var_1 = func_2(_wgslsmith_add_u32(arg_1 ^ global0.a, u_input.b.x)).c.d.c;
    var_1 = global0.c.d.c;
    var var_2 = select(~max(0u, var_0.c.b), 20810u, !(any(vec4<bool>(arg_0.a, false, var_1.a, arg_0.a)) | !arg_0.a) | true);
    return vec2<bool>(select(var_1.a, any(vec2<bool>(false, var_1.a)), all(select(vec4<bool>(false, arg_0.a, var_0.c.d.b.a, var_0.c.d.b.a), !vec4<bool>(var_1.a, true, false, global0.c.d.b.a), !var_0.c.d.b.a))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global0.c.b, global0.b.x);
    var var_1 = _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(global0.c.d.c.e.x, u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, -u_input.a)));
    global0 = Struct_5(global0.c.b, vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 94567u), global0.b), u_input.b.ww ^ global0.b), ~var_0 >> ((var_0 ^ global0.b) % vec2<u32>(32u)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(698f, 245f) - _wgslsmith_f_op_f32(-global0.c.c))), _wgslsmith_mult_u32(~reverseBits(global0.c.b), 85771u), _wgslsmith_f_op_f32(f32(-1f) * -167f), global0.c.d));
    var var_2 = Struct_5(4294967295u, vec2<u32>(global0.a, u_input.b.x), global0.c);
    var var_3 = vec4<bool>(1017f == _wgslsmith_f_op_f32(-var_2.c.a), !any(select(!vec4<bool>(var_2.c.d.c.a, var_2.c.d.c.a, true, true), !vec4<bool>(true, global0.c.d.b.a, false, false), false)), ((~0u & u_input.b.x) < max(_wgslsmith_add_u32(u_input.b.x, 2100u), global0.a)) | (global0.c.d.b.e.x >= _wgslsmith_mult_i32(-12490i, countOneBits(global0.c.d.a.x))), all(vec3<bool>(all(func_1(Struct_1(var_2.c.d.c.a, global0.c.d.c.b, vec2<f32>(global0.c.c, var_2.c.c), global0.c.d.c.d, vec2<i32>(var_1.x, 23295i)), u_input.b.x)), ~1u >= u_input.b.x, func_1(func_2(var_0.x).c.d.b, 90358u).x)));
    var var_4 = u_input.a.x;
    let var_5 = var_2.c;
    var var_6 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(min(u_input.a, u_input.a), -_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, -11037i), vec3<i32>(u_input.a.x, 25656i, var_1.x))), max(-(~var_1.x), countOneBits(-var_5.d.c.e.x))), -561i, reverseBits(_wgslsmith_add_i32(var_2.c.d.b.e.x, var_5.d.a.x)), -(~var_5.d.b.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<u32>(1u, u_input.b.x)), ~77985u, _wgslsmith_sub_i32(-21961i, 1i));
}

