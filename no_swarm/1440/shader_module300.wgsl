struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<u32, 20>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-18997i, false, -1081f, 117f), Struct_1(i32(-2147483648), true, 992f, -1000f), Struct_1(0i, true, -733f, 799f), Struct_1(26667i, true, -1211f, -575f), Struct_1(1097i, true, 1000f, 2279f), Struct_1(-23484i, false, -264f, -2091f), Struct_1(2147483647i, false, -306f, 1250f), Struct_1(-1i, false, -462f, 1868f), Struct_1(-1i, false, -1000f, 987f), Struct_1(0i, true, -908f, 1964f), Struct_1(41109i, true, -463f, -701f));

var<private> global3: Struct_1 = Struct_1(13667i, false, -2421f, 1000f);

var<private> global4: array<vec2<i32>, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = select(!any(!vec2<bool>(arg_0.b, true)), all(!(!vec4<bool>(false, global0.x, true, false))), global0.x);
    global4 = array<vec2<i32>, 20>();
    var var_1 = !var_0;
    let var_2 = Struct_4(global3.b);
    let var_3 = Struct_3(arg_0.a, global3.b, arg_0.c, arg_0.d, vec2<u32>(_wgslsmith_clamp_u32(~(49285u & global1[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_add_u32(~4294967295u, select(global1[_wgslsmith_index_u32(u_input.c, 20u)], u_input.d.x, var_2.a)), firstLeadingBit(u_input.a.x)), firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(46462u, 0u), ~35663u, _wgslsmith_clamp_u32(51413u, 41301u, u_input.d.x)))));
    return true;
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = !vec2<bool>(func_3(Struct_3(Struct_2(vec2<i32>(global3.a, u_input.e)), arg_0.a, Struct_1(-20266i, arg_0.a, global3.d, global3.c), ~vec4<i32>(global3.a, global3.a, -17481i, 2147483647i), firstLeadingBit(u_input.a.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-967f * -1478f)), Struct_2(global4[_wgslsmith_index_u32(abs(4294967295u), 20u)])), global3.b);
    var var_1 = vec2<bool>(true, true);
    var var_2 = ~(-_wgslsmith_clamp_i32(global3.a, -min(global3.a, 0i), reverseBits(68029i)));
    var var_3 = arg_0;
    global3 = Struct_1(_wgslsmith_add_i32(~u_input.e, u_input.b), global3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.d * -1000f), _wgslsmith_f_op_f32(trunc(global3.c)), global3.b)) + _wgslsmith_div_f32(global3.d, _wgslsmith_f_op_f32(f32(-1f) * -1768f))), 217f), global3.c);
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, ~(_wgslsmith_sub_i32(u_input.e, -46012i) ^ (u_input.e >> (u_input.a.x % 32u)))), global3.a);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global3 = Struct_1(-arg_1, global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1700f, -230f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.c))))));
    global1 = array<u32, 20>();
    var var_0 = vec3<i32>(func_2(Struct_4(_wgslsmith_f_op_f32(677f + 416f) < _wgslsmith_f_op_f32(arg_0.c - arg_0.d))), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, func_2(Struct_4(global0.x))), -_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)] << (u_input.a.zz % vec2<u32>(32u)), select(global4[_wgslsmith_index_u32(u_input.c, 20u)], vec2<i32>(u_input.b, -17826i), false))), 0i);
    var_0 = vec3<i32>(countOneBits(1i), -firstTrailingBit(-u_input.b) & ~(-7238i), -2280i);
    let var_1 = Struct_1(-26775i, all(vec4<bool>(global0.x, true, all(vec4<bool>(false, global3.b, false, arg_0.b)) || false, !global0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -682f), global3.c, !arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-860f)))));
    return vec3<i32>(-32255i, var_1.a, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 695f;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_clamp_u32(0u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(35234u, 20u)]), 20u)], firstLeadingBit(global1[_wgslsmith_index_u32(u_input.c, 20u)]))), ~1u), 11u)];
    var var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(26957i, firstTrailingBit(2793i ^ global3.a), var_1.a ^ _wgslsmith_mod_i32(u_input.e, 0i)), ~vec3<i32>(-48880i, 1i, global3.a) & func_1(Struct_1(-17619i, false, var_1.d, -922f), global3.a)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(var_1.a, _wgslsmith_div_i32(global3.a, var_1.a)), _wgslsmith_add_i32(-30835i, global3.a) | 0i, _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(0i, global3.a))), ~reverseBits(-vec3<i32>(-2147483647i, global3.a, -204i)), ~vec3<i32>(u_input.b, -14001i, global3.a));
    var var_3 = u_input.d.yy;
    global1 = array<u32, 20>();
    var var_4 = -551f;
    var var_5 = ~_wgslsmith_clamp_u32(var_3.x, _wgslsmith_clamp_u32(4294967295u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, global1[_wgslsmith_index_u32(0u, 20u)]), 20u)], 20u)] % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54281u, 66014u, 0u), vec4<u32>(var_3.x, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 0u)) | 123187u, max(_wgslsmith_sub_u32(4294967295u, global1[_wgslsmith_index_u32(0u, 20u)]), abs(0u))), _wgslsmith_mod_u32(select(_wgslsmith_add_u32(57881u, 41020u), u_input.d.x, !var_1.b), ~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_1.d))))), 4294967295u, _wgslsmith_div_u32(~var_3.x, 4294967295u), select(~vec3<i32>(46438i, 1i << (global1[_wgslsmith_index_u32(u_input.d.x, 20u)] % 32u), var_1.a), _wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(29394i, -1i, -22842i))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, 9877i, u_input.b), select(vec3<i32>(-2147483647i, -18145i, var_1.a), vec3<i32>(2147483647i, 0i, -4037i), false))), !select(!vec3<bool>(true, global3.b, true), vec3<bool>(false, false, global0.x), global0.x)), max(vec2<u32>(global1[_wgslsmith_index_u32(0u, 20u)] ^ u_input.d.x, ~global1[_wgslsmith_index_u32(19586u, 20u)]), u_input.a.yy) << (countOneBits(~_wgslsmith_mult_vec2_u32(u_input.d.yz, vec2<u32>(u_input.c, 1u))) % vec2<u32>(32u)));
}

