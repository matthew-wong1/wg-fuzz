struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(Struct_4(1i, vec3<bool>(true, true, false))), Struct_5(Struct_4(34276i, vec3<bool>(true, false, true))), Struct_5(Struct_4(6781i, vec3<bool>(true, true, false))), Struct_5(Struct_4(2147483647i, vec3<bool>(true, true, false))), Struct_5(Struct_4(0i, vec3<bool>(true, false, false))), Struct_5(Struct_4(i32(-2147483648), vec3<bool>(false, true, true))), Struct_5(Struct_4(-17823i, vec3<bool>(false, true, false))), Struct_5(Struct_4(-1557i, vec3<bool>(true, false, false))), Struct_5(Struct_4(1i, vec3<bool>(false, true, false))), Struct_5(Struct_4(52988i, vec3<bool>(false, false, false))), Struct_5(Struct_4(0i, vec3<bool>(false, true, true))));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> f32 {
    global1 = array<Struct_5, 11>();
    global1 = array<Struct_5, 11>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1747f, _wgslsmith_f_op_f32(-1000f * -475f), _wgslsmith_f_op_f32(552f * -495f)))));
    global1 = array<Struct_5, 11>();
    var var_1 = vec3<f32>(var_0.x, var_0.x, -500f);
    return var_1.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_5) -> i32 {
    global0 = Struct_2(vec2<i32>(i32(-1i) * -1i, _wgslsmith_add_i32(~u_input.a, ~(-2147483647i))));
    let var_0 = ~u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -524f), _wgslsmith_f_op_f32(-arg_1), -2032f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(866f, 273f, -1026f)) + vec3<f32>(arg_1, arg_1, 876f))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), arg_1, arg_1), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1019f, arg_1) - vec3<f32>(377f, 537f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 1714f), vec3<f32>(-744f, arg_1, -318f))), arg_0.xxx))));
    global1 = array<Struct_5, 11>();
    let var_2 = !(!(!(!select(arg_0.yy, arg_2.a.b.yy, arg_2.a.b.x))));
    return u_input.a | _wgslsmith_sub_i32(-32195i, -arg_2.a.a);
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) + _wgslsmith_f_op_f32(trunc(-494f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1336f * -817f)))));
    global0 = arg_1;
    global1 = array<Struct_5, 11>();
    global0 = arg_1;
    var var_1 = Struct_3(var_0.x, arg_0.a.b.xz, u_input.b.x, ~vec4<i32>(_wgslsmith_sub_i32(arg_0.a.a, max(u_input.c, arg_2.x)), _wgslsmith_clamp_i32(~arg_2.x, u_input.a, firstTrailingBit(arg_3.a)), func_3(vec4<bool>(arg_3.b.x, false, false, false), var_0.x, Struct_5(arg_3)) ^ (arg_3.a ^ -1i), 1i));
    return abs(~u_input.b.yy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(462f, _wgslsmith_f_op_f32(-787f + _wgslsmith_f_op_f32(round(-225f)))))));
    var var_1 = !vec4<bool>(true, true, ~abs(u_input.b.x) > u_input.b.x, !(false & any(vec4<bool>(true, false, false, true))));
    var var_2 = _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.c, u_input.a)) << (~max(func_1(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], Struct_2(global0.a), vec2<i32>(-7728i, -95854i), Struct_4(-2147483647i, vec3<bool>(true, var_1.x, var_1.x))), u_input.b.yw) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(-64655i, _wgslsmith_div_i32(global0.a.x | 98i, global0.a.x & -2147483647i)), global0.a));
    var_1 = !(!select(vec4<bool>(true, var_1.x, 4294967295u <= u_input.b.x, true), !vec4<bool>(true, var_1.x, var_1.x, var_1.x), true));
    var var_3 = _wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.c & 2147483647i, global0.a.x, var_2.x, ~global0.a.x)), ~(~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, u_input.d, -26580i, u_input.a) << (vec4<u32>(u_input.b.x, u_input.b.x, 6813u, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(0i, var_2.x, var_2.x, -43033i) << (u_input.b % vec4<u32>(32u)))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -231f), vec2<bool>((false & (global0.a.x < u_input.c)) || (~48130u < u_input.b.x), var_1.x), 4294967295u, -_wgslsmith_mod_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.d, -4692i, -1i), vec4<i32>(30381i, u_input.c, -2147483647i, 0i)), vec4<i32>(-1i, -2147483647i, var_2.x, var_2.x)), vec4<i32>(-1i, u_input.d, var_2.x, u_input.d) ^ vec4<i32>(2147483647i, -1i, u_input.d, u_input.c)));
    let var_5 = ~(~(1u & var_4.c));
    var var_6 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-418f, 263f) - vec2<f32>(var_4.a, var_4.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(278f, var_4.a)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, 1102f) + vec2<f32>(836f, 103f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_4.a)))))));
}

