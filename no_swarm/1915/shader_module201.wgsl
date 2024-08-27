struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5>;

var<private> global1: array<vec4<i32>, 26>;

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1000f, -1000f), vec3<i32>(-19941i, 2147483647i, 2147483647i), vec2<bool>(false, true), vec4<u32>(0u, 22514u, 0u, 7596u), vec2<i32>(-1i, 12371i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(20167i, ~u_input.b), max(_wgslsmith_add_i32(1i, u_input.a.x), -1i & u_input.b)));
    global0 = array<vec4<i32>, 5>();
    var var_1 = var_0;
    global0 = array<vec4<i32>, 5>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) + -523f));
    return !vec2<bool>(any(select(vec2<bool>(global3.c.x, false), vec2<bool>(true, global3.c.x), false)) && global3.c.x, global3.c.x);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global3.d.x;
    let var_1 = 1611f;
    global0 = array<vec4<i32>, 5>();
    let var_2 = Struct_3(global3.b.x ^ firstLeadingBit(abs(_wgslsmith_add_i32(-23676i, 2147483647i))));
    let var_3 = Struct_2(Struct_1(global3.a, global3.b, func_3(), ~_wgslsmith_add_vec4_u32(~global3.d, max(global3.d, global3.d)), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(var_2.a, 25396i), vec2<i32>(1i, var_2.a), -global3.e), _wgslsmith_mod_vec2_i32(global3.b.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(4051i, var_2.a), u_input.a)))));
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(117f, -546f)), _wgslsmith_f_op_f32(214f - -135f)) * vec2<f32>(_wgslsmith_f_op_f32(var_3.a.a.x - var_3.a.a.x), -1234f)), _wgslsmith_div_vec2_f32(global3.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global3.a * var_3.a.a))))), -_wgslsmith_sub_vec3_i32(-var_3.a.b, _wgslsmith_sub_vec3_i32(-vec3<i32>(22820i, 17551i, -100528i), var_3.a.b)), var_3.a.c, _wgslsmith_add_vec4_u32(vec4<u32>(global3.d.x, ~0u, global3.d.x, global3.d.x), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.a.d.x, global3.d.x, 0u, 26419u), _wgslsmith_add_vec4_u32(global3.d, var_3.a.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, global3.d.x, global3.d.x, var_3.a.d.x), var_3.a.d) >> (~vec4<u32>(var_3.a.d.x, 76863u, var_3.a.d.x, 21069u) % vec4<u32>(32u)))), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(-global0[_wgslsmith_index_u32(u_input.c, 5u)], vec4<i32>(2147483647i, -2147483647i, var_2.a, 23762i) & global0[_wgslsmith_index_u32(3785u, 5u)])), countOneBits(_wgslsmith_dot_vec3_i32(global3.b, vec3<i32>(2147483647i, 31113i, -9651i))) >> (1u % 32u)));
}

