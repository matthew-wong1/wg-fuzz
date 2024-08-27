struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-642f, 771f), vec2<f32>(-552f, 1715f), vec2<f32>(235f, 315f), vec2<f32>(963f, 416f), vec2<f32>(200f, -818f), vec2<f32>(271f, 127f), vec2<f32>(-549f, 503f), vec2<f32>(1000f, -1000f), vec2<f32>(-978f, -366f), vec2<f32>(354f, 1476f), vec2<f32>(-499f, 1249f), vec2<f32>(-556f, 979f), vec2<f32>(-1000f, 990f), vec2<f32>(-1524f, 735f), vec2<f32>(-2137f, -1986f), vec2<f32>(481f, 692f), vec2<f32>(1422f, -924f), vec2<f32>(2132f, 790f), vec2<f32>(-1416f, -1314f), vec2<f32>(-304f, 436f), vec2<f32>(359f, -204f));

var<private> global1: i32 = 1i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = firstTrailingBit(_wgslsmith_div_i32(select(_wgslsmith_div_i32(u_input.b.x, 2147483647i), u_input.b.x, any(arg_3.c.xx)), (-2147483647i | arg_1.b.a.x) & -36870i)) > -(0i << (1u % 32u));
    var var_3 = countOneBits(u_input.b.x);
    var var_4 = vec4<bool>(!select(var_0 < arg_0, true, !(arg_1.c.c.x && var_1)), true, (_wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.b.a.x, 0i, u_input.b.x), -17211i) == 1i) || true, (arg_3.c.x | ((688f > arg_2.x) & true)) && arg_3.c.x);
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.b.a, vec3<i32>(min(-2147483647i, -26504i), -1i, ~u_input.c.x)), arg_1.b.a, arg_1.b.a);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(firstLeadingBit(u_input.c), u_input.a.wwz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1266f, -708f, -173f))) - vec3<f32>(_wgslsmith_f_op_f32(-1342f - -182f), -843f, _wgslsmith_f_op_f32(f32(-1f) * -969f))) * vec3<f32>(1f, 1f, 1f)), vec4<u32>(0u, _wgslsmith_mult_u32(0u | u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u)), ~_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), ~min(_wgslsmith_dot_vec3_u32(u_input.a.xxy, u_input.a.wwz), ~24533u)));
    global0 = array<vec2<f32>, 21>();
    global1 = 0i;
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d.x, ~_wgslsmith_mult_u32(var_0.b.x, u_input.a.x), countOneBits(30610u)), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.ywz, vec3<u32>(var_0.b.x, 4294967295u, 4294967295u)) ^ _wgslsmith_clamp_u32(4294967295u, var_0.b.x, 1u), u_input.a.x, _wgslsmith_mod_u32(select(0u, 58283u, false), 11683u)));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<f32>, 21>();
    global1 = 1i;
    global1 = u_input.c.x;
    var var_0 = Struct_2(_wgslsmith_mult_vec3_u32((~vec3<u32>(46954u, 38632u, 53453u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4510u, u_input.a.x, 4294967295u), u_input.a.wyx) % vec3<u32>(32u))) | func_3(), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, reverseBits(106229u), ~30511u), func_3())), vec2<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1292f)))), _wgslsmith_f_op_f32(f32(-1f) * -1202f))), vec3<bool>(true, select(all(vec3<bool>(false, true, true)), all(vec4<bool>(false, false, false, false)), false), true));
    let var_1 = Struct_2(~reverseBits(vec3<u32>(var_0.a.x, u_input.a.x, var_0.a.x) << (u_input.a.ywy % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), firstTrailingBit(u_input.a.x)), 21u)]) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1305f, var_0.b.x))))), var_0.c);
    return Struct_2(_wgslsmith_div_vec3_u32(var_0.a | u_input.a.zzx, vec3<u32>(abs(var_1.a.x), 5144u, 1u)), vec2<f32>(_wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(select(-1689f, -131f, any(var_0.c.xy)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(190f, -547f), _wgslsmith_f_op_f32(abs(-743f)))))), select(vec3<bool>(any(select(vec4<bool>(true, true, var_0.c.x, false), vec4<bool>(var_0.c.x, false, var_1.c.x, true), vec4<bool>(true, true, false, var_0.c.x))), any(var_0.c), true), vec3<bool>(var_0.c.x, true, select(var_1.c.x, var_0.b.x == var_1.b.x, true)), vec3<bool>(var_0.c.x, !any(vec4<bool>(false, var_1.c.x, false, var_0.c.x)), all(var_0.c.yx))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.b.x, 1862f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1277f, -802f), vec2<f32>(arg_0.b.c.x, arg_0.c.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global0[_wgslsmith_index_u32(~77958u, 21u)]))))));
    let var_1 = _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(reverseBits(u_input.a.yxz) ^ ~arg_0.a.a, arg_0.a.a) & ~1u);
    global0 = array<vec2<f32>, 21>();
    var var_2 = abs(-1i);
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-1309f * _wgslsmith_f_op_f32(floor(-823f))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(2143f, arg_0.c.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, arg_0.a.b.x))) - var_0.x)), var_0.x, _wgslsmith_f_op_f32(round(1073f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(u_input.b.yzw, func_1(1u, Struct_3(Struct_2(vec3<u32>(82190u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(false, false, true)), Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), vec3<u32>(11915u, u_input.a.x, u_input.a.x), vec3<f32>(-1000f, -711f, 2058f), u_input.a), Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(false, false, false))), vec4<f32>(-1032f, 766f, -144f, 491f), Struct_2(u_input.a.wyx, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(false, false, true))) | u_input.c), vec3<u32>(u_input.a.x, 38851u, ~_wgslsmith_div_u32(u_input.a.x, abs(4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_3(func_2(), Struct_1(vec3<i32>(u_input.b.x, -17897i, 2147483647i), vec3<u32>(43911u, u_input.a.x, u_input.a.x), vec3<f32>(1208f, 184f, 1368f), u_input.a), Struct_2(u_input.a.yyx, vec2<f32>(746f, 1000f), vec3<bool>(true, true, false))), -40725i))), vec4<u32>(u_input.a.x, 0u, ~0u, ~(0u << (u_input.a.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(-1193f, _wgslsmith_f_op_f32(var_0.c.x - 1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(589f - -313f), _wgslsmith_f_op_f32(ceil(var_0.c.x)))), _wgslsmith_f_op_f32(1175f * var_0.c.x), var_0.c.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-913f, -1136f, -1801f, 1664f))) - vec4<f32>(729f, -646f, -1766f, var_0.c.x)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2458f, var_0.c.x, var_0.c.x, 1665f))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-185f, -894f, var_0.c.x, _wgslsmith_f_op_f32(ceil(var_0.c.x)))))))));
    var_0 = Struct_1(-u_input.b.yyz, max(u_input.a.yyz, var_0.d.zxy), vec3<f32>(var_1.x, -405f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-344f, -266f, false))))))), countOneBits(vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, 0u, 1u), 4294967295u, u_input.a.x, var_0.b.x << (abs(4294967295u) % 32u))));
    var_0 = Struct_1(vec3<i32>(var_0.a.x, countOneBits(_wgslsmith_mod_i32(-var_0.a.x, var_0.a.x >> (1u % 32u))), -_wgslsmith_div_i32(u_input.c.x, _wgslsmith_mod_i32(u_input.b.x, var_0.a.x))), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 47124u, 1u), vec3<u32>(60969u, var_0.d.x, ~u_input.a.x)) << (u_input.a.www % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_1.yzy + _wgslsmith_f_op_vec3_f32(-var_1.xww))))), ~var_0.d);
    var var_2 = -40806i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(-var_1.x), -764f), var_0.a.x, var_1.x, u_input.b.x, u_input.c.x);
}

