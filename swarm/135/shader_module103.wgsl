struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(arg_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_3.c, _wgslsmith_f_op_vec2_f32(arg_3.c + arg_3.c))), arg_3.c, !(!vec2<bool>(arg_3.b, true)))) + _wgslsmith_f_op_vec2_f32(-arg_3.c))));
    var_0 = vec2<f32>(-975f, _wgslsmith_f_op_f32(var_0.x * arg_1.a.d));
    let var_1 = select(~(~(~vec3<u32>(arg_0.c.x, u_input.b, arg_1.d))) ^ _wgslsmith_clamp_vec3_u32(global0.c.c.xxx, abs(~vec3<u32>(0u, arg_1.c.c.x, 0u)), vec3<u32>(~arg_1.d, _wgslsmith_mult_u32(global0.a.c.x, arg_0.c.x), _wgslsmith_sub_u32(arg_3.a.c.x, 17235u))), arg_0.c.yyw, arg_2 < _wgslsmith_f_op_f32(-arg_1.c.d));
    let var_2 = select(select(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), arg_3.b), !vec4<bool>(false, true, true, arg_3.b), false), !vec4<bool>(21834i > arg_1.a.e, all(vec2<bool>(false, arg_3.b)), true, any(vec2<bool>(arg_3.b, false))), vec4<bool>(arg_3.b, !(!arg_3.b), arg_3.b, all(!vec4<bool>(false, arg_3.b, arg_3.b, true)))), select(vec4<bool>(!arg_3.b, arg_3.b, true && arg_3.b, arg_3.b), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b), vec4<bool>(arg_3.b, arg_3.b, true, arg_3.b), vec4<bool>(arg_3.b, arg_3.b, true, arg_3.b)), select(select(vec4<bool>(arg_3.b, true, arg_3.b, true), vec4<bool>(arg_3.b, false, true, arg_3.b), vec4<bool>(false, arg_3.b, false, false)), !vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b), arg_3.b)), !select(vec4<bool>(false, arg_3.b, arg_3.b, arg_3.b), select(vec4<bool>(false, false, arg_3.b, true), vec4<bool>(arg_3.b, true, true, false), vec4<bool>(false, true, arg_3.b, arg_3.b)), arg_3.b)), all(vec4<bool>(false, all(vec2<bool>(arg_3.b, true)), arg_3.b, true)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.d)))), 1000f);
    return u_input.b;
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    let var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1996f, _wgslsmith_f_op_f32(-global0.a.d)) * -351f)))));
    let var_2 = !arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1304f)))))), _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(~global0.c.e), -abs(global0.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, global0.b.x, global0.c.e), global0.b), firstTrailingBit(global0.b)), _wgslsmith_div_i32(0i << (var_0 % 32u), -14210i)), vec4<i32>(-19450i, -global0.c.e & u_input.c.x, firstLeadingBit(35490i), global0.c.e)), ~vec4<u32>(_wgslsmith_div_u32(~1u, firstTrailingBit(u_input.b)), ~global0.a.c.x & 14487u, _wgslsmith_add_u32(global0.d, u_input.a), 0u | global0.c.c.x), -400f, 24184i);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(388f - 374f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-774f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f * global0.a.d)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.d + _wgslsmith_f_op_f32(sign(-541f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(397f)), -1250f)))) - 1428f);
}

