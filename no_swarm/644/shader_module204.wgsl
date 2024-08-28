struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 24> = array<f32, 24>(-1000f, -1973f, -1000f, 635f, -140f, -469f, -1117f, -1000f, 3365f, 400f, -898f, -2199f, -582f, 306f, -1811f, -200f, 1286f, -534f, 675f, 676f, 1000f, -1140f, 121f, -599f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    return _wgslsmith_add_u32(4294967295u, abs(~u_input.d));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: i32) -> u32 {
    var var_0 = vec4<u32>(~max(_wgslsmith_sub_u32(arg_2.x, 2471u) & ~u_input.e.x, ~_wgslsmith_mod_u32(arg_2.x, arg_2.x)), abs(arg_2.x), max(~4294967295u, u_input.d ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.e.x), vec2<u32>(arg_2.x, u_input.e.x))) << (5794u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d & 1u, func_3(), _wgslsmith_sub_u32(u_input.c, u_input.e.x), 0u), vec4<u32>(u_input.e.x & 1u, ~1u, _wgslsmith_mod_u32(u_input.e.x, arg_2.x), 4294967295u)));
    var var_1 = arg_0.xzz;
    var_0 = vec4<u32>(~arg_2.x, ~arg_2.x, 1u | _wgslsmith_dot_vec4_u32(max(~vec4<u32>(4294967295u, 123658u, 33943u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, var_0.x), vec4<u32>(var_0.x, var_0.x, u_input.a, 4294967295u))), _wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.e.x, 4294967295u, 127835u, arg_2.x)), ~vec4<u32>(arg_2.x, u_input.c, 4294967295u, arg_2.x))), ~19543u & arg_2.x);
    var_0 = select(vec4<u32>(u_input.d, ~64303u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 0u, 7281u, 1u), vec4<u32>(u_input.e.x, 24840u, arg_2.x, 0u)), firstTrailingBit(vec4<u32>(4294967295u, 0u, u_input.d, 4294967295u))), ~arg_2.x << (0u % 32u)) >> (vec4<u32>(u_input.d, arg_2.x, 20342u, max(u_input.e.x, abs(0u))) % vec4<u32>(32u)), min(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, u_input.e.x, 0u, var_0.x), vec4<u32>(25186u, 1u, 23899u, 41289u)), ~vec4<u32>(var_0.x, 1u, var_0.x, 1u)), vec4<u32>(abs(u_input.d), u_input.e.x, _wgslsmith_mod_u32(0u, u_input.d), arg_2.x & 4294967295u)) ^ ~(~(~vec4<u32>(20461u, arg_2.x, u_input.c, 4294967295u))), true);
    let var_2 = 0u;
    return _wgslsmith_dot_vec3_u32(~var_0.www, vec3<u32>(countOneBits(~var_0.x), max(1u, var_2), _wgslsmith_mult_u32(u_input.c >> (~var_0.x % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.x, arg_2.x), 60376u))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = u_input.b.x;
    let var_1 = all(!(!vec3<bool>(true, true, all(vec3<bool>(false, false, true)))));
    var var_2 = Struct_4(vec2<bool>(all(!(!vec2<bool>(var_1, var_1))), !var_1), Struct_3(Struct_1(0u, u_input.b.ywx)), ~abs(abs(vec4<u32>(15703u, u_input.d, 0u, u_input.e.x)) >> (~vec4<u32>(53020u, 7209u, u_input.e.x, 4294967295u) % vec4<u32>(32u))), -36665i, global1[_wgslsmith_index_u32(u_input.e.x >> (abs(~4294967295u) % 32u), 24u)]);
    let var_3 = var_2.a;
    let var_4 = Struct_1(~(39781u ^ ~(var_2.b.a.a & 21251u)), ~u_input.b.xxz);
    return Struct_2(Struct_1(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_4.b.x, firstLeadingBit(-1888i), var_0 & var_2.b.a.b.x), var_2.b.a.b, var_2.b.a.b)), var_2.b.a);
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = min(u_input.b.x, -64116i << (func_4(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~4294967295u, 24u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1545f, -2112f, 252f, global1[_wgslsmith_index_u32(14880u, 24u)])))).a.a % 32u));
    let var_1 = arg_0;
    let var_2 = ~_wgslsmith_mod_i32(~var_1.b.b.x, -1i);
    var var_3 = -37682i;
    var_3 = -2147483647i;
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(((arg_0.a.a ^ var_1.b.a) ^ var_1.a.a) >> (5650u % 32u), 24u)])), 379f, _wgslsmith_f_op_f32(-1670f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.b.a, 24u)] * global1[_wgslsmith_index_u32(arg_0.a.a, 24u)])));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.x, global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(u_input.a, u_input.a)), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-205f, 704f)) + arg_1.x))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1601f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(52212u, 24u)], true)) * _wgslsmith_f_op_f32(select(arg_1.x, -350f, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1878f + 473f))), global1[_wgslsmith_index_u32(~(u_input.e.x & u_input.d), 24u)]))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_u32(firstLeadingBit(33621u), 13649u), max(vec3<i32>(16053i, 30340i, arg_0.x), vec3<i32>(2147483647i, -36138i, u_input.b.x)) & ~arg_2.xzy));
    let var_2 = Struct_3(Struct_1(u_input.c ^ 55165u, select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.x, 2147483647i, arg_2.x), var_1.a.b) & var_1.a.b, vec3<i32>(arg_2.x, _wgslsmith_dot_vec2_i32(arg_2.xw, arg_0), _wgslsmith_mod_i32(arg_2.x, var_1.a.b.x)), u_input.b.x <= -30701i)));
    global1 = array<f32, 24>();
    var var_3 = var_2;
    return Struct_4(vec2<bool>(select(true, true, any(vec4<bool>(true, true, true, true))), ~0u != _wgslsmith_mult_u32(~var_3.a.a, 4294967295u)), var_2, select(select(firstTrailingBit(vec4<u32>(29979u, var_2.a.a, 10108u, u_input.d)), max(vec4<u32>(0u, 4294967295u, var_1.a.a, 4294967295u), ~vec4<u32>(48531u, var_1.a.a, var_1.a.a, 61116u)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))), vec4<u32>(_wgslsmith_clamp_u32(max(u_input.a, var_3.a.a), var_1.a.a, 34918u), abs(u_input.c), _wgslsmith_div_u32(var_3.a.a, 13359u), 4294967295u), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_i32(firstTrailingBit(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_3.a.b.x, var_2.a.b.x), u_input.b.zyz)), var_3.a.b >> (((vec3<u32>(26u, 18948u, 1u) | vec3<u32>(var_1.a.a, var_2.a.a, 20217u)) & ~vec3<u32>(1u, var_2.a.a, 104222u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -1000f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_3.a.a, 25297u, 55386u), 1u), 24u)]))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_6(_wgslsmith_mult_vec2_i32(firstTrailingBit(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.b.x, u_input.b.x)))), abs(firstTrailingBit(u_input.b.xz))), _wgslsmith_f_op_vec3_f32(func_5(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-185f, 211f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2315f), true)), vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.c), 24u)], global1[_wgslsmith_index_u32(func_2(u_input.b, vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], global1[_wgslsmith_index_u32(u_input.e.x, 24u)], 398f, global1[_wgslsmith_index_u32(1u, 24u)]), u_input.e, u_input.b.x), 24u)], 552f, -125f)))), reverseBits(u_input.b | countOneBits(vec4<i32>(2147483647i, -2147i, 1i, -1i) | u_input.b)));
    var var_1 = Struct_2(func_6(vec2<i32>(6748i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.yzy, vec3<i32>(u_input.b.x, u_input.b.x, var_0.d)), u_input.b.x)), vec3<f32>(global1[_wgslsmith_index_u32(~40662u, 24u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + _wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.e)) * _wgslsmith_f_op_f32(round(-883f)))), -countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.b.a.b.x)) | vec4<i32>(-2147483647i, u_input.b.x, var_0.b.a.b.x & 29904i, max(43716i, var_0.b.a.b.x))).b.a, Struct_1(1u, -vec3<i32>(~0i, 1i, _wgslsmith_add_i32(-8631i, u_input.b.x))));
    var var_2 = -730f;
    let var_3 = func_6(u_input.b.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(var_1.a, var_1.b))).x, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 24u)], -955f)), -615f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.e, -1000f, 187f)))))), max(u_input.b, select(u_input.b, vec4<i32>(select(u_input.b.x, var_0.b.a.b.x, var_0.a.x), 363i, _wgslsmith_add_i32(63062i, -20323i), _wgslsmith_mult_i32(2147483647i, 1i)), var_0.a.x)));
    global0 = var_0.a.x;
    return var_3;
}

