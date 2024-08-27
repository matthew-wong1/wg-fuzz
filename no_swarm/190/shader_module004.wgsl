struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<bool, 2>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: vec4<i32>;

var<private> global4: array<u32, 11> = array<u32, 11>(1u, 79798u, 0u, 74207u, 40330u, 19726u, 50658u, 0u, 5270u, 4294967295u, 32415u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<u32> {
    var var_0 = -vec4<i32>(~_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, -38721i, 46242i)), abs(vec4<i32>(global3.x, u_input.d.x, u_input.c, -2147483647i))), (~global3.x >> (~arg_0 % 32u)) | countOneBits(26521i), u_input.d.x, reverseBits(u_input.d.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, arg_1, 1220f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1660f, 1342f, 825f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 260f, -1710f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, -143f, -634f))), !select(vec3<bool>(global2.x, true, global2.x), !vec3<bool>(global0.x, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 11u)], 2u)], true), vec3<bool>(true, true, true)))));
    var var_2 = -2147483647i;
    var var_3 = !global2.zy;
    let var_4 = -var_0.ww;
    return vec2<u32>(u_input.b, _wgslsmith_mod_u32(arg_0, 39823u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> u32 {
    var var_0 = vec3<f32>(arg_1.x, arg_1.x, 3033f);
    var var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(~(~global4[_wgslsmith_index_u32(u_input.b, 11u)] & ~u_input.b), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.b, global4[_wgslsmith_index_u32(u_input.b, 11u)])), func_3(~10774u, _wgslsmith_f_op_f32(1000f + 1000f)))), abs(_wgslsmith_div_u32(min(u_input.b, ~4294967295u), 31543u))), 2u)];
    var var_2 = Struct_1(vec3<u32>(global4[_wgslsmith_index_u32(1u, 11u)], _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(7506u, global4[_wgslsmith_index_u32(u_input.b, 11u)]) ^ vec2<u32>(0u, u_input.b), ~vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], 29887u)), ~vec2<u32>(u_input.b, 27269u)), abs(global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(57123u, 11u)], 11u)], 11u)] & u_input.b, 11u)]), 11u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - 828f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))), arg_0.x, arg_1.x));
    global4 = array<u32, 11>();
    return _wgslsmith_sub_u32(u_input.b, ~93730u) | abs(var_2.a.x);
}

fn func_1() -> vec4<i32> {
    var var_0 = ~(~(~u_input.c));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -717f, ~func_2(vec3<f32>(216f, 633f, 386f), vec3<f32>(1332f, -764f, 1822f), global3.ywz) == 0u)) * -1000f);
    global0 = vec2<bool>(all(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], true, true), select(vec3<bool>(global2.x, global0.x, global2.x), vec3<bool>(global1[_wgslsmith_index_u32(65083u, 2u)], false, global2.x), global0.x)), !vec3<bool>(false, true, global0.x), vec3<bool>(global0.x, select(false, true, true), true))), false);
    let var_2 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 11u)], u_input.b), vec3<u32>(0u, 0u, global4[_wgslsmith_index_u32(41074u, 11u)]))), vec3<u32>(0u, u_input.b, u_input.b << (u_input.b % 32u))), abs(vec3<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 10787u, global4[_wgslsmith_index_u32(13058u, 11u)]), vec3<u32>(44652u, global4[_wgslsmith_index_u32(u_input.b, 11u)], 4294967295u)), u_input.b ^ 1484u))));
    var var_3 = _wgslsmith_div_i32(max(min(max(-1i, 28893i), u_input.d.x), -_wgslsmith_div_i32(_wgslsmith_sub_i32(global3.x, u_input.c), -1i)), global3.x);
    return vec4<i32>(global3.x, u_input.c, global3.x, global3.x >> (u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = max(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(global3.x, u_input.c, -1i, global3.x), vec4<i32>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 5339i, global3.x, u_input.a), vec4<i32>(-1i, u_input.c, 2147483647i, global3.x))) & -func_1(), countOneBits(vec4<i32>(func_1().x, 5449i, 2147483647i, 20007i)));
    global2 = !select(select(select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(20635u, 2u)], false), vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(48463u, 2u)], global1[_wgslsmith_index_u32(47956u, 2u)])), vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 2u)], global2.x, true), true), select(select(vec3<bool>(false, global0.x, global2.x), vec3<bool>(true, global2.x, global1[_wgslsmith_index_u32(4294967295u, 2u)]), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47877u, 11u)], 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 2u)], true, global1[_wgslsmith_index_u32(u_input.b, 2u)]), vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 2u)]), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3133u, 11u)], 11u)] >= u_input.b), vec3<bool>(false, true, all(vec2<bool>(global2.x, true)))), !select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(20999u, 2u)]), !vec3<bool>(false, false, global2.x), !global0.x), select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(3239u, 2u)], global0.x, global2.x), !global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 2u)]), vec3<bool>(52813u >= global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 11u)], all(vec3<bool>(global0.x, true, false)), all(vec2<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 2u)], global2.x))), vec3<bool>(true, any(vec3<bool>(global2.x, true, false)), global0.x)));
    var var_0 = Struct_2(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 2u)], global2.x, global0.x), vec3<bool>(global3.x > u_input.c, any(vec2<bool>(false, true)), !global1[_wgslsmith_index_u32(u_input.b, 2u)]), ~u_input.c == -1i), vec3<bool>(all(select(vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], 2u)], true), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 2u)], false, global0.x), false)), true, false), select(!vec3<bool>(true, global0.x, global1[_wgslsmith_index_u32(50692u, 2u)]), vec3<bool>(global2.x, true, any(global2.yx)), !(!vec3<bool>(true, true, global2.x)))), -firstLeadingBit(_wgslsmith_div_vec3_i32(max(global3.xyy, global3.wxx), vec3<i32>(global3.x, 1i, 2147483647i) & vec3<i32>(-17225i, u_input.c, u_input.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), vec2<i32>(-8631i, min(global3.x, u_input.d.x) & ~(1i << (u_input.b % 32u))), Struct_1(~vec3<u32>(select(4294967295u, global4[_wgslsmith_index_u32(65350u, 11u)], global2.x), abs(u_input.b), global4[_wgslsmith_index_u32(1u, 11u)])));
    var var_1 = select(var_0.b, vec3<i32>(-(~_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-30966i, u_input.c))), min(~1721i, global3.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b, _wgslsmith_mod_vec3_i32(global3.wxz, var_0.b)), vec3<i32>(30592i, var_0.b.x, -21712i))), vec3<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(var_0.e.a.x, global4[_wgslsmith_index_u32(u_input.b, 11u)]) & vec2<u32>(var_0.e.a.x, 0u)) > ~firstTrailingBit(4294967295u), any(vec4<bool>(true, any(vec4<bool>(var_0.a.x, global2.x, global1[_wgslsmith_index_u32(var_0.e.a.x, 2u)], var_0.a.x)), 41500u > var_0.e.a.x, any(vec4<bool>(false, true, true, true)))), global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(select(u_input.b, 51575u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global4[_wgslsmith_index_u32(47102u, 11u)], global4[_wgslsmith_index_u32(u_input.b, 11u)]), vec3<u32>(var_0.e.a.x, var_0.e.a.x, 9089u))), 11u)], 2u)]));
    global2 = vec3<bool>(global1[_wgslsmith_index_u32(var_0.e.a.x, 2u)], true, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(~var_1.x, 1i), -2147483647i), -vec2<i32>(-1i, var_1.x)), var_0.b.x);
}

