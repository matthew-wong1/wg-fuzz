struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 4>;

var<private> global2: array<Struct_4, 19>;

var<private> global3: Struct_4 = Struct_4(true, Struct_2(false, vec4<bool>(false, true, false, false)), 0u, vec3<bool>(false, false, true));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> Struct_4 {
    global4 = ~62083u;
    let var_0 = global3.b;
    var var_1 = Struct_4(!(!arg_0.x & global3.b.b.x) || !arg_0.x, global3.b, global0.a.x, var_0.b.yyz);
    global1 = array<u32, 4>();
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(global3.c, global0.a.x)), var_1.c, var_1.c) ^ vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(28808u), abs(global1[_wgslsmith_index_u32(4294967295u, 4u)]), 1u), ~59392u | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, var_1.c), vec4<u32>(9279u, 0u, var_1.c, 0u)), 4u)], ~(1u << (global3.c % 32u))), ~(~(-global0.b)));
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.c, 72505u), 19u)];
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~abs(global1[_wgslsmith_index_u32(1u, 4u)]), arg_0.x, _wgslsmith_clamp_u32(~global0.a.x, max(78995u, global1[_wgslsmith_index_u32(0u, 4u)]), 4294967295u), global3.c), reverseBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.c, 4u)], 4u)], global3.c, global1[_wgslsmith_index_u32(arg_0.x, 4u)], global3.c)), ~(vec4<u32>(global1[_wgslsmith_index_u32(33246u, 4u)], 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 4u)], 0u) ^ vec4<u32>(35603u, global0.a.x, 1u, 4294967295u)), select(max(vec4<u32>(arg_0.x, global3.c, global3.c, global1[_wgslsmith_index_u32(global3.c, 4u)]), vec4<u32>(global1[_wgslsmith_index_u32(30634u, 4u)], 0u, 24023u, global3.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.x, 4u)], 4u)], global3.c, 15554u), vec4<u32>(736u, global3.c, arg_0.x, global1[_wgslsmith_index_u32(global0.a.x, 4u)])), func_2(vec3<bool>(global3.a, false, global3.a), arg_1.x, -1i).b.b))));
    let var_1 = -(-vec3<i32>(~(-2147483647i), 0i, -7483i) | abs(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(1i, u_input.a.x, u_input.a.x)), ~vec3<i32>(2147483647i, 1i, global0.b), vec3<i32>(12230i, global0.b, 0i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f * 877f)) + 332f) * arg_1.x);
    var_0 = vec4<u32>(0u, select(arg_0.x, 11416u, !all(func_2(global3.d, -1184f, u_input.a.x).d)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, 32423u), var_0.yw), global0.a.x << (_wgslsmith_clamp_u32(56275u, _wgslsmith_dot_vec4_u32(vec4<u32>(23956u, 6830u, global0.a.x, 4294967295u), vec4<u32>(global3.c, 4294967295u, var_0.x, arg_0.x)) | ~global1[_wgslsmith_index_u32(4294967295u, 4u)], 1u) % 32u));
    var var_3 = 16574u;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.x)))) + 876f), -155f, arg_1.x) - vec4<f32>(-421f, 1209f, _wgslsmith_f_op_f32(1848f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - 252f), var_2))), _wgslsmith_f_op_f32(-1260f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(877f + -1931f)))));
}

