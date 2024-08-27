struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 14> = array<bool, 14>(true, false, true, true, true, false, false, true, false, true, false, false, true, true);

var<private> global2: array<vec2<u32>, 2>;

var<private> global3: Struct_3;

var<private> global4: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-790f - -1069f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f - global3.c.x)))) * global3.c.zx);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-1889f + -142f), Struct_1(global3.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-553f))), select(_wgslsmith_mod_i32(select(-1i, global3.a.b.c, global1[_wgslsmith_index_u32(arg_0.x, 14u)]), u_input.c.x), _wgslsmith_dot_vec4_i32(~u_input.b, -vec4<i32>(u_input.c.x, u_input.b.x, global3.b.b.c, u_input.b.x)), global1[_wgslsmith_index_u32(1u | ~u_input.a, 14u)])));
    var var_2 = ~_wgslsmith_mod_vec4_u32(min(abs(vec4<u32>(arg_0.x, 27650u, 0u, 5321u)), firstLeadingBit(vec4<u32>(global3.a.b.a.x, 1u, global3.b.b.a.x, u_input.a))), abs(vec4<u32>(global3.d.x, ~global3.d.x, _wgslsmith_sub_u32(u_input.a, 1u), global3.d.x)));
    var var_3 = var_1.b;
    var_0 = _wgslsmith_f_op_vec2_f32(-global3.c.zy);
    return _wgslsmith_f_op_f32(ceil(var_0.x));
}

fn func_3(arg_0: vec2<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-113f, _wgslsmith_f_op_f32(-254f + 693f), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a.b.a.x, 57774u), 14u)])))));
    let var_1 = Struct_2(-182f, global3.a.b);
    var var_2 = false;
    var var_3 = global1[_wgslsmith_index_u32(~49535u << (~(~_wgslsmith_mult_u32(firstTrailingBit(4294967295u), ~u_input.a)) % 32u), 14u)];
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1429f), 1641f)) * _wgslsmith_f_op_f32(global3.b.b.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1482f * var_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -779f))))));
    return vec3<u32>(~global3.a.b.a.x, firstLeadingBit(~u_input.a), ~abs(firstLeadingBit(global3.a.b.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.b.zxz;
    let var_1 = _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(firstTrailingBit(min(global3.b.b.c, var_0.x)), _wgslsmith_mult_i32(var_0.x, countOneBits(-1i)), ~u_input.b.x, select(0i, max(49438i, u_input.b.x), all(vec4<bool>(global1[_wgslsmith_index_u32(82379u, 14u)], false, global1[_wgslsmith_index_u32(1u, 14u)], true))))), u_input.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(arg_0.c, global3.c));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(arg_0.c.xwx));
    return global3.a;
}

