struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<i32, 27> = array<i32, 27>(-20836i, 4143i, -15920i, 0i, 1i, 2147483647i, 2147483647i, 1i, 22609i, 2147483647i, 8845i, i32(-2147483648), 2147483647i, 43112i, 2147483647i, -1i, 1i, -67432i, 2147483647i, -1i, -1i, 49663i, 22950i, 50444i, 1i, -1i, -22583i);

var<private> global2: f32 = -1983f;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-260f - _wgslsmith_f_op_f32(floor(-1276f)));
    global1 = array<i32, 27>();
    global0 = array<u32, 5>();
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-(~vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 27u)], 2147483647i))), ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)], 27u)], global1[_wgslsmith_index_u32(arg_3, 27u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 27u)]))), vec3<i32>(-2147483647i | global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -1293i, -_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(arg_3, 27u)], 1i))), vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 6322i, min(0i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0, 27u)], -20753i) ^ global1[_wgslsmith_index_u32(arg_3, 27u)])));
    var var_2 = !vec3<bool>(any(vec2<bool>(!arg_1.x, all(arg_1))), true, all(select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(false, global3.x, global3.x, false)), !vec4<bool>(false, arg_1.x, arg_1.x, false), all(vec2<bool>(global3.x, false)))));
    return _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(u_input.b.yzy, vec3<u32>(arg_0, 29562u, 20355u)), vec3<u32>(~arg_3, 1u, arg_3 | 27018u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.zxz, ~vec3<u32>(u_input.b.x, 53879u, arg_3)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 24348u, 116316u), vec3<u32>(arg_0, 4294967295u, 15014u) & u_input.b.yyy))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global3 = select(vec4<bool>(select(true, global3.x, false), false, _wgslsmith_sub_i32(abs(arg_2.x), ~(-2147483647i)) < arg_0.x, true), !vec4<bool>(false, all(global3.zww), true, global3.x), false);
    var var_0 = Struct_1(6612u, ~max(-arg_2, abs(vec3<i32>(arg_1.b.x, 37459i, 28803i))) | ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1801i, global1[_wgslsmith_index_u32(arg_1.a, 27u)], arg_1.b.x), vec3<i32>(arg_2.x, 2147483647i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 27u)]), abs(vec3<i32>(arg_0.x, arg_2.x, 0i))));
    var var_1 = !select(vec2<bool>(global3.x, !(!global3.x)), select(!(!vec2<bool>(false, global3.x)), !vec2<bool>(global3.x, global3.x), select(global3.zw, select(global3.yw, global3.wx, vec2<bool>(global3.x, true)), true)), select(vec2<bool>(all(global3.xw), global3.x), select(vec2<bool>(false, true), global3.xy, !global3.x), global3.x));
    let var_2 = Struct_1(arg_1.a, var_0.b);
    var_1 = vec2<bool>(true, (0i >> (~_wgslsmith_div_u32(var_2.a, arg_1.a) % 32u)) > ~select(~(-43054i), _wgslsmith_mult_i32(-2147483647i, global1[_wgslsmith_index_u32(60406u, 27u)]), global3.x));
    return _wgslsmith_f_op_f32(trunc(-156f));
}

