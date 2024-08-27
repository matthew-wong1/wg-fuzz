struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: u32;

var<private> global2: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> vec2<f32> {
    global1 = arg_0.e.x;
    var var_0 = 44394u;
    var var_1 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(-6873i, -2147483647i), -1i);
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.d.wxx, vec3<i32>(u_input.d.x, -31418i, u_input.d.x)), vec3<i32>(abs(2147483647i), countOneBits(-3319i), abs(-2147483647i))), _wgslsmith_add_i32(~u_input.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, -31304i), vec3<i32>(1i, u_input.d.x, -1i))), -7902i, ~_wgslsmith_sub_i32(abs(1i), u_input.d.x));
    var_1 = u_input.d.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b, vec2<f32>(arg_1, _wgslsmith_f_op_f32(abs(137f)))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.b.x) * vec2<f32>(arg_1, -1064f)) + _wgslsmith_f_op_vec2_f32(trunc(arg_0.b)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    return u_input.b.x;
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(false || !select(true, any(vec3<bool>(false, true, true)), true), false, !all(vec3<bool>(true, true, all(vec2<bool>(true, true)))));
    let var_1 = -(vec4<i32>(max(u_input.d.x, u_input.d.x) & u_input.d.x, abs(u_input.d.x), ~u_input.d.x, _wgslsmith_mult_i32(2147483647i, 1i)) >> (vec4<u32>(~u_input.b.x, func_4(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(-760f, vec2<f32>(177f, 785f), var_0.x, vec3<u32>(4294967295u, 1u, 1u), vec4<u32>(6779u, u_input.b.x, u_input.b.x, 33691u)), 1426f)), -352f, Struct_1(false, false)), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, u_input.b.x)) & ~u_input.b.x) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)) + -1415f);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(var_2, vec2<f32>(722f, var_2), true, vec3<u32>(0u, 9298u, 43184u), vec4<u32>(0u, u_input.a, u_input.b.x, u_input.a)), -963f)).x, _wgslsmith_div_f32(1000f, 600f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-147f, var_2) + vec2<f32>(540f, -373f)))))), -19809i, _wgslsmith_div_i32((i32(-1i) * -2712i) | var_1.x, -2147483647i) & ~var_1.x, vec2<bool>(true, u_input.d.x > -_wgslsmith_sub_i32(u_input.d.x, u_input.d.x)));
    var var_4 = Struct_4(Struct_1(var_0.x, true), Struct_2(u_input.d.xy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.x, var_2, -1174f)))), ~reverseBits(vec4<u32>(u_input.c.x, 97111u, 8519u, 0u)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(38792u, u_input.b.x, 57887u, 0u), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.a)), Struct_1(select(u_input.c.x >= u_input.b.x, !var_0.x, var_0.x), any(!var_3.d))));
    return 1859f;
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.c, u_input.c) ^ ~u_input.b.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(func_2()), arg_0.x))) - 283f);
    let var_1 = Struct_1(arg_0.x && all(vec4<bool>(arg_0.x, true, false, any(vec2<bool>(false, arg_0.x)))), true);
    var var_2 = select(!select(select(!arg_0, !arg_0, var_1.b), select(vec4<bool>(arg_0.x, arg_0.x, var_1.a, var_1.a), vec4<bool>(false, true, var_1.a, var_1.a), !var_1.b), vec4<bool>(var_1.a, false, true, true)), vec4<bool>(any(select(vec4<bool>(var_1.a, false, arg_0.x, arg_0.x), vec4<bool>(false, var_1.a, true, false), true)), all(arg_0), false, true), true);
    var var_3 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-73079i, u_input.d.x, u_input.d.x, 1i), u_input.d) ^ abs(u_input.d), abs(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 38986i)))) << ((_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 11405u, u_input.c.x, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, var_0, 46246u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 97724u, u_input.b.x))) >> (reverseBits(vec4<u32>(46799u, 4294967295u, 1u, u_input.c.x) | vec4<u32>(8315u, 83703u, u_input.c.x, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(35355i, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.d.x), reverseBits(25540i))), -_wgslsmith_sub_i32(0i, u_input.d.x) & abs(2147483647i), u_input.d.x), vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), u_input.d.x, -2910i, ~(-698i)));
    return reverseBits(0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    let var_0 = (u_input.c.x == ~abs(4294967295u)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(false, false)), select(false, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1155f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-977f, -478f))))) * vec2<f32>(_wgslsmith_div_f32(-563f, -1344f), 1136f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), -802f)));
    var var_2 = global0[_wgslsmith_index_u32(48599u, 15u)];
    return Struct_2(select(firstTrailingBit(~vec2<i32>(var_2.b, u_input.d.x)), abs(_wgslsmith_mult_vec2_i32(u_input.d.xw, vec2<i32>(arg_1, 1i))), !select(var_2.d, select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_2.d.x), vec2<bool>(var_0, var_2.d.x)), select(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-602f, var_1.x, var_2.a.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -246f, -1116f))))))), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x | arg_0.x, arg_0.x, _wgslsmith_div_u32(82108u, 1u), arg_0.x), vec4<u32>(77179u, 45520u, u_input.a, u_input.c.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 105402u, arg_0.x, 69812u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1862u), vec4<u32>(arg_0.x, 1u, 69043u, arg_0.x))), u_input.b.x, _wgslsmith_sub_u32(4294967295u, arg_0.x), ~(~reverseBits(1u))), Struct_1(var_2.d.x != all(select(vec3<bool>(var_0, var_2.d.x, true), vec3<bool>(var_2.d.x, var_0, var_2.d.x), vec3<bool>(true, var_2.d.x, true))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.xx;
    global0 = array<Struct_3, 15>();
    let var_1 = vec2<bool>(select(true, reverseBits(firstLeadingBit(u_input.a)) <= abs(1u), any(vec3<bool>(true, true, false)) & any(vec4<bool>(true, false, false, false))), 1u != u_input.c.x);
    let var_2 = func_5(vec2<u32>(~0u, ~1u), max(_wgslsmith_div_i32(-18032i, var_0.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(6165i, -2147483647i, u_input.d.x), vec3<i32>(var_0.x, 11548i, u_input.d.x)), -1i << (func_1(vec4<bool>(true, true, var_1.x, var_1.x)) % 32u)) & u_input.d.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(func_3(Struct_5(651f, _wgslsmith_f_op_vec2_f32(var_2.b.yx - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 884f)), var_2.b.xy)), false, ~_wgslsmith_mod_vec3_u32(~var_2.c.yxz, firstTrailingBit(var_2.c.wyw)), ~_wgslsmith_div_vec4_u32(vec4<u32>(78353u, u_input.b.x, 27018u, u_input.b.x), ~var_2.c)), _wgslsmith_f_op_f32(func_2())));
    var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-548f, 1f)));
    var var_4 = -70378i;
    global1 = 11346u;
    let x = u_input.a;
    s_output = StorageBuffer(~0i, var_2.b, max(0i, _wgslsmith_dot_vec2_i32(reverseBits(var_2.a) >> (vec2<u32>(34073u, u_input.c.x) % vec2<u32>(32u)), abs(u_input.d.ww))), vec4<u32>(_wgslsmith_clamp_u32(1u, ~4294967295u, ~(~u_input.a)), ~(~(~u_input.b.x)), reverseBits(reverseBits(~4294967295u)), u_input.c.x));
}