fn func_4(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-2000f)), 654f), vec3<i32>(global3.b.x, -arg_0.e.x, firstLeadingBit(2147483647i)), select(func_3(), global3.c, vec2<bool>(true, true)), global3.d, _wgslsmith_clamp_vec2_i32(~reverseBits(arg_0.e), arg_0.b.zx, arg_0.b.yx)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-427f, arg_0.a.x)), _wgslsmith_f_op_f32(select(-656f, 2546f, var_0.a.c.x)), 403f >= var_0.a.a.x)) + -1000f), global3.a.x, var_0.a.a.x, -1289f)));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(sign(1802f))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(global3.a.x + 1107f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.a.a)))), func_2(!func_3().x).c)), min(firstLeadingBit(firstTrailingBit(global3.b)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, global3.e.x)), ~2147483647i, 1i)), func_3(), firstLeadingBit(countOneBits(var_0.a.d)), var_0.a.e);
    global1 = array<vec4<i32>, 26>();
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, var_1.x, var_1.x, 249f) + vec4<f32>(global3.a.x, arg_0.a.x, -998f, var_0.a.a.x)))))) * vec4<f32>(1132f, -1418f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), var_0.a.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f))), var_0.a.a.x, global3.a.x, _wgslsmith_f_op_f32(max(-523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_1.x) * var_0.a.a.x)))));
    return vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), -1000f);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = 1619i;
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(func_2((arg_2 & arg_2) || true))), ~_wgslsmith_add_vec3_i32(min(min(global3.b, global3.b), select(global3.b, vec3<i32>(-2147483647i, arg_0.a, 3738i), vec3<bool>(global3.c.x, global3.c.x, false))), firstLeadingBit(vec3<i32>(var_0, 51769i, 18644i))), func_3(), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global3.d, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global3.d, global3.d, global3.d), global3.d << (vec4<u32>(global3.d.x, 1u, global3.d.x, global3.d.x) % vec4<u32>(32u))), abs(select(global3.d, vec4<u32>(1u, u_input.c, 0u, u_input.c), arg_2))), global3.d), u_input.a);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(~var_2.d.x, 65823u, global3.d.x)), vec3<u32>(global3.d.x, _wgslsmith_sub_u32(u_input.c & global3.d.x, 1u), ~reverseBits(u_input.c))), 18u)];
    global0 = array<vec4<i32>, 5>();
    return Struct_1(vec2<f32>(var_3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(515f + -596f), _wgslsmith_f_op_f32(-global3.a.x)) - -199f)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a & ~var_1.a, -(~arg_0.a), 13098i), vec3<i32>(min(min(var_0, -8150i), 1i), abs(-14753i), -1i & firstTrailingBit(var_0))), vec2<bool>(select(true, true, true) && (var_2.c.x != !arg_2), func_2(arg_2).c.x), _wgslsmith_clamp_vec4_u32(var_2.d ^ ~var_2.d, abs(~(var_2.d ^ global3.d)), firstLeadingBit(vec4<u32>(~var_2.d.x, _wgslsmith_dot_vec4_u32(var_3.a.d, global3.d), var_2.d.x, ~98266u))), global3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(693f, -303f, all(!select(vec3<bool>(global3.c.x, global3.c.x, global3.c.x), vec3<bool>(global3.c.x, global3.c.x, false), global3.c.x)))), _wgslsmith_div_f32(216f, 513f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-958f, global3.a.x), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f))) + 172f));
    let var_1 = func_1(Struct_3(countOneBits(18715i)), _wgslsmith_f_op_vec2_f32(floor(var_0.zx)), true || global3.c.x);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), global3.a);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.a.x)))), var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.a.x + var_1.a.x), global3.a.x, _wgslsmith_f_op_f32(abs(global3.a.x))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1018f, 1996f, 2340f), vec3<f32>(var_2.x, -1871f, var_0.x), true))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global3.a.x, _wgslsmith_f_op_f32(-var_0.x)), -1974f, -723f, _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_div_f32(var_1.a.x, -838f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1963f + 517f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, var_0.x, -766f, 190f))))));
    var var_4 = global2[_wgslsmith_index_u32(~(var_1.d.x ^ (countOneBits(var_1.d.x) ^ 19047u)) >> (global3.d.x % 32u), 18u)];
    global0 = array<vec4<i32>, 5>();
    var var_5 = Struct_2(func_2(func_3().x));
    global0 = array<vec4<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(var_1.d, abs(vec4<u32>(var_4.a.d.x, 4294967295u, var_1.d.x, 1u)), !vec4<bool>(false, false, global3.c.x, true)), var_4.a.d ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18073u, u_input.c, 1u), var_5.a.d)), var_5.a.d), max(_wgslsmith_div_vec2_u32(var_4.a.d.xw, max(~vec2<u32>(1u, 4294967295u), abs(global3.d.xw))), ~_wgslsmith_div_vec2_u32(var_1.d.xz, ~var_1.d.wz)), _wgslsmith_dot_vec4_i32(vec4<i32>(13224i >> (~var_1.d.x % 32u), -21228i, 1i, 0i), vec4<i32>(var_1.b.x, global3.b.x, var_1.b.x, func_1(Struct_3(global3.b.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(743f, 1000f))), false).b.x)));
}

