struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = -1i;
    var var_1 = Struct_1(u_input.b, _wgslsmith_f_op_f32(229f * -339f));
    var_1 = Struct_1(firstLeadingBit(u_input.a.x), var_1.b);
    var var_2 = vec2<i32>(-_wgslsmith_clamp_i32(firstLeadingBit(firstLeadingBit(u_input.c)), countOneBits(select(-45651i, u_input.c, false)), arg_0.x), arg_0.x << (75792u % 32u));
    var var_3 = -(~select(arg_0.zzz, ~select(arg_0.xxy, arg_0.zyx, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    return var_3.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_5(Struct_2(!(!any(vec2<bool>(arg_1.a, false)))), arg_0.x, Struct_2(false), u_input.c, arg_2.xwz);
    let var_1 = Struct_4(vec3<bool>(true, select(func_3(vec4<i32>(20735i, var_0.d, 53776i, u_input.c)), 1i, arg_1.a) > -2147483647i, arg_1.a), Struct_2(var_0.c.a), 1u << (_wgslsmith_dot_vec2_u32(arg_2.yz, select(select(arg_2.yw, var_0.e.yx, false), u_input.a, any(vec2<bool>(var_0.a.a, arg_1.a)))) % 32u), arg_1.a, 1u);
    var_0 = Struct_5(Struct_2(arg_1.a), arg_0.x, Struct_2(any(vec3<bool>(false, true, true))), reverseBits(firstLeadingBit(_wgslsmith_sub_i32(-var_0.d, var_0.d))), var_0.e);
    let var_2 = var_1;
    var_0 = Struct_5(Struct_2(all(!(!vec2<bool>(var_0.a.a, false)))), _wgslsmith_f_op_f32(-arg_0.x), var_0.c, 10195i, ~vec3<u32>(var_2.c, ~arg_2.x, var_2.c));
    return !select(arg_1.a, true & arg_1.a, true && var_2.a.x) != ((all(select(var_1.a.xz, var_1.a.xy, var_2.a.xz)) && true) == any(!vec3<bool>(arg_1.a, var_0.c.a, true)));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_4(select(select(vec3<bool>(func_2(vec2<f32>(-1096f, 568f), Struct_2(false), vec4<u32>(79302u, 12145u, u_input.b, 10401u)), true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), Struct_2(false), 1u, true, u_input.b);
    var_0 = Struct_4(var_0.a, var_0.b, u_input.b, var_0.b.a, countOneBits(38373u));
    var_0 = Struct_4(select(!(!var_0.a), var_0.a, true), Struct_2(any(var_0.a.zx)), reverseBits(~countOneBits(~u_input.d)), all(!vec4<bool>(true, !var_0.a.x, 29664u > u_input.a.x, var_0.a.x || var_0.d)), _wgslsmith_mult_u32(u_input.a.x, ~0u) >> ((u_input.d ^ 1u) % 32u));
    let var_1 = !var_0.a.xz;
    var var_2 = Struct_4(var_0.a, Struct_2(var_0.b.a), ~var_0.e, select(var_0.b.a & !(var_0.e <= u_input.b), var_1.x, true), ~1u);
    return Struct_2(var_0.d);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-2147483647i, -23513i), _wgslsmith_div_i32(0i, u_input.c)) <= _wgslsmith_mod_i32(_wgslsmith_mult_i32(20496i, -13526i), _wgslsmith_mod_i32(-7930i, 14644i)), !all(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f + -2328f) + _wgslsmith_f_op_f32(trunc(606f))) <= _wgslsmith_f_op_f32(-1329f + _wgslsmith_f_op_f32(-127f + -197f))), arg_0, 0u, arg_0.a, countOneBits(28092u));
    var var_1 = vec2<u32>(~1u, select(u_input.a.x, 17315u, !var_0.b.a)) & min(~u_input.a, ~_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(var_0.c, 43322u)) ^ vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 4294967295u, var_0.e), vec3<u32>(var_0.e, u_input.d, u_input.a.x)), _wgslsmith_div_u32(11095u, u_input.b)));
    var var_2 = !vec4<bool>(true, true, true & (_wgslsmith_f_op_f32(112f + -1000f) <= _wgslsmith_f_op_f32(step(910f, -352f))), true);
    let var_3 = var_0.d;
    let var_4 = ~(~(~min(_wgslsmith_add_u32(4294967295u, 0u), 1u)));
    return Struct_1(var_4, _wgslsmith_div_f32(-2622f, _wgslsmith_f_op_f32(min(958f, _wgslsmith_f_op_f32(round(-345f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var var_1 = _wgslsmith_sub_vec2_i32(select(abs(vec2<i32>(firstLeadingBit(u_input.c), 6502i)), abs(vec2<i32>(~1i, -10900i)), vec2<bool>(true, true)), ~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-32411i, 11780i) << (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))), firstTrailingBit(~vec2<i32>(39832i, 1i))));
    let var_2 = Struct_3(!vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1339f, var_0.b)), func_1(), vec4<u32>(4294967295u, 3106u, 32056u, 52449u) >> (vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -55856i, 1i), vec4<i32>(u_input.c, -33927i, var_1.x, -1i)) < var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(-1016f)), var_0.b))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_0.b), vec2<f32>(-1498f, var_0.b))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, var_0.b), vec2<f32>(289f, -1290f)))))), !(!vec4<bool>(var_1.x < u_input.c, true, true, false)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(select(var_0.a, 0u, false), ~9252u, 2323u), vec3<u32>(5390u, var_0.a, u_input.b)), ~select(firstTrailingBit(vec3<u32>(var_0.a, 4294967295u, 0u)), vec3<u32>(48913u, 41746u, 0u) >> (vec3<u32>(5084u, 0u, u_input.a.x) % vec3<u32>(32u)), vec3<bool>(true, true, true))), ~u_input.d);
    let var_3 = select(select(var_2.c.zw, var_2.c.wx, var_2.c.zx), !select(!vec2<bool>(true, var_2.a.x), vec2<bool>(all(var_2.c.wzw), true), vec2<bool>(var_2.a.x, var_2.a.x & var_2.c.x)), !var_2.c.xw);
    var_0 = Struct_1(~(43536u >> (~select(u_input.d, var_2.d.x, true) % 32u)), _wgslsmith_div_f32(var_2.b.x, -2166f));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.x)));
    var var_5 = vec3<bool>(var_2.c.x, any(var_2.c), true);
    let var_6 = select(abs(~(~firstLeadingBit(vec4<u32>(0u, 4294967295u, 4294967295u, var_0.a)))), max(~(vec4<u32>(1u, 0u, 71647u, 0u) >> (vec4<u32>(var_0.a, var_2.d.x, var_2.d.x, var_2.e) % vec4<u32>(32u))), ~min(vec4<u32>(66422u, var_0.a, 1u, 44593u), vec4<u32>(0u, u_input.d, var_0.a, u_input.b))) >> (firstLeadingBit((vec4<u32>(var_2.d.x, var_2.e, 12842u, u_input.b) & vec4<u32>(4294967295u, var_2.d.x, 4294967295u, var_0.a)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, var_2.d.x), vec4<u32>(var_2.d.x, 66818u, var_0.a, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), false);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.d, ~var_2.d.x, _wgslsmith_mod_u32(var_0.a, 4294967295u) << (var_2.e % 32u), max(~var_2.d.x, firstLeadingBit(var_6.x))), select(_wgslsmith_sub_u32(~u_input.a.x, 1u) | _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, var_6.x), var_6.x), select(~abs(var_6.x), 110203u << (~var_2.d.x % 32u), true), true), abs(~reverseBits(vec4<u32>(var_6.x, 1u, 0u, var_6.x))));
}

