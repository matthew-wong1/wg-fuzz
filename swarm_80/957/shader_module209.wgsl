struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = vec2<i32>(-2147483647i, ~(u_input.a | firstLeadingBit(-49761i)));
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1853f + arg_1))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), arg_1)));
    let var_2 = vec3<bool>(true, true, 52677u >= firstLeadingBit(~u_input.b.x));
    let var_3 = arg_1;
    var_0 = firstLeadingBit(arg_0) << (((vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(arg_2, 0u)), _wgslsmith_clamp_u32(30116u, 42160u, 38165u)) ^ vec2<u32>(u_input.b.x << (93961u % 32u), abs(u_input.b.x))) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_2) >> (vec2<u32>(arg_2, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.b.xx, u_input.b.xx)), ~(u_input.b.x >> (0u % 32u)))) % vec2<u32>(32u));
    return _wgslsmith_div_vec2_u32(vec2<u32>(~(~(u_input.b.x >> (31478u % 32u))), select(_wgslsmith_mult_u32(0u, u_input.b.x) << (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u), arg_2, false)), u_input.b.zz);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(firstTrailingBit(28066u)), u_input.b.x, u_input.b.x >> (abs(1u) % 32u)), 30969u) < 1u;
    var var_1 = reverseBits(~_wgslsmith_sub_vec3_i32(-vec3<i32>(15599i, -1i, u_input.c), vec3<i32>(firstLeadingBit(arg_2), _wgslsmith_add_i32(u_input.a, arg_2), abs(2147483647i))));
    let var_2 = !var_0;
    var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(2147483647i, 7744i) | -var_1.yz), var_1.xz), max(min(arg_2, -20151i), 1i), -1i);
    var_1 = ~(~(firstLeadingBit(-vec3<i32>(arg_2, u_input.c, arg_2)) & (vec3<i32>(-1i) * -vec3<i32>(arg_3, -30962i, 0i))));
    return min(vec2<u32>(~0u, u_input.b.x) | u_input.b.xz, _wgslsmith_div_vec2_u32(func_3(select(_wgslsmith_sub_vec2_i32(var_1.zy, var_1.zx), -vec2<i32>(0i, var_1.x), true), -140f, 4294967295u, vec3<bool>(arg_0.x, !arg_0.x, var_2)), _wgslsmith_sub_vec2_u32(vec2<u32>(14563u, u_input.b.x) << (_wgslsmith_mult_vec2_u32(u_input.b.yx, vec2<u32>(4294967295u, 64344u)) % vec2<u32>(32u)), firstLeadingBit(~u_input.b.zx))));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: f32) -> vec2<f32> {
    let var_0 = (_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 27194u << (1u % 32u)), ~func_2(arg_0.a.a, Struct_1(false, arg_0.a.b.b), -1i, u_input.a)) ^ reverseBits(select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(75276u, 54755u), select(vec2<bool>(true, arg_0.a.b.a), vec2<bool>(false, false), vec2<bool>(arg_0.a.b.a, true))))) << (u_input.b.xy % vec2<u32>(32u));
    var var_1 = reverseBits(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(27244u, u_input.b.x, u_input.b.x, 1u)), ~vec4<u32>(1u, 4294967295u, 4294967295u, var_0.x))) ^ countOneBits(vec4<u32>(select(_wgslsmith_sub_u32(u_input.b.x, 19589u), reverseBits(17180u), true), var_0.x, 1u, var_0.x));
    let var_2 = Struct_2(arg_0.a.a, Struct_1(all(arg_0.a.a) || false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.d.b, arg_0.a.d.b, arg_0.a.a))) + arg_0.a.d.b)), u_input.c, Struct_1(abs(select(2379u, 0u, true)) >= ~select(u_input.b.x, 1u, arg_0.a.a.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_1 - arg_1)))));
    var_1 = min(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 57461u, 15337u, ~80151u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 48690u, var_1.x, 12510u), vec4<u32>(var_0.x, var_0.x, var_1.x, 40226u)) << (vec4<u32>(4294967295u, 1u, 45682u, var_0.x) % vec4<u32>(32u)))), ~vec4<u32>(0u, min(var_1.x, min(u_input.b.x, var_1.x)), ~8474u, ~var_1.x));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(exp2(arg_1)), !any(vec2<bool>(false, true)))), arg_2));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2596f * -368f), arg_2)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32) -> Struct_3 {
    let var_0 = any(!vec2<bool>(all(select(vec4<bool>(arg_1.a.d.a, true, false, false), vec4<bool>(false, arg_0.b.a, false, false), vec4<bool>(arg_1.a.d.a, arg_1.a.b.a, arg_0.a.x, false))), true != arg_1.a.d.a));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~max(vec3<i32>(arg_0.c, u_input.c, 91289i), vec3<i32>(arg_1.a.c, u_input.a, arg_0.c))), vec3<i32>(17540i, ~_wgslsmith_add_i32(0i, -29258i), min(countOneBits(arg_0.c), _wgslsmith_clamp_i32(-54094i, arg_0.c, 18739i))) ^ vec3<i32>(arg_1.a.c, _wgslsmith_div_i32(u_input.c, _wgslsmith_sub_i32(0i, arg_1.a.c)), arg_0.c));
    let var_2 = arg_1.a;
    let var_3 = 1603f;
    let var_4 = arg_0;
    return Struct_3(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-6788i, 0i), -vec2<i32>(-396i, 2147483647i)), 18307i, var_4.c, var_1 ^ abs(0i)), firstTrailingBit(vec4<i32>(-2147483647i ^ u_input.c, -var_4.c, -2147483647i, ~var_4.c) & vec4<i32>(_wgslsmith_div_i32(var_1, var_4.c), -17737i, 8019i, _wgslsmith_mult_i32(8544i, -44023i))), arg_1.a, Struct_1(var_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_4.b.b, var_4.d.b, true)))), var_4.d.b, vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), !(u_input.b.x > 4294967295u)), Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(1544f, 565f), vec2<f32>(-695f, -796f))), u_input.c, Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1242f, -293f) + vec2<f32>(-558f, -310f)) * _wgslsmith_f_op_vec2_f32(func_1(Struct_4(Struct_2(vec2<bool>(false, false), Struct_1(true, vec2<f32>(-438f, -361f)), 0i, Struct_1(true, vec2<f32>(-2033f, 631f))), 1696f), 652f, -1730f))))), Struct_4(Struct_2(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, false)), Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(388f, 671f))), 1i, Struct_1(false, vec2<f32>(-763f, 1388f))), 1f), abs(1u));
    var_0 = func_4(var_0.c, Struct_4(func_4(var_0.c, Struct_4(func_4(Struct_2(var_0.c.a, var_0.c.d, u_input.a, var_0.c.d), Struct_4(Struct_2(var_0.c.a, Struct_1(true, vec2<f32>(833f, -1000f)), 28871i, Struct_1(var_0.c.a.x, vec2<f32>(-122f, 714f))), 612f), u_input.b.x).c, var_0.c.d.b.x), ~u_input.b.x).c, _wgslsmith_f_op_f32(-var_0.d.b.x)), u_input.b.x);
    var_0 = Struct_3(vec4<i32>(max(~1i, var_0.c.c), 1i, abs(-9771i), 43181i), abs(var_0.b), var_0.c, var_0.d);
    var_0 = Struct_3(~vec4<i32>(23860i, u_input.c, u_input.a, min(2147483647i, 24345i)), vec4<i32>(_wgslsmith_sub_i32(0i, countOneBits(-u_input.c)), _wgslsmith_sub_i32(var_0.a.x, ~_wgslsmith_add_i32(u_input.a, var_0.c.c)), _wgslsmith_add_i32(reverseBits(var_0.a.x), ~1i), var_0.b.x), var_0.c, Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1408f, var_0.d.b.x) - vec2<f32>(var_0.d.b.x, -108f))))));
    var_0 = func_4(var_0.c, Struct_4(func_4(var_0.c, Struct_4(var_0.c, -1083f), ~(~0u)).c, _wgslsmith_f_op_f32(floor(879f))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.yw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.b.x - var_0.c.b.b.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_4(var_0.c, -161f), -261f, -1093f)).x * _wgslsmith_div_f32(1873f, 1395f)) * _wgslsmith_f_op_f32(func_4(var_0.c, Struct_4(Struct_2(var_0.c.a, var_0.d, -32809i, var_0.d), var_0.c.b.b.x), 88037u).d.b.x - _wgslsmith_f_op_f32(round(var_0.c.d.b.x))))), u_input.b.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zy, u_input.b.yx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx)) & 30391u);
}