fn func_1() -> vec3<u32> {
    let var_0 = u_input.c.yz;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-409f, 378f, 271f, 475f) - _wgslsmith_f_op_vec4_f32(min(global3.c, global3.c))) + vec4<f32>(_wgslsmith_f_op_f32(global3.b.b.b * 540f), _wgslsmith_f_op_f32(global3.b.a * 702f), _wgslsmith_f_op_f32(-global3.b.b.b), _wgslsmith_f_op_f32(-global3.a.a)))), vec3<i32>(-1i, ~(-1i), _wgslsmith_sub_i32(-(~0i), abs(18714i))), func_4(Struct_3(Struct_2(-1000f, Struct_1(global3.a.b.a, global3.b.a, -2147483647i)), Struct_2(_wgslsmith_f_op_f32(func_2(global3.d)), global3.b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(400f, global3.c.x, global3.c.x, global3.c.x), global3.c))), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 81151u, u_input.a), ~global3.a.b.a)), _wgslsmith_clamp_u32(u_input.a, ~(u_input.a << (1u % 32u)), _wgslsmith_dot_vec3_u32(func_3(vec2<i32>(2147483647i, u_input.c.x)), ~vec3<u32>(u_input.a, global3.b.b.a.x, 4294967295u)))), Struct_3(func_4(Struct_3(global3.b, func_4(Struct_3(Struct_2(global3.c.x, Struct_1(vec3<u32>(global3.a.b.a.x, 0u, 4294967295u), global3.a.a, -1115i)), global3.b, global3.c, vec3<u32>(0u, 67813u, u_input.a)), 0u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b.b.b, global3.b.a, global3.c.x, global3.c.x), global3.c)), global3.d), ~countOneBits(4294967295u)), global3.b, global3.c, global3.a.b.a));
    let var_2 = func_4(var_1.d, global3.b.b.a.x).b.a.x;
    global2 = array<vec2<u32>, 2>();
    var var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1607f - -1214f)) + 1187f))), func_4(Struct_3(Struct_2(var_1.a.x, global3.b.b), global3.a, vec4<f32>(_wgslsmith_f_op_f32(floor(global3.c.x)), _wgslsmith_f_op_f32(step(983f, 211f)), _wgslsmith_f_op_f32(ceil(global3.b.b.b)), var_1.a.x), vec3<u32>(u_input.a ^ var_2, ~var_1.c.b.a.x, abs(global3.d.x))), global3.d.x).b);
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-global3.a.b.b), global3.a.b), Struct_2(_wgslsmith_f_op_f32(-global3.c.x), Struct_1(global3.d, _wgslsmith_div_f32(global3.a.b.b, global3.b.a), global3.a.b.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(182f, 657f, global3.a.a, global3.c.x) + global3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.b, global3.c.x, -753f, 405f))))), vec3<u32>(~1u, 17157u, ~u_input.a));
    var var_1 = Struct_1(abs(var_0.d), _wgslsmith_f_op_f32(var_0.a.b.b + _wgslsmith_f_op_f32(min(var_0.c.x, global3.a.b.b))), ~(-1i) << (countOneBits(min(_wgslsmith_div_u32(var_0.b.b.a.x, var_0.a.b.a.x), 1u >> (global3.d.x % 32u))) % 32u));
    let var_2 = -((_wgslsmith_mult_vec3_i32(u_input.b.ywy, u_input.b.yww) << (func_1() % vec3<u32>(32u))) | select(-vec3<i32>(0i, 1i, 5167i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, 74958i), u_input.c), global1[_wgslsmith_index_u32(abs(64584u), 14u)])) & u_input.c;
    var var_3 = Struct_5(func_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(func_2(global3.d)), func_4(Struct_3(Struct_2(var_1.b, Struct_1(var_0.a.b.a, global3.b.a, -11429i)), Struct_2(-244f, Struct_1(vec3<u32>(var_0.d.x, 62u, 89067u), 928f, 0i)), vec4<f32>(-766f, var_1.b, var_0.b.a, var_0.b.b.b), var_1.a), u_input.a).b), global3.b, vec4<f32>(var_0.a.b.b, _wgslsmith_f_op_f32(var_0.b.a - var_0.a.b.b), var_0.a.b.b, _wgslsmith_f_op_f32(-340f + 131f)), ~vec3<u32>(u_input.a, 0u, 4294967295u)), 4294967295u), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(32050u, 14u)]), vec2<bool>(false, false), true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(global3.b.b.a.x, 14u)]), global1[_wgslsmith_index_u32(40327u, 14u)]), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)])), global1[_wgslsmith_index_u32(var_1.a.x, 14u)] != global1[_wgslsmith_index_u32(var_0.d.x, 14u)])), global1[_wgslsmith_index_u32(max(0u, 1u), 14u)] | (~u_input.b.x > _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b.c, 47383i, var_1.c), u_input.b.xww))), var_0, any(select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(79118u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], false, false, false), global1[_wgslsmith_index_u32(22102u, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a.x, 14u)], global1[_wgslsmith_index_u32(var_1.a.x, 14u)], global1[_wgslsmith_index_u32(var_0.b.b.a.x, 14u)], global1[_wgslsmith_index_u32(var_1.a.x, 14u)]), vec4<bool>(global1[_wgslsmith_index_u32(363u, 14u)], global1[_wgslsmith_index_u32(18999u, 14u)], global1[_wgslsmith_index_u32(36528u, 14u)], false)), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_1.a.x, 14u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(global3.d.x, 14u)], false, false, global1[_wgslsmith_index_u32(global3.d.x, 14u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(var_1.a.x, 14u)])), false)), _wgslsmith_f_op_vec3_f32(min(var_0.c.wzy, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.a, global3.b.a, global3.a.a) - vec3<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(abs(549f)), _wgslsmith_f_op_f32(-var_0.b.b.b))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global3.d.x) | 4294967295u, ~func_4(Struct_3(func_4(Struct_3(Struct_2(466f, global3.a.b), Struct_2(var_4, Struct_1(var_3.a.b.a, 1294f, 0i)), vec4<f32>(var_0.a.b.b, var_0.b.a, var_1.b, -1422f), global3.b.b.a), var_1.a.x), func_4(Struct_3(Struct_2(var_3.c.a.b.b, global3.a.b), var_0.b, vec4<f32>(var_3.c.a.a, 372f, -490f, global3.a.a), var_0.b.b.a), global3.a.b.a.x), var_0.c, ~var_3.c.d), 4294967295u).b.a.xx);
}

