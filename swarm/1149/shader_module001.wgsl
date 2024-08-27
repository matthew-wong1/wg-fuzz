struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(1u, 38004u), vec2<u32>(24846u, 0u), vec2<u32>(1u, 45547u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1638u), vec2<u32>(0u, 14608u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 3110u), vec2<u32>(56404u, 1u), vec2<u32>(16657u, 0u), vec2<u32>(21852u, 89405u), vec2<u32>(30953u, 62009u), vec2<u32>(57080u, 4294967295u), vec2<u32>(12269u, 59494u), vec2<u32>(0u, 19193u), vec2<u32>(38527u, 1u), vec2<u32>(10176u, 0u), vec2<u32>(1u, 6280u), vec2<u32>(4294967295u, 86053u), vec2<u32>(30711u, 50075u), vec2<u32>(87328u, 0u));

var<private> global2: array<u32, 22>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<f32>) -> u32 {
    return ~43867u;
}

fn func_2() -> f32 {
    let var_0 = u_input.b;
    global0 = vec4<u32>(countOneBits(global0.x), 17581u, u_input.d, global2[_wgslsmith_index_u32(~(~(~global0.x)), 22u)]) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(abs(global2[_wgslsmith_index_u32(u_input.d, 22u)]), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(74082u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), 60130u ^ global2[_wgslsmith_index_u32(global0.x, 22u)], ~0u), vec4<u32>(_wgslsmith_mult_u32(global0.x, u_input.d), u_input.d, func_3(var_0.wzw, vec4<f32>(284f, -1180f, 660f, -976f)), global2[_wgslsmith_index_u32(9422u, 22u)] ^ 26546u)), vec4<u32>(~global0.x, ~0u, ~global0.x, ~firstLeadingBit(26355u)));
    let var_1 = Struct_1(vec3<i32>(~(-18866i), -39734i, -_wgslsmith_dot_vec3_i32(u_input.b.wxy, abs(vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i)))), u_input.d, -2315f, select(true, true && ((global0.x < 11386u) || true), (select(false, true, true) & true) != true));
    global0 = vec4<u32>(abs(~1u), ~abs(u_input.a) >> (_wgslsmith_mod_u32(~min(global0.x, global0.x), 1u) % 32u), var_1.b, 4294967295u);
    global2 = array<u32, 22>();
    return _wgslsmith_f_op_f32(floor(-883f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a.x;
    var var_1 = -1054f;
    global0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~countOneBits(74033u)), abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, global2[_wgslsmith_index_u32(47286u, 22u)], global2[_wgslsmith_index_u32(u_input.d, 22u)]), 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(64207u, u_input.d, u_input.a, 0u)), vec4<u32>(u_input.a, 42666u, 1u, u_input.d) << (vec4<u32>(global0.x, arg_1.b, arg_1.b, global0.x) % vec4<u32>(32u))), select(vec4<u32>(global0.x, arg_1.b, global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.b), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 3281u, 0u, 19855u), vec4<u32>(arg_1.b, global0.x, global0.x, 4294967295u)), all(vec2<bool>(true, true)))), reverseBits(~(~1u))), ~(~vec4<u32>(18849u, u_input.a, arg_1.b, 41721u) ^ countOneBits(countOneBits(vec4<u32>(1569u, 4294967295u, arg_1.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 22u)])))));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0.xww, vec3<u32>(~(~42488u), 27065u, abs(4294967295u))), ~(vec3<u32>(_wgslsmith_mult_u32(37925u, global2[_wgslsmith_index_u32(global0.x, 22u)]), global0.x, max(global0.x, u_input.d)) | abs(abs(global0.yzz))));
    var var_3 = -2003f;
    return Struct_1(_wgslsmith_clamp_vec3_i32(u_input.b.zzx, ~u_input.c, u_input.b.wwy ^ ~(u_input.b.ywy << (var_2 % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(min(~_wgslsmith_sub_vec2_u32(vec2<u32>(58756u, 1u), global0.yy), global1[_wgslsmith_index_u32(firstLeadingBit(var_2.x), 22u)]), vec2<u32>(global0.x, 0u)), 814f, !arg_1.d);
}

fn func_1() -> i32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), -643f)), Struct_1(-vec3<i32>(firstLeadingBit(u_input.c.x), u_input.b.x, -93910i), u_input.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1302f * -1386f))), true));
    global0 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2[_wgslsmith_index_u32(var_0.b, 22u)], _wgslsmith_dot_vec2_u32(vec2<u32>(37685u, u_input.a), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], 1u))), 22u)], ~var_0.b, u_input.a, global0.x), (vec4<u32>(55518u, global2[_wgslsmith_index_u32(global0.x, 22u)], var_0.b, global0.x) & ~vec4<u32>(13449u, 4294967295u, var_0.b, u_input.d)) << (vec4<u32>(func_3(var_0.a, vec4<f32>(var_0.c, -568f, var_0.c, var_0.c)), _wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(var_0.b, 22u)]), _wgslsmith_mult_u32(u_input.a, global0.x), 115223u) % vec4<u32>(32u))));
    global2 = array<u32, 22>();
    return _wgslsmith_dot_vec2_i32(u_input.c.zx, vec2<i32>(i32(-1i) * -1i, -u_input.b.x)) << (~func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c, 569f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, 1000f) * vec2<f32>(554f, -451f)))), func_4(vec2<f32>(1514f, -2235f), var_0)).b % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 22>();
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(10061i, u_input.b.x, u_input.c.x), vec3<i32>(-abs(u_input.b.x), func_1(), ~u_input.c.x)), 15130u, -361f, !(!(!select(false, true, false))));
    global1 = array<vec2<u32>, 22>();
    var var_1 = func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c, -620f)) * _wgslsmith_f_op_f32(187f + var_0.c)), func_4(vec2<f32>(533f, 127f), Struct_1(u_input.c, 42657u, -230f, false)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -701f) - _wgslsmith_div_f32(var_0.c, -498f)))), var_0);
    var_1 = Struct_1(vec3<i32>(var_1.a.x, -(countOneBits(u_input.b.x) & 6170i), i32(-1i) * -var_1.a.x), (max(~var_0.b, ~0u) ^ var_1.b) | _wgslsmith_sub_u32(~countOneBits(40994u), 69698u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c))), _wgslsmith_f_op_f32(-var_1.c))), !((!var_1.d != var_1.d) || var_0.d));
    var var_2 = var_0;
    let var_3 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-578f, var_1.c)) + var_1.c), -2195f), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(943f, var_3.c)) - func_4(vec2<f32>(-892f, -139f), Struct_1(vec3<i32>(-23158i, u_input.b.x, -5413i), 1u, 129f, var_0.d)).c)))), select(_wgslsmith_mod_vec3_i32(firstLeadingBit(select(vec3<i32>(-1i, 33714i, 0i), var_2.a, vec3<bool>(var_1.d, var_2.d, true))), _wgslsmith_sub_vec3_i32(var_1.a, var_2.a) & _wgslsmith_mod_vec3_i32(u_input.c, var_1.a)), vec3<i32>(_wgslsmith_mult_i32(79212i & var_1.a.x, ~var_0.a.x), ~_wgslsmith_mod_i32(var_0.a.x, -2147483647i), abs(-2147483647i)), !select(true, var_1.a.x == -362i, true)), vec2<u32>(4294967295u, ~1u));
}

