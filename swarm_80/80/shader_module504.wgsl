struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> bool {
    var var_0 = Struct_1(-49712i, all(vec3<bool>(any(vec2<bool>(true, false)), false, reverseBits(arg_1.x) > u_input.b.x)));
    var_0 = Struct_1(~(~(-2147483647i)), !(!(-47703i >= u_input.b.x)));
    var var_1 = var_0.b;
    var_1 = false;
    var_0 = Struct_1(firstTrailingBit(~u_input.b.x >> (1u % 32u)), !var_0.b);
    return var_0.b;
}

fn func_2() -> vec4<u32> {
    var var_0 = abs(u_input.b);
    var var_1 = -211f;
    var var_2 = _wgslsmith_f_op_f32(-1354f + _wgslsmith_f_op_f32(round(-157f)));
    var_0 = vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(countOneBits(_wgslsmith_add_i32(-8822i >> (u_input.a % 32u), _wgslsmith_div_i32(54404i, var_0.x))), var_0.x), var_0.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(16838i, u_input.b.x, -26119i, -2147483647i) << (vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(0i, -1i, var_0.x), 1i, reverseBits(u_input.b.x), -1i)), -2147483647i));
    var_0 = select(u_input.b, -u_input.b, !vec4<bool>(!all(vec2<bool>(false, false)), true, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1308f, -132f, -157f)), vec4<i32>(14362i, u_input.b.x, var_0.x, 0i), ~vec3<u32>(0u, 4294967295u, 34984u)), true));
    return min(firstTrailingBit(vec4<u32>(firstLeadingBit(reverseBits(1u)), select(u_input.a, countOneBits(4294967295u), true), _wgslsmith_clamp_u32(_wgslsmith_add_u32(108469u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(67722u, u_input.a, 38158u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), 1u), ~u_input.a & (u_input.a & u_input.a))), countOneBits(~countOneBits(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a) | vec4<u32>(u_input.a, u_input.a, u_input.a, 36679u))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a, 0u, 7533u)), ~countOneBits(vec4<u32>(10860u, 0u, 0u, u_input.a))), (u_input.a << ((u_input.a | 4294967295u) % 32u)) | ~u_input.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a), 1u, _wgslsmith_sub_u32(76715u, 24459u), countOneBits(u_input.a)), ~func_2()));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1009f), -650f));
    let var_2 = vec3<u32>(18311u, (var_0.x << (countOneBits(~4294967295u) % 32u)) | ~u_input.a, var_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1156f, 511f, 1000f, 1000f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, -1881f, _wgslsmith_f_op_f32(154f - -885f), 2222f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, 338f, -711f, 524f)), _wgslsmith_div_vec4_f32(vec4<f32>(-572f, 177f, -651f, -394f), vec4<f32>(939f, 847f, -1307f, -921f))), vec4<f32>(-1000f, 1f, 1f, _wgslsmith_f_op_f32(step(690f, 804f))), !select(vec4<bool>(true, false, arg_2.a, true), vec4<bool>(false, false, true, true), false))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x), _wgslsmith_f_op_f32(-var_3.x))));
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = vec2<u32>(27904u, 4294967295u);
    let var_1 = arg_1.ywz;
    let var_2 = min(~vec2<u32>(_wgslsmith_mod_u32(u_input.a, var_0.x), ~u_input.a), vec2<u32>(abs(~85478u), (59413u | u_input.a) >> (~4294967295u % 32u))) & ~reverseBits((var_0 ^ var_0) & abs(vec2<u32>(u_input.a, 32416u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-arg_1.xxy);
    var_3 = var_1;
    return func_1(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36506i, 1i, u_input.b.x), u_input.b.zzx), -2147483647i, (-12135i ^ u_input.b.x) ^ _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.b.x | u_input.b.x, select(u_input.b.x, u_input.b.x, arg_0.a), u_input.b.x)), u_input.b.xzx | (u_input.b.zyy >> (vec3<u32>(var_2.x, 44937u, u_input.a) % vec3<u32>(32u)))), func_1(_wgslsmith_div_vec3_i32(-u_input.b.wwz, -_wgslsmith_div_vec3_i32(vec3<i32>(0i, -14180i, 38849i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec3<i32>(countOneBits(_wgslsmith_div_i32(8415i, u_input.b.x)), 58825i, ~u_input.b.x), func_1((vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x) & vec3<i32>(2147483647i, 45266i, u_input.b.x)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-14090i, u_input.b.x, 8599i), vec3<i32>(-22154i, u_input.b.x, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(22293i, u_input.b.x, u_input.b.x), vec3<i32>(0i, 1i, -1i)), ~14278i, 0i), Struct_2(func_3(vec3<f32>(var_1.x, 1000f, var_3.x), u_input.b, vec3<u32>(0u, 33634u, var_2.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 1686f, -2058f, arg_2) * vec4<f32>(arg_2, _wgslsmith_f_op_f32(-124f - -1366f), _wgslsmith_f_op_f32(472f * arg_2), -125f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(arg_2 + arg_2), 662f)))));
    var var_2 = func_4(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1))))));
    let var_3 = u_input.b.zxw;
    var var_4 = Struct_1(min(_wgslsmith_div_i32(1i, ~51501i), _wgslsmith_mult_i32(-24813i, u_input.b.x)), false);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, max(_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a), u_input.a | u_input.a)), ~(~(~(~vec3<u32>(u_input.a, 1u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, 41710u, u_input.a)), abs(~4294967295u)), func_5(func_4(func_1(vec3<i32>(u_input.b.x, u_input.b.x, -1i), firstTrailingBit(vec3<i32>(46507i, u_input.b.x, u_input.b.x)), Struct_2(true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(_wgslsmith_sub_i32(1i, -33322i) << (1u % 32u), any(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), 2089f, Struct_2(!select(true, true, true))), _wgslsmith_sub_vec2_u32(~select(firstLeadingBit(vec2<u32>(94344u, u_input.a)), vec2<u32>(u_input.a, u_input.a), any(vec3<bool>(false, false, true))), firstTrailingBit(~vec2<u32>(28337u, u_input.a)) | (min(vec2<u32>(u_input.a, 60263u), vec2<u32>(4294967295u, 29364u)) >> ((vec2<u32>(0u, u_input.a) >> (vec2<u32>(u_input.a, 58881u) % vec2<u32>(32u))) % vec2<u32>(32u)))));
}

