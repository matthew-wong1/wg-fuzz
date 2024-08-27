struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, false, false);

var<private> global2: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_1(~1u);
    var var_1 = ~4294967295u;
    var var_2 = ~select(global2.b.a, ~80543u, global2.b.a != _wgslsmith_mult_u32(4294967295u, 1u));
    var var_3 = countOneBits(u_input.b);
    var_1 = ~firstTrailingBit(102117u) | ((countOneBits(_wgslsmith_clamp_u32(var_0.a, global2.b.a, var_0.a)) | _wgslsmith_mult_u32(arg_2, ~arg_2)) ^ _wgslsmith_mod_u32(global2.c.x, 0u));
    return !(!select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a, 4u)], true, global1[_wgslsmith_index_u32(arg_1, 4u)])), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global1[_wgslsmith_index_u32(arg_2, 4u)], global1[_wgslsmith_index_u32(arg_2, 4u)]), !all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], true, false, false))));
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x))))), global2.b, vec4<u32>(0u, 27275u, select(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global2.c.x, global2.c.x, global2.b.a)), 0u, all(func_3(Struct_1(21790u), 1u, global2.c.x))), 2230u));
    let var_0 = Struct_1(_wgslsmith_add_u32(~abs(_wgslsmith_add_u32(global2.c.x, global2.b.a)), 29838u));
    let var_1 = _wgslsmith_f_op_f32(ceil(827f));
    global0 = array<vec3<i32>, 6>();
    let var_2 = ~u_input.a.zy;
    return Struct_2(global2.a, Struct_1(countOneBits(var_2.x)), u_input.a);
}

fn func_1(arg_0: bool, arg_1: u32) -> vec2<bool> {
    var var_0 = !vec2<bool>(true, u_input.b != u_input.b);
    let var_1 = select(vec4<bool>(arg_0, (var_0.x | (global2.a.x <= -159f)) && any(vec3<bool>(arg_0, false, var_0.x)), true, global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(vec4<bool>(!(1i < u_input.b), arg_0, false, var_0.x), !vec4<bool>(global2.c.x >= 4294967295u, all(vec3<bool>(var_0.x, false, true)), global2.b.a < u_input.a.x, true), vec4<bool>(any(vec2<bool>(false, arg_0)) | arg_0, any(vec3<bool>(false, true, var_0.x)), -840f <= global2.a.x, all(vec4<bool>(false, false, false, true)))), select(_wgslsmith_sub_i32(u_input.b, 35644i) < -15967i, (var_0.x || any(vec4<bool>(global1[_wgslsmith_index_u32(2564u, 4u)], var_0.x, true, false))) && true, global1[_wgslsmith_index_u32(1u, 4u)]));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-626f)), global2.a.x)))));
    var var_3 = func_2();
    let var_4 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-950f, _wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_div_f32(792f, -1589f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_3.a)))))), func_2().b, ~u_input.a);
    return !(!(!select(vec2<bool>(true, var_0.x), !vec2<bool>(false, var_0.x), 1539f >= var_4.a.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_f32(func_2().a.x + _wgslsmith_f_op_f32(arg_3.a.x + -261f));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a.x, 1535f, 1861f, -2008f), vec4<f32>(549f, var_0, global2.a.x, -1000f))), vec4<f32>(var_0, var_0, 746f, arg_3.a.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1069f, 530f, -202f, var_0) + vec4<f32>(arg_3.a.x, 924f, 1790f, 1487f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, global2.a.x, global2.a.x, 1186f))))))))));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-964i, u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, -2147483647i, 1678i), global0[_wgslsmith_index_u32(89856u, 6u)]), firstTrailingBit(vec3<i32>(1i, -2147483647i, 33909i))), i32(-1i) * -33054i) ^ ((vec4<i32>(7367i, arg_2.x, u_input.b, -1i) & vec4<i32>(arg_2.x, 58330i, 2147483647i, 2147483647i)) & -vec4<i32>(u_input.b, -1i, u_input.b, -22747i)), arg_2);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.b.a;
    var var_1 = func_4(select(func_1(u_input.b <= 1i, 36541u), func_3(Struct_1(select(u_input.a.x, 0u, global1[_wgslsmith_index_u32(26835u, 4u)])), ~global2.b.a, ~40473u).xx, func_3(func_2().b, firstTrailingBit(global2.b.a), global2.c.x).xy), u_input.a.x, _wgslsmith_add_vec4_i32(~select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -2147483647i), vec4<i32>(u_input.b, -5604i, -16440i, 27318i)), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, 4584i), any(vec2<bool>(false, false))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, u_input.b, u_input.b, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), countOneBits(abs(vec4<i32>(u_input.b, -58126i, u_input.b, u_input.b))))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.a.x + 889f), _wgslsmith_f_op_f32(-431f + global2.a.x))), global2.a.x, _wgslsmith_f_op_f32(1202f * _wgslsmith_f_op_f32(round(global2.a.x)))), global2.b, global2.c));
    var_0 = ~max(~global2.b.a, ~abs(func_2().c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_mod_i32(29887i, u_input.b), _wgslsmith_mult_i32(u_input.b, -2147483647i), ~(-47390i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, u_input.b, u_input.b, -32712i)), firstTrailingBit(vec4<i32>(0i, u_input.b, u_input.b, u_input.b))), -(~vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))), -_wgslsmith_sub_vec4_i32(~vec4<i32>(-62715i, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, 24032i, 0i, 22410i))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.x)))), -300f));
}

