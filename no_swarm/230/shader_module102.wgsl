struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32 = 272f;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, -39890i);

var<private> global3: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<f32>(-828f, 939f), vec2<bool>(true, false), false), Struct_3(vec2<f32>(-899f, 865f), vec2<bool>(true, true), true), Struct_3(vec2<f32>(-368f, 1690f), vec2<bool>(true, true), true), Struct_3(vec2<f32>(944f, 269f), vec2<bool>(true, false), true), Struct_3(vec2<f32>(-537f, 413f), vec2<bool>(true, false), false), Struct_3(vec2<f32>(1892f, -218f), vec2<bool>(false, true), false), Struct_3(vec2<f32>(1093f, 1194f), vec2<bool>(true, false), false), Struct_3(vec2<f32>(-1467f, -1000f), vec2<bool>(false, false), true), Struct_3(vec2<f32>(-127f, -2162f), vec2<bool>(false, true), true), Struct_3(vec2<f32>(1901f, 516f), vec2<bool>(true, true), false), Struct_3(vec2<f32>(-3372f, 1865f), vec2<bool>(true, true), false), Struct_3(vec2<f32>(-1000f, 1990f), vec2<bool>(true, false), true), Struct_3(vec2<f32>(-752f, 681f), vec2<bool>(false, true), true), Struct_3(vec2<f32>(378f, 467f), vec2<bool>(true, false), true), Struct_3(vec2<f32>(282f, 101f), vec2<bool>(false, true), true), Struct_3(vec2<f32>(-928f, 238f), vec2<bool>(false, false), true), Struct_3(vec2<f32>(1177f, 741f), vec2<bool>(false, false), false), Struct_3(vec2<f32>(130f, 2827f), vec2<bool>(true, false), false), Struct_3(vec2<f32>(-317f, -1000f), vec2<bool>(false, true), false), Struct_3(vec2<f32>(-434f, -490f), vec2<bool>(true, true), true), Struct_3(vec2<f32>(1328f, -1738f), vec2<bool>(false, false), false), Struct_3(vec2<f32>(385f, 125f), vec2<bool>(true, true), true), Struct_3(vec2<f32>(2006f, 596f), vec2<bool>(false, true), true), Struct_3(vec2<f32>(-1111f, -1722f), vec2<bool>(true, false), false), Struct_3(vec2<f32>(-411f, 1216f), vec2<bool>(false, true), false), Struct_3(vec2<f32>(-1255f, -339f), vec2<bool>(false, false), true));

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> bool {
    global2 = u_input.b;
    global2 = u_input.b;
    return global0.x == global0.x;
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(22100i, _wgslsmith_sub_i32(u_input.c, firstLeadingBit(global2.x)), u_input.b.x, -15186i), vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, -1i, -1i), vec4<i32>(global2.x, global2.x, global2.x, global2.x)), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, 0i, global2.x), vec4<i32>(0i, 2147483647i, global2.x, -23509i))));
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, global2.x, u_input.b.x, -17882i)), ~vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, 12328i, 2147483647i, 2147483647i), vec4<i32>(-11677i, 1i, 1i, u_input.b.x)), u_input.c, 28499i)), vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(-140i, 11578i, var_0.x, global2.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 45598i, var_0.x, 25165i), ~vec4<i32>(global2.x, -18129i, 0i, u_input.c))), 37906i, var_0.x));
    global1 = _wgslsmith_f_op_f32(872f * -487f);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, 138f)))))));
    var var_2 = !(!select(select(vec4<bool>(false, true, arg_0, global4.x), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, false, true, arg_0), false), var_1.x == -103f), vec4<bool>(arg_0, false, true, false), select(vec4<bool>(false, false, global4.x, true), !vec4<bool>(false, false, global4.x, global4.x), global4.x | global4.x)));
    return -2147483647i << (u_input.d.x % 32u);
}

