struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<u32, 13> = array<u32, 13>(9201u, 8633u, 0u, 4409u, 34423u, 49976u, 0u, 0u, 0u, 1u, 4294967295u, 26447u, 40542u);

var<private> global1: Struct_1;

var<private> global2: array<bool, 2>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(52741i, -12699i, 5560i, -30704i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(vec4<i32>(global1.a.x, ~(-global3.a.x), _wgslsmith_sub_i32(~u_input.a.x | ~global1.a.x, ~(1i ^ u_input.a.x)), 2147483647i << (~global0[_wgslsmith_index_u32(29887u, 13u)] % 32u)));
    global2 = array<bool, 2>();
    global3 = Struct_1(abs(vec4<i32>(min(u_input.a.x, 2147483647i), _wgslsmith_mod_i32(25817i, 9701i), select(-2147483647i, -1i, !global2[_wgslsmith_index_u32(0u, 2u)]), -(~(-58892i)))));
    global0 = array<u32, 13>();
    var var_1 = Struct_4(0i, 553f, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -608f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 560f, -1439f, arg_0) + vec4<f32>(-1062f, arg_0, 699f, arg_0)))), arg_2), false);
    return vec2<bool>(true, all(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_1.x, 2u)])) || global2[_wgslsmith_index_u32(0u, 2u)]);
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> u32 {
    global0 = array<u32, 13>();
    var var_0 = !vec4<bool>(global2[_wgslsmith_index_u32(~(27056u >> (global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41832u, 13u)], 13u)], 13u)] % 32u)), 2u)], false, any(func_3(_wgslsmith_f_op_f32(-arg_0.b.a.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 72267u, global0[_wgslsmith_index_u32(1u, 13u)], 96355u) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10600u, 13u)], 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 1u, 0u), Struct_1(vec4<i32>(0i, -1i, global3.a.x, u_input.a.x)))), arg_0.a.x);
    return global0[_wgslsmith_index_u32(~43751u, 13u)] >> (_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(68643u, global0[_wgslsmith_index_u32(63261u, 13u)])) % 32u);
}

fn func_1() -> vec3<f32> {
    let var_0 = (~1i << (~global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(1u, 13u)] << (global0[_wgslsmith_index_u32(4294967295u, 13u)] % 32u)) | global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33316u, 13u)], 13u)], 13u)], 13u)] % 32u)) >> (1u % 32u);
    let var_1 = !(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(func_2(Struct_3(vec2<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(21211u, 2u)]), Struct_2(vec4<f32>(-2518f, 973f, 1000f, -1000f), Struct_1(vec4<i32>(27847i, 0i, global3.a.x, 0i)))), 8323i), 2u)], !global2[_wgslsmith_index_u32(119924u, 2u)]), vec3<bool>(true & global2[_wgslsmith_index_u32(65111u, 2u)], true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(14025u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), 2u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(0u, 13u)]), 13u)], 2u)]));
    global0 = array<u32, 13>();
    var var_2 = Struct_5(_wgslsmith_mult_vec2_u32(vec2<u32>(56978u & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(84633u, 13u)], 13u)], 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11078u, 13u)], 13u)]), global0[_wgslsmith_index_u32((1u >> (0u % 32u)) << (~global0[_wgslsmith_index_u32(1u, 13u)] % 32u), 13u)]), ~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8112u, 13u)], 13u)], 13u)]) & (~vec2<u32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(10844u, 13u)]) ^ abs(vec2<u32>(global0[_wgslsmith_index_u32(0u, 13u)], 4294967295u)))), -189f);
    var var_3 = ~_wgslsmith_mult_vec3_u32(~abs(vec3<u32>(4294967295u, 29227u, 19585u)), countOneBits(~vec3<u32>(var_2.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)]))) | (~(~vec3<u32>(var_2.a.x, 21719u, 0u)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(var_2.a.x, 50035u, 4294967295u)), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55925u, 13u)], 13u)], 13u)])), max(vec3<u32>(4294967295u, 79992u, var_2.a.x), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.x, 13u)], 13u)], global0[_wgslsmith_index_u32(var_2.a.x, 13u)], 70936u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, var_2.b, _wgslsmith_f_op_f32(trunc(var_2.b))) + vec3<f32>(-1000f, var_2.b, -1530f))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = global3.a >> (~abs(select(vec4<u32>(arg_0, 1u, 32143u, arg_0), vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 13u)], arg_0, arg_0, 1u), true)) % vec4<u32>(32u));
    var var_1 = Struct_4((_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.a.x, u_input.a.x), global1.a.wxx), _wgslsmith_dot_vec3_i32(vec3<i32>(8574i, u_input.a.x, arg_2), global3.a.zyx)) ^ global1.a.x) ^ countOneBits(-(global3.a.x << (global0[_wgslsmith_index_u32(arg_0, 13u)] % 32u))), -553f, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -241f, arg_1.x, -230f), vec4<f32>(-955f, 200f, arg_1.x, arg_1.x))) * vec4<f32>(arg_1.x, 955f, arg_1.x, arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -1208f, -1151f, arg_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 566f, arg_1.x, 837f) - vec4<f32>(arg_1.x, 995f, -1000f, -283f))), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(arg_0, 2u)], true, global2[_wgslsmith_index_u32(4294967295u, 2u)]), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(18481u, 2u)], true), vec4<bool>(false, global2[_wgslsmith_index_u32(87077u, 2u)], true, false), global2[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(29498u, 2u)])))), Struct_1(-max(vec4<i32>(var_0.x, global1.a.x, 47943i, -1i), u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_1.x))) >= _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(238f - arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1648f)), 1293f)));
    global3 = var_1.c.b;
    global2 = array<bool, 2>();
    global0 = array<u32, 13>();
    return Struct_2(var_1.c.a, var_1.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~56966u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1())))))), 72112i, countOneBits(u_input.a.xww));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(1u, _wgslsmith_f_op_vec3_f32(var_0.a.xww * var_0.a.xyw), 48068i, _wgslsmith_mult_vec3_i32(-vec3<i32>(global1.a.x, -2147483647i, global3.a.x), vec3<i32>(-111458i, 0i, -2147483647i))).a.yzw);
}

