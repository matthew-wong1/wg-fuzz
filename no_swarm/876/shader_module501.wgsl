struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_i32(i32(-1i) * -min(u_input.a.x, u_input.a.x), u_input.a.x), ~_wgslsmith_clamp_i32(2147483647i, 0i, min(u_input.a.x, 1i)));
    return !(!vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_3 {
    let var_0 = any(!(!func_3()));
    var var_1 = ~(~arg_3);
    var_1 = u_input.b.x;
    var_1 = _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_3, ~firstTrailingBit(10532u), _wgslsmith_clamp_u32(arg_3, arg_3, 1u) | 25944u), 1u));
    var var_2 = Struct_4(~u_input.b.xx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-824f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(489f)), _wgslsmith_f_op_f32(select(1779f, 140f, true)))) + 289f), Struct_2(vec3<i32>(-max(-2147483647i, 20417i), -41603i, countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-588f - 3153f) * 1f) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(751f)), 504f)), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, select(vec2<i32>(-7357i, arg_2), vec2<i32>(-2147483647i, -31348i), vec2<bool>(true, false))), ~(-2147483647i)), u_input.b));
    return Struct_3(Struct_1(var_2.b, 1i, ~80i), _wgslsmith_f_op_f32(select(var_2.b, -1219f, true)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec2_u32(arg_0.zy, arg_0.yw);
    var_0 = ~vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0.zy, u_input.b.xw), vec2<u32>(0u, var_0.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(3856u, arg_0.x, 14855u, 1u), _wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(17763u, u_input.b.x, 53894u, 3074u))), vec4<u32>(~var_0.x, arg_0.x, ~37307u, 0u)));
    var_0 = select(vec2<u32>(var_0.x, _wgslsmith_mod_u32(countOneBits(var_0.x), _wgslsmith_add_u32(~arg_0.x, var_0.x))), vec2<u32>(0u, ~arg_0.x), vec2<bool>(any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), true));
    var var_1 = func_2(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(26306i, u_input.a.x, u_input.a.x, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), u_input.a.zx, u_input.a.x << (_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.zx)), arg_0.wz) % 32u), ~(~(~46393u)));
    var_1 = Struct_3(Struct_1(918f, var_1.a.c, firstTrailingBit(0i)), -244f);
    return Struct_2(vec3<i32>(var_1.a.b, -2147483647i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.a.c, var_1.a.b, u_input.a.x, -8114i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), false) & vec4<i32>(u_input.a.x, 0i, var_1.a.b, -1i), max(vec4<i32>(-53602i, -5714i, var_1.a.c, -1i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, var_1.a.b)) & vec4<i32>(u_input.a.x, var_1.a.b, 1i, 1i))), true, countOneBits(select(reverseBits(vec2<i32>(-45159i, u_input.a.x)) ^ ~u_input.a.yx, ~vec2<i32>(var_1.a.c, 1i), vec2<bool>(var_1.a.a >= var_1.b, any(vec4<bool>(false, true, true, false))))), abs(~arg_0));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> f32 {
    var var_0 = Struct_4(countOneBits(arg_0.d.zw), 523f, Struct_2(arg_0.a, func_1(_wgslsmith_add_vec4_u32(~vec4<u32>(22797u, 4294967295u, arg_0.d.x, u_input.b.x), ~vec4<u32>(1u, arg_0.d.x, u_input.b.x, arg_0.d.x))).b, _wgslsmith_mod_vec2_i32(u_input.a.xx, vec2<i32>(-u_input.a.x, _wgslsmith_clamp_i32(arg_0.c.x, arg_0.c.x, 12949i))), ~(~(u_input.b >> (vec4<u32>(u_input.b.x, 33802u, u_input.b.x, arg_0.d.x) % vec4<u32>(32u))))));
    let var_1 = Struct_4(~vec2<u32>(22251u, ~(~0u)), 578f, var_0.c);
    var var_2 = min(vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_add_u32(~var_1.c.d.x, _wgslsmith_div_u32(10056u, u_input.b.x))), 85243u), abs(_wgslsmith_clamp_vec2_u32(var_0.c.d.yw, var_0.c.d.zw, ~var_1.c.d.yz)) << (_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(27212u, 1u), vec2<u32>(1u, 0u) << (var_0.c.d.zw % vec2<u32>(32u)), vec2<bool>(true, true)), countOneBits(~arg_0.d.ww), ~(vec2<u32>(4294967295u, var_1.a.x) << (var_1.c.d.zw % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_3 = func_2(~(-(~(-vec4<i32>(-2147483647i, -1i, 2147483647i, var_0.c.a.x)))), max(-abs(vec2<i32>(-10934i, -1i)), vec2<i32>(1i ^ _wgslsmith_sub_i32(arg_0.a.x, 2147483647i), countOneBits(u_input.a.x << (4294967295u % 32u)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(max(-5110i, -8846i) >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, -2147483647i), firstTrailingBit(vec4<i32>(var_1.c.c.x, -2147483647i, var_1.c.a.x, var_1.c.a.x)))), i32(-1i) * -1i), _wgslsmith_mod_u32(4294967295u, ~(arg_0.d.x >> (var_1.a.x % 32u)) & 76110u));
    var var_4 = ~(~arg_0.d.wyz >> (vec3<u32>(0u, max(_wgslsmith_dot_vec4_u32(var_0.c.d, vec4<u32>(0u, var_1.a.x, 22914u, 4294967295u)), var_1.a.x), ~arg_0.d.x) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1361f, 295f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_div_vec4_u32(~u_input.b, _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))), true)), all(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, false), true))));
    var var_1 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))));
    var var_2 = -(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) ^ vec4<i32>(func_2(vec4<i32>(-42073i, u_input.a.x, -54379i, u_input.a.x), ~vec2<i32>(u_input.a.x, -1i), -62868i, u_input.b.x).a.c, _wgslsmith_add_i32(firstTrailingBit(u_input.a.x), u_input.a.x), select(u_input.a.x, -72163i, var_1.x), countOneBits(max(u_input.a.x, u_input.a.x))));
    let var_3 = _wgslsmith_div_vec4_u32(reverseBits(u_input.b), ~(~_wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 0u, u_input.b.x, 4294967295u))));
    let var_4 = vec4<u32>(0u, 41850u, u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, var_3.x), ~reverseBits(~49902u)));
    let var_5 = firstTrailingBit(~vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(24151u, 37421u), 20876u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(32077i, u_input.a.x), u_input.b.zzw, u_input.a.x, _wgslsmith_f_op_f32(max(var_0, -1857f)));
}

