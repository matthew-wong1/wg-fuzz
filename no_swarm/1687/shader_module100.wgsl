struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: vec3<f32>;

var<private> global3: vec2<i32> = vec2<i32>(-50724i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global1 = global3.x >> (u_input.a % 32u);
    let var_0 = Struct_1(global0.a, min(1u, ~u_input.a), vec3<bool>(global0.c.x, !(global3.x <= ~global3.x), (_wgslsmith_clamp_i32(global3.x, u_input.b.x, -2147483647i) ^ firstLeadingBit(global3.x)) <= ~u_input.b.x), 1532f);
    var var_1 = var_0;
    var var_2 = var_0;
    var var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(-1127f, -1468f, var_1.a.x, 419f)), var_2.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1347f, global0.d, _wgslsmith_div_f32(arg_0, var_3.d), _wgslsmith_f_op_f32(var_3.a.x + -118f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 359f, 175f)) + vec4<f32>(arg_0, 1704f, global2.x, 1010f)), vec4<bool>(true, u_input.a != var_0.b, true, any(vec2<bool>(false, var_3.c.x)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1357f, var_3.d, _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.d))))))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: f32) -> vec3<bool> {
    let var_0 = -1587f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(679f * arg_0), global2.x, -1458f, -1624f) - _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(arg_2 + 1068f))))), countOneBits(~global0.b & 58084u) << (_wgslsmith_clamp_u32(select(global0.b, global0.b, true), _wgslsmith_add_u32(global0.b, 34837u) ^ _wgslsmith_mod_u32(4294967295u, 14963u), 31248u >> (reverseBits(u_input.a) % 32u)) % 32u), vec3<bool>(!global0.c.x, global0.c.x, false), arg_2);
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -1531f, 491f, arg_2)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.a))))), ~4294967295u, global0.c, -2044f);
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.b, 1410u), 0u);
    let var_4 = ((vec2<i32>(_wgslsmith_div_i32(arg_1, arg_1), 0i & arg_1) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(10799i, -2147483647i, -1i)), -28835i)) | u_input.b.zw) & select(vec2<i32>(-8230i, u_input.b.x & -1i), -(~vec2<i32>(-2147483647i, u_input.b.x)), select(select(!global0.c.xx, !global0.c.yz, var_1.c.xx), select(vec2<bool>(true, true), vec2<bool>(var_2.c.x, global0.c.x), false), false));
    return select(select(var_1.c, var_1.c, var_2.c.x), vec3<bool>(false, any(!select(vec2<bool>(global0.c.x, false), vec2<bool>(true, var_1.c.x), global0.c.yy)), var_2.c.x), !var_2.c);
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(global0.a, ~0u ^ (~abs(1136u) & _wgslsmith_mult_u32(abs(u_input.a), 1u)), func_2(global2.x, 23135i, _wgslsmith_f_op_f32(1334f - -1312f), -1151f), _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(step(1868f, _wgslsmith_div_f32(global2.x, -644f)))));
    global1 = firstTrailingBit(global3.x);
    var var_1 = _wgslsmith_add_vec4_i32(-abs(countOneBits(u_input.b)), -firstTrailingBit(u_input.b & ~vec4<i32>(global3.x, -2147483647i, 44295i, -16150i)));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-147f, -293f, var_0.a.x) - _wgslsmith_f_op_vec3_f32(-var_0.a.wxx))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2017f) + _wgslsmith_f_op_f32(trunc(-1116f))), 1001f, _wgslsmith_f_op_f32(f32(-1f) * -1120f)))), _wgslsmith_f_op_vec3_f32(select(global0.a.yzw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.wxz + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, var_0.d, -549f) * var_0.a.ywx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, global0.d, 1000f) + _wgslsmith_f_op_vec3_f32(-global0.a.yxw))), vec3<bool>(all(select(var_0.c, var_0.c, false)), var_0.c.x, !var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    global3 = vec2<i32>(u_input.b.x, abs(~abs(-1i))) & u_input.b.yw;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, global2.x, _wgslsmith_f_op_f32(1464f - global2.x), global0.a.x))), u_input.a, !vec3<bool>(!any(vec4<bool>(true, true, true, global0.c.x)), global0.c.x, true), 686f);
    var var_1 = Struct_1(global0.a, 0u, vec3<bool>(global0.c.x, any(select(!vec4<bool>(global0.c.x, true, true, global0.c.x), vec4<bool>(global0.c.x, true, false, global0.c.x), global0.c.x)), global0.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))));
    let var_2 = global2.xx;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec4_f32(ceil(global0.a))), var_1.a)), _wgslsmith_dot_vec2_u32(select(~min(vec2<u32>(4175u, u_input.a), vec2<u32>(var_1.b, var_1.b)), vec2<u32>(global0.b, 24463u), select(!vec2<bool>(var_1.c.x, global0.c.x), func_2(var_1.d, 0i, var_2.x, global2.x).yz, select(global0.c.yx, vec2<bool>(var_1.c.x, var_1.c.x), var_1.c.x))), ((vec2<u32>(global0.b, var_1.b) & vec2<u32>(u_input.a, 4294967295u)) | vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(global0.b, ~1u) % vec2<u32>(32u))), !select(!select(vec3<bool>(true, true, global0.c.x), var_1.c, vec3<bool>(global0.c.x, var_1.c.x, global0.c.x)), var_1.c, select(!var_1.c, vec3<bool>(false, global0.c.x, false), -266f > var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x + global2.x));
    var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-374f, global2.x, var_3.d, -1374f) - global0.a), vec4<f32>(-380f, -2098f, 686f, var_0.x)))), var_1.a), ~select(18161u, global0.b, all(vec4<bool>(var_3.c.x, var_3.c.x, var_3.c.x, var_3.c.x))), !var_3.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.a.yyy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_3.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1899f, 192f, 1123f, 1000f) * var_3.a))));
}

