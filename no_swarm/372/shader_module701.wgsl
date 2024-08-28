struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 2>;

var<private> global2: Struct_3;

var<private> global3: f32 = -829f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32) -> f32 {
    global2 = Struct_3(Struct_2(global2.a.c.yzx, true, !select(!global2.a.c, select(global2.a.c, global2.a.c, vec4<bool>(false, global2.a.c.x, false, false)), any(vec4<bool>(true, false, false, false)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1183f)) + -104f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -896f)) + 261f)));
}

fn func_2() -> vec2<f32> {
    let var_0 = ~0u;
    let var_1 = vec3<i32>(~(-2147483647i), u_input.a, _wgslsmith_add_i32(-2991i, countOneBits(-1i) | (u_input.a << (var_0 % 32u))) ^ (i32(-1i) * -(0i << (var_0 % 32u))));
    let var_2 = Struct_1(_wgslsmith_add_u32(4294967295u ^ _wgslsmith_mult_u32(u_input.b.x >> (35092u % 32u), _wgslsmith_add_u32(19551u, 59158u)), 4294967295u), _wgslsmith_f_op_f32(func_3(1u)), ~47503u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1044f, 1084f, 373f, -1000f), vec4<f32>(-1208f, 1043f, -329f, 566f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, -773f, -329f, 538f) * vec4<f32>(399f, 1346f, -482f, 750f)) + vec4<f32>(-1161f, 1414f, -298f, -102f)))), vec4<i32>(var_1.x, ~(-1i << (var_0 % 32u)), -1i, _wgslsmith_add_i32(~(-37154i), _wgslsmith_mod_i32(2147483647i, 45057i))) << (~vec4<u32>(max(4294967295u, var_0), 19784u, ~u_input.b.x, ~1u) % vec4<u32>(32u)));
    let var_3 = var_1.yz;
    global1 = array<Struct_3, 2>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-838f, _wgslsmith_f_op_f32(f32(-1f) * -878f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, 1000f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-842f, 1109f), vec2<f32>(-1776f, 940f))), _wgslsmith_f_op_vec2_f32(func_2())));
    return _wgslsmith_f_op_vec2_f32(func_2()).x;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(15120u, u_input.b.x, 4294967295u, u_input.b.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.a, 91860u, arg_3.a, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, 55925u, arg_0.c), vec4<u32>(arg_0.c, 1u, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, _wgslsmith_mult_u32(17581u, 0u), 9347u, u_input.b.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 7056u, arg_0.a, arg_0.c), vec4<u32>(u_input.b.x, u_input.b.x, 14038u, 26691u))), ~vec4<u32>(1u, arg_3.c, u_input.b.x, arg_0.a) << (vec4<u32>(arg_0.c, 12528u, arg_0.a ^ arg_3.c, _wgslsmith_mult_u32(24849u, 26533u)) % vec4<u32>(32u))), ~(~(vec4<u32>(1u, arg_3.c, 4294967295u, arg_0.c) ^ reverseBits(vec4<u32>(27897u, 1u, 1u, arg_0.c)))), all(select(global2.a.a.yy, !vec2<bool>(arg_1, false), global2.a.a.yx)));
    global2 = Struct_3(global2.a);
    var var_1 = reverseBits(arg_3.e.zz);
    let var_2 = Struct_2(select(!(!global2.a.c.zxx), !vec3<bool>(false == global2.a.c.x, true, any(vec3<bool>(false, global2.a.a.x, global2.a.a.x))), global2.a.a.x), global2.a.c.x, vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_0.b) + _wgslsmith_f_op_f32(350f + arg_3.b)) < _wgslsmith_f_op_f32(select(1032f, _wgslsmith_f_op_f32(197f * arg_2.x), arg_1)), !(global2.a.b || !global2.a.a.x), all(global2.a.c.zz)));
    return -(i32(-1i) * -(-2238i >> ((u_input.b.x ^ arg_3.a) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 2>();
    global0 = func_4(Struct_1(u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -238f), ~(~(~u_input.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-861f, -708f, 225f, 939f) * vec4<f32>(753f, -1246f, -887f, 460f))), vec4<f32>(573f, _wgslsmith_f_op_f32(func_1()), 322f, _wgslsmith_f_op_f32(1053f + 812f))), vec4<i32>(-64210i, -3036i, -2147483647i, -2147483647i)), global2.a.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1319f, 292f, 695f))), vec3<f32>(-809f, -1501f, _wgslsmith_f_op_f32(step(-406f, -545f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), -969f, -607f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(379f, -1093f, 689f), vec3<f32>(516f, -1043f, 1168f), global2.a.a.x))))), Struct_1(_wgslsmith_add_u32(4294967295u, max(u_input.b.x, 4294967295u) | 36813u), _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 2267u) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), firstLeadingBit(u_input.b)))), u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2234f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-165f * -900f), -707f))), abs(firstLeadingBit(vec4<i32>(-44619i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.b.x, 38864u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))))));
    global1 = array<Struct_3, 2>();
    let var_0 = Struct_4(~0u);
    global2 = global1[_wgslsmith_index_u32(u_input.b.x, 2u)];
    global1 = array<Struct_3, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f * _wgslsmith_f_op_f32(1040f - 319f))), _wgslsmith_f_op_f32(select(-1197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(668f + -549f) * 771f), global2.a.b))));
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(-select(-vec2<i32>(u_input.a, 4537i), -vec2<i32>(10900i, u_input.a), all(global2.a.a.xz)), vec2<i32>(u_input.a, abs(12085i)) ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 14455i), vec2<i32>(17886i, u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1009f))))), _wgslsmith_f_op_vec2_f32(-var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(var_0.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1172f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(712f)))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), 2011f, -131f)))), u_input.b.x, _wgslsmith_mult_u32(reverseBits(var_0.a), abs(var_0.a)));
}

