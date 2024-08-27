struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<vec4<bool>, 32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<bool>(false, arg_2.a, false);
    global0 = array<vec2<i32>, 3>();
    global1 = array<vec4<bool>, 32>();
    var var_1 = arg_2;
    let var_2 = ~select(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.yy, u_input.a.yy, vec2<bool>(true, any(var_0))) >> (vec2<u32>((~1u << (_wgslsmith_mult_u32(u_input.a.x, 84146u) % 32u)) << (0u % 32u), 5094u) % vec2<u32>(32u));
    return u_input.a.x;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false) | ~_wgslsmith_mult_vec4_u32(vec4<u32>(83625u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(106800u, u_input.a.x, 30071u, u_input.a.x))), abs(_wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(42770u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, func_3(vec2<bool>(false, false), vec2<f32>(689f, 1899f), Struct_1(true, vec2<i32>(2147483647i, 25588i), u_input.b.yy, false)), 0u, ~12747u))));
    let var_1 = Struct_1(all(vec3<bool>(true, true, true)) || true, vec2<i32>(41494i, _wgslsmith_mult_i32(min(u_input.b.x, -2147483647i), u_input.b.x)), firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -257f), -2169f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-535f)))));
    global1 = array<vec4<bool>, 32>();
    let var_2 = !vec3<bool>(true, !all(!vec3<bool>(var_1.a, var_1.d, var_1.a)), false);
    var_0 = _wgslsmith_add_vec4_u32(abs(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, 9038u, u_input.a.x, 99966u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, u_input.a.x, u_input.a.x), vec4<u32>(var_0.x, u_input.a.x, 85161u, 4294967295u))))), ~abs(vec4<u32>(115606u, 1u, u_input.a.x, 50715u)) & vec4<u32>(_wgslsmith_clamp_u32(70372u, var_0.x, 4294967295u) << (reverseBits(0u) % 32u), ~(u_input.a.x | u_input.a.x), var_0.x << (_wgslsmith_mult_u32(103480u, var_0.x) % 32u), u_input.a.x));
    return 4294967295u;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = -1023f;
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~abs(~vec3<u32>(5399u, 4294967295u, 1u)), abs(abs(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 37646u))))), ~(~func_2(reverseBits(-1i))), 98u, max(_wgslsmith_mod_u32(5816u, 33192u), _wgslsmith_mult_u32(~0u | (u_input.a.x & 0u), u_input.a.x)));
    var var_2 = Struct_1(select(true, !(52474u == ~u_input.a.x), any(vec4<bool>(any(vec2<bool>(true, true)), select(true, true, true), true, true))), ~vec2<i32>(abs(~1i), -5601i), vec2<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.yy ^ vec2<i32>(17481i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)) | firstLeadingBit(u_input.b.x)), min(~(~var_1.x), 9293u) < (countOneBits(~33261u) << (_wgslsmith_mod_u32(~var_1.x, 0u >> (0u % 32u)) % 32u)));
    var_2 = Struct_1(var_2.d, vec2<i32>(firstLeadingBit(-14953i), u_input.b.x), ~(-firstTrailingBit(select(vec2<i32>(-30128i, -28243i), vec2<i32>(u_input.b.x, var_2.b.x), vec2<bool>(var_2.a, var_2.d)))), 4294967295u < ~var_1.x);
    let var_3 = vec4<i32>(~abs(countOneBits(_wgslsmith_add_i32(10919i, 1i))), -_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_add_i32(-36371i, var_2.c.x >> (func_2(firstLeadingBit(-39720i)) % 32u)), _wgslsmith_div_i32(u_input.b.x | _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(var_2.c.x, u_input.b.x)), abs(~0i)));
    return Struct_1(var_2.a, global0[_wgslsmith_index_u32(31015u, 3u)], max(-select(vec2<i32>(u_input.b.x, var_3.x), vec2<i32>(u_input.b.x, 34001i), select(false, var_2.d, var_2.d)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_3.x, _wgslsmith_clamp_i32(var_3.x, u_input.b.x, -2147483647i)), abs(select(vec2<i32>(var_3.x, -14150i), vec2<i32>(-2147483647i, u_input.b.x), true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, abs(u_input.b.yz), -(~(global0[_wgslsmith_index_u32(max(18967u, u_input.a.x), 3u)] >> (_wgslsmith_mod_vec2_u32(u_input.a.yx, u_input.a.yz) % vec2<u32>(32u)))), true);
    var_0 = func_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-335f))))));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.a.x, 22955u), max(43697u, 4294967295u), u_input.a.x, u_input.a.x), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 18352u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 3281u) % vec4<u32>(32u))), abs(vec4<u32>(~4294967295u, 10646u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 19162u), u_input.a.xz)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -1196f)))), _wgslsmith_f_op_f32(-1479f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) - _wgslsmith_f_op_f32(trunc(1084f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-854f * 700f) - 1f)))));
    global1 = array<vec4<bool>, 32>();
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.x));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(u_input.b, -_wgslsmith_mod_vec3_i32(abs(u_input.b), _wgslsmith_add_vec3_i32(u_input.b, u_input.b))), ~var_0.b.x, var_2, var_2);
}

