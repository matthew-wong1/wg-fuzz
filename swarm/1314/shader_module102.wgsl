struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_2(abs(arg_0));
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -21307i), -min(vec2<i32>(6338i, 10333i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, 0i), vec2<i32>(-7281i, 1i)))), vec2<i32>(-25215i, ~(-u_input.a)) << ((abs(_wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.yy)) >> (vec2<u32>(1u, 20164u) % vec2<u32>(32u))) % vec2<u32>(32u)), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 30444i), vec2<i32>(var_0.a, 0i), vec2<i32>(u_input.a, 1i)) >> (firstTrailingBit(vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u))) | (max(-vec2<i32>(arg_0, u_input.a), vec2<i32>(-1i, arg_0)) >> (vec2<u32>(~u_input.b.x, 32798u) % vec2<u32>(32u))));
    var_1 = ~(~vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.a, arg_0), vec2<i32>(-16840i, -1i) >> (u_input.b.zy % vec2<u32>(32u))), var_1.x));
    var var_2 = countOneBits(~(-_wgslsmith_div_i32(2147483647i | var_1.x, arg_0)));
    let var_3 = 4294967295u;
    return ~_wgslsmith_sub_i32(70196i, ~(~(~u_input.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(3454i);
    var_0 = -_wgslsmith_clamp_i32(u_input.a, 2147483647i, func_3(1i));
    var_0 = u_input.a ^ u_input.a;
    var var_1 = true;
    let var_2 = 49671u;
    return Struct_1((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-161f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f * 1924f) + _wgslsmith_f_op_f32(-402f - 348f))) | (true & all(vec4<bool>(false, false, false, false))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1450f, _wgslsmith_f_op_f32(round(-872f)))), select(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(any(vec4<bool>(true, true, true, true)), !(-28894i == u_input.a), true, any(vec4<bool>(true, true, true, false))), false), vec4<f32>(-846f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f))), -1000f, _wgslsmith_f_op_f32(step(1334f, 1f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a, _wgslsmith_mult_i32(2147483647i & u_input.a, u_input.a)), u_input.a));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~11475u, ~(~1u), ~(~(u_input.b.x << (43127u % 32u))), u_input.b.x);
    let var_1 = -382f;
    let var_2 = 4294967295u;
    var var_3 = Struct_1(false, !(~(~11287i) >= -u_input.a), var_1, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), var_2 >= 1u), all(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, func_1(u_input.b, Struct_1(true, false, -1000f, vec4<bool>(false, true, true, true), vec4<f32>(var_1, var_1, var_1, var_1))), false, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 2038f)))))));
    var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.wxz, u_input.b >> (~vec3<u32>(var_0.x, 0u, u_input.b.x) % vec3<u32>(32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2, 19687u, 0u), firstLeadingBit(vec4<u32>(0u, u_input.b.x, var_0.x, 66473u))), reverseBits(firstTrailingBit(vec4<u32>(u_input.b.x, 37822u, var_0.x, var_2))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, ~var_0.wzx), u_input.b.x), ~108654u, firstTrailingBit(countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, var_0.x, 1u), vec4<u32>(29456u, var_0.x, u_input.b.x, var_0.x)))));
    var var_4 = select(0i, u_input.a, !(var_3.e.x >= -401f));
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_dot_vec4_i32(vec4<i32>(-16309i, u_input.a, u_input.a, -2147483647i), vec4<i32>(0i, -22724i, u_input.a, u_input.a)) | -39688i) >> ((max(u_input.b.x, var_2) ^ 33836u) % 32u)) >> (_wgslsmith_mult_u32(u_input.b.x, select(var_2, min(var_0.x, 0u), any(vec2<bool>(var_3.a, var_3.d.x)))) % 32u), max(firstTrailingBit(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)), countOneBits(vec3<i32>(-16303i, u_input.a, u_input.a)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(15454i, 2147483647i, u_input.a) | vec3<i32>(u_input.a, u_input.a, 90831i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, 32915i), vec3<i32>(u_input.a, u_input.a, u_input.a)), select(vec3<i32>(u_input.a, u_input.a, -31507i), vec3<i32>(-24597i, u_input.a, 2147483647i), vec3<bool>(false, var_3.a, false))), -vec3<i32>(-1i, -24885i, u_input.a), vec3<i32>(u_input.a, -u_input.a, ~(-1i)))), ~vec4<u32>(~u_input.b.x, ~var_2, _wgslsmith_add_u32(16959u, var_0.x), ~2403u) << (firstLeadingBit((vec4<u32>(4294967295u, 1u, 49508u, 48820u) | vec4<u32>(1822u, 4294967295u, var_0.x, 23893u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(70150u, u_input.b.x, var_0.x, 0u), vec4<u32>(14851u, 23106u, u_input.b.x, 1u))) % vec4<u32>(32u)), var_3.e.zwy, 0i << (_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(u_input.b.x, 1u, 81973u)), vec3<u32>(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2, u_input.b.x), var_0.wz), 1u)) % 32u));
}