fn func_1() -> vec4<i32> {
    global3 = vec4<bool>(!(!all(!vec4<bool>(global3.x, false, global3.x, global3.x))), ~func_2(u_input.b.x, select(global3.ww, vec2<bool>(global3.x, true), global3.zw), _wgslsmith_f_op_vec2_f32(vec2<f32>(-680f, -180f) + vec2<f32>(-235f, -1262f)), u_input.a) == u_input.a, true, !global3.x);
    global3 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(162f - -656f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 27u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], vec3<i32>(global1[_wgslsmith_index_u32(1u, 27u)], -27384i, global1[_wgslsmith_index_u32(18536u, 27u)])), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 27u)], -2147483647i))), _wgslsmith_f_op_f32(704f + -852f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -1397f), _wgslsmith_f_op_f32(min(-1000f, 578f)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-151f + -1462f)))), -reverseBits(min(18556i, global1[_wgslsmith_index_u32(54277u, 27u)])) <= -7135i, global3.x, global3.x || global3.x);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -10472i, 0i), vec3<i32>(15231i, -23841i, 2147483647i)), Struct_1(4294967295u, vec3<i32>(-2147483647i, 2147483647i, -1i)), ~vec3<i32>(global1[_wgslsmith_index_u32(1u, 27u)], 1i, global1[_wgslsmith_index_u32(u_input.a, 27u)]))))) + -913f);
    let var_0 = global3.x;
    let var_1 = 0u;
    return _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, 62578u, 42280u, 11896u)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), 27u)], _wgslsmith_add_i32(6048i, global1[_wgslsmith_index_u32(1u, 27u)]), -global1[_wgslsmith_index_u32(1u, 27u)], -2147483647i), ~vec4<i32>(-_wgslsmith_mod_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 27u)], -27785i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 27u)], global1[_wgslsmith_index_u32(var_1, 27u)]), vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 27u)], 2147483647i, global1[_wgslsmith_index_u32(1u, 27u)], -2147483647i)), abs(global1[_wgslsmith_index_u32(u_input.b.x, 27u)])), -2147483647i, 68975i));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = select(!select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x)), vec4<bool>(false, true, false, global3.x), global3.x), select(!vec4<bool>(global3.x, false, global3.x, false), !vec4<bool>(global3.x, false, global3.x, global3.x), all(global3.wyy)), global3.x), vec4<bool>(all(!vec4<bool>(global3.x, false, true, global3.x)), arg_2.x > abs(reverseBits(-34176i)), select(!global3.x, !(!global3.x), any(global3.yw) | global3.x), false), select(select(vec4<bool>(any(vec3<bool>(global3.x, false, global3.x)), any(vec2<bool>(global3.x, false)), arg_0.x == arg_0.x, global3.x), !select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(false, global3.x, false, global3.x)), false), vec4<bool>(true, true, global3.x, all(!vec4<bool>(false, true, global3.x, global3.x))), vec4<bool>(false, all(vec4<bool>(true, global3.x, global3.x, true)), true, global3.x)));
    let var_1 = max(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, 0i, arg_2.x, -23261i), arg_2, true), vec4<i32>(-4900i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8189u, 5u)], 27u)], arg_2.x, arg_2.x) | arg_2), 0i) ^ 16530i, _wgslsmith_dot_vec2_i32(arg_2.xy, vec2<i32>(_wgslsmith_clamp_i32(arg_2.x, max(43515i, global1[_wgslsmith_index_u32(u_input.a, 27u)]), min(-2147483647i, -2147483647i)), _wgslsmith_dot_vec2_i32(arg_2.yy & arg_2.zz, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], -24914i)))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * 523f), arg_0.x));
    let var_2 = select(!select(select(select(global3.www, vec3<bool>(false, global3.x, false), var_0.x), var_0.wzz, global3.x), !select(global3.yxw, var_0.zxy, true), vec3<bool>(true, true, !global3.x)), global3.xzx, vec3<bool>(arg_0.x > arg_0.x, any(global3.wwy) | false, var_0.x));
    var var_3 = select(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i) >> (arg_1 % vec2<u32>(32u)), ~vec2<i32>(8982i, 0i)), arg_2.wz, true) ^ min(vec2<i32>(func_1().x, arg_2.x), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_1, global1[_wgslsmith_index_u32(47168u, 27u)]), abs(var_1)), -1i));
    return Struct_1(~(global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 5u)] | 1u), _wgslsmith_mult_vec3_i32(arg_2.zzy, _wgslsmith_div_vec3_i32(max(abs(vec3<i32>(var_3.x, 2147483647i, 2147483647i)), arg_2.zxw), arg_2.wwx)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 27>();
    var var_0 = u_input.b.zzy;
    var var_1 = -22937i;
    var_1 = ~_wgslsmith_add_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)]), abs(_wgslsmith_dot_vec3_i32(min(vec3<i32>(global1[_wgslsmith_index_u32(1u, 27u)], 13374i, global1[_wgslsmith_index_u32(9405u, 27u)]), vec3<i32>(62768i, 1i, -63040i)), _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], 36777i), vec3<i32>(-2147483647i, 34797i, global1[_wgslsmith_index_u32(4294967295u, 27u)])))));
    global3 = select(vec4<bool>(!global3.x, false, !(!(global3.x != false)), global3.x && global3.x), vec4<bool>(all(vec3<bool>(false, global3.x | false, true)), global3.x, all(select(select(vec3<bool>(false, global3.x, global3.x), global3.yzw, true), select(global3.ywy, global3.zxz, false), true)), true), select(select(select(vec4<bool>(false, false, true, global3.x), !vec4<bool>(global3.x, true, true, global3.x), !global3.x), vec4<bool>(global3.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 27u)] <= global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27527u, 5u)], 27u)], any(vec3<bool>(global3.x, true, global3.x)), !global3.x), !vec4<bool>(true, global3.x, false, global3.x)), vec4<bool>(true, _wgslsmith_f_op_f32(trunc(667f)) <= _wgslsmith_f_op_f32(max(376f, 750f)), var_0.x >= 0u, true), select(select(!vec4<bool>(true, true, global3.x, true), !vec4<bool>(global3.x, global3.x, global3.x, global3.x), !vec4<bool>(true, false, global3.x, false)), !select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(true, global3.x, true, global3.x), global3.x), (global3.x || true) && true)));
    var var_2 = vec4<i32>(-2147483647i, -global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 27u)], global1[_wgslsmith_index_u32(1u ^ var_0.x, 27u)], -(i32(-1i) * -2147483647i));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1559f, 1134f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(848f, 1364f), vec2<f32>(-1048f, -1132f))), vec2<bool>(true, false))))), vec2<u32>(4294967295u, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(25967u, 5u)], 107689u, global0[_wgslsmith_index_u32(25590u, 5u)]), vec4<u32>(u_input.a, var_0.x, 11587u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)])))), _wgslsmith_mod_vec4_i32(abs(~firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 27u)], 0i, 8293i, 0i))), (vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 27u)], -22184i, 0i, global1[_wgslsmith_index_u32(0u, 27u)]) ^ ~vec4<i32>(var_2.x, global1[_wgslsmith_index_u32(32092u, 27u)], -43573i, var_2.x)) | func_1()));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-622f + -191f), _wgslsmith_div_f32(-740f, -1966f), true)))) * -346f));
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(var_0.x, ~firstTrailingBit(0u)), u_input.b.yw, select(select(!vec2<bool>(false, global3.x), vec2<bool>(global3.x, true), all(vec4<bool>(global3.x, true, global3.x, true))), global3.xx, !(!global3.xx))), 1i, _wgslsmith_mult_vec3_i32(-(select(var_3.b, var_2.xwy, global3.zxw) | -vec3<i32>(var_2.x, 0i, var_3.b.x)), vec3<i32>(var_2.x, _wgslsmith_add_i32(13122i, var_2.x << (0u % 32u)), 82247i)));
}

