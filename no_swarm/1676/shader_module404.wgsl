struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-478f, vec3<i32>(13844i, 48025i, i32(-2147483648)), vec3<u32>(0u, 15991u, 1u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global0 = Struct_1(global0.a, vec3<i32>(~(-arg_0.b.x), ~(-28821i), ~_wgslsmith_mult_i32(global0.b.x | global0.b.x, -1i)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0.c.x, firstLeadingBit(var_0.c.x)), var_0.c));
    global0 = var_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(1697f)), u_input.b, max(~vec3<u32>(_wgslsmith_add_u32(75288u, 0u), ~arg_0.c.x, 0u), firstLeadingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 43816u, arg_0.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, var_0.c.x), var_0.c)))));
    var var_2 = ~var_1.c.x <= u_input.d;
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = countOneBits(vec4<i32>((firstLeadingBit(u_input.b.x) & ~u_input.e) << (u_input.d % 32u), ~1i, u_input.e, max(u_input.e, _wgslsmith_clamp_i32(global0.b.x, 7090i, 1i))));
    let var_1 = ~139389u;
    let var_2 = ~(~min(select(vec4<u32>(var_1, 16658u, global0.c.x, global0.c.x), vec4<u32>(1u, global0.c.x, global0.c.x, var_1), true), ~vec4<u32>(var_1, 4294967295u, 52469u, u_input.c.x))) >> (vec4<u32>(u_input.d, 51701u, global0.c.x, ~(~0u) ^ func_3(Struct_1(global0.a, global0.b, vec3<u32>(3673u, u_input.d, 53063u)))) % vec4<u32>(32u));
    var_0 = ~countOneBits(~(vec4<i32>(global0.b.x, u_input.e, 46115i, global0.b.x) ^ vec4<i32>(-7770i, u_input.a, u_input.a, global0.b.x))) >> ((~vec4<u32>(max(29458u, 17586u), 28803u << (0u % 32u), 0u, 36814u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(110232u, ~global0.c.x, u_input.c.x, _wgslsmith_add_u32(var_1, var_1)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, global0.c.x, 4294967295u), var_2), firstLeadingBit(var_2))) % vec4<u32>(32u));
    var_0 = vec4<i32>(min(u_input.b.x | var_0.x, -1i), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(abs(var_0.ww)), _wgslsmith_clamp_vec2_i32(vec2<i32>(32837i, 0i), var_0.yy, global0.b.zz) << (firstLeadingBit(vec2<u32>(0u, u_input.d)) % vec2<u32>(32u))), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.b.x, 0i, -1i), vec4<i32>(-55027i, 2500i, u_input.a, -24426i))) & global0.b.x, u_input.e);
    return select(vec2<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) & true), vec2<bool>(true, !any(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_u32(global0.c.yz, u_input.c)) | ~u_input.c);
    var var_1 = !func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) - vec2<f32>(global0.a, 813f))), vec2<f32>(_wgslsmith_f_op_f32(288f - -1939f), global0.a), vec2<bool>(true, false))));
    var var_2 = _wgslsmith_mult_i32(abs(-_wgslsmith_clamp_i32(-22115i, -arg_0.x, u_input.e)), ~global0.b.x);
    var_2 = global0.b.x ^ _wgslsmith_dot_vec2_i32(select(reverseBits(firstLeadingBit(vec2<i32>(13274i, 17218i))), (vec2<i32>(arg_0.x, u_input.b.x) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))) << ((u_input.c << (vec2<u32>(1u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(true, true)), ~firstLeadingBit(~vec2<i32>(arg_0.x, global0.b.x)));
    var_1 = !select(vec2<bool>(all(!vec4<bool>(false, var_1.x, var_1.x, true)), var_1.x), vec2<bool>(~107310u >= var_0.x, var_1.x), !vec2<bool>(var_1.x, true));
    return 58186u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(~(vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, global0.c.x), ~u_input.d, abs(65685u)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4991u, global0.c.x, 71294u), vec3<u32>(15996u, global0.c.x, 1u)), ~14838u, 1u) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(global0.c, min(~vec3<u32>(8555u, 1u, u_input.d), global0.c)));
    let var_1 = vec4<u32>(78456u, ~_wgslsmith_clamp_u32(u_input.d, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 20655u, global0.c.x), global0.c)), func_1(-u_input.b), 1u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1501f * global0.a), _wgslsmith_f_op_f32(select(1f, global0.a, true))) * global0.a), global0.b, var_1.xzz);
    let var_3 = ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_div_u32(58392u, global0.c.x)), 0u) & reverseBits(~func_3(Struct_1(-1003f, global0.b, global0.c)));
    var_0 = ~var_2.c;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(250f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(180f, var_2.a, false)))))), vec3<i32>(3847i, _wgslsmith_mod_i32(~(-u_input.e), (global0.b.x ^ -2147483647i) & max(global0.b.x, 2147483647i)), global0.b.x), vec3<u32>(~var_2.c.x, var_0.x, var_2.c.x));
    let var_5 = _wgslsmith_div_vec4_i32(max(-vec4<i32>(_wgslsmith_add_i32(u_input.e, var_2.b.x), 969i << (var_0.x % 32u), u_input.a, ~2147483647i), select(abs(vec4<i32>(232i, 0i, u_input.e, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.x, -1i, var_2.b.x, global0.b.x) >> (vec4<u32>(u_input.c.x, 52665u, var_2.c.x, 58035u) % vec4<u32>(32u)), abs(vec4<i32>(-21392i, global0.b.x, var_2.b.x, var_4.b.x))), !(var_0.x < 0u))), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.b.x, -2147483647i), firstTrailingBit(vec2<i32>(14840i, -29479i))), min(-5014i, var_4.b.x), _wgslsmith_mod_i32(global0.b.x, u_input.b.x), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a))), _wgslsmith_clamp_u32(abs(18584u), var_1.x, var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a)) - 144f))), reverseBits(vec3<i32>(~countOneBits(u_input.e), var_2.b.x, _wgslsmith_div_i32(-2147483647i, firstTrailingBit(var_4.b.x)))), ~(firstTrailingBit(var_1) & (vec4<u32>(72558u, 28127u, 1u, 21747u) >> (var_1 % vec4<u32>(32u)))) ^ vec4<u32>(abs(_wgslsmith_mult_u32(global0.c.x, 4294967295u)), _wgslsmith_mult_u32(10867u, var_2.c.x), ~1u, 4294967295u));
}

