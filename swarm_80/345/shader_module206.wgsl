struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = firstTrailingBit(arg_2.d.d) & _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_2.d.d & arg_2.d.d, ~0u), arg_1.d.d);
    var var_1 = firstTrailingBit(vec4<i32>(1i, arg_1.c.x | (i32(-1i) * -1i), 11610i, arg_0.a.x) << (~vec4<u32>(0u, _wgslsmith_add_u32(0u, arg_2.d.d), _wgslsmith_mult_u32(0u, 9585u), _wgslsmith_sub_u32(arg_0.d, 4294967295u)) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -417f), 661f)))));
    var_1 = vec4<i32>(6445i, -31192i, arg_2.d.b, -23935i);
    var_0 = countOneBits(~2505u);
    return 62659u;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -293f, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, arg_2.x, 1444f, arg_2.x))))));
    let var_1 = Struct_2(arg_1, arg_1.x, ~vec3<i32>(-2147483647i, select(_wgslsmith_mult_i32(-2147483647i, u_input.b), -2147483647i, true), arg_0.x), Struct_1(min(-abs(vec3<i32>(1i, arg_0.x, u_input.c)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.b, 2147483647i)), vec3<i32>(40654i, -24543i, -40160i), vec3<i32>(u_input.b, u_input.d.x, 4474i))), countOneBits(1i), select(select(vec4<bool>(false, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(true, false, arg_1.x, arg_1.x)), arg_1.x || false), select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, true, false), false), !vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, true, true, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), 1u), u_input.d);
    var var_2 = true || any(var_1.d.c);
    var_2 = false && !any(vec2<bool>(true, true));
    var var_3 = Struct_3(u_input.d, _wgslsmith_mult_u32(reverseBits(var_1.d.d), 19105u), countOneBits(~(-vec3<i32>(2147483647i, -26197i, 1i))), var_1.d);
    return 4294967295u;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> u32 {
    let var_0 = arg_2.d.c.x;
    var var_1 = arg_2.d;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(383f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1236f, _wgslsmith_f_op_f32(round(-735f)))))), 654f));
    var_1 = Struct_1(~(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.d.a.x, u_input.d.x, u_input.a), arg_2.c)), select(~_wgslsmith_sub_i32(-42091i, reverseBits(arg_1)), abs(arg_1), true), select(select(!vec4<bool>(var_1.c.x, var_1.c.x, true, arg_2.d.c.x), select(arg_2.d.c, select(var_1.c, vec4<bool>(var_0, false, var_0, true), false), var_1.c), select(select(var_1.c, vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(arg_2.d.c.x, true, arg_2.d.c.x, false)), vec4<bool>(false, false, false, true), arg_2.d.c)), vec4<bool>(any(var_1.c), true, false, true), select(vec4<bool>(true, arg_1 >= arg_2.c.x, !var_0, true), arg_2.d.c, true)), _wgslsmith_sub_u32(4294967295u, func_3(vec2<i32>(firstTrailingBit(u_input.d.x), -2147483647i), vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(686f, -1280f) * vec2<f32>(361f, 430f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2, 1675f)))))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(35448u, reverseBits(12981u), ~_wgslsmith_add_u32(~65891u, 1u)), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 24385u, 4294967295u), ~vec4<u32>(19417u, 46135u, 1u, 39505u)), func_1(Struct_1(vec3<i32>(-1i, -1i, -2147483647i), u_input.e, vec4<bool>(false, false, false, false), 6289u), Struct_2(vec3<bool>(true, true, false), true, vec3<i32>(u_input.d.x, u_input.b, -66346i), Struct_1(vec3<i32>(u_input.d.x, -8102i, u_input.c), 10100i, vec4<bool>(false, false, false, true), 1u), u_input.d), Struct_2(vec3<bool>(false, true, false), true, vec3<i32>(u_input.b, 7297i, u_input.c), Struct_1(vec3<i32>(-1i, -1i, -2147483647i), -31356i, vec4<bool>(false, true, false, false), 1u), vec2<i32>(-2147483647i, -1i))) & func_2(vec3<bool>(true, true, false), 49195i, Struct_3(vec2<i32>(4520i, -289i), 69389u, vec3<i32>(60901i, u_input.a, u_input.a), Struct_1(vec3<i32>(2102i, 2158i, -1i), u_input.b, vec4<bool>(false, false, true, true), 24369u)), vec2<u32>(18811u, 4294967295u)), 70294u));
    let var_1 = Struct_1(-(countOneBits(vec3<i32>(2147483647i, u_input.b, 6281i)) ^ ~vec3<i32>(-1i, 40820i, -2147483647i)) | max(firstTrailingBit(~vec3<i32>(-65248i, u_input.e, 1i)), min(firstLeadingBit(vec3<i32>(-1i, u_input.b, 29304i)), ~vec3<i32>(-10174i, -2147483647i, u_input.d.x))), -1i, select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), 4294967295u);
    let var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1992f - _wgslsmith_f_op_f32(f32(-1f) * -1525f)), 702f))));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1302f, _wgslsmith_f_op_f32(round(-882f)))))), vec2<f32>(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1559f * -953f))), !select(!var_2.xx, select(select(var_1.c.zz, vec2<bool>(var_2.x, true), false), vec2<bool>(var_1.c.x, var_1.c.x), !vec2<bool>(var_1.c.x, false)), any(var_1.c))));
    var var_5 = ~var_0.xx;
    var var_6 = -_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c) >> (~var_1.d % 32u), select(var_1.a.x, _wgslsmith_mod_i32(var_1.b, 4413i), true), u_input.d.x), _wgslsmith_sub_vec3_i32(vec3<i32>(reverseBits(11765i), countOneBits(-1i), ~u_input.e), _wgslsmith_sub_vec3_i32(var_1.a, _wgslsmith_div_vec3_i32(vec3<i32>(1i, u_input.d.x, var_1.b), vec3<i32>(u_input.d.x, -57589i, u_input.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f - _wgslsmith_f_op_f32(trunc(1849f))))), vec3<i32>(select(-2147483647i, 0i, select(true, true, var_1.c.x)) & ~(~24479i), u_input.e << (~(var_5.x >> (var_0.x % 32u)) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 27959i, var_1.b) >> (vec4<u32>(0u, var_5.x, 1u, var_5.x) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -2147483647i, -1i, u_input.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.x)) * -203f))));
}

