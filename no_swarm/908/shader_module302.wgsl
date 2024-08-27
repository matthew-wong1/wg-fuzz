struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(22968u, 30403u), false, 2416f, vec3<i32>(61854i, 2147483647i, 12535i), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(1u, 35484u), true, -1543f, vec3<i32>(-6975i, -52371i, 0i), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(82732u, 4294967295u), false, 688f, vec3<i32>(-25854i, 35926i, -9664i), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(42272u, 15259u), true, 1051f, vec3<i32>(-1i, 13038i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(vec2<u32>(25508u, 1u), true, 155f, vec3<i32>(2147483647i, 33873i, -1i), vec3<bool>(false, false, true)), Struct_1(vec2<u32>(27490u, 2771u), true, -737f, vec3<i32>(2147483647i, -10895i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(56499u, 12296u), false, -1518f, vec3<i32>(i32(-2147483648), 21961i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(vec2<u32>(4294967295u, 37792u), false, -1501f, vec3<i32>(-10331i, -7479i, -5928i), vec3<bool>(true, true, true)), Struct_1(vec2<u32>(2457u, 1u), true, 462f, vec3<i32>(-13473i, 1i, 0i), vec3<bool>(false, true, false)), Struct_1(vec2<u32>(1u, 29675u), false, -1553f, vec3<i32>(-18715i, -30672i, -19569i), vec3<bool>(true, true, false)), Struct_1(vec2<u32>(3453u, 0u), false, 221f, vec3<i32>(-47277i, 2147483647i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(vec2<u32>(19907u, 1u), true, -2266f, vec3<i32>(5368i, i32(-2147483648), 18732i), vec3<bool>(false, false, false)));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<i32> {
    let var_0 = !vec3<bool>(false, -2147483647i < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -6356i, 2147483647i), vec3<i32>(-11080i, u_input.c.x, u_input.c.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, -26612i, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, -19782i))), false);
    global0 = array<Struct_1, 12>();
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b.x, firstTrailingBit(12605u), u_input.b.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 1u), min(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(4294967295u, 2388u, u_input.a.x))), _wgslsmith_div_vec3_u32(~vec3<u32>(25768u, u_input.a.x, u_input.a.x), abs(vec3<u32>(11481u, u_input.b.x, 1u)))));
    let var_2 = Struct_1(vec2<u32>(55384u, var_1.x), var_0.x, 305f, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x | u_input.c.x, 22178i, ~u_input.c.x), _wgslsmith_div_i32(-30691i, _wgslsmith_sub_i32(-1i, u_input.c.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, u_input.c.x, -15230i), vec3<i32>(u_input.c.x, u_input.c.x, -55860i))), ~reverseBits(vec3<i32>(u_input.c.x, 0i, u_input.c.x) | vec3<i32>(1i, u_input.c.x, u_input.c.x))), var_0);
    global0 = array<Struct_1, 12>();
    return -var_2.d;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_3.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), max(firstLeadingBit(func_3()), vec3<i32>(arg_3.d.x, -38861i, -(u_input.c.x ^ arg_3.d.x))), vec3<bool>(arg_3.b == true, arg_2.e.x, false));
    var var_1 = vec3<u32>(1u, 1u, 1u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u) >> (u_input.b % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(var_1.yx, var_1.xz | arg_3.a, arg_3.a | var_0.a)), true, arg_3.c, arg_3.d, !(!arg_2.e)), firstTrailingBit(34382u), arg_2, global0[_wgslsmith_index_u32(1u, 12u)], !arg_3.e);
    global0 = array<Struct_1, 12>();
    var_1 = vec3<u32>(var_2.b, ~(~_wgslsmith_mult_u32(15100u, 60780u)), 1u | (var_2.c.a.x & arg_2.a.x));
    return 1i;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> i32 {
    var var_0 = arg_2;
    var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.c.x, u_input.c.x, arg_2, u_input.c.x) | vec4<i32>(49678i, arg_2, arg_1.d.x, -2147483647i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, u_input.c.x, 45763i, u_input.c.x), vec4<i32>(-1i, u_input.c.x, 2147483647i, 2147483647i)), ~vec4<i32>(-2147483647i, 44372i, 2147483647i, -1i))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c.x ^ u_input.c.x, -u_input.c.x), -38418i, -5668i), abs(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(45488i, -38099i, -24820i, -2147483647i), vec4<i32>(1i, u_input.c.x, 1i, u_input.c.x)), ~func_2(vec3<f32>(491f, arg_1.c, arg_1.c), vec2<f32>(arg_1.c, arg_1.c), arg_1, global0[_wgslsmith_index_u32(arg_1.a.x, 12u)])), _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-6848i, arg_2), vec2<i32>(-11227i, arg_1.d.x)), min(arg_1.d.yy, firstTrailingBit(vec2<i32>(u_input.c.x, u_input.c.x))))));
    var var_1 = -_wgslsmith_sub_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(58940i, 43602i, u_input.c.x), vec3<i32>(u_input.c.x, -2138i, 1i)), u_input.c.x, arg_2 >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), vec3<i32>(u_input.c.x, abs(arg_1.d.x), 1i));
    var_1 = arg_1.d;
    var var_2 = -32549i;
    return ~(-arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = all(vec2<bool>(true, false));
    let var_2 = 1000f;
    global0 = array<Struct_1, 12>();
    var_0 = !(~func_1(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(u_input.a, var_1, -324f, vec3<i32>(u_input.c.x, u_input.c.x, 77775i), vec3<bool>(false, var_1, var_1)), -2147483647i, ~u_input.a) >= u_input.c.x);
    var var_3 = true || !select(false, !var_1, true);
    var var_4 = false && all(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_1, var_1), var_1), select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, false, true), vec3<bool>(var_1, false, var_1)), var_1 || false), select(vec3<bool>(var_1, var_1, false), !vec3<bool>(true, var_1, true), var_1), vec3<bool>(false, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1301f, var_2)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2)), vec2<f32>(var_2, _wgslsmith_f_op_f32(min(var_2, var_2))))), u_input.c.x, _wgslsmith_div_f32(1115f, -274f), max(select(countOneBits(vec2<i32>(u_input.c.x, u_input.c.x)) & vec2<i32>(1i, u_input.c.x), -abs(u_input.c), vec2<bool>(true, any(vec3<bool>(var_1, var_1, var_1)))), u_input.c), -2147483647i | -func_3().x);
}

