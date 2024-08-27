struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, -9520i, false), Struct_1(false, 1i, false), Struct_1(false, 2147483647i, false), Struct_1(true, 2147483647i, true), Struct_1(false, 2147483647i, true), Struct_1(true, -10056i, true), Struct_1(true, 2147483647i, true), Struct_1(true, 2147483647i, true), Struct_1(true, -19964i, false), Struct_1(true, -33591i, true), Struct_1(false, -1i, false), Struct_1(true, i32(-2147483648), false), Struct_1(true, 30315i, false), Struct_1(false, i32(-2147483648), false), Struct_1(true, 0i, true), Struct_1(true, -36348i, true), Struct_1(false, 1i, true), Struct_1(false, 2147483647i, false), Struct_1(false, -1i, true), Struct_1(false, 0i, true), Struct_1(false, i32(-2147483648), true), Struct_1(false, i32(-2147483648), true), Struct_1(true, 26475i, true), Struct_1(true, 32701i, true), Struct_1(false, 2147483647i, true), Struct_1(true, 0i, true), Struct_1(false, 3904i, false), Struct_1(true, 1i, true), Struct_1(true, 7153i, true), Struct_1(false, -11771i, false), Struct_1(true, 33013i, false), Struct_1(false, 2147483647i, false));

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global3: array<i32, 31>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<f32, 29>();
    global2 = !vec4<bool>(((u_input.a ^ 4294967295u) << (max(1u, 0u) % 32u)) > u_input.a, -4530i <= global3[_wgslsmith_index_u32(u_input.c.x, 31u)], arg_0.a, false);
    global1 = array<Struct_1, 32>();
    global3 = array<i32, 31>();
    global1 = array<Struct_1, 32>();
    return max(4294967295u, 37497u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> i32 {
    let var_0 = arg_1;
    let var_1 = !all(global2.wz);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_3.wx))), vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 29u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_2), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), 29u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 29u)])))));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_3.yy * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(34786u, 29u)], 155f), arg_3.yz, var_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_3.x, 792f))), 307f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))) - vec2<f32>(493f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_3.x))))))));
    var var_3 = 1u;
    return _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.zx), countOneBits(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.b, var_0.b, firstLeadingBit(-1i)), -arg_1.b, 2793i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(~firstTrailingBit(0i) != func_3(true, global4[_wgslsmith_index_u32(u_input.c.x, 8u)], max(u_input.a, u_input.c.x), vec4<f32>(746f, _wgslsmith_div_f32(281f, global0[_wgslsmith_index_u32(u_input.d, 29u)]), 1000f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.c.x, 29u)])))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.yzz, u_input.b.yxw, _wgslsmith_add_vec3_i32(select(vec3<i32>(-22525i, arg_0.x, 2147483647i), vec3<i32>(arg_1.b, -2147483647i, arg_0.x), vec3<bool>(global2.x, arg_1.c, arg_1.c)), u_input.b.wxx)), min(u_input.b.wyw, u_input.b.zxz)), any(!(!select(vec4<bool>(true, true, arg_1.c, global2.x), vec4<bool>(true, true, true, false), arg_1.a))));
    var var_1 = Struct_1(var_0.c, _wgslsmith_sub_i32((~u_input.b.x | arg_0.x) >> (1u % 32u), -25634i), false);
    var var_2 = var_0.b;
    return u_input.a << (~u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.a) & ~u_input.a;
    let var_1 = global2.xyy;
    var var_2 = false || (all(vec4<bool>(any(vec3<bool>(true, global2.x, false)), !var_1.x, any(vec3<bool>(true, global2.x, global2.x)), global2.x)) && true);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-308f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(23791u, 29u)])));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_mod_u32(u_input.a, 4294967295u), u_input.c.x), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, func_1(Struct_1(global2.x, global3[_wgslsmith_index_u32(4294967295u, 31u)], global2.x)), 43133u), 29u)]) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.d, 29u)])))), _wgslsmith_f_op_f32(floor(-285f)), var_3.x));
    let var_5 = global0[_wgslsmith_index_u32(36905u, 29u)];
    let var_6 = _wgslsmith_add_vec4_u32(min(select(~vec4<u32>(0u, u_input.c.x, 18994u, u_input.c.x), ~abs(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d, 1u)), global2.x), vec4<u32>(select(_wgslsmith_clamp_u32(0u, 1u, u_input.c.x), 51891u, true), abs(u_input.a), ~4294967295u, 91957u)), vec4<u32>(func_2(~(~u_input.b.yw), global1[_wgslsmith_index_u32(12801u, 32u)]), ~_wgslsmith_clamp_u32(func_2(vec2<i32>(u_input.b.x, -21646i), Struct_1(global2.x, global3[_wgslsmith_index_u32(28082u, 31u)], global2.x)), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, u_input.c.x), vec3<u32>(1u, 61462u, u_input.d))), _wgslsmith_div_u32(~u_input.d, 1u), 4294967295u ^ u_input.d));
    var var_7 = firstTrailingBit(vec2<i32>(-25822i, ~func_3(true, Struct_1(false, -19420i, var_1.x), 4294967295u, vec4<f32>(global0[_wgslsmith_index_u32(9067u, 29u)], var_4.x, var_3.x, 574f)))) & min(vec2<i32>(_wgslsmith_add_i32(u_input.b.x, -35359i), -(i32(-1i) * -1i)), countOneBits(abs(vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(var_6.x, 31u)]))));
    let var_8 = Struct_1(var_1.x, -u_input.b.x, all(vec2<bool>(false, _wgslsmith_f_op_f32(589f - 172f) == var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(var_7.x | global3[_wgslsmith_index_u32(u_input.d, 31u)], var_7.x, var_8.b)), firstLeadingBit(~vec3<i32>(global3[_wgslsmith_index_u32(1024u, 31u)], 37360i, -38211i))), var_4.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, 160f, -1107f))), firstLeadingBit(vec4<i32>(-18771i, _wgslsmith_clamp_i32(u_input.b.x, ~20273i, firstTrailingBit(472i)), select(0i, var_8.b, false) << (1u % 32u), -1i)));
}

