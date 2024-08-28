struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<bool, 9>;

var<private> global2: i32 = -36826i;

var<private> global3: i32 = 39287i;

var<private> global4: array<bool, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: i32) -> bool {
    global2 = reverseBits(-35827i);
    var var_0 = ~(select(_wgslsmith_add_vec3_i32(~vec3<i32>(25878i, arg_1.x, arg_3), firstTrailingBit(vec3<i32>(arg_3, 1i, -44201i))), ~(-vec3<i32>(0i, 33779i, arg_3)), arg_2.c.a.x) << ((arg_0.yyx >> (abs(arg_0.wwy >> (arg_0.wzw % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = select(!vec3<bool>(global0[_wgslsmith_index_u32(15893u, 4u)], all(!vec4<bool>(arg_2.a.b.x, global0[_wgslsmith_index_u32(1u, 4u)], false, global1[_wgslsmith_index_u32(49748u, 9u)])), any(select(arg_2.c.b, vec2<bool>(global0[_wgslsmith_index_u32(arg_2.c.c, 4u)], arg_2.a.b.x), false))), select(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_2.a.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.x, 4u)], global4[_wgslsmith_index_u32(arg_0.x, 15u)], global4[_wgslsmith_index_u32(arg_0.x, 15u)]), vec3<bool>(false, arg_2.c.b.x, true), vec3<bool>(true, false, false)), select(vec3<bool>(arg_2.a.b.x, global0[_wgslsmith_index_u32(22969u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(21762u, 4u)], true, false), true)), vec3<bool>(true, true, true), !vec3<bool>(true, select(true, arg_2.c.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), !global4[_wgslsmith_index_u32(arg_0.x, 15u)])), vec3<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~arg_0.x, _wgslsmith_mult_u32(4294967295u, arg_2.c.c)), 9u)], all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], false, false), true)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_1.x), vec2<i32>(arg_3, var_0.x)) != arg_1.x));
    let var_2 = arg_2.d;
    let var_3 = ~arg_2.a.c;
    return all(!(!vec4<bool>(global4[_wgslsmith_index_u32(~36535u, 15u)], true, true, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_add_i32(20897i, arg_0.x ^ abs(select(arg_3, 4673i, true)));
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_add_u32(abs(u_input.a.x), ~0u), _wgslsmith_add_u32(reverseBits(0u), u_input.a.x << (1u % 32u)));
    var var_2 = ((vec4<u32>(~u_input.a.x, ~arg_1.c, abs(62149u), ~4294967295u) | vec4<u32>(4294967295u, ~0u, u_input.a.x, 1u)) & reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(41912u, 0u, var_1, u_input.a.x), abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_1.c))))) | ~vec4<u32>(u_input.a.x, var_1, 6250u, min(_wgslsmith_mult_u32(var_1, 4294967295u), u_input.a.x));
    let var_3 = ~arg_0.x;
    var var_4 = arg_0;
    return arg_1.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> u32 {
    global0 = array<bool, 4>();
    let var_0 = Struct_1(vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(~0u, 9u)], select(global0[_wgslsmith_index_u32(3465u, 4u)], true, global4[_wgslsmith_index_u32(24972u, 15u)]), true, u_input.a.x <= u_input.a.x)), select(true, global1[_wgslsmith_index_u32(42453u, 9u)], (-1264f >= arg_2.a.x) & true)), func_4(arg_0.wz, Struct_1(vec2<bool>(func_3(vec4<u32>(52657u, 5834u, u_input.a.x, 0u), vec2<i32>(-1i, -2147483647i), Struct_4(Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true), vec2<bool>(global4[_wgslsmith_index_u32(15194u, 15u)], false), 8584u), vec3<f32>(arg_2.a.x, 108f, 157f), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(41221u, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), 28698u), arg_2.a.x), 8920i), func_3(vec4<u32>(arg_1, u_input.a.x, 2893u, 1u), arg_0.zy, Struct_4(Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(15244u, 9u)], global1[_wgslsmith_index_u32(arg_1, 9u)]), vec2<bool>(true, false), 89481u), vec3<f32>(arg_2.a.x, arg_2.a.x, -1938f), Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true), 11749u), arg_2.a.x), arg_0.x)), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 9u)], true), u_input.a.x), !select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 9u)], false), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], global4[_wgslsmith_index_u32(0u, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(arg_1, 4u)]), global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), all(vec3<bool>(true, true, true))), 35481i), 65960u);
    global4 = array<bool, 15>();
    return var_0.c;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_4) -> i32 {
    global1 = array<bool, 9>();
    global3 = ~(-_wgslsmith_div_i32(1i, reverseBits(firstLeadingBit(17458i))));
    var var_0 = arg_0;
    let var_1 = ((vec3<u32>(func_2(vec4<i32>(arg_0, 1i, arg_0, -2147483647i), u_input.a.x, Struct_2(vec2<f32>(arg_2.b.x, arg_2.b.x)), 4599i), _wgslsmith_div_u32(9075u, 13478u), arg_2.a.c) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, arg_2.c.c, u_input.a.x), vec3<u32>(arg_2.a.c, 24145u, 39406u) ^ vec3<u32>(arg_2.c.c, 0u, arg_2.a.c)) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(34074u, 1u, u_input.a.x) << (vec3<u32>(1u, u_input.a.x, arg_2.c.c) % vec3<u32>(32u)), vec3<u32>(arg_2.a.c, 0u, arg_2.a.c) & vec3<u32>(u_input.a.x, arg_2.c.c, u_input.a.x))) & ~vec3<u32>(50408u, ~(~arg_2.a.c), 4294967295u & (arg_2.a.c >> (u_input.a.x % 32u)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(arg_2.b.zy)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.b.xx, vec2<f32>(775f, arg_2.d)))))));
    return min(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0, arg_0), vec3<i32>(arg_0, -14482i, arg_0)) | abs(vec3<i32>(2147483647i, arg_0, -1i)), vec3<i32>(2147483647i >> (var_1.x % 32u), 1i, -arg_0)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0, -2147483647i), select(-arg_0, countOneBits(-arg_0), any(select(vec3<bool>(false, false, true), vec3<bool>(global4[_wgslsmith_index_u32(arg_2.a.c, 15u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 9u)], arg_1.x, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(12151i, 34073i << (0u % 32u), -30123i), min(_wgslsmith_mod_vec3_i32(select(vec3<i32>(0i, 23611i, -10983i), vec3<i32>(-35631i, -19716i, -71158i), vec3<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], true, false)), vec3<i32>(1i, 1i, 1i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(39198i, 2409i, 48725i), vec3<i32>(39821i, -7288i, -23992i)))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2551i, func_1(0i, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_4(Struct_1(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], false), 60351u), vec3<f32>(330f, -1000f, 257f), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(11767u, 4u)]), u_input.a.x), -601f)), 1i), -49164i, -53370i), abs(vec3<i32>(min(0i, -70677i), firstLeadingBit(2147483647i), _wgslsmith_div_i32(-57053i, 33633i)))));
    let var_1 = Struct_4(Struct_1(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(58314u, 9u)]), func_4(vec2<i32>(14883i, var_0.x), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(74567u, 9u)]), vec2<bool>(true, false), 32578u), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true), -1i), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global4[_wgslsmith_index_u32(u_input.a.x, 15u)])), !func_4(var_0.zz, Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), 0u), vec2<bool>(true, true), var_0.x), !select(vec2<bool>(global0[_wgslsmith_index_u32(62093u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<bool>(global4[_wgslsmith_index_u32(0u, 15u)], global4[_wgslsmith_index_u32(u_input.a.x, 15u)]))), vec2<bool>(!(!global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), all(vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a.x, 15u)])) & true), ~(~u_input.a.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -971f), -449f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(561f, 650f, 2310f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 852f, 1000f)))))), Struct_1(vec2<bool>(true, global4[_wgslsmith_index_u32(~func_2(vec4<i32>(-17305i, var_0.x, 0i, 0i), u_input.a.x, Struct_2(vec2<f32>(-1426f, 505f)), var_0.x), 15u)]), select(vec2<bool>(true, true), !vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.a.x, 15u)]), !select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), global0[_wgslsmith_index_u32(1u, 4u)])), ~96049u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-205f - -1792f)))));
    let var_2 = Struct_1(func_4(~var_0.yx, var_1.a, var_1.a.b, 1i & countOneBits(var_0.x)), !(!(!(!vec2<bool>(var_1.a.b.x, true)))), ~_wgslsmith_sub_u32(~1u | (18459u ^ var_1.c.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(3733u, u_input.a.x, 1u), vec3<u32>(1u, u_input.a.x, var_1.a.c))));
    var_0 = -vec3<i32>(-reverseBits(_wgslsmith_sub_i32(var_0.x, var_0.x)), _wgslsmith_mod_i32(~(-13353i), _wgslsmith_clamp_i32(-var_0.x, var_0.x, select(var_0.x, var_0.x, var_2.a.x))), reverseBits(-var_0.x));
    var var_3 = !(!select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.c.c, 9u)], global4[_wgslsmith_index_u32(var_1.c.c, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], false, true), var_1.a.a.x), !(!vec4<bool>(global4[_wgslsmith_index_u32(12277u, 15u)], var_1.c.b.x, false, false)), true));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(292f, var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f + var_1.d)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(636f - -653f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1230f, 613f, var_1.d, var_1.d)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -282f, var_1.d, -816f) * vec4<f32>(var_1.b.x, 1017f, -843f, var_1.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.d, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_1.d))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -767f)))));
    var var_5 = -33616i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.zx, func_1(var_0.x, !(!vec2<bool>(var_1.a.b.x, var_3.x)), var_1), _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, u_input.a.x, 0u), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(var_2.c, u_input.a.x, var_2.c)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c, 0u, 69331u), vec3<u32>(var_2.c, 57833u, 89881u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.c, 3474u, 18855u), vec3<u32>(23473u, 0u, 1u)), var_3.yyw))));
}

