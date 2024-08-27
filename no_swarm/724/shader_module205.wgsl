struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(i32(-2147483648), 14438i, 1i, -66800i, i32(-2147483648), -9050i, -35962i, 23292i, -1i, -14136i, -1i, 13070i, -1i, 46597i, 49092i, 13064i, i32(-2147483648), -1i, 17367i, -1i, 1i, 27600i, -1i, -36504i, i32(-2147483648), 18045i, 2147483647i, -5548i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1604f, -601f)), -1474f))))))));
    global0 = array<i32, 28>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1000f);
    global0 = array<i32, 28>();
    var var_2 = u_input.e.wxz | vec3<u32>(max(~countOneBits(u_input.b.x), u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.d), countOneBits(u_input.d.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1686f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(181f)))), _wgslsmith_div_f32(var_1.x, -1093f), var_0))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    let var_0 = !((-9481i << (u_input.b.x % 32u)) == _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~1u, 28u)], min(1i, -1i)));
    global0 = array<i32, 28>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)) + -368f);
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    return 83175i;
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 28>();
    let var_0 = Struct_3(_wgslsmith_mult_i32(func_4(_wgslsmith_sub_vec2_u32(~u_input.d, u_input.e.zx | u_input.e.yz), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(false))), 48900i, min(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d)), u_input.c), Struct_2(Struct_1(any(vec2<bool>(true, true))), Struct_1(all(vec4<bool>(true, false, false, true)) || true), Struct_1(false)), Struct_2(Struct_1(true), Struct_1(true), Struct_1(all(vec3<bool>(true, false, true)))), Struct_1(true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1076f, -1604f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-316f, -191f))))))));
    global0 = array<i32, 28>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    return Struct_2(var_0.d, var_0.b.a, var_0.b.c);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = max(_wgslsmith_dot_vec3_i32(reverseBits(~(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], u_input.c, 21003i) & vec3<i32>(0i, -28592i, global0[_wgslsmith_index_u32(arg_1, 28u)]))), ~(-firstTrailingBit(vec3<i32>(-1i, 1418i, u_input.c)))), ~u_input.c);
    var var_1 = Struct_2(func_2().c, func_2().a, func_2().c);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, 994f, -1431f, -547f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 745f, 548f, -960f) - vec4<f32>(1558f, -280f, 1000f, -630f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(957f, 145f, 1386f, -199f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1528f, 231f, 1000f, 1546f))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(var_1.b.a, true, true, var_1.b.a)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1377f, 459f, -1103f, -1007f)) + vec4<f32>(1f, 1f, 1f, 1f))));
    var var_3 = countOneBits(~(-(_wgslsmith_add_vec4_i32(vec4<i32>(-13617i, global0[_wgslsmith_index_u32(4294967295u, 28u)], -1i, u_input.a), vec4<i32>(u_input.c, u_input.a, -15402i, global0[_wgslsmith_index_u32(0u, 28u)])) >> (firstTrailingBit(u_input.e) % vec4<u32>(32u)))));
    var var_4 = _wgslsmith_f_op_f32(round(var_2.x));
    return Struct_3(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(select(1u, _wgslsmith_add_u32(59078u, 86256u), true), 28u)] & _wgslsmith_dot_vec2_i32(~var_3.wy, reverseBits(var_3.ww)), u_input.c), Struct_2(arg_0.c, Struct_1(true), func_2().b), func_2(), Struct_1(arg_0.a.a));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(true);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.e.x ^ _wgslsmith_mod_u32(~31778u, ~u_input.d.x), u_input.d.x), min(_wgslsmith_sub_u32(~(u_input.e.x | u_input.e.x), u_input.e.x), u_input.b.x)), 28u)];
    var_0 = Struct_1(true);
    let var_2 = vec4<f32>(-422f, _wgslsmith_f_op_f32(max(-589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(493f)) + -1770f)))), -862f, 2799f);
    let var_3 = var_0.a;
    return func_5(func_2(), _wgslsmith_div_u32(u_input.b.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(vec2<bool>(any(vec3<bool>(var_0.b.c.a, -52823i > u_input.c, all(vec4<bool>(var_0.b.a.a, var_0.d.a, var_0.d.a, true)))), true), vec2<bool>(-63833i == ~_wgslsmith_mult_i32(-34708i, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -515f) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -383f)))), select(vec2<bool>(true, true), !vec2<bool>(true, !var_0.b.c.a), all(vec4<bool>(var_0.c.b.a, var_0.b.b.a, true && var_0.b.c.a, var_0.d.a))));
    let var_2 = Struct_4(var_0.b.a, var_0.b, func_5(func_1().b, u_input.d.x));
    let var_3 = global0[_wgslsmith_index_u32(u_input.e.x & (~u_input.d.x | firstTrailingBit(u_input.e.x)), 28u)];
    let var_4 = select(vec4<bool>(!(u_input.b.x >= 1u), var_1.x, !((21669i <= var_2.c.a) || func_1().d.a), true), vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, var_0.c.a.a)), select(vec2<bool>(var_2.a.a, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), true)), u_input.b.x > 56893u, all(select(select(vec3<bool>(var_1.x, var_0.b.b.a, false), vec3<bool>(false, var_1.x, var_0.b.b.a), var_1.x), vec3<bool>(true, var_2.b.a.a, var_2.c.c.c.a), !vec3<bool>(var_2.a.a, var_1.x, var_0.c.c.a))), true), vec4<bool>(!var_2.c.d.a || ((var_2.c.a == var_2.c.a) == select(var_1.x, false, var_2.c.d.a)), true, all(select(vec2<bool>(true, true), !vec2<bool>(var_0.c.b.a, true), true)), !var_0.d.a));
    var var_5 = -(-13533i >> (_wgslsmith_add_u32(u_input.d.x | 1u, 4294967295u) % 32u));
    let var_6 = Struct_1(true);
    var_5 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1628f)) + _wgslsmith_div_f32(-1757f, -1310f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(964f, 660f, true)), -1787f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2092f)))))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(12157u, u_input.b.x) | vec2<u32>(1u, 38442u), ~vec2<u32>(u_input.e.x, 0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1576f, 471f) * vec2<f32>(1919f, 777f)) + vec2<f32>(-1002f, -1176f)) + vec2<f32>(_wgslsmith_f_op_f32(-1164f * 899f), -271f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1641f, 1041f))))), (u_input.a ^ (1i | (u_input.a >> (u_input.b.x % 32u)))) ^ 1i);
}

