struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(abs(countOneBits(vec4<i32>(2147483647i, arg_0.a, -1i, arg_2.a))), vec4<i32>(0i, 6388i, arg_3.a, arg_3.a) >> (~vec4<u32>(4294967295u, u_input.c, 4294967295u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(0i, u_input.b ^ 36154i, ~13291i, ~(-1i))), abs(vec4<i32>(-global0.x, reverseBits(global0.x), max(_wgslsmith_div_i32(u_input.b, arg_2.a), 1i), -arg_3.a << (9457u % 32u))));
    let var_1 = -2070f;
    let var_2 = _wgslsmith_clamp_i32(arg_3.a, ~(-15734i), 0i);
    var var_3 = 1u;
    global1 = arg_2.c;
    return ~(~4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> i32 {
    global0 = ~(-(~(-vec2<i32>(u_input.b, global0.x))) | _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), max(vec2<i32>(-24456i, global0.x), vec2<i32>(u_input.b, u_input.b)), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, 43208i)) | (vec2<i32>(1i, u_input.b) | vec2<i32>(global0.x, global0.x))));
    let var_0 = Struct_2(u_input.a, _wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(~arg_0.x, arg_0.x, reverseBits(~arg_1.c.x), arg_1.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, ~26705u), vec3<u32>(~_wgslsmith_div_u32(arg_3, 25580u), _wgslsmith_div_u32(arg_1.b.x, u_input.c), ~_wgslsmith_clamp_u32(u_input.c, arg_0.x, arg_1.d))), 66661u);
    let var_1 = arg_3;
    global1 = func_3(Struct_1(~countOneBits(-2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, arg_2.x, false)))), 1i <= global0.x), false, Struct_1(~(~(-2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !any(vec2<bool>(false, true))), Struct_1(u_input.b, -230f, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))))) == _wgslsmith_add_u32(abs(arg_0.x), reverseBits(_wgslsmith_dot_vec2_u32(abs(arg_1.b.wz), ~arg_1.c.zy)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, -634f, 1406f) - vec3<f32>(1534f, 428f, -744f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-902f, arg_2.x, -840f), vec3<f32>(arg_2.x, -145f, 122f)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -114f), 1631f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(117f, -399f, -417f)))));
    return 38364i;
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> vec2<u32> {
    global1 = all(vec4<bool>(true, true, true, false)) || true;
    global1 = true;
    let var_0 = Struct_1(-u_input.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(sign(-460f)))), 736f)), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))));
    let var_1 = Struct_2(vec3<u32>(arg_1, arg_1, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(82036u, 0u, u_input.a.x), vec3<u32>(arg_1, u_input.c, 6278u)), ~vec3<u32>(arg_1, 1048u, 0u))) & u_input.a, select(abs(~(~vec4<u32>(0u, u_input.c, 4294967295u, arg_1))), vec4<u32>(_wgslsmith_div_u32(func_3(Struct_1(arg_0.x, 1156f, var_0.c), var_0.c, Struct_1(global0.x, -1829f, false), var_0), ~1164u), 48569u ^ _wgslsmith_sub_u32(0u, u_input.c), arg_1, arg_1), select(!(!vec4<bool>(var_0.c, var_0.c, true, var_0.c)), vec4<bool>(false, var_0.c, true, var_0.c), !vec4<bool>(true, var_0.c, var_0.c, true))), u_input.a, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1, min(arg_1, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, u_input.c), u_input.a))));
    global0 = -vec2<i32>(_wgslsmith_mult_i32(abs(~var_0.a), global0.x), u_input.b);
    return var_1.b.wx;
}

