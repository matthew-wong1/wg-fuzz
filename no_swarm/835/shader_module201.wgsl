struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(19076u, 0u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_1) -> vec3<bool> {
    global0 = array<u32, 3>();
    var var_0 = arg_2;
    var var_1 = ~1u;
    let var_2 = 0i;
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, global0[_wgslsmith_index_u32(~21873u, 3u)], 1u), ~vec3<u32>(4294967295u, ~(~u_input.c), ~_wgslsmith_mult_u32(15754u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6690u, 3u)], 3u)])));
    return !(!select(arg_1, vec3<bool>(arg_2.a.e, all(vec3<bool>(arg_2.a.e, true, true)), arg_1.x), arg_2.a.e));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_add_u32(arg_0, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~u_input.a, 3u)], u_input.b) ^ _wgslsmith_clamp_u32(abs(9166u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 4294967295u), vec3<u32>(8824u, u_input.b, 65654u)) % 32u), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(24183u, 3u)], u_input.c), u_input.c));
    let var_1 = arg_2.a.d;
    let var_2 = arg_2.a;
    global0 = array<u32, 3>();
    let var_3 = reverseBits(countOneBits(~abs(var_2.c)));
    return vec4<u32>(u_input.c, countOneBits(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0, 3u)], _wgslsmith_sub_u32(25889u, arg_0))) ^ arg_0, ~(~(~39531u)), abs(var_0 | ~24673u) & ~(~select(global0[_wgslsmith_index_u32(120043u, 3u)], 46471u, false)));
}

fn func_4(arg_0: vec4<u32>) -> i32 {
    let var_0 = vec3<bool>(true, true, all(vec3<bool>(true, true, all(vec4<bool>(false, true, false, false)))) | false);
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_1 = global0[_wgslsmith_index_u32(~(~10995u), 3u)];
    var_1 = ~_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(10195u, 3u)], arg_0.x))), arg_0.yw);
    return -abs(i32(-1i) * -countOneBits(u_input.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_2 {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_0 = !(!select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, true))), func_2(16i, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), Struct_3(Struct_2(u_input.d, 1i, arg_1.zw, -2147483647i, true)), Struct_1(arg_0.xx))));
    let var_1 = Struct_1(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_div_f32(arg_0.x, 340f), all(vec2<bool>(true, false)))))));
    let var_2 = -func_4(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(arg_2.x, 31627u, 0u, u_input.a), vec4<u32>(arg_2.x, global0[_wgslsmith_index_u32(arg_2.x, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], u_input.b)), abs(vec4<u32>(u_input.b, 94101u, 21154u, 0u))), func_3(select(1u, 48925u, var_0.x), abs(arg_1.x), Struct_3(Struct_2(3655i, arg_1.x, vec2<i32>(arg_1.x, arg_1.x), u_input.d, true)))));
    return Struct_2(var_2, -17732i, vec2<i32>(var_2, firstTrailingBit(u_input.d)), ~(_wgslsmith_dot_vec2_i32(~arg_1.yx, ~arg_1.zz) | -2147483647i), var_0.x);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_0 = Struct_2(u_input.d, ~(-arg_0.a.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 43679i), min(arg_0.a.c, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1361f, -398f, -499f)), vec4<i32>(2147483647i, u_input.d, arg_0.a.b, arg_0.a.b) << (vec4<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 10166u) % vec4<u32>(32u)), vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 3u)], u_input.c)).c)), (i32(-1i) * -_wgslsmith_sub_i32(u_input.d, arg_0.a.a)) << (_wgslsmith_mod_u32(0u, u_input.a) % 32u), false);
    var var_1 = ~vec2<u32>(67911u, abs(u_input.a)) << (func_3(0u, _wgslsmith_mult_i32(u_input.d, -select(arg_0.a.a, -2147483647i, arg_0.a.e)), Struct_3(arg_0.a)).yz % vec2<u32>(32u));
    var var_2 = Struct_3(arg_0.a);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-956f, 1041f, 1269f)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(-4157i, u_input.d, u_input.d, 51959i)) >> ((vec4<u32>(u_input.c, 90745u, 0u, 29445u) | vec4<u32>(67547u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 3u)], 3u)], 4294967295u, 34699u)) % vec4<u32>(32u)), ~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 3u)], u_input.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(98279u, u_input.b, 69281u), vec3<u32>(u_input.a, 32532u, 4294967295u)) % vec3<u32>(32u)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2671f, -1584f)))));
    global0 = array<u32, 3>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)), -2612f), var_1.a, select(var_0.a.e | any(vec2<bool>(true, false)), var_0.a.e, var_0.a.e))));
    var_0 = Struct_3(var_0.a);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1434f, 499f, var_2.x), vec3<f32>(var_2.x, var_1.a.x, -1000f))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -985f, var_1.a.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, -696f, 518f), vec3<f32>(-262f, 661f, -1240f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1272f, -565f, 272f))))));
    var_0 = func_5(func_5(func_5(Struct_3(func_5(Struct_3(Struct_2(6295i, -64333i, var_0.a.c, var_0.a.c.x, var_0.a.e))).a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~_wgslsmith_sub_u32(u_input.b, 33087u)), 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(sign(2120f))), _wgslsmith_f_op_f32(-var_2.x)));
}