fn func_2() -> Struct_2 {
    let var_0 = min(~(-reverseBits(vec4<i32>(u_input.b.x, 21877i, u_input.b.x, 0i))), reverseBits(select(vec4<i32>(-2147483647i, _wgslsmith_div_i32(u_input.c, u_input.b.x), -46340i, func_3(global4.x)), abs(~vec4<i32>(u_input.c, -8372i, 44366i, -1i)), !select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(false, global4.x, true, false), true))));
    let var_1 = -37742i;
    let var_2 = Struct_2(Struct_1(select(!select(vec3<bool>(false, true, false), vec3<bool>(global4.x, global4.x, false), vec3<bool>(global4.x, false, true)), select(select(vec3<bool>(global4.x, true, true), vec3<bool>(global4.x, true, false), vec3<bool>(false, false, global4.x)), select(vec3<bool>(global4.x, false, true), vec3<bool>(global4.x, true, true), vec3<bool>(global4.x, global4.x, global4.x)), !vec3<bool>(false, global4.x, global4.x)), global4.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, u_input.c, var_0.x), vec4<i32>(-28678i, -2147483647i, -35289i, global2.x))), vec4<i32>(-(~2147483647i), -1i ^ global2.x, -995i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b))), var_0.wx, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(787f - -833f), 1f, -1000f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(433f, 1379f, -451f, 1653f), vec4<f32>(412f, -980f, 1000f, 1000f), vec4<bool>(false, true, global4.x, global4.x))), vec4<f32>(2304f, 1000f, -850f, 562f)))))), !select(select(vec4<bool>(false, true, global4.x, true), select(vec4<bool>(true, false, global4.x, false), vec4<bool>(global4.x, false, false, false), vec4<bool>(true, global4.x, global4.x, false)), global2.x != -1i), select(select(vec4<bool>(global4.x, false, true, global4.x), vec4<bool>(false, true, global4.x, global4.x), true), !vec4<bool>(global4.x, true, false, true), false), !(!vec4<bool>(global4.x, true, global4.x, global4.x))));
    return Struct_2(var_2.a, -countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 1i), var_2.b), vec2<i32>(-1i, global2.x) | var_2.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(562f))))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_2.c.x * 1200f)), _wgslsmith_f_op_f32(f32(-1f) * -686f), var_2.c.x), vec4<bool>(any(select(var_2.d, !vec4<bool>(false, false, global4.x, global4.x), any(var_2.d))), true, (~var_2.b.x | -2147483647i) <= var_2.b.x, false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, global0.x ^ 4294967295u, _wgslsmith_mod_u32(u_input.a, u_input.d.x), ~u_input.d.x)), abs(~countOneBits(vec4<u32>(global0.x, 13254u, 49106u, u_input.d.x)))), ~(u_input.a >> (4294967295u % 32u)));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(var_0.a.b, func_2().a.c.x), min(abs(0i), ~arg_0.b), 0i, 1i);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c.x, arg_1.c.x)), -434f)))));
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, max(_wgslsmith_clamp_u32(var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(29584u, global0.x, u_input.d.x, 0u), u_input.d), global0.x), var_1.x)), 26u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<i32>(-(~0i), firstLeadingBit(~global2.x));
    var var_0 = func_4(Struct_1(vec3<bool>(global4.x, global4.x, true != func_1(global3[_wgslsmith_index_u32(global0.x, 26u)], true)), firstTrailingBit(global2.x), vec4<i32>(-select(-15847i, global2.x, false), 0i, ~min(u_input.c, 2147483647i), _wgslsmith_sub_i32(~u_input.c, -418i))), func_2(), any(select(vec3<bool>(global4.x, !global4.x, false), select(!vec3<bool>(true, global4.x, global4.x), !vec3<bool>(global4.x, false, global4.x), vec3<bool>(true, true, true)), !(50844u <= u_input.a))));
    let var_1 = Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_mult_i32(global2.x, u_input.c), vec4<i32>(~(-u_input.c), firstTrailingBit(0i), -19801i, ~(-var_0.a.b))), select(~vec2<i32>(var_0.b.x, var_0.b.x), max(vec2<i32>(firstTrailingBit(-2147483647i), select(2147483647i, -16401i, global4.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-12533i, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(var_0.a.c.x, -2147483647i)), vec2<i32>(35362i, 0i))), !var_0.a.a.yz), vec4<f32>(func_4(var_0.a, func_2(), !var_0.a.a.x).c.x, 2162f, var_0.c.x, var_0.c.x), !var_0.d);
    var var_2 = Struct_1(!(!func_2().a.a), firstTrailingBit(~reverseBits(var_1.b.x)), var_1.a.c);
    var var_3 = global3[_wgslsmith_index_u32((abs(_wgslsmith_clamp_u32(global0.x, global0.x & u_input.a, firstTrailingBit(19390u))) | ~(~reverseBits(u_input.a))) >> (firstTrailingBit(abs(global0.x)) % 32u), 26u)];
    var var_4 = abs(130288u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-reverseBits(vec4<i32>(3406i, var_0.a.b, -28556i, -1i))), var_2.b, select(vec4<u32>(global0.x, _wgslsmith_clamp_u32(u_input.d.x, 1u, firstLeadingBit(8096u)), u_input.a, 37433u), vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(~u_input.d, u_input.d), firstTrailingBit(u_input.a), u_input.a), any(vec3<bool>(u_input.a > 1u, var_3.c, select(false, true, true)))));
}

