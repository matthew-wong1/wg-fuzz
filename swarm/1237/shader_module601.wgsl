struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(30543u, 3986u, 4294967295u), vec4<bool>(false, true, true, false)), Struct_1(6349i, vec2<bool>(false, true), vec3<u32>(29953u, 65124u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(2147483647i, vec2<bool>(true, true), vec3<u32>(52303u, 15999u, 42753u), vec4<bool>(true, true, false, false)), Struct_1(2147483647i, vec2<bool>(false, true), vec3<u32>(4294967295u, 2098u, 4294967295u), vec4<bool>(true, true, true, true)), Struct_1(-8715i, vec2<bool>(false, true), vec3<u32>(46224u, 4294967295u, 3462u), vec4<bool>(true, true, false, false)), Struct_1(i32(-2147483648), vec2<bool>(true, false), vec3<u32>(104302u, 76510u, 4294967295u), vec4<bool>(false, false, false, false)), Struct_1(-1i, vec2<bool>(true, true), vec3<u32>(14743u, 30142u, 0u), vec4<bool>(true, false, true, true)), Struct_1(1i, vec2<bool>(true, false), vec3<u32>(119675u, 4294967295u, 87968u), vec4<bool>(true, true, true, false)), Struct_1(i32(-2147483648), vec2<bool>(true, true), vec3<u32>(55574u, 27456u, 4294967295u), vec4<bool>(false, false, true, true)), Struct_1(2147483647i, vec2<bool>(true, true), vec3<u32>(29096u, 4294967295u, 26074u), vec4<bool>(true, true, true, true)), Struct_1(0i, vec2<bool>(false, true), vec3<u32>(41618u, 65967u, 40047u), vec4<bool>(true, false, false, true)), Struct_1(2147483647i, vec2<bool>(false, true), vec3<u32>(48015u, 42151u, 17891u), vec4<bool>(true, true, false, true)));

var<private> global1: i32 = 53650i;

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(1u, 0u, 43059u), vec3<u32>(4294967295u, 69906u, 48501u), vec3<u32>(79212u, 53254u, 0u), vec3<u32>(4294967295u, 63572u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 30511u, 4294967295u), vec3<u32>(0u, 12496u, 0u), vec3<u32>(4294967295u, 22644u, 1u), vec3<u32>(42656u, 32834u, 0u), vec3<u32>(37616u, 75068u, 56153u), vec3<u32>(4294967295u, 79302u, 67385u), vec3<u32>(11008u, 0u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 76784u, 0u), vec3<u32>(81574u, 33704u, 42489u), vec3<u32>(4294967295u, 71271u, 72100u), vec3<u32>(40749u, 0u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(10594u, 21674u, 44986u), vec3<u32>(36702u, 0u, 10547u));

var<private> global4: vec4<u32> = vec4<u32>(21966u, 113860u, 1u, 0u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(abs(~(min(firstLeadingBit(u_input.a), ~112443u) ^ (u_input.a & ~24326u))), 12u)];
    var var_1 = vec3<f32>(-557f, -1156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1506f - 1505f) + _wgslsmith_f_op_f32(-864f * 321f)))));
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(u_input.a, u_input.a, 34371u, 4294967295u) | vec4<u32>(global4.x, var_0.c.x, 1u, 1u)), ~max(vec4<u32>(u_input.a, 23692u, 96588u, 1u), abs(vec4<u32>(1u, 1u, var_0.c.x, 83589u))), min(~vec4<u32>(10481u, 0u, var_0.c.x, global4.x) << (~vec4<u32>(var_0.c.x, global4.x, 0u, u_input.a) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a, 33112u, 4294967295u) << (firstLeadingBit(vec4<u32>(33161u, global4.x, global4.x, 128717u)) % vec4<u32>(32u)))));
    let var_3 = Struct_1(var_0.a, var_0.b, _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(1u, 29272u), 1u & global4.x, u_input.a), ~var_2.zyx), !(!(!var_0.d)));
    var var_4 = Struct_1(max(~var_0.a, 10148i), var_3.d.wx, _wgslsmith_add_vec3_u32(~(~global4.zzw), vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, var_3.c.x), global4.x), 0u)), !vec4<bool>(true, var_3.a > (var_3.a >> (var_2.x % 32u)), all(var_0.d.wz), var_0.d.x));
    return var_3.d.wx;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = Struct_1(-arg_1.x, vec2<bool>(true, any(var_1.d.wxw)), vec3<u32>(arg_0.c.x, 11619u, 24614u), vec4<bool>(arg_0.d.x, all(var_0.d), arg_2.d.x, any(var_0.d.xz)));
    let var_3 = countOneBits(global4.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 48526u, global4.x, arg_0.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.x, 4294967295u, var_1.c.x, arg_0.c.x), vec4<u32>(u_input.a, 23122u, 79928u, arg_2.c.x))) % 32u)) >> (4294967295u % 32u);
    var var_4 = arg_0;
    return !select(func_3(), func_3(), select(func_3(), !(!var_2.b), func_3()));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(abs(46560i), select(!func_2(global0[_wgslsmith_index_u32(37094u, 12u)], vec4<i32>(5195i, 2147483647i, 11741i, -2748i), global0[_wgslsmith_index_u32(~global4.x, 12u)]), vec2<bool>(_wgslsmith_f_op_f32(trunc(-1107f)) >= 707f, true & all(vec3<bool>(false, true, true))), vec2<bool>(true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~global4.x, ~4294967295u ^ global4.x), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global4.x, 37330u, 4294967295u), global4.x >> (0u % 32u)), ~(~0u), global4.x)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, all(vec3<bool>(false, false, true))), true));
    var var_1 = var_0;
    return global0[_wgslsmith_index_u32(~u_input.a, 12u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-733f, _wgslsmith_f_op_f32(trunc(1761f)))))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(930f * -1010f), _wgslsmith_f_op_f32(max(1010f, 1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-727f))))));
    let var_1 = 4294967295u;
    global3 = array<vec3<u32>, 21>();
    let var_2 = ~arg_1.a << (max(global4.x, arg_1.c.x) % 32u);
    global2 = array<vec2<u32>, 8>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(291i, vec2<bool>(true, false), vec3<u32>(~u_input.a, global4.x, 4294967295u), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-480f * -426f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2042f - -303f)) + _wgslsmith_f_op_f32(-1000f * 1000f)) - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -417f)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, -1252f, 485f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1030f, 266f, -1492f))))))) - vec3<f32>(-154f, 436f, 2129f));
    var var_3 = false;
    var var_4 = vec3<i32>(var_0.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(var_0.a), -14309i) ^ ~2147483647i, var_0.a), -49525i);
    let var_5 = var_0.b;
    global4 = _wgslsmith_div_vec4_u32(countOneBits(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, var_0.c.x), vec4<u32>(global4.x, 74183u, 1u, global4.x)))), vec4<u32>(reverseBits(abs(0u)), ~57020u, firstLeadingBit(u_input.a), select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), firstLeadingBit(vec4<u32>(1u, 1u, 10651u, u_input.a))), global4.x, any(func_4(var_0, Struct_1(var_0.a, vec2<bool>(false, var_5.x), global4.zxy, var_0.d)).b))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(select(40178u << (u_input.a % 32u), 0u, !(!func_1().d.x)), 21u)]);
}

