struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-561f, -55782i, vec3<u32>(0u, 74800u, 45514u), false), Struct_1(-514f, 0i, vec3<u32>(23365u, 1u, 0u), false), 8394i, Struct_1(760f, 1i, vec3<u32>(0u, 9733u, 84453u), true), 2147483647i);

var<private> global1: vec3<i32>;

var<private> global2: array<f32, 2>;

var<private> global3: array<bool, 17>;

var<private> global4: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> f32 {
    return _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(global0.d.a - -530f), select(global0.a.d, global0.a.d, true)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = reverseBits(vec4<i32>(global0.c, arg_0.b, -16428i, _wgslsmith_mult_i32(-19051i, -1i))) & vec4<i32>(-2147483647i, -1i, _wgslsmith_sub_i32(-12051i, -global1.x), _wgslsmith_dot_vec4_i32(~(vec4<i32>(0i, -14716i, arg_0.b, 21773i) ^ vec4<i32>(global0.e, arg_0.b, 2147483647i, arg_0.b)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-7377i, 16575i, global1.x, 7555i), vec4<i32>(arg_0.b, 2147483647i, -1i, global0.d.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(5935i, global1.x, 2147483647i, global1.x), vec4<i32>(arg_0.b, 0i, 2147483647i, 12043i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_0.b, -14392i, global1.x), vec4<i32>(global0.a.b, global0.d.b, -7135i, -21150i)))));
    global4 = !global3[_wgslsmith_index_u32(arg_0.c.x, 17u)];
    let var_1 = global0.d.c.x;
    global3 = array<bool, 17>();
    var var_2 = Struct_2(global0.a, global0.d, global1.x, arg_0, -66754i);
    return arg_1;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> bool {
    var var_0 = select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 17u)], !global3[_wgslsmith_index_u32(arg_0.x, 17u)], true, true), !select(vec4<bool>(global3[_wgslsmith_index_u32(24521u, 17u)], false, global3[_wgslsmith_index_u32(19651u, 17u)], true), vec4<bool>(global0.b.d, true, global0.a.d, true), true), select(vec4<bool>(global0.a.d, true, false, global3[_wgslsmith_index_u32(global0.d.c.x, 17u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(10908u, 17u)], global0.d.d), vec4<bool>(global0.d.d, global0.d.d, false, true))), !vec4<bool>(u_input.a < arg_0.x, false, global3[_wgslsmith_index_u32(~u_input.a, 17u)], true), select(global3[_wgslsmith_index_u32(reverseBits(~u_input.a), 17u)], !global0.a.d, global0.a.d)), select(select(select(!vec4<bool>(true, global0.a.d, global0.a.d, true), select(vec4<bool>(global3[_wgslsmith_index_u32(21885u, 17u)], global3[_wgslsmith_index_u32(global0.b.c.x, 17u)], global0.a.d, global3[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(0u, 17u)], false, global3[_wgslsmith_index_u32(u_input.a, 17u)], global0.d.d), vec4<bool>(true, false, global3[_wgslsmith_index_u32(11944u, 17u)], global3[_wgslsmith_index_u32(global0.d.c.x, 17u)])), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(global0.d.c.x, 17u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)], false), vec4<bool>(global0.a.d, global3[_wgslsmith_index_u32(arg_0.x, 17u)], true, false))), select(vec4<bool>(false, false, global0.d.d, global3[_wgslsmith_index_u32(59474u, 17u)]), select(vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], true, false, global3[_wgslsmith_index_u32(arg_0.x, 17u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 17u)], true, true)), select(vec4<bool>(global0.a.d, true, global0.d.d, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<bool>(false, false, global0.d.d, false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(21346u, 17u)], global0.d.d))), vec4<bool>(global3[_wgslsmith_index_u32(global0.b.c.x, 17u)], any(vec4<bool>(global0.d.d, true, global3[_wgslsmith_index_u32(arg_0.x, 17u)], false)), true, 10030u <= arg_0.x)), vec4<bool>(global0.b.a > _wgslsmith_f_op_f32(156f * arg_1), all(select(vec2<bool>(global0.b.d, true), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], false), false)), global3[_wgslsmith_index_u32(reverseBits(90551u) | global0.a.c.x, 17u)], all(select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 17u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 17u)], global0.b.d), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 17u)])))), !(!(!vec4<bool>(global3[_wgslsmith_index_u32(27097u, 17u)], false, false, false)))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + 1391f)), -1114f, arg_1))));
    let var_2 = var_1.wz;
    let var_3 = Struct_2(global0.a, global0.b, reverseBits(-abs(_wgslsmith_dot_vec2_i32(global1.xy, global1.zz))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-var_2.x)), 1010f)), ~global0.b.b, min(~vec3<u32>(4294967295u, global0.d.c.x, 4294967295u), ~min(global0.d.c, arg_0.xyw)), all(!vec2<bool>(global3[_wgslsmith_index_u32(51624u, 17u)], global0.d.d))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-global1.x, global0.a.b) << (u_input.a % 32u), global1.x, -31430i));
    let var_4 = Struct_3(vec4<bool>(var_0.x && all(select(vec2<bool>(var_0.x, var_3.b.d), vec2<bool>(var_0.x, true), global0.a.d)), global0.d.d, all(!select(vec4<bool>(var_3.a.d, var_3.d.d, true, true), vec4<bool>(global3[_wgslsmith_index_u32(var_3.b.c.x, 17u)], true, true, global0.a.d), vec4<bool>(true, true, false, global0.a.d))), global0.b.d), abs(1i), !(_wgslsmith_f_op_f32(-var_1.x) > 979f), ~firstTrailingBit(2147483647i) & (-_wgslsmith_add_i32(global1.x, 2147483647i) >> (var_3.a.c.x % 32u)), var_3);
    return any(var_4.a);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<u32> {
    global1 = -vec3<i32>(abs(_wgslsmith_div_i32(firstTrailingBit(-20993i), global0.b.b & 66667i)), min(global0.a.b, global0.c), -arg_1.d);
    global1 = ~(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, global1.x, -2147483647i), vec3<i32>(arg_1.e.e, 14316i, 62307i), vec3<i32>(-1i, 0i, arg_1.d)) & vec3<i32>(global0.e, global0.b.b, arg_1.d)));
    global2 = array<f32, 2>();
    global0 = arg_1.e;
    var var_0 = arg_1;
    return countOneBits(~arg_1.e.b.c.zz);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = func_5(~57536u, Struct_3(vec4<bool>(func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(54207u, global0.b.c.x, u_input.a, 4294967295u), vec4<u32>(58569u, 4294967295u, 7943u, 4294967295u)), _wgslsmith_f_op_f32(func_3(Struct_1(arg_2.a, -21560i, vec3<u32>(32564u, arg_2.c.x, global0.a.c.x), true), -751f))), false, arg_2.c.x >= u_input.a, !select(arg_2.d, global3[_wgslsmith_index_u32(u_input.a, 17u)], true)), _wgslsmith_mod_i32(arg_1.x, _wgslsmith_mod_i32(countOneBits(2147483647i), reverseBits(-2147483647i))), arg_2.d & (false | all(vec2<bool>(true, false))), global1.x & 7179i, Struct_2(arg_2, Struct_1(_wgslsmith_f_op_f32(-844f * global0.b.a), reverseBits(-1i), global0.d.c, -727f != global2[_wgslsmith_index_u32(15516u, 2u)]), _wgslsmith_div_i32(arg_2.b, arg_2.b), Struct_1(_wgslsmith_f_op_f32(global0.b.a - -764f), min(global0.c, 0i), global0.b.c, !global0.a.d), ~22608i ^ (-1i >> (arg_2.c.x % 32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1365f, arg_2.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1346f, arg_2.a, global0.b.a) * vec3<f32>(global2[_wgslsmith_index_u32(35386u, 2u)], 108f, -165f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1866f, -1673f, arg_0))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-918f + global0.a.a), 571f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.d.c.x, 2u)] + 1803f)))));
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(719f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-597f, arg_0))), -(~2147483647i), min(arg_2.c, ~(~vec3<u32>(arg_2.c.x, u_input.a, 51807u))), false), arg_2, arg_1.x, arg_2, ~(~1i));
    global2 = array<f32, 2>();
    global4 = arg_2.d;
    global4 = false;
    return Struct_2(Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, arg_2.c.x) ^ 4294967295u, 2u)], arg_3, arg_2.c, (_wgslsmith_f_op_f32(f32(-1f) * -747f) == _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 2u)] * global0.b.a)) | !global3[_wgslsmith_index_u32(u_input.a, 17u)]), arg_2, abs(~reverseBits(_wgslsmith_clamp_i32(-1i, arg_1.x, 1i))), arg_2, global0.e & ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.d.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.d.c.x, _wgslsmith_dot_vec3_u32(global0.d.c, vec3<u32>(global0.d.c.x, 1u, 4294967295u))) ^ ~4294967295u, 2u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(!vec4<bool>(global0.d.d, global0.a.d, false, true), ~(-2147483647i), true, global1.x, Struct_2(global0.b, Struct_1(global2[_wgslsmith_index_u32(global0.d.c.x, 2u)], global1.x, vec3<u32>(u_input.a, 1u, u_input.a), true), global1.x, global0.d, global1.x)), -461f)), _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(reverseBits(~44130u), 2u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.a)))))));
    let var_1 = func_2(global0.b.a, -vec2<i32>(-(~(-29772i)), ~(-global0.b.b)), Struct_1(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(select(~global0.d.c.x, ~u_input.a, !global0.a.d), 2u)])), -34371i, _wgslsmith_mult_vec3_u32(global0.a.c, ~vec3<u32>(0u, global0.b.c.x, 4294967295u)), global3[_wgslsmith_index_u32(~global0.a.c.x, 17u)]), 23486i);
    var var_2 = Struct_3(select(vec4<bool>(global0.b.d, false, global3[_wgslsmith_index_u32(countOneBits(var_1.d.c.x), 17u)], true), vec4<bool>(var_1.b.d, var_1.d.c.x > global0.b.c.x, global0.a.d, all(vec4<bool>(var_1.d.d, global0.b.d, global0.a.d, true))), select(vec4<bool>(true, -1i >= global0.c, global0.a.c.x >= global0.d.c.x, true), vec4<bool>(true, true, true, true), select(!vec4<bool>(false, false, true, var_1.d.d), !vec4<bool>(var_1.b.d, true, false, true), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 17u)], var_1.b.d, global0.a.d, global3[_wgslsmith_index_u32(var_1.b.c.x, 17u)])))), reverseBits(global0.a.b), var_1.b.d | true, ~_wgslsmith_div_i32(_wgslsmith_mod_i32(0i << (var_1.d.c.x % 32u), -2147483647i), (global0.d.b & -12586i) ^ ~var_1.c), var_1);
    global4 = true;
    let var_3 = func_2(global2[_wgslsmith_index_u32(var_2.e.b.c.x, 2u)], vec2<i32>(~(-var_1.d.b | firstTrailingBit(1i)), _wgslsmith_mod_i32(-(i32(-1i) * -53130i), reverseBits(~var_1.c))), var_1.a, abs(abs(global0.e)));
    var var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-25181i, global0.b.b, var_1.e, global1.x), vec4<i32>(var_3.d.b, 2607i, -2147483647i, 16707i), vec4<i32>(global1.x, 27730i, global0.b.b, 0i)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.e.b.b, global1.x, 102478i, global0.b.b), vec4<i32>(-706i, global0.e, -16827i, var_2.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global0.a.b, global0.c, global1.x), vec4<i32>(0i, global0.d.b, var_2.d, var_3.b.b)))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(var_2.e.a.b, -36240i, var_1.a.b, var_2.e.b.b) ^ vec4<i32>(-1229i, -5913i, var_2.e.a.b, -2147483647i)), vec4<i32>(~var_1.d.b, var_2.e.a.b, global0.c, var_3.c))) & (-global0.a.b >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.e, countOneBits(_wgslsmith_add_i32(var_1.c, global0.d.b)), abs(_wgslsmith_dot_vec2_i32(global1.xy, select(global1.xx, global1.yy, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-242f - 685f), _wgslsmith_f_op_f32(-var_3.a.a), -112f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], 1271f, 115f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a, -1494f, -858f) + vec3<f32>(global0.b.a, 1000f, 1000f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-349f, -1743f, -117f), vec3<f32>(global0.d.a, global0.a.a, var_3.b.a))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-496f, -107f, var_1.b.a)))))), vec3<u32>(_wgslsmith_mod_u32(min(~34337u, select(global0.b.c.x, u_input.a, true)), ~64947u), _wgslsmith_sub_u32(4294967295u, global0.b.c.x), 78945u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, global0.d.b, global0.a.b), _wgslsmith_sub_vec3_i32(min(vec3<i32>(global1.x, -16723i, global1.x), vec3<i32>(30337i, -2147483647i, -2147483647i)), vec3<i32>(-1497i, 42804i, 2147483647i))), vec3<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b, -40562i, -1i, global0.d.b), vec4<i32>(var_2.e.e, var_2.d, 8603i, -41926i)), global0.b.b), (-39343i >> (var_1.b.c.x % 32u)) >> (firstLeadingBit(31299u) % 32u), select(firstTrailingBit(global1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, 23281i, -35668i, var_3.e), vec4<i32>(0i, var_2.d, 39955i, var_3.e)), false))));
}

