struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> Struct_2 {
    global0 = abs(abs(reverseBits(countOneBits(u_input.d.x))));
    global0 = 4294967295u;
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1494f - 1225f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(308f - 307f), -379f))), ~(~vec3<i32>(-1i, min(-2147483647i, u_input.a.x), u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-727f, 1710f) + vec2<f32>(258f, 1612f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1884f, _wgslsmith_f_op_f32(ceil(523f))))), -u_input.c);
    global0 = u_input.d.x;
    let var_1 = countOneBits(u_input.d.xzw);
    return Struct_2(var_0.a, 2147483647i);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    global0 = ~(~(~(~u_input.d.x)));
    var var_0 = ~vec4<i32>(1i, abs(-arg_1.d >> (u_input.d.x % 32u)), arg_2.x, _wgslsmith_clamp_i32(0i, arg_1.d, arg_1.b.x) << (u_input.d.x % 32u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, arg_0.x)))), arg_1.c.x);
    var var_2 = u_input.d.x & 1u;
    var_0 = arg_2;
    return firstTrailingBit(arg_2.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = 55725i;
    var var_1 = func_1();
    let var_2 = vec4<i32>(-23896i, -var_0, countOneBits(reverseBits(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(617f, 581f) * vec2<f32>(279f, 1754f)), Struct_1(arg_0.x, vec3<i32>(var_1.b, -47695i, 2147483647i), vec2<f32>(arg_1, 470f), var_0), vec4<i32>(var_0, -2147483647i, var_0, u_input.a.x), true))), ~var_1.b);
    let var_3 = -5433i;
    var var_4 = func_1();
    return Struct_4((i32(-1i) * -44911i) << (~u_input.d.x % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = Struct_2(all(!vec3<bool>(u_input.d.x >= u_input.d.x, arg_0.a, arg_0.a)), ~2147483647i);
    let var_1 = Struct_1(true, arg_3.yzy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1146f, -1000f) * vec2<f32>(1085f, 611f)), vec2<f32>(-1000f, 1000f), vec2<bool>(arg_2.a, false))))), -1i >> (max(u_input.d.x, 59483u ^ u_input.d.x) % 32u));
    var_0 = func_1();
    global0 = ~_wgslsmith_mod_u32(0u, ~59091u);
    var var_2 = firstLeadingBit(~arg_3.yw);
    return !select(vec2<bool>(true, true & var_1.a), vec2<bool>(arg_0.a, arg_0.a), _wgslsmith_add_u32(firstTrailingBit(u_input.d.x), 34758u) < u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(func_1(), func_2(vec2<bool>(false, false), -236f, false, vec4<f32>(-1474f, -1449f, 448f, 1434f)), Struct_2(true, u_input.b), vec4<i32>(u_input.c, -1i, -7361i, u_input.b))));
    let var_1 = Struct_3(Struct_1(func_4(Struct_2(true, u_input.b), func_2(!var_0, -489f, var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, 1651f, 469f, 788f))), Struct_2(any(vec3<bool>(false, true, var_0.x)), -1i), vec4<i32>(max(u_input.b, -1i), 0i, -u_input.b, func_2(var_0, -1015f, var_0.x, vec4<f32>(205f, 2120f, 685f, -1052f)).a)).x, (_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -16986i), vec3<i32>(u_input.c, u_input.b, u_input.a.x)) & ~vec3<i32>(1i, u_input.b, -11210i)) ^ vec3<i32>(i32(-1i) * -1i, u_input.a.x << (4294967295u % 32u), _wgslsmith_clamp_i32(1i, u_input.c, -2147483647i)), vec2<f32>(1f, 1f), func_2(select(!vec2<bool>(var_0.x, true), !vec2<bool>(var_0.x, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-764f - 1000f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, -133f, 2739f, -740f))).a), vec4<i32>(_wgslsmith_clamp_i32(-u_input.b, _wgslsmith_mod_i32(1i, u_input.b), 2147483647i) | u_input.a.x, countOneBits(u_input.a.x), -28412i, -u_input.a.x), Struct_2(var_0.x, _wgslsmith_mult_i32(~(~u_input.a.x), abs(~(-1i)))), -(~_wgslsmith_clamp_i32(~(-6375i), -u_input.b, u_input.b)));
    let var_2 = var_1;
    global0 = countOneBits(14834u);
    global0 = _wgslsmith_mult_u32(~(~(~33580u) >> (select(u_input.d.x, u_input.d.x, 215f != var_2.a.c.x) % 32u)), u_input.d.x);
    let var_3 = Struct_3(var_2.a, -vec4<i32>(-30364i, -1i, _wgslsmith_mult_i32(var_1.c.b, -1i), -2147483647i), func_1(), ~((1i ^ (var_2.a.d ^ 45737i)) >> (u_input.d.x % 32u)));
    global0 = ~firstTrailingBit(~61091u);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, ~u_input.d.x, _wgslsmith_div_u32(u_input.d.x, u_input.d.x) | ~0u, u_input.d.x), vec4<u32>(u_input.d.x, 48667u, u_input.d.x << (u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(reverseBits(u_input.d), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.d.x, u_input.d.x), u_input.d)) << ((_wgslsmith_dot_vec3_u32(u_input.d.zxw, vec3<u32>(u_input.d.x, 1u, u_input.d.x)) | (u_input.d.x >> (4294967295u % 32u))) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32(u_input.c, -(i32(-1i) * -1i), -abs(var_2.a.d)), ~func_3(_wgslsmith_f_op_vec2_f32(step(var_2.a.c, var_1.a.c)), Struct_1(false, vec3<i32>(var_3.a.d, 1172i, -2147483647i), var_3.a.c, -9209i), var_1.b, var_0.x), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_3.c.b, u_input.b, var_1.a.d)), select(_wgslsmith_clamp_vec3_i32(var_3.a.b, var_1.a.b, vec3<i32>(-1i, -22412i, u_input.b)), firstLeadingBit(var_1.b.zzw), vec3<bool>(true, true, var_1.c.a)))), i32(-1i) * -var_1.a.d, ~(u_input.d.x | (countOneBits(34040u) | u_input.d.x)));
}

