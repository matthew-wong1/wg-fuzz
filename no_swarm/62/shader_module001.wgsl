struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 15>;

var<private> global2: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    global0 = any(select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, false))), vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    global1 = array<vec2<bool>, 15>();
    let var_0 = true;
    global1 = array<vec2<bool>, 15>();
    global1 = array<vec2<bool>, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x)))) - -424f));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    var var_0 = Struct_3(vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(1u, 1u)), _wgslsmith_mult_u32(abs(u_input.d >> (30860u % 32u)), arg_1), _wgslsmith_add_u32(arg_1 >> (arg_1 % 32u), _wgslsmith_sub_u32(4294967295u | u_input.c.x, 19790u & u_input.d))));
    var_0 = Struct_3(~(~vec3<u32>(arg_1, _wgslsmith_sub_u32(2170u, arg_1), ~arg_1)));
    var var_1 = vec3<i32>(u_input.a.x, u_input.a.x, -18372i);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 592f, _wgslsmith_f_op_f32(-arg_0.x), -396f)), vec4<f32>(_wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1345f * _wgslsmith_f_op_f32(arg_0.x * global2.x)), _wgslsmith_f_op_f32(global2.x * arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, arg_0.x)) * _wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(select(global2.x, arg_0.x, var_0.a.x < var_0.a.x)))), _wgslsmith_f_op_f32(408f * _wgslsmith_f_op_f32(min(global2.x, -2277f))))));
    return Struct_3(vec3<u32>(~1u, 1u, arg_1 ^ (u_input.d << (0u % 32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_4) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_2.a.a.x, -36602i, -33375i) & _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, arg_2.b.x, 37689i)), _wgslsmith_dot_vec2_i32(arg_2.a.a, arg_2.a.a) & _wgslsmith_mult_i32(arg_2.a.a.x, 1i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, arg_2.a.a.x, 21852i) >> ((vec3<u32>(22263u, 0u, u_input.d) & arg_3.a.a) % vec3<u32>(32u)), vec3<i32>(-25781i, 1i, ~13355i))), ~(-2147483647i >> (arg_1.x % 32u)) | u_input.a.x, 0i, 2147483647i);
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(676f)))) - arg_0.x), -1235f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.c - _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + _wgslsmith_f_op_f32(arg_0.x + global2.x)))), arg_2.a.b)), _wgslsmith_f_op_f32(select(-1217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - global2.x), -962f, true))), select(any(select(vec4<bool>(arg_2.a.b, false, false, arg_2.a.b), vec4<bool>(arg_2.a.b, true, arg_2.a.b, true), false)), arg_2.a.b, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1529f, 700f), global2.wy, arg_2.a.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(global2.x))))))));
    let var_2 = arg_2.b.x;
    var var_3 = Struct_4(Struct_3(arg_1.ywy << (~vec3<u32>(1u, arg_3.a.a.x, arg_3.a.a.x) % vec3<u32>(32u))));
    return arg_2.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_4) -> i32 {
    let var_0 = Struct_5(arg_0, u_input.a.yz);
    global0 = var_0.a.b;
    return ~_wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(-vec4<i32>(arg_0.a.x, -44378i, -2147483647i, var_0.a.a.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.x, var_0.b.x, u_input.a.x, 42964i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.a.x, var_0.a.a.x), vec4<i32>(0i, 28456i, var_0.b.x, var_0.b.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    let var_0 = select(func_5(func_4(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.c, arg_1.a.c, 137f), _wgslsmith_f_op_vec3_f32(global2.zyw + global2.yzz)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(82875u, 28138u, 4294967295u, u_input.c.x), u_input.c), ~u_input.c), Struct_5(arg_1.a, u_input.a.zy), Struct_4(func_2(vec3<f32>(883f, 519f, 684f), 1u))), 112f, ~vec4<u32>(u_input.c.x, 4294967295u, u_input.b & u_input.d, u_input.d << (0u % 32u)), Struct_4(Struct_3(select(u_input.c.wzx, u_input.c.wzx, vec3<bool>(false, true, true))))), 15996i, any(select(!vec4<bool>(true, arg_1.a.b, arg_1.a.b, arg_1.a.b), vec4<bool>(arg_1.a.b, true, arg_1.a.b, arg_1.a.b), _wgslsmith_add_u32(18935u, 13904u) > firstLeadingBit(u_input.d))));
    var var_1 = ~(~1u | u_input.c.x);
    var var_2 = _wgslsmith_div_f32(arg_1.a.c, _wgslsmith_f_op_f32(func_3()));
    let var_3 = Struct_3(vec3<u32>(~u_input.d, u_input.d, ~(firstTrailingBit(5319u) << (u_input.c.x % 32u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, arg_1.a.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), 629f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1041f, _wgslsmith_f_op_f32(max(395f, -382f)), arg_1.a.c) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.c), _wgslsmith_div_f32(285f, global2.x), 1478f) - _wgslsmith_f_op_vec3_f32(select(global2.wxx, _wgslsmith_f_op_vec3_f32(global2.ywy + global2.xyw), vec3<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b))))));
    return Struct_2(func_4(global2.xwz, ~u_input.c, Struct_5(arg_1.a, -(~u_input.a.xy)), Struct_4(var_3)), vec2<f32>(955f, _wgslsmith_f_op_f32(f32(-1f) * -433f)), arg_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-201f, -1982f, 1294f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.c, global2.x, -610f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c) + _wgslsmith_f_op_f32(floor(663f))), var_4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.c)) - arg_1.a.c))), func_4(vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), firstLeadingBit(max(vec4<u32>(u_input.d, var_3.a.x, 1007u, var_3.a.x), u_input.c) & u_input.c), arg_1, Struct_4(var_3)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.c), 1699f, arg_2.c, _wgslsmith_div_f32(1682f, -1000f))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(ceil(arg_0.b.x)));
    let var_1 = func_1(func_1(u_input.a.x, Struct_5(Struct_1(arg_1.a >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_mult_vec2_i32(min(u_input.a.zy, vec2<i32>(-1i, -17811i)), vec2<i32>(0i, -10228i) ^ arg_2.a))).e.a.x, Struct_5(Struct_1(vec2<i32>(_wgslsmith_mod_i32(4861i, 1i), arg_0.e.a.x), !all(vec4<bool>(arg_1.b, arg_1.b, arg_2.b, arg_2.b)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(arg_1.c * global2.x))), vec2<i32>(u_input.a.x, _wgslsmith_add_i32(abs(0i), min(arg_0.a.a.x, -1i)))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.c + -445f), global2.x, all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-528f, var_0, arg_0.a.b))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, _wgslsmith_f_op_f32(2234f - -1000f), -262f, _wgslsmith_div_f32(var_0, 260f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.c, -1000f)) + 1447f), arg_0.d.x, -102f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, 2313f, arg_2.c, -888f) - vec4<f32>(208f, arg_0.d.x, -1000f, arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, global2.x, var_0, arg_2.c))))));
    global1 = array<vec2<bool>, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.e.c * arg_2.c))), arg_2.c, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1042f))), arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -830f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2072f, 1000f)) * -660f))), vec4<f32>(_wgslsmith_f_op_f32(func_6(func_1(-u_input.a.x, Struct_5(Struct_1(vec2<i32>(-6565i, u_input.a.x), false, global2.x), u_input.a.zy)), Struct_1(vec2<i32>(u_input.a.x, 109251i), true, 1467f), Struct_1(u_input.a.zy ^ vec2<i32>(u_input.a.x, -2982i), true, 2212f))), _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(vec2<i32>(u_input.a.x, -21941i), false, global2.x), _wgslsmith_f_op_vec2_f32(-global2.xz), func_4(vec3<f32>(global2.x, global2.x, -1349f), vec4<u32>(u_input.c.x, 1u, 4294967295u, 4294967295u), Struct_5(Struct_1(u_input.a.zz, true, -1024f), u_input.a.yx), Struct_4(Struct_3(vec3<u32>(u_input.c.x, u_input.b, u_input.c.x)))), vec3<f32>(-1677f, 335f, global2.x), Struct_1(vec2<i32>(u_input.a.x, u_input.a.x), false, 486f)), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1000f, -1553f) + global2.wyx), reverseBits(vec4<u32>(0u, 4294967295u, u_input.c.x, u_input.c.x)), Struct_5(Struct_1(u_input.a.zy, false, global2.x), vec2<i32>(-1i, u_input.a.x)), Struct_4(Struct_3(u_input.c.wzx))), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 18650i, -46620i), u_input.a), Struct_5(Struct_1(u_input.a.yy, true, global2.x), vec2<i32>(u_input.a.x, u_input.a.x))).a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, 279f), global2.x)))), -1262f));
    global2 = _wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -972f), var_0.x, _wgslsmith_f_op_f32(1f - var_0.x), global2.x), _wgslsmith_f_op_vec4_f32(-var_0))));
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.c.xzw, ~(~min(vec3<u32>(1u, 40417u, u_input.b), vec3<u32>(43264u, 0u, u_input.d))));
    global0 = any(!select(vec3<bool>(any(vec3<bool>(true, true, false)), true, true), vec3<bool>(true, true, true), true));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -851f, var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-912f, var_0.x, 999f, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1156f, 159f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, global2.x, 959f, var_0.x), _wgslsmith_div_vec4_f32(var_0, var_0))))), var_0)));
    var var_2 = true;
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -1i & u_input.a.x), vec2<i32>(firstLeadingBit(-13238i), u_input.a.x)), any(!select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])), _wgslsmith_f_op_f32(-1448f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) - -1852f))), global2.wy, Struct_1(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(16178i, u_input.a.x), vec2<i32>(-41503i, 2186i))), true, 607f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.yxw, vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(-780f, var_0.x)), 1000f), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), func_4(var_0.xzz, vec4<u32>(42257u, 72009u, 4294967295u, 1u), Struct_5(Struct_1(u_input.a.yy, true, global2.x), u_input.a.xz), Struct_4(Struct_3(vec3<u32>(4294967295u, 59677u, 38054u)))).b)))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(global2.x * var_0.x))), u_input.c, Struct_5(func_1(-u_input.a.x, Struct_5(Struct_1(u_input.a.zx, true, var_0.x), vec2<i32>(u_input.a.x, u_input.a.x))).a, vec2<i32>(-1i, -1i) << (vec2<u32>(49617u, u_input.b) % vec2<u32>(32u))), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(global2.zxy - var_0.xzw), select(var_1.x, 4294967295u, false)))));
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.ywx))))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), var_1.zz), u_input.d | var_1.x), _wgslsmith_div_u32(89587u, 27988u), ~u_input.b, 4294967295u) >> (~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 4391u, u_input.d, var_1.x), u_input.c)) % vec4<u32>(32u)), Struct_5(var_3.a, -select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.a.yy, var_3.c.a), u_input.a.zz | vec2<i32>(var_3.e.a.x, u_input.a.x), func_1(-1i, Struct_5(var_3.e, u_input.a.zz)).e.b)), Struct_4(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, global2.x, var_3.c.c) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_3.a.c, var_3.a.c) * vec3<f32>(1000f, var_0.x, -2186f))), ~20885u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d);
}