fn func_7(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_4) -> vec4<u32> {
    global1 = array<f32, 24>();
    var var_0 = func_6(arg_2.b.a.b.zz, arg_1.zzz, vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.b.xyx, arg_2.b.a.b), 40192i, -1i | select(_wgslsmith_add_i32(arg_2.b.a.b.x, 80398i), 72190i, !arg_2.a.x), -2147483647i));
    let var_1 = reverseBits(_wgslsmith_mod_u32(func_6(vec2<i32>(var_0.b.a.b.x, arg_2.d), _wgslsmith_div_vec3_f32(arg_1.yyx, arg_1.wyw), vec4<i32>(0i, var_0.b.a.b.x, -45623i, var_0.b.a.b.x)).c.x & select(46373u, 0u << (arg_2.c.x % 32u), true), arg_0));
    global1 = array<f32, 24>();
    var var_2 = arg_2;
    return ~_wgslsmith_mult_vec4_u32(func_6(arg_2.b.a.b.zy, _wgslsmith_div_vec3_f32(vec3<f32>(169f, 343f, 1789f), vec3<f32>(-1982f, var_0.e, 101f)), -vec4<i32>(14382i, -44718i, 2147483647i, 1i)).c, ~var_0.c) & _wgslsmith_div_vec4_u32(max(~_wgslsmith_sub_vec4_u32(vec4<u32>(72794u, arg_2.c.x, 4294967295u, 32446u), vec4<u32>(4294967295u, 0u, var_2.b.a.a, var_1)), ~_wgslsmith_sub_vec4_u32(var_2.c, vec4<u32>(62740u, arg_2.b.a.a, 4294967295u, var_0.c.x))), vec4<u32>(max(525u, 5181u), 0u, _wgslsmith_sub_u32(arg_2.c.x, arg_0), ~4294967295u) | vec4<u32>(1u, ~1u, _wgslsmith_div_u32(4294967295u, u_input.c), _wgslsmith_sub_u32(arg_0, arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.e & u_input.e);
    global1 = array<f32, 24>();
    global1 = array<f32, 24>();
    global0 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~1u), _wgslsmith_clamp_u32(min(55971u, u_input.a), u_input.c, u_input.a)), 24u)]), 1187f, 170f, global1[_wgslsmith_index_u32(0u, 24u)]);
    var var_2 = _wgslsmith_div_i32(reverseBits(u_input.b.x), firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, ~(u_input.b.x & u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(f32(-1f) * -1122f)))), max(vec4<i32>(-17527i, -20588i | (u_input.b.x >> (var_0.x % 32u)), _wgslsmith_div_i32(~(-47971i), min(u_input.b.x, 18690i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b.x, -9577i), 2147483647i, reverseBits(u_input.b.x))), vec4<i32>(u_input.b.x, -2147483647i, ~(-u_input.b.x), -(-13270i >> (var_0.x % 32u)))), ~(~(~vec4<u32>(u_input.a, var_0.x, u_input.d, u_input.e.x))) ^ ~func_7(~1u, _wgslsmith_f_op_vec4_f32(trunc(var_1)), func_1()), 0i);
}

