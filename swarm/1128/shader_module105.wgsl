struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(217f, vec4<i32>(0i, -65839i, 16718i, -23774i), -990f);

var<private> global1: vec3<f32> = vec3<f32>(-314f, -1106f, 806f);

var<private> global2: Struct_1;

var<private> global3: i32 = 1387i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_1(global1.x, global0.b, _wgslsmith_f_op_f32(-508f - _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global1.x))));
    var var_0 = vec3<i32>(-22720i, ~(-10559i), firstTrailingBit(2147483647i ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, global2.b.x, u_input.b.x), ~vec3<i32>(-17425i, 1i, u_input.b.x))));
    var_0 = vec3<i32>(u_input.b.x, global2.b.x & _wgslsmith_dot_vec3_i32(reverseBits(u_input.b.yxx), ~firstTrailingBit(vec3<i32>(global2.b.x, 6627i, 13800i))), _wgslsmith_sub_i32(47737i, 31370i));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1012f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1282f)))))), -184f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.a, -226f) * vec3<f32>(912f, -3373f, global0.c)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.c, 840f)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(811f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -218f), _wgslsmith_f_op_f32(-var_1.x));
    return ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 4294967295u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(arg_0.x < 50691u, true), false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), -807f < global0.a)), select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(73329u, 30772u, ~u_input.a), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(1u, u_input.a, arg_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(11621u, 0u, u_input.a), vec3<u32>(13101u, 21566u, 35916u)) ^ countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(select(arg_0.x, u_input.a, false), _wgslsmith_mod_u32(52198u, arg_0.x), _wgslsmith_sub_u32(0u, arg_0.x)), vec3<u32>(max(1u, ~1u), 0u, u_input.a)), arg_0.x);
    return _wgslsmith_f_op_f32(ceil(1713f));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.c, arg_0.c), 1f)) - global0.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + -1284f))), -arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2133f)))))));
    global3 = 1i;
    var var_1 = global2.b.x;
    var var_2 = Struct_1(_wgslsmith_div_f32(-2937f, -297f), -_wgslsmith_mod_vec4_i32(-(~arg_0.b), u_input.b), _wgslsmith_f_op_f32(func_4(~func_3(), 2147483647i, arg_0)));
    let var_3 = Struct_1(1000f, -_wgslsmith_clamp_vec4_i32(u_input.b, firstLeadingBit(~vec4<i32>(2147483647i, 9671i, var_2.b.x, var_0.b.x)), ~select(vec4<i32>(global0.b.x, 0i, global0.b.x, global2.b.x), global2.b, true)), -1998f);
    return -countOneBits(vec2<i32>(min(reverseBits(1i), var_0.b.x >> (u_input.a % 32u)), _wgslsmith_sub_i32(6356i, global0.b.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    global3 = _wgslsmith_sub_i32(reverseBits(firstLeadingBit(-59352i)), arg_1.b.x);
    let var_0 = arg_2.xz;
    let var_1 = ~firstTrailingBit(func_2(arg_1)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, min(15435u, ~arg_0)), firstTrailingBit(vec2<u32>(4294967295u & arg_0, 1u))) % vec2<u32>(32u));
    global2 = arg_1;
    let var_2 = 4294967295u;
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(~4294967295u, 4294967295u), 4294967295u), _wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, u_input.a, 1u), 33992u)) ^ ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(var_2), ~arg_0, func_3().x), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2.b.x;
    var var_0 = select(global2.b.zx, -global2.b.yx, vec2<bool>(true, true)) & (global0.b.zy >> (vec2<u32>(~(~11553u), u_input.a) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_div_u32(~func_1(u_input.a, Struct_1(-1473f, ~vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -1i), global0.a), u_input.b.wwz | ~vec3<i32>(1i, 0i, global2.b.x)), firstLeadingBit(reverseBits(_wgslsmith_mult_u32(1u, ~u_input.a))));
    var_1 = 1u;
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global0.a, global1.x), vec3<f32>(global1.x, -340f, 253f)) - vec3<f32>(global2.c, -1746f, 409f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(global0.a, -900f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x)))), global2.a, _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(min(global1.x, global0.a)))), all(!vec4<bool>(any(vec3<bool>(false, false, true)), false, true, true))));
    var var_2 = Struct_1(492f, vec4<i32>(var_0.x, -40707i, u_input.b.x, var_0.x << (58455u % 32u)), _wgslsmith_f_op_f32(-global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_div_u32(1u, ~(~abs(1u))), vec3<u32>(~_wgslsmith_add_u32(reverseBits(6676u), 0u), u_input.a, func_3().x));
}

