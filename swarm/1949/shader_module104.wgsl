struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-561f - _wgslsmith_f_op_f32(min(-969f, 1375f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1875f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-517f)), _wgslsmith_f_op_f32(f32(-1f) * -405f))))))) != -442f;
    return _wgslsmith_mod_u32(0u, ~(~1u >> (_wgslsmith_clamp_u32(arg_0.a, u_input.c, 35291u) % 32u))) <= u_input.c;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<i32> {
    global0 = 45145i;
    let var_0 = vec4<bool>(false, false, arg_1.c, (_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(2478f, arg_0)) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1113f, arg_0), arg_0))) || true);
    var var_1 = 50465i >> (global1.x % 32u);
    var var_2 = u_input.e | vec3<u32>(~firstTrailingBit(global1.x), global1.x, ~31206u);
    var var_3 = ~max(arg_1.a, abs(u_input.e.x));
    return _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(~u_input.a, u_input.a)), ~vec4<i32>(0i, 8037i, firstLeadingBit(abs(2147483647i)), -54012i));
}

fn func_3() -> vec3<i32> {
    global1 = ~vec2<u32>(abs(~abs(u_input.c)), ~abs(1u));
    global0 = 0i;
    let var_0 = select(_wgslsmith_mod_vec2_u32(u_input.e.xy, u_input.e.yx << (~(vec2<u32>(59154u, u_input.e.x) << (u_input.e.zx % vec2<u32>(32u))) % vec2<u32>(32u))), u_input.e.yy, true);
    global0 = _wgslsmith_dot_vec3_i32(u_input.d, -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yzz, u_input.a.xxx), i32(-1i) * -2147483647i, ~1i) & u_input.d);
    var var_1 = reverseBits(vec2<i32>(5032i, -_wgslsmith_clamp_i32(-1i, u_input.a.x, u_input.b.x)) >> (var_0 % vec2<u32>(32u)));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-26156i, _wgslsmith_sub_i32(32230i, _wgslsmith_mult_i32(u_input.d.x, u_input.b.x)), u_input.a.x), select(reverseBits(u_input.a.wyw << (vec3<u32>(u_input.c, 40581u, u_input.e.x) % vec3<u32>(32u))), u_input.a.zwy, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_1.x, var_1.x, -2147483647i), u_input.a.zxy, -min(u_input.a.ywz, vec3<i32>(var_1.x, 55427i, u_input.b.x)))), u_input.a.yzw, u_input.d ^ vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 0i), -1i), abs(-var_1.x), max(i32(-1i) * -1i, max(u_input.a.x, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_u32(0u, firstLeadingBit(_wgslsmith_clamp_u32(global1.x, global1.x, global1.x)))), ~u_input.a.yxx & (vec3<i32>(1i, _wgslsmith_div_i32(u_input.a.x, u_input.d.x), ~u_input.d.x) ^ vec3<i32>(0i, 4988i, max(-2147483647i, u_input.d.x))), select(false, !(!func_1(Struct_1(global1.x, vec3<i32>(-11767i, u_input.b.x, u_input.b.x), false))), -1000f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-534f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global0 = -(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(func_2(-341f, var_0), firstLeadingBit(vec4<i32>(u_input.b.x, 2147483647i, u_input.d.x, 0i))), ~u_input.a ^ -vec4<i32>(0i, -17543i, var_0.b.x, 35921i)));
    let var_2 = ~global1.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(521f)) * 1f))), _wgslsmith_f_op_f32(floor(242f)));
    let var_4 = Struct_1(firstTrailingBit(1u), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, _wgslsmith_add_i32(max(15439i, var_0.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 42007i), vec3<i32>(-1i, u_input.a.x, 0i))), 13928i), vec3<i32>(max(u_input.a.x, var_0.b.x), -_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(-12191i, -42922i)), _wgslsmith_mult_i32(-var_0.b.x, ~12998i)), func_3()), _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(u_input.a.x), 8852i) <= ~0i);
    var var_5 = Struct_1((countOneBits(~u_input.e.x) | ~abs(17978u)) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2, 10768u, global1.x, 0u), vec4<u32>(var_4.a, var_4.a, 1u, var_4.a)), vec4<u32>(var_0.a, var_0.a, u_input.c, 27937u)), _wgslsmith_mod_u32(countOneBits(15753u), var_0.a)), vec3<i32>(select(~var_0.b.x, select(1i, 1i, true), _wgslsmith_mult_i32(var_0.b.x, var_4.b.x) <= ~u_input.a.x), _wgslsmith_sub_i32(1i, func_2(-1560f, Struct_1(var_4.a, var_0.b, var_0.c)).x), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(9681i, 39164i, -2147483647i), ~vec3<i32>(-10963i, 0i, 11021i)), 80895i)), var_4.c);
    let var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(var_5.b, min(u_input.a.www | vec3<i32>(u_input.a.x, var_4.b.x, u_input.a.x), vec3<i32>(0i, 48101i, var_0.b.x)) & ~(-var_5.b), u_input.a.xyz), ~func_3(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(689f, 2052f, var_3.x, var_3.x)))) * vec4<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_3.x, -151f)))), _wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(-var_3.x)))), var_3.x, u_input.e);
}