fn func_2() -> Struct_1 {
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, reverseBits(_wgslsmith_mod_u32(var_0.c.x, u_input.a)), 30174u), ~(~var_0.c.xyy)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), vec4<bool>(var_0.a >= var_0.d, true, _wgslsmith_f_op_f32(-var_0.d) < _wgslsmith_f_op_f32(-var_0.d), func_3(Struct_1(2752f, vec4<i32>(1i, var_0.b.x, 2418i, -11128i), var_0.c, var_0.d, u_input.c.x), Struct_3(Struct_1(global0.c.a, global0.b, var_0.c, 623f, global0.b.x), vec4<i32>(-10720i, u_input.c.x, -37920i, var_0.b.x), Struct_1(var_0.d, vec4<i32>(-2147483647i, -2147483647i, u_input.d.x, 0i), vec4<u32>(41860u, var_0.c.x, 185u, u_input.b), global0.a.a, u_input.d.x), 17081u), -1111f, Struct_2(global0.c, false, vec2<f32>(-260f, 499f))) > firstTrailingBit(var_0.c.x))));
    var var_2 = global0.b.wyy;
    let var_3 = Struct_2(Struct_1(-1698f, vec4<i32>(2147483647i, var_2.x | _wgslsmith_dot_vec3_i32(var_0.b.xxz, vec3<i32>(global0.c.b.x, -74779i, var_0.b.x)), global0.b.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(global0.a.e, 2147483647i), global0.a.e)), vec4<u32>(4294967295u, 28057u, 1u, ~(~var_0.c.x)), _wgslsmith_f_op_f32(1140f + _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(global0.a.d - -1000f))), -global0.b.x), true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d), var_1, all(vec3<bool>(false, false, true)))), -447f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(488f, var_1)) - vec2<f32>(var_0.a, global0.c.d)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.d, 1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.d))))))));
    var var_4 = global0.c;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) - _wgslsmith_f_op_f32(-var_0.a)), -_wgslsmith_div_vec4_i32(max(vec4<i32>(var_0.b.x, -2147483647i, -2147483647i, var_0.e), vec4<i32>(-2147483647i, var_2.x, var_2.x, 8670i)), vec4<i32>(_wgslsmith_mult_i32(-40246i, u_input.d.x), _wgslsmith_add_i32(var_4.b.x, 1i), _wgslsmith_mod_i32(u_input.d.x, 0i), -2147483647i)), _wgslsmith_add_vec4_u32(~(var_0.c << (_wgslsmith_mod_vec4_u32(var_4.c, vec4<u32>(8176u, 59002u, 47689u, 51315u)) % vec4<u32>(32u))), ~(~(~vec4<u32>(1u, var_4.c.x, var_0.c.x, global0.c.c.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(-243f - 379f)), -2429f)), -(~var_3.a.e >> (~_wgslsmith_mod_u32(var_4.c.x, 4294967295u) % 32u)));
}

fn func_1() -> Struct_3 {
    var var_0 = (-_wgslsmith_sub_i32(global0.c.e, u_input.c.x) < -5130i) && (global0.b.x < ~(34606i << (~global0.a.c.x % 32u)));
    var var_1 = func_2();
    let var_2 = -_wgslsmith_dot_vec4_i32(func_2().b, vec4<i32>(_wgslsmith_mod_i32(-1i, 4786i), 36869i, -1i, select(38751i, u_input.c.x, false))) != u_input.d.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, -451f, var_1.a)))) * vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(826f * global0.c.a)), _wgslsmith_f_op_f32(ceil(global0.a.a))))));
    var var_4 = _wgslsmith_add_u32(1u, 30461u);
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(step(var_3.x, -793f)), (abs(vec4<i32>(-1i, -25401i, var_1.e, var_1.b.x)) << (vec4<u32>(global0.c.c.x, var_1.c.x, u_input.a, global0.c.c.x) % vec4<u32>(32u))) << (vec4<u32>(~21284u, u_input.b, 39846u, 4294967295u << (var_1.c.x % 32u)) % vec4<u32>(32u)), min(global0.a.c, var_1.c & select(var_1.c, vec4<u32>(u_input.b, 4319u, u_input.b, 84401u), vec4<bool>(false, false, var_2, var_2))), _wgslsmith_f_op_f32(-global0.a.d), 1i), var_1.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_1.d))), vec4<i32>(992i, global0.c.b.x, -1i, 14585i), vec4<u32>(0u, global0.a.c.x & 1u, reverseBits(~52225u), max(u_input.a, 4294967295u) & func_2().c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * global0.c.d), _wgslsmith_f_op_f32(f32(-1f) * -2062f))), ~global0.b.x), ~(max(0u, var_1.c.x) ^ min(~11182u, var_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_sub_vec4_i32(firstTrailingBit(global0.a.b), vec4<i32>(firstTrailingBit(10207i & global0.b.x), max(global0.b.x, func_2().e), abs(-47431i), func_2().e)) ^ _wgslsmith_mod_vec4_i32(global0.a.b << ((firstLeadingBit(global0.a.c) & _wgslsmith_sub_vec4_u32(global0.a.c, global0.c.c)) % vec4<u32>(32u)), global0.c.b);
    var var_1 = ~reverseBits(_wgslsmith_clamp_u32(4294967295u, ~4294967295u, ~4294967295u));
    var_1 = global0.a.c.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d, global0.a.d, global0.c.a, 677f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.c.xzz, select(vec4<i32>(_wgslsmith_sub_i32(-12251i, _wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, -50132i)), -4916i, ~_wgslsmith_add_i32(u_input.d.x, u_input.c.x), -(~0i)), vec4<i32>(var_0.x, 42993i, ~(-8886i), -1i), !vec4<bool>(true, all(vec2<bool>(false, true)), global0.c.e == u_input.c.x, true)), -1i, 6309i, -1310f);
}