fn func_4(arg_0: vec4<f32>) -> i32 {
    let var_0 = abs(max(-1i, -_wgslsmith_div_i32(28634i, global0.b)) ^ global0.b);
    var var_1 = Struct_3(global0.a, 35871i);
    var var_2 = i32(-1i) * -min(-15223i, var_1.b);
    let var_3 = global3.b;
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>((i32(-1i) * -var_0) & _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0, global0.b, 1i), vec3<i32>(23642i, global0.b, 10197i)), reverseBits(-var_1.b), min(~(-31870i) & var_1.b, var_1.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(global0.b, -1796i), _wgslsmith_mult_i32(~u_input.a.x, -1i), 1i), abs(firstLeadingBit(firstTrailingBit(vec3<i32>(global0.b, global0.b, global0.b))))));
    return -firstTrailingBit(global0.b);
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> u32 {
    global1 = array<u32, 4>();
    var var_0 = Struct_1(vec2<u32>(30437u, 1u), vec2<bool>(all(select(func_2(global3.b.b.zwx, -670f, -21951i).d, vec3<bool>(arg_0.b.a, true, arg_0.b.b.x), global3.a)), true), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(global3.c, global3.c, global3.c), vec3<u32>(0u, global3.c, global0.a.x)), vec3<u32>(arg_0.c, global3.c, 1u), ~global0.a), global0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(global3.d, -691f, 9248i).c, 10330u, ~1u, ~21546u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.x, 34601u, global3.c) | vec4<u32>(4294967295u, global0.a.x, 16725u, 4294967295u), vec4<u32>(arg_0.c, 7917u, global3.c, 0u)))), arg_1, !(true & arg_0.b.b.x));
    let var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(129f, -2060f)));
    var var_3 = 376f;
    return 0u;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = func_5(func_2(select(vec3<bool>(arg_0 & true, !global3.b.a, true), select(select(vec3<bool>(var_0, arg_0, arg_0), global3.b.b.zzz, global3.d), !vec3<bool>(true, true, global3.a), global3.b.b.x), ~global3.c >= global3.c), _wgslsmith_f_op_f32(floor(-594f)), -8845i), -func_4(_wgslsmith_f_op_vec4_f32(func_3(global0.a, vec4<f32>(387f, -977f, 227f, -746f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2149f - _wgslsmith_f_op_f32(round(-1054f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1931f))))), 581f));
    global1 = array<u32, 4>();
    var var_3 = global0.a.zz ^ global0.a.yy;
    return _wgslsmith_f_op_f32(round(var_2.x));
}

fn func_6(arg_0: vec2<i32>, arg_1: bool) -> StorageBuffer {
    global4 = countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.a.x), global0.a.xx & vec2<u32>(1u, 4294967295u)) << (_wgslsmith_mod_u32(select(35272u, global1[_wgslsmith_index_u32(global0.a.x, 4u)], arg_1), ~7581u) % 32u), global0.a.x));
    var var_0 = Struct_2(_wgslsmith_add_u32(firstLeadingBit(1u), _wgslsmith_clamp_u32(func_5(Struct_4(true, global3.b, global0.a.x, vec3<bool>(arg_1, false, false)), u_input.a.x), global3.c, global3.c)) <= _wgslsmith_mult_u32(select(1u, ~global3.c, global3.a | false), 1u), !func_2(!select(global3.d, vec3<bool>(false, true, global3.d.x), global3.d), 793f, -u_input.a.x).b.b);
    let var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(~global0.a.x, 1u), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global3.c, global3.c), vec3<u32>(4294967295u, global0.a.x, global3.c) | global0.a), 4u)], 4294967295u));
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(min(1i, global0.b ^ 34580i), _wgslsmith_sub_i32(select(arg_0.x, 2147483647i, arg_1), _wgslsmith_mult_i32(32321i, arg_0.x))), countOneBits(u_input.a), u_input.a) << (_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(13448u, global3.c) & global0.a.zy, ~var_1.xy)), ~(~var_1.xz)) % vec2<u32>(32u));
    var var_3 = !vec4<bool>(var_0.b.x, 4294967295u > var_1.x, !(!any(var_0.b.zyx)), (10071i >= _wgslsmith_mod_i32(var_2.x, -34675i)) == global3.b.b.x);
    return StorageBuffer(_wgslsmith_add_vec3_u32(~(_wgslsmith_mod_vec3_u32(global0.a, var_1) | (vec3<u32>(11232u, 28363u, 4294967295u) << (vec3<u32>(global0.a.x, 4294967295u, global1[_wgslsmith_index_u32(1u, 4u)]) % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_div_u32(abs(16869u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0.a.x), 4u)]), var_1.x, ~(global1[_wgslsmith_index_u32(global3.c, 4u)] & var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(firstTrailingBit(vec2<i32>(global0.b, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-2147483647i == global0.b)) - -2015f));
}