fn func_2(arg_0: vec3<f32>) -> vec2<i32> {
    let var_0 = !vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false)))), true, any(!select(vec2<bool>(false, false), vec2<bool>(true, false), true)), false);
    global1 = any(vec3<bool>(any(vec2<bool>(var_0.x & false, false)), true, var_0.x));
    global1 = false;
    let var_1 = var_0.x | (var_0.x && (true | any(var_0)));
    global0 = firstTrailingBit(vec2<i32>(0i >> (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 51006u, u_input.c), vec4<u32>(u_input.c, 1u, 1u, u_input.c)), u_input.a.x) % 32u), 23259i));
    return vec2<i32>(global0.x ^ (firstTrailingBit(1i) | u_input.b), u_input.b) >> (func_5(vec3<i32>(func_4(vec4<u32>(54496u, u_input.c, u_input.c, 4294967295u), Struct_2(u_input.a, vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1505f, arg_0.x) + arg_0.yy), func_3(Struct_1(u_input.b, -788f, true), true, Struct_1(-2147483647i, arg_0.x, var_1), Struct_1(-15191i, arg_0.x, var_0.x))), global0.x, ~firstLeadingBit(global0.x)), reverseBits(1u)) % vec2<u32>(32u));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(~_wgslsmith_div_vec2_i32(-vec2<i32>(global0.x, global0.x), vec2<i32>(42807i, 631i)), max(vec2<i32>(_wgslsmith_sub_i32(-14301i, 0i), u_input.b), func_2(vec3<f32>(-1200f, 438f, -2114f))), vec2<i32>(-global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i) >> (u_input.a.yy % vec2<u32>(32u)), vec2<i32>(-1i, global0.x)))), vec2<i32>(-(~global0.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, -67840i), -52616i) & (global0.x | -u_input.b)));
    let var_0 = vec3<i32>(-2147483647i, u_input.b, global0.x);
    let var_1 = func_5(~(~vec3<i32>(29231i, -9980i, _wgslsmith_add_i32(1i, var_0.x))), u_input.c);
    var var_2 = vec3<f32>(-1351f, 974f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(283f, 1000f)))));
    let var_3 = -(vec4<i32>(_wgslsmith_div_i32(-var_0.x, max(18512i, -1i)), ~(u_input.b << (57965u % 32u)), _wgslsmith_add_i32(~u_input.b, _wgslsmith_sub_i32(u_input.b, -54216i)), func_4(vec4<u32>(var_1.x, u_input.c, 28341u, 4294967295u) & vec4<u32>(u_input.c, u_input.c, var_1.x, var_1.x), Struct_2(u_input.a, vec4<u32>(var_1.x, u_input.a.x, 13282u, u_input.c), u_input.a, 4294967295u), var_2.xy, ~67167u)) << (_wgslsmith_mod_vec4_u32(~select(vec4<u32>(27916u, u_input.c, 1u, 16663u), vec4<u32>(u_input.c, var_1.x, var_1.x, u_input.c), arg_0), vec4<u32>(30325u, 27666u, 1u, u_input.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(26663u, 0u, u_input.c, u_input.c), vec4<u32>(var_1.x, 72409u, u_input.c, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return 1943f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global1 = true;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(true)))));
    var var_1 = false;
    global0 = -(_wgslsmith_add_vec2_i32(~vec2<i32>(global0.x, u_input.b), vec2<i32>(-global0.x, 1i)) << (u_input.a.xz % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~(~u_input.c), u_input.a.x), ~abs(0u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 33979u, 53117u, 44128u), vec4<u32>(u_input.a.x, u_input.c, 19126u, u_input.c)), min(vec4<u32>(u_input.a.x, 4294967295u, 11194u, 10896u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 4294967295u))) % 32u), ~20578u, func_3(Struct_1(global0.x, _wgslsmith_f_op_f32(floor(-661f)), true), select(true, all(vec4<bool>(false, true, true, false)), true), Struct_1(global0.x, -1738f, any(vec2<bool>(false, false))), Struct_1(func_4(vec4<u32>(25105u, u_input.c, u_input.c, 0u), Struct_2(vec3<u32>(u_input.a.x, 1u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), 17823u), vec2<f32>(924f, -291f), u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1953f), any(vec4<bool>(false, true, false, true))))), ~(~u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-837f - _wgslsmith_f_op_f32(f32(-1f) * -552f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-341f, 737f, false))), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))))), u_input.c);
}

