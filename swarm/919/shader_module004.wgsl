struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<u32> = vec4<u32>(0u, 4294967295u, 31829u, 30942u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    global1 = vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(58502u, 11074u, global1.x), u_input.e, true), u_input.a.wwx)), ~select(4486u, _wgslsmith_sub_u32(30610u, u_input.c.x) | 4294967295u, any(vec4<bool>(false, false, true, true))), _wgslsmith_add_u32(global1.x, 1u), ~38699u);
    let var_0 = Struct_2(Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))), true));
    var var_1 = select(var_0.a.a.yx, !select(!vec2<bool>(var_0.a.a.x, false), select(!var_0.a.a.yx, var_0.a.a.xx, select(vec2<bool>(var_0.a.b, false), var_0.a.a.yy, var_0.a.a.xy)), select(var_0.a.a.yx, select(vec2<bool>(var_0.a.b, true), var_0.a.a.zx, false), vec2<bool>(true, true))), var_0.a.a.xy);
    global0 = ~(~(-min(select(vec4<i32>(2147483647i, 10600i, 2147483647i, global0.x), vec4<i32>(u_input.d.x, -41808i, 1i, -2147483647i), vec4<bool>(var_1.x, false, var_1.x, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, -2147483647i, global0.x, global0.x), vec4<i32>(u_input.d.x, global0.x, 27987i, 2147483647i)))));
    let var_2 = ~(~_wgslsmith_sub_u32(firstTrailingBit(45726u), 53679u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1573f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1314f + -445f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-998f, 1694f), _wgslsmith_f_op_f32(ceil(-1348f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-160f * -279f) * _wgslsmith_f_op_f32(round(945f))), !(false || var_0.a.a.x))))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = u_input.d.x;
    let var_1 = arg_0;
    var var_2 = vec4<bool>(false || arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f + arg_0)), !(_wgslsmith_f_op_f32(func_3()) <= 700f), false);
    let var_3 = ~(-global0.x);
    var var_4 = arg_1;
    return !(!vec2<bool>(!all(vec4<bool>(var_4.b, var_4.a.x, var_2.x, var_2.x)), arg_1.a.x));
}

fn func_1() -> Struct_1 {
    global0 = select(~vec4<i32>(u_input.d.x, countOneBits(u_input.d.x), -1i, -24246i), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(38361i, -51871i, 1i, u_input.d.x), vec4<i32>(5308i << (1u % 32u), u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-71613i, 48565i, u_input.d.x), vec3<i32>(1i, -6299i, 0i))), _wgslsmith_add_vec4_i32(~vec4<i32>(55094i, u_input.d.x, 0i, -21134i), -vec4<i32>(u_input.d.x, u_input.d.x, global0.x, 1i))), -vec4<i32>(_wgslsmith_div_i32(-3862i, 2147483647i), -u_input.d.x, 0i, u_input.d.x), false), all(select(vec2<bool>(true, select(false, true, true)), func_2(_wgslsmith_f_op_f32(sign(1083f)), Struct_1(vec3<bool>(true, false, true), true)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -647f), Struct_1(vec3<bool>(false, true, true), false)))));
    var var_0 = global0.wxy;
    var_0 = select(_wgslsmith_div_vec3_i32(-(vec3<i32>(var_0.x, 1i, u_input.d.x) & global0.xxx) >> (~(~global1.zwx) % vec3<u32>(32u)), abs(max(global0.wzx, vec3<i32>(1i, -1i, 30046i)))), ~(-global0.yxx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(317f))));
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, ~(-1i), -1i, reverseBits(-23677i)), vec4<i32>(_wgslsmith_add_i32(u_input.d.x ^ -1i, var_0.x), select(0i, global0.x, any(vec3<bool>(true, true, true))), 1i, 2147483647i)), abs(_wgslsmith_clamp_vec4_i32(reverseBits(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(19731i, global0.x, 34880i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(61992i, 22880i, 35036i, global0.x), vec4<i32>(global0.x, var_0.x, -54697i, 4487i))), vec4<i32>(-u_input.d.x, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-49852i, -2147483647i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, -12847i, 0i, 1i)), firstTrailingBit(-4948i)))));
    var_0 = abs(max(vec3<i32>(global0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(17250i, 18233i, var_0.x), vec3<i32>(global0.x, -42696i, global0.x)), global0.xxx), -12127i), vec3<i32>(_wgslsmith_clamp_i32(-global0.x, 1i, ~28688i), min(u_input.d.x | var_0.x, u_input.d.x), _wgslsmith_mult_i32(global0.x >> (0u % 32u), -1i))));
    return Struct_1(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), true);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_mult_u32(38807u, 58196u);
    var var_1 = abs(abs(global0.xx));
    global0 = abs(vec4<i32>(var_1.x, _wgslsmith_div_i32(-(~global0.x), -global0.x), u_input.d.x, ~global0.x));
    var var_2 = global1.xyw;
    let var_3 = var_0;
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec4<i32>(global0.x, global0.x | -1i, countOneBits(~global0.x), 2147483647i) ^ vec4<i32>(global0.x << (4294967295u % 32u), func_4(true, _wgslsmith_f_op_f32(step(-477f, 427f)), func_1()), u_input.d.x, 7625i), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.d.x, 14779i), vec4<i32>(42322i, -2147483647i, global0.x, 25099i), vec4<i32>(-2097i, 0i, u_input.d.x, 28199i)) | ~vec4<i32>(u_input.d.x, 2147483647i, global0.x, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-37496i, -3342i, 2147483647i, -2147483647i) | vec4<i32>(global0.x, u_input.d.x, -2147483647i, 18949i), vec4<i32>(u_input.d.x, u_input.d.x, global0.x, -20632i) | vec4<i32>(-2147483647i, -37226i, u_input.d.x, -35753i), vec4<i32>(2147483647i, global0.x, -12951i, 0i))), -(~func_4(false, 597f, Struct_1(vec3<bool>(false, true, true), false))), -_wgslsmith_dot_vec3_i32(firstLeadingBit(global0.xxw), global0.yyw), 1i), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global0.x == 0i), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), false), true), !func_2(2127f, Struct_1(vec3<bool>(true, false, true), true)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, min(_wgslsmith_clamp_i32(1i, reverseBits(u_input.d.x), min(u_input.d.x, -2147483647i)), -1i), -(~_wgslsmith_mod_i32(u_input.d.x, global0.x))));
}

