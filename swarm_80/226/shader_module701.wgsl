struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<f32, 12> = array<f32, 12>(-826f, -310f, 1186f, -1007f, 131f, 294f, -1122f, -674f, -221f, -311f, -1697f, -109f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    let var_0 = !select(vec2<bool>((58668u > u_input.a.x) != arg_2, arg_2), arg_0.a.yz, false);
    let var_1 = arg_0;
    let var_2 = Struct_1(var_1.a, vec4<f32>(_wgslsmith_div_f32(-1160f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.x + 936f), global0.x, select(var_0.x, false, false)))), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1425f)), -2340f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) * var_1.b.x)));
    var var_3 = u_input.d.wwy;
    var_3 = u_input.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(20146u, 12u)] - 1197f)))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> vec4<f32> {
    let var_0 = Struct_1(vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), true, !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(859f, _wgslsmith_f_op_f32(ceil(arg_1)), arg_1, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, false, true), vec4<f32>(global1[_wgslsmith_index_u32(72806u, 12u)], global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -896f, global0.x)), vec2<f32>(global0.x, 705f), true))))));
    global1 = array<f32, 12>();
    var var_1 = Struct_1(!(!vec3<bool>(!var_0.a.x, true, !var_0.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - -1188f), global0.x, _wgslsmith_f_op_f32(-var_0.b.x), -1000f), vec4<f32>(_wgslsmith_f_op_f32(trunc(-774f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(361f)) - _wgslsmith_div_f32(global0.x, var_0.b.x)), _wgslsmith_f_op_f32(select(arg_1, -709f, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, global0.x))))));
    var var_2 = vec2<bool>(true, var_0.a.x);
    var_2 = !select(vec2<bool>(false, ~41086u != (u_input.a.x << (u_input.d.x % 32u))), vec2<bool>(false, var_1.a.x), true);
    return vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, ~countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b))), 12u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1064f)) + _wgslsmith_f_op_f32(global0.x - var_1.b.x)))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-830f, global1[_wgslsmith_index_u32(firstLeadingBit(34086u), 12u)], true)))), -1281f, 737f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<f32, 12>();
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(sign(arg_0.b.x)), -793f, -846f))), _wgslsmith_f_op_vec4_f32(func_2(-2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f))))));
    var var_0 = _wgslsmith_mult_vec2_i32(u_input.c.zx, _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, 47586i), -u_input.c.yx, vec2<i32>(u_input.c.x, u_input.c.x << (1u % 32u))));
    var var_1 = Struct_1(!vec3<bool>(select(arg_3 || true, any(arg_2.a), arg_2.a.x), (u_input.c.x & 0i) > ~u_input.e.x, min(u_input.b, 2968u) >= _wgslsmith_sub_u32(u_input.a.x, 15838u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f + arg_2.b.x) * _wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(454f, arg_0.b.x)), -320f, arg_1.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~22434u, 12u)] - _wgslsmith_f_op_f32(func_3(arg_0, vec2<f32>(-1081f, -815f), var_1.a.x))) + 1166f)) - 852f);
    return -_wgslsmith_add_i32(u_input.e.x, _wgslsmith_div_i32(36650i ^ reverseBits(var_0.x), -(~(-26523i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    global0 = vec4<f32>(-388f, -521f, -935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1835f, global1[_wgslsmith_index_u32(8836u, 12u)], false)) * -407f)))));
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u | u_input.b, 12u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 410f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 964f, arg_2.x == true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(586f, global1[_wgslsmith_index_u32(31019u, 12u)])) * _wgslsmith_f_op_f32(f32(-1f) * -505f)))), _wgslsmith_f_op_f32(f32(-1f) * -678f));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(-37896i, global0.x)).x;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(func_3(Struct_1(arg_2, arg_1.b), _wgslsmith_f_op_vec4_f32(func_2(arg_0.x, var_1.b.x)).xw, var_1.a.x)))), global1[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    return ~vec3<u32>(u_input.d.x, u_input.a.x, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(func_4(-vec4<i32>(1i, min(u_input.c.x, 1i), func_1(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-596f, global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(6404u, 12u)], global0.x)), global0.yy, Struct_1(vec3<bool>(true, true, true), vec4<f32>(global0.x, -1300f, 890f, global0.x)), false), u_input.c.x), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 222f, -1290f, 1553f) * vec4<f32>(1297f, global1[_wgslsmith_index_u32(48699u, 12u)], 934f, 1877f)))), vec3<bool>(false, false, false)), ~func_4(vec4<i32>(countOneBits(-1i), -2147483647i, -u_input.e.x, -42025i), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)], global0.x, -1183f) + vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 12u)], global1[_wgslsmith_index_u32(25367u, 12u)], -414f, global1[_wgslsmith_index_u32(u_input.d.x, 12u)]))), vec3<bool>(true, true, true)));
    let var_1 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(-60136i, -(~26310i)), _wgslsmith_add_vec2_i32(vec2<i32>(select(u_input.e.x, u_input.c.x, false), ~1i), _wgslsmith_mod_vec2_i32(u_input.e.xz, min(u_input.c.yz, u_input.e.yy))));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(select(u_input.c, vec3<i32>(-2147483647i, var_1.x, -54144i), true)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, var_1.x, u_input.c.x, -16581i), vec4<i32>(-1i, -1i, 10800i, -27527i)), 1i, firstLeadingBit(17591i))), _wgslsmith_dot_vec2_i32(~u_input.c.yz << (~u_input.a.xx % vec2<u32>(32u)), var_1 << (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), ~0i), vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, select(var_1.x, u_input.c.x, all(vec3<bool>(false, true, false)))), -_wgslsmith_mult_i32(6944i, -12671i) ^ min(_wgslsmith_clamp_i32(u_input.e.x, 19648i, 1i), abs(-14560i)), var_1.x));
    let var_3 = Struct_1(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(196f, global0.x, global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(67705u, 12u)])), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2141f, global0.x, -1058f, -1000f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 12u)], 588f, global1[_wgslsmith_index_u32(var_0.x, 12u)], 1887f), vec4<bool>(false, false, true, false))))))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, true, false), vec4<f32>(global0.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global1[_wgslsmith_index_u32(19679u, 12u)]) * global0.yy), select(false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global1[_wgslsmith_index_u32(30225u, 12u)])), 105f), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), false))));
    var var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec4<u32>(~u_input.d.x, u_input.d.x, u_input.d.x << (0u % 32u), var_0.x), max(vec4<u32>(u_input.d.x, 10454u, u_input.d.x, 0u), vec4<u32>(1u, 4294967295u, var_0.x, u_input.a.x)) ^ select(vec4<u32>(var_0.x, 4294967295u, var_0.x, u_input.b) | vec4<u32>(15768u, var_0.x, u_input.b, u_input.b), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(12756u, 43970u, u_input.d.x, 4294967295u)), var_3.a.x)), vec2<u32>(var_0.x, _wgslsmith_div_u32(u_input.a.x, func_4(-vec4<i32>(-1i, -46336i, -43849i, 6761i), var_3, var_3.a).x)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-7479i, var_2.x, reverseBits(u_input.c.x)), ~(u_input.c | vec3<i32>(var_1.x, 0i, 67637i))), min(min(_wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(1i, u_input.c.x, 1i)), u_input.e), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e, u_input.c), vec3<i32>(var_1.x, var_2.x, 62003i) >> (vec3<u32>(var_0.x, 0u, u_input.a.x) % vec3<u32>(32u)))), reverseBits(~_wgslsmith_add_vec3_i32(vec3<i32>(-85282i, -5287i, 2147483647i), vec3<i32>(u_input.c.x, var_2.x, var_2.x)))), var_3.b);
}

