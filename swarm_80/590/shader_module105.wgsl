struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: Struct_4;

var<private> global2: array<f32, 15> = array<f32, 15>(948f, -860f, 259f, -1000f, -1000f, -1732f, 1000f, 1265f, -1097f, 732f, -575f, 772f, -136f, 2193f, -1224f);

var<private> global3: f32 = -1000f;

var<private> global4: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> f32 {
    var var_0 = firstTrailingBit(select(vec4<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(arg_2.zxw, u_input.d.zwx) | ~u_input.c.x, ~firstLeadingBit(u_input.c.x), firstLeadingBit(~arg_0.x)), select(vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(17835u, arg_0.x, 0u), u_input.c.x, arg_2.x), vec4<u32>(~arg_0.x, max(arg_3, arg_0.x), _wgslsmith_add_u32(arg_0.x, arg_3), ~arg_2.x), !(!vec4<bool>(global0.x, true, false, true))), select(!select(vec4<bool>(arg_1.d, false, false, arg_1.d), vec4<bool>(global0.x, global0.x, global0.x, false), false), !vec4<bool>(false, false, true, arg_1.d), any(select(vec2<bool>(false, true), vec2<bool>(true, global0.x), global0.zx)))));
    var var_1 = arg_1;
    let var_2 = arg_1.d;
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_1.b.xzy, reverseBits(~global4.xzy)), var_1.b.x);
    var var_4 = Struct_4(-(~(-2147483647i >> (0u % 32u)) >> (u_input.c.x % 32u)), 25924i);
    return _wgslsmith_f_op_f32(f32(-1f) * -1574f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global4.x, -31993i, global4.x, u_input.a.x)), max(8629i, 2147483647i), firstLeadingBit(global1.b), _wgslsmith_dot_vec3_i32(u_input.a.wxx, arg_1))), _wgslsmith_mod_i32(firstLeadingBit(arg_1.x) & _wgslsmith_mod_i32(-3205i, u_input.a.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_1.x, 1i, -1i, 54765i), u_input.a, arg_2.x), u_input.a)) << (abs(max(_wgslsmith_sub_u32(4294967295u, 0u), 44823u >> (u_input.d.x % 32u))) % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 15u)] * _wgslsmith_div_f32(-1217f, 631f)))), ~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(24575u, u_input.d.x, u_input.d.x, u_input.c.x), u_input.c, !vec4<bool>(global0.x, arg_2.x, true, arg_2.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 0u, 1u, 0u), u_input.d, ~u_input.d)), 17997u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.d.x, 15u)])), _wgslsmith_f_op_f32(func_3(vec2<u32>(17117u, 4294967295u), Struct_1(vec2<f32>(var_1.a.x, 615f), vec4<i32>(0i, 2147483647i, arg_0.x, 88402i), 1i, arg_2.x, -266f), vec4<u32>(var_1.c, u_input.d.x, var_1.c, var_1.c), 0u)))), var_1.a)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.a, var_1.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(var_1.a - vec2<f32>(var_1.a.x, global2[_wgslsmith_index_u32(15963u, 15u)])), global0.x)))));
    let var_3 = Struct_3(!(!select(vec2<bool>(arg_2.x, true), vec2<bool>(global0.x, true), !arg_2.x)), global0.x);
    global2 = array<f32, 15>();
    return (-703i >> (1u % 32u)) ^ _wgslsmith_mod_i32(-u_input.a.x, -3808i);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_2(global4.zz, u_input.a.xxy, global0.xwx);
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.d.wz, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(34202u, 15u)], 364f)), -u_input.a, var_0 >> (u_input.c.x % 32u), all(vec4<bool>(global0.x, global0.x, true, global0.x)), global2[_wgslsmith_index_u32(arg_0, 15u)]), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(10503u, 1u, arg_0, u_input.d.x), vec4<u32>(44245u, 42406u, 43976u, arg_0))), ~(~u_input.d.x))), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 15u)] - 423f)), global0.x))), _wgslsmith_div_vec4_i32(vec4<i32>(abs(17568i), 0i, -var_0, func_2(global4.wy, vec3<i32>(global4.x, -38322i, 9305i), vec3<bool>(global0.x, global0.x, true))) << (u_input.d % vec4<u32>(32u)), select(u_input.a, vec4<i32>(-global4.x, i32(-1i) * -5986i, 2147483647i, abs(-2147483647i)), vec4<bool>(false, true, global0.x, true))), 27663i, _wgslsmith_sub_i32(global1.a, func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-9915i, 0i), u_input.a.yx), vec3<i32>(-2147483647i, var_0, global4.x) >> (vec3<u32>(arg_0, 1u, u_input.d.x) % vec3<u32>(32u)), vec3<bool>(false, true, global0.x))) <= 30460i, _wgslsmith_div_f32(-196f, global2[_wgslsmith_index_u32(abs(reverseBits(~u_input.d.x)), 15u)]));
    let var_2 = var_1.b.xw;
    global4 = vec4<i32>(global1.a, global1.a, var_1.c, _wgslsmith_dot_vec2_i32(var_1.b.wx, vec2<i32>((global1.a >> (arg_0 % 32u)) << (~u_input.d.x % 32u), var_2.x)));
    var var_3 = var_1.a;
    return i32(-1i) * -_wgslsmith_clamp_i32(-32479i, 49546i, _wgslsmith_mod_i32(global4.x, func_2(vec2<i32>(var_1.c, var_0), var_1.b.xxx, global0.zyx)));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> vec4<i32> {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 15u)];
    global3 = _wgslsmith_div_f32(-198f, _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~(~arg_3) << (firstTrailingBit(arg_1.x) % 32u), 15u)])));
    global4 = vec4<i32>(-2147483647i, min(u_input.a.x, ~arg_0), func_1(abs(~u_input.d.x) | _wgslsmith_mod_u32(countOneBits(1u), arg_3)), ~0i);
    let var_1 = max(-46940i, arg_0);
    var var_2 = Struct_3(select(!global0.wx, global0.zx, 961f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_2, global2[_wgslsmith_index_u32(4294967295u, 15u)], global0.x))))), _wgslsmith_clamp_i32(~var_1, _wgslsmith_dot_vec4_i32(u_input.a & u_input.a, -vec4<i32>(global4.x, u_input.a.x, global4.x, -2147483647i)), ~(~global1.a)) <= abs(u_input.b));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 15u)] == 672f, global2[_wgslsmith_index_u32(0u, 15u)] != global2[_wgslsmith_index_u32(90007u, 15u)], false)));
    var var_0 = _wgslsmith_mult_vec4_i32(select(~u_input.a, firstTrailingBit(-u_input.a >> (u_input.c % vec4<u32>(32u))), true), -(u_input.a | (-vec4<i32>(global4.x, 43700i, 0i, global1.b) & u_input.a)));
    let var_1 = ~(~func_4(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global4.x, 15146i, 7077i), global1.b, func_1(u_input.c.x)), u_input.c.zz, -1507f, ~reverseBits(u_input.c.x)));
    var var_2 = Struct_2(vec2<f32>(1173f, 189f), u_input.d, u_input.c.x);
    global0 = vec4<bool>(all(global0.yw), global0.x || true, true, select((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 56412u)) >> (u_input.c.x % 32u)) == 4294967295u, global0.x, true));
    let var_3 = global0.x;
    let var_4 = u_input.a;
    global1 = Struct_4(14720i, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -14510i), ~(-global4.xy)), global4.x, -(~2147483647i), global4.x), _wgslsmith_f_op_f32(-1228f + 633f));
}

