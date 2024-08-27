struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: i32 = 0i;

var<private> global2: array<vec2<bool>, 28>;

var<private> global3: array<u32, 13> = array<u32, 13>(1u, 34255u, 4294967295u, 1u, 36614u, 23879u, 1u, 1u, 0u, 43026u, 22588u, 12019u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    var var_0 = Struct_3(vec3<f32>(241f, _wgslsmith_f_op_f32(f32(-1f) * -926f), -347f), Struct_1(arg_0, 0u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 293f))), !any(vec3<bool>(true, false, true)), firstTrailingBit(vec3<i32>(global0.x, arg_1, global0.x)) ^ ~u_input.a.xzw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_0, arg_0, _wgslsmith_f_op_f32(max(arg_0, 286f))), vec4<f32>(518f, arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0)), -1000f))));
    var var_1 = Struct_2(vec2<bool>(!(!var_0.b.d), true));
    var var_2 = Struct_2(select(vec2<bool>(true, true), !vec2<bool>(all(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 28u)]), false), true));
    global3 = array<u32, 13>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), arg_0, -1000f)), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c))) * vec4<f32>(1003f, _wgslsmith_f_op_f32(-arg_0), -417f, _wgslsmith_div_f32(var_0.b.a, arg_0)))));
    return 6777u;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    global1 = ~global0.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_1, global3[_wgslsmith_index_u32(1180u, 13u)] & arg_1), func_3(-1000f, 1i), (arg_1 ^ 1u) ^ (global3[_wgslsmith_index_u32(18505u, 13u)] << (global3[_wgslsmith_index_u32(4294967295u, 13u)] % 32u)), firstLeadingBit(arg_1)), ~(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1, 13u)], 13u)], arg_1, 55317u))) % 32u);
    global2 = array<vec2<bool>, 28>();
    global3 = array<u32, 13>();
    global2 = array<vec2<bool>, 28>();
    return Struct_2(vec2<bool>(false, all(vec3<bool>(any(global2[_wgslsmith_index_u32(arg_1, 28u)]), false, select(arg_0.x, false, arg_0.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = ~firstTrailingBit(_wgslsmith_add_vec4_i32(-u_input.a, abs(select(u_input.a, vec4<i32>(arg_1, -31810i, 1i, -36662i), arg_2.x))));
    global0 = u_input.a.xxx;
    global1 = 2147483647i;
    let var_1 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 13u)], 13u)];
    var var_2 = true;
    return func_2(!select(vec3<bool>(true, true, !arg_2.x), vec3<bool>(all(global2[_wgslsmith_index_u32(69522u, 28u)]), true, false), select(!vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(vec3<bool>(arg_2.x, arg_0.a.x, false), arg_2, vec3<bool>(true, arg_2.x, arg_2.x)), !vec3<bool>(true, arg_2.x, arg_2.x))), ~15036u ^ _wgslsmith_div_u32(0u, global3[_wgslsmith_index_u32((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15887u, 13u)], 13u)] >> (4294967295u % 32u)) ^ select(global3[_wgslsmith_index_u32(18575u, 13u)], 4294967295u, false), 13u)]));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -462f);
    return _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(468f + _wgslsmith_f_op_f32(var_0 * arg_1.c.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(global2[_wgslsmith_index_u32(~countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63992u, 13u)], 13u)]), 28u)]), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(-1795f)), _wgslsmith_f_op_f32(ceil(-754f)), _wgslsmith_div_f32(-1117f, 746f)), Struct_1(-829f, _wgslsmith_add_u32(46455u, 1u), _wgslsmith_f_op_f32(-1000f * -390f), true, _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, arg_1), vec3<i32>(-1i, -28580i, -1i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))), func_4(func_2(vec3<bool>(true, true, true), 1u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)]), arg_0.x, vec3<bool>(true, true, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1205f * 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)))));
    let var_1 = ~reverseBits(abs(vec4<u32>(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)]), 1u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], func_3(1087f, arg_0.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-407f, var_0), var_0, _wgslsmith_f_op_f32(ceil(var_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, -1000f))))))), Struct_1(805f, 94403u, var_0, true, _wgslsmith_add_vec3_i32(-u_input.a.yzx, u_input.a.xyw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, _wgslsmith_div_f32(var_0, -1513f), _wgslsmith_f_op_f32(f32(-1f) * -608f), 430f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -407f, var_0, var_0), vec4<f32>(var_0, var_0, -1792f, 520f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(481f, var_0, 811f, var_0) + vec4<f32>(var_0, var_0, 152f, -971f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-348f, -360f, 127f, var_0))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1683f, var_0, 835f, var_0)))))));
    let var_3 = select(vec4<bool>(true, func_4(Struct_2(global2[_wgslsmith_index_u32(var_2.b.b, 28u)]), global0.x, vec3<bool>(false, true, false)).a.x, !all(global2[_wgslsmith_index_u32(var_2.b.b, 28u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(28853i, arg_0.x, global0.x, 2883i), firstLeadingBit(vec4<i32>(var_2.b.e.x, 0i, var_2.b.e.x, 1i))) <= -1i), select(select(vec4<bool>(var_2.b.d, true, !var_2.b.d, !var_2.b.d), vec4<bool>(func_2(vec3<bool>(var_2.b.d, true, var_2.b.d), global3[_wgslsmith_index_u32(0u, 13u)]).a.x, var_2.b.d, true, var_2.b.d), vec4<bool>(true, all(vec4<bool>(var_2.b.d, true, false, var_2.b.d)), all(vec4<bool>(true, var_2.b.d, var_2.b.d, true)), var_2.b.d)), vec4<bool>(select(any(global2[_wgslsmith_index_u32(var_2.b.b, 28u)]), any(global2[_wgslsmith_index_u32(22042u, 28u)]), true), true, true, var_2.b.d), select(func_2(vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(var_1.x, 13u)]).a.x & (global3[_wgslsmith_index_u32(4294967295u, 13u)] < var_1.x), var_2.b.e.x >= max(global0.x, -3912i), (var_2.b.d | true) | any(global2[_wgslsmith_index_u32(var_2.b.b, 28u)]))), var_2.b.d);
    let var_4 = var_2.b;
    return 7847i;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_2);
    let var_1 = vec2<f32>(1670f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 189f) - 636f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -319f)))))));
    global3 = array<u32, 13>();
    global0 = _wgslsmith_sub_vec3_i32(u_input.a.zzw, abs(vec3<i32>(select(-1i, -55988i, arg_1), ~global0.x, 1i))) >> ((~_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(0u, 1u, 32409u)), arg_3) ^ vec3<u32>(~0u, countOneBits(4294967295u), ~4796u)) % vec3<u32>(32u));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(-518f, -1116f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1935f * _wgslsmith_f_op_f32(exp2(var_1.x)))), 221f), Struct_1(1072f, ~arg_3.x, _wgslsmith_f_op_f32(-var_0.x), arg_1, _wgslsmith_clamp_vec3_i32(u_input.a.xzx, u_input.a.zyy, vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.ywy, vec3<i32>(2147483647i, 1i, u_input.a.x)), 0i, _wgslsmith_div_i32(2147483647i, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(953f, arg_2.x, var_1.x, arg_2.x), vec4<f32>(211f, 1000f, var_0.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, var_1.x, var_1.x, -509f)) - vec4<f32>(448f, var_1.x, 931f, var_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, -578f))) * vec4<f32>(var_0.x, -715f, _wgslsmith_f_op_f32(f32(-1f) * -770f), _wgslsmith_f_op_f32(round(-206f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    var var_0 = func_6(func_1(_wgslsmith_add_vec2_i32(-abs(u_input.a.xy), ~u_input.a.zz), ~(~(~u_input.a.x))), true || any(vec3<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51462u, 13u)], 13u)] <= 34782u, false, true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(342f, 285f), vec2<f32>(793f, -1000f)))))), ~(~abs(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 13u)], 13u)], 13u)], 13u)], 13u)], 62160u))) & ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(28848u, 13u)], 13u)]), 13u)], global3[_wgslsmith_index_u32(46832u, 13u)] >> (global3[_wgslsmith_index_u32(98373u, 13u)] % 32u)));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32((countOneBits(-9929i) << (global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(15721u, global3[_wgslsmith_index_u32(var_0.b.b, 13u)]), 13u)] % 32u)) << (global3[_wgslsmith_index_u32(~0u, 13u)] % 32u), _wgslsmith_add_i32(~var_0.b.e.x, global0.x)), abs(~func_1(vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(82489i, u_input.a.x), ~u_input.a.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-331f + 1736f), _wgslsmith_div_f32(455f, -1530f), -1423f, _wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + var_0.c) - _wgslsmith_f_op_vec4_f32(var_0.c * vec4<f32>(1322f, var_0.c.x, 1111f, var_0.a.x))))));
    let var_3 = var_0.c.wy;
    let var_4 = select(u_input.a.xxy, var_0.b.e, !select(!(!vec3<bool>(var_0.b.d, false, var_0.b.d)), vec3<bool>(true, true, var_2.b.d), !vec3<bool>(var_0.b.d, var_2.b.d, var_2.b.d)));
    let var_5 = !(!vec4<bool>(false, var_0.b.d, false, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, firstLeadingBit(var_2.b.e), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 25810u), 13u)]), var_2.b.b, var_0.b.b, 31387u), _wgslsmith_mult_vec4_i32(max(vec4<i32>(func_6(-2147483647i, true, vec2<f32>(1197f, -414f), vec3<u32>(4294967295u, 1u, 58253u)).b.e.x, var_4.x << (28119u % 32u), _wgslsmith_add_i32(3652i, var_4.x), var_0.b.e.x >> (98846u % 32u)), u_input.a), vec4<i32>(firstTrailingBit(28223i), global0.x, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.e.x, -2323i), vec2<i32>(2147483647i, var_2.b.e.x)))));
}

