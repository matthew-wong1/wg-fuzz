struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(vec4<i32>(-10364i, 41499i, -23259i, 0i), 4294967295u, 4294967295u, i32(-2147483648), Struct_1(vec4<bool>(true, false, true, false), vec2<bool>(true, true)));

var<private> global2: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true));

var<private> global3: array<bool, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = true;
    global2 = array<vec4<bool>, 31>();
    global0 = u_input.a >> (_wgslsmith_div_u32(1u, global1.b) % 32u);
    return abs(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.b, 58861u) >> (25594u % 32u), countOneBits(_wgslsmith_mod_u32(0u, 1u))), 47881u, _wgslsmith_dot_vec2_u32(firstLeadingBit(countOneBits(vec2<u32>(0u, global1.b))), ~vec2<u32>(u_input.a, 4294967295u))));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    global1 = Struct_2(vec4<i32>(-(~(~global1.a.x)), -global1.a.x, global1.a.x, ~70071i), _wgslsmith_sub_u32(~global1.b & firstTrailingBit(~33762u), select(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72782u, u_input.a, 7076u), vec4<u32>(1u, 0u, u_input.a, 14371u))), ~(global1.b >> (32545u % 32u)), !(global1.e.b.x || global1.e.a.x))), ~(54868u | global1.b), reverseBits(-(0i & global1.a.x)), Struct_1(vec4<bool>(arg_0.a, !arg_0.a, true, select(false, false, true)), vec2<bool>(all(!global1.e.a.zz), all(select(global1.e.a, global2[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(global1.b, 13u)])))));
    var var_0 = 1000f;
    var var_1 = Struct_2(abs(firstLeadingBit(-(global1.a >> (vec4<u32>(global1.c, global1.b, global1.b, 17773u) % vec4<u32>(32u))))), 6781u, (4294967295u >> (1u % 32u)) & u_input.a, _wgslsmith_dot_vec3_i32(global1.a.yxz, max(global1.a.zxy, -vec3<i32>(global1.d, global1.a.x, -16029i)) ^ (reverseBits(global1.a.wxw) ^ max(global1.a.zyz, global1.a.zyy))), global1.e);
    let var_2 = var_1.e;
    let var_3 = _wgslsmith_add_u32(var_1.b, 1u ^ global1.c);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1138f, 112f, arg_0.b.x, -321f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_f_op_f32(trunc(102f)))), -1000f, arg_0.b.x, _wgslsmith_f_op_f32(min(arg_0.b.x, arg_0.b.x))));
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<bool>, 31>();
    let var_0 = Struct_2(reverseBits(countOneBits(_wgslsmith_mult_vec4_i32(global1.a, ~global1.a))), _wgslsmith_div_u32(global1.c, ~4294967295u), _wgslsmith_dot_vec3_u32(~func_2(global1.e, global1.e.a.ww), ~vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 4294967295u), 11465u, 8541u)), select(global1.a.x, global1.d, global1.e.b.x), Struct_1(select(vec4<bool>(all(global2[_wgslsmith_index_u32(u_input.a, 31u)]), global3[_wgslsmith_index_u32(abs(1u), 13u)], true && global1.e.a.x, global3[_wgslsmith_index_u32(countOneBits(global1.c), 13u)]), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 13u)], false, global3[_wgslsmith_index_u32(30584u, 13u)], true), false), global1.e.a.xx));
    let var_1 = Struct_3(!any(select(select(global1.e.a.xwy, vec3<bool>(var_0.e.a.x, var_0.e.b.x, true), false), select(var_0.e.a.wyz, var_0.e.a.yww, global1.e.b.x), !var_0.e.a.yxz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1534f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(722f, -764f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-351f, -1000f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_1.b.x <= -597f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 103f)))))));
    var var_3 = firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(41014u, global1.c, var_0.c, 56676u), vec4<u32>(u_input.a, global1.b, 0u, var_0.b)), ~vec4<u32>(1u, 0u, 4294967295u, var_0.c), vec4<u32>(var_0.c, u_input.a, var_0.c, var_0.b)), vec4<u32>(0u, countOneBits(u_input.a), 54199u, _wgslsmith_add_u32(var_0.b, 4294967295u)))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~var_0.c, global1.c, _wgslsmith_div_u32(global1.b, global1.c), _wgslsmith_div_u32(~u_input.a, ~var_0.c)), vec4<u32>(~_wgslsmith_div_u32(19917u, u_input.a), ~(~85188u), 1u, ~(global1.c | var_0.c))) % vec4<u32>(32u));
    return Struct_2(firstLeadingBit(-min(~vec4<i32>(-5852i, -2147483647i, 1i, 2837i), var_0.a ^ global1.a)), abs(global1.c), _wgslsmith_div_u32(global1.c, var_0.c), global1.a.x, global1.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = !arg_0.e.a;
    var var_1 = Struct_2(func_1().a, _wgslsmith_mod_u32(~(~1u), ~1u) << (global1.c % 32u), ~47535u, arg_0.a.x, arg_0.e);
    global2 = array<vec4<bool>, 31>();
    var var_2 = vec2<i32>(50867i, arg_0.d);
    var var_3 = !arg_0.e.a.yw;
    return _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1.a, arg_0.a | vec4<i32>(var_2.x, 6878i, 3105i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -29078i, var_2.x, arg_0.a.x) << (vec4<u32>(0u, 1u, var_1.c, var_1.b) % vec4<u32>(32u)), min(vec4<i32>(arg_0.d, global1.d, 23092i, var_1.d), arg_0.a), ~vec4<i32>(var_1.d, var_2.x, var_2.x, var_2.x))), (-37089i & func_1().a.x) ^ global1.d), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global1.a, var_1.a) & ~7589i, -var_1.d | 1i), firstLeadingBit(var_2.x >> (firstTrailingBit(arg_0.c) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e;
    var var_1 = (~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 0u), vec2<u32>(4294967295u, global1.c)), countOneBits(global1.c)) <= 1u) == true;
    var var_2 = true;
    let var_3 = _wgslsmith_mod_i32(-24112i, global1.a.x | func_4(func_1(), func_1().e));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1079f, -126f, -386f, -323f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-185f, 809f, -177f, -1588f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-434f, 347f, -1000f, 1000f), vec4<f32>(-165f, 407f, -1000f, -1554f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(11907i);
}

