struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-51009i, vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec2<i32>(-1i, 1i)), Struct_1(2147483647i, vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec2<i32>(-16737i, 1433i)), Struct_1(-42336i, vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), 1i)), Struct_1(-567i, vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec2<i32>(-20704i, -1i)), Struct_1(0i, vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(34884i, vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec2<i32>(33667i, 29925i)), Struct_1(2147483647i, vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec2<i32>(-45390i, i32(-2147483648))), Struct_1(-50557i, vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(23329i, vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec2<i32>(24396i, 2147483647i)), Struct_1(-9093i, vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec2<i32>(6989i, -50659i)), Struct_1(0i, vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec2<i32>(36943i, -8066i)), Struct_1(i32(-2147483648), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec2<i32>(51431i, 1i)), Struct_1(-51010i, vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec2<i32>(-4544i, i32(-2147483648))), Struct_1(-29850i, vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec2<i32>(29662i, 41883i)), Struct_1(2147483647i, vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec2<i32>(0i, 2147483647i)), Struct_1(-8030i, vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec2<i32>(0i, 30977i)), Struct_1(59015i, vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec2<i32>(1i, 63439i)), Struct_1(26281i, vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec2<i32>(39268i, 2147483647i)), Struct_1(-193i, vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec2<i32>(-24776i, -1i)), Struct_1(0i, vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec2<i32>(1i, 49819i)), Struct_1(-29574i, vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec2<i32>(39914i, -1i)), Struct_1(2147483647i, vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec2<i32>(-21056i, 28318i)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec2<i32>(-29881i, 1i)), Struct_1(-14966i, vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec2<i32>(-25144i, -26103i)), Struct_1(-44148i, vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec2<i32>(0i, 37585i)), Struct_1(-14781i, vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec2<i32>(-39215i, -1i)), Struct_1(-8234i, vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec2<i32>(-1i, -71795i)), Struct_1(-35667i, vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec2<i32>(54644i, -14352i)), Struct_1(-6979i, vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec2<i32>(-15311i, -1i)), Struct_1(-1i, vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec2<i32>(1i, 0i)), Struct_1(0i, vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec2<i32>(1i, -28693i)));

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(9842i, vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec2<i32>(71175i, -20599i)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec2<i32>(1i, -1i)), Struct_1(0i, vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), -1i)), Struct_1(2147483647i, vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec2<i32>(25583i, -22324i)), Struct_1(0i, vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec2<i32>(-27583i, 19240i)), Struct_1(-2691i, vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec2<i32>(27152i, 0i)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec2<i32>(1i, -15737i)), Struct_1(i32(-2147483648), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec2<i32>(20683i, 2147483647i)), Struct_1(-40805i, vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec2<i32>(-1i, -23454i)), Struct_1(1i, vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec2<i32>(24432i, 2147483647i)), Struct_1(1i, vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), -2456i)), Struct_1(2147483647i, vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec2<i32>(i32(-2147483648), 14477i)), Struct_1(43434i, vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), -15920i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> i32 {
    global2 = array<Struct_1, 13>();
    let var_0 = abs(firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.c.zxz, vec3<i32>(-4916i, -1i, -25899i))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 13819u), min(vec3<u32>(36644u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(-1i, 34129i), 859i), u_input.b.zxx);
    global2 = array<Struct_1, 13>();
    global2 = array<Struct_1, 13>();
    let var_1 = arg_0.b.b.zxz;
    return ~1i;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(func_3(Struct_2(Struct_1(arg_1.x, vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec2<i32>(arg_0, u_input.c.x)), Struct_1(39873i, vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), arg_1.zy)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, 1826f)), vec2<f32>(929f, 778f), true))), 0i), 1i);
    var var_1 = ~0u;
    global2 = array<Struct_1, 13>();
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~(~(~1u)), 13u)], Struct_1(firstLeadingBit(firstTrailingBit(arg_0)), select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), any(vec3<bool>(true, false, true))), vec4<bool>(false, true, all(vec3<bool>(false, false, true)), true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(select(false, false, true), u_input.a <= 4294967295u, all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, true)))), max(_wgslsmith_clamp_vec2_i32(arg_1.yx, vec2<i32>(-11695i, -9857i), vec2<i32>(-1i, arg_0)) & max(u_input.b.wy, arg_1.zw), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1.zz, u_input.c.yw), ~vec2<i32>(arg_1.x, -25991i)))));
    global2 = array<Struct_1, 13>();
    return ~(~(~(~vec3<u32>(1u, u_input.a, u_input.a)) | vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 11420u, u_input.a), vec3<u32>(33716u, u_input.a, u_input.a)), u_input.a)));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(~(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~_wgslsmith_div_vec3_u32(func_2(i32(-1i) * -6843i, vec4<i32>(u_input.c.x, u_input.b.x, 1i, u_input.c.x)), vec3<u32>(~u_input.a, u_input.a, u_input.a)));
    global2 = array<Struct_1, 13>();
    global0 = true;
    let var_1 = any(select(select(!select(vec2<bool>(arg_0, arg_1), vec2<bool>(arg_0, arg_1), true), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_1), !vec2<bool>(false, arg_0), select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0))), true), vec2<bool>(any(!vec3<bool>(arg_0, arg_1, false)), false), arg_1));
    let var_2 = Struct_2(Struct_1(1i, vec4<bool>(true, (2147483647i << (u_input.a % 32u)) > (0i << (u_input.a % 32u)), 0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.a), var_0.xx), any(vec2<bool>(false, arg_1))), !select(!vec4<bool>(arg_0, arg_1, var_1, true), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(var_1, arg_1, arg_0, arg_0), vec4<bool>(false, true, false, false)), all(vec4<bool>(arg_0, var_1, arg_1, true))), u_input.c.xz & u_input.c.zw), Struct_1(u_input.c.x, vec4<bool>(var_1, false, !arg_0, all(!vec2<bool>(arg_1, arg_0))), vec4<bool>(true, true, !(arg_1 | arg_0), arg_0), u_input.c.xw));
    return ~var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(func_1(true, true && all(vec2<bool>(true, false))), u_input.a, ~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a));
    global1 = array<Struct_1, 31>();
    var_0 = ~(~reverseBits(vec4<u32>(43765u, 1u, var_0.x, var_0.x)) << (~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(102813u, var_0.x, var_0.x, 1u)), vec4<u32>(4294967295u, 0u, u_input.a, 52230u), vec4<u32>(var_0.x, u_input.a, u_input.a, 0u)) % vec4<u32>(32u)));
    var_0 = reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a | 4294967295u, ~1u, countOneBits(38135u), ~u_input.a), min(vec4<u32>(5773u, u_input.a, u_input.a, var_0.x), vec4<u32>(1085u, 4294967295u, var_0.x, 4294967295u)) << ((vec4<u32>(33109u, 37000u, 22722u, u_input.a) | vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 9199u, var_0.x, 1u)), vec4<u32>(4294967295u, var_0.x, 615u, 82885u) << (vec4<u32>(var_0.x, 1u, var_0.x, 35334u) % vec4<u32>(32u))) & (countOneBits(vec4<u32>(22446u, u_input.a, u_input.a, u_input.a)) | (vec4<u32>(u_input.a, var_0.x, 1u, var_0.x) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)))));
    var var_1 = global1[_wgslsmith_index_u32(var_0.x, 31u)];
    global2 = array<Struct_1, 13>();
    var var_2 = abs(vec3<i32>(~(i32(-1i) * -29059i), -max(var_1.d.x, ~(-2147483647i)), select(1i, _wgslsmith_mult_i32(0i & u_input.b.x, u_input.b.x | -86944i), var_1.a == _wgslsmith_div_i32(u_input.b.x, var_1.d.x))));
    var var_3 = Struct_1(~_wgslsmith_dot_vec4_i32((vec4<i32>(var_1.a, 2147483647i, var_2.x, 2147483647i) & u_input.b) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, u_input.a, 70751u, 1u), vec4<u32>(4294967295u, 34522u, 4294967295u, u_input.a)) % vec4<u32>(32u)), vec4<i32>(-2147483647i, var_2.x, 2147483647i, 11435i) >> (~vec4<u32>(37292u, var_0.x, 4294967295u, 9489u) % vec4<u32>(32u))), select(!select(var_1.c, !vec4<bool>(var_1.c.x, var_1.c.x, var_1.b.x, var_1.c.x), vec4<bool>(true, var_1.b.x, false, var_1.b.x)), var_1.c, true), select(select(var_1.b, vec4<bool>(false, var_1.c.x, var_1.c.x, false), vec4<bool>(any(vec3<bool>(true, var_1.b.x, false)), true, !var_1.c.x, var_1.b.x && var_1.b.x)), vec4<bool>(!all(var_1.b.yxw), !(true == var_1.b.x), any(!vec2<bool>(var_1.b.x, false)), !var_1.b.x), true), ~(-vec2<i32>(~var_2.x, var_2.x ^ 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(833f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -695f)), _wgslsmith_f_op_f32(471f + _wgslsmith_f_op_f32(trunc(-1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1212f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-155f)) - _wgslsmith_f_op_f32(772f - 634f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -928f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 243f)), -757f)), var_3.d.x);
}

