struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = ~(-7381i);
    var var_1 = select(true, false, false);
    let var_2 = Struct_3(firstTrailingBit(~(~vec3<u32>(u_input.a, 0u, 1u))) << (vec3<u32>(_wgslsmith_div_u32(u_input.a, 4294967295u), ~(u_input.a << (43819u % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 1u)), ~vec3<u32>(u_input.a, u_input.a, 35402u))) % vec3<u32>(32u)), -var_0, select(select(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, 2147483647i != var_0), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 19u)] <= global0[_wgslsmith_index_u32(4294967295u, 19u)], true, any(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), true), (~var_0 == var_0) | select(true, any(vec3<bool>(false, false, false)), true)), Struct_2(_wgslsmith_f_op_f32(step(400f, global0[_wgslsmith_index_u32(~(u_input.a & u_input.a), 19u)])), var_0, !any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -234f), true, ~(vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, 63405u, 0u))), !vec2<bool>(all(vec4<bool>(true, true, false, false)), 5593i != var_0)));
    let var_3 = select(reverseBits(vec4<i32>(var_2.b, -abs(var_2.d.b), -2147483647i, -1i)), -(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(var_0, 0i, 0i, -24750i))), !vec4<bool>(true, var_2.c.x, any(select(vec4<bool>(var_2.c.x, false, var_2.d.c, false), vec4<bool>(false, var_2.d.d.b, var_2.d.e.x, var_2.d.e.x), vec4<bool>(true, false, false, var_2.d.c))), !select(var_2.d.e.x, var_2.c.x, var_2.c.x)));
    let var_4 = var_3.yx;
    return !all(vec3<bool>(var_2.d.e.x, !var_2.c.x, select(var_2.d.d.b && var_2.c.x, var_2.c.x, true)));
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    global0 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2464f, global0[_wgslsmith_index_u32(select(4294967295u, 0u, true), 19u)], _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2417f, arg_0.x, 546f, arg_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(107f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 19u)])), 899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1985f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], arg_0.x, 1123f), vec4<f32>(1000f, 1514f, -794f, 140f)) * vec4<f32>(_wgslsmith_f_op_f32(floor(-1193f)), global0[_wgslsmith_index_u32(u_input.a | 61502u, 19u)], _wgslsmith_f_op_f32(f32(-1f) * -167f), _wgslsmith_f_op_f32(floor(724f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 552f, -489f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.x, -642f, -501f) * vec4<f32>(arg_0.x, -287f, 1221f, -3038f)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 19u)] - 1235f), -1574f))), vec4<bool>(!func_3(), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a | u_input.a, 19u)])) > 890f, true, true)));
    var var_1 = Struct_2(-1000f, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2242i, 68667i), firstLeadingBit(vec3<i32>(-1i, -39276i, -2147483647i)))), false, Struct_1(_wgslsmith_div_f32(1000f, -105f), true & func_3(), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 0u, 2367u), vec3<u32>(15901u, u_input.a, 0u)) >> (~vec3<u32>(35001u, 12137u, u_input.a) % vec3<u32>(32u))), vec2<bool>(true, true));
    let var_2 = select(select(select(vec2<bool>(true, var_1.e.x), select(var_1.e, !var_1.e, var_1.c), false), select(select(var_1.e, !var_1.e, var_1.e), vec2<bool>(!var_1.c, !var_1.d.b), select(select(var_1.e, var_1.e, var_1.d.b), !vec2<bool>(var_1.e.x, true), var_1.c)), select(!vec2<bool>(var_1.d.b, false), select(vec2<bool>(false, var_1.d.b), select(vec2<bool>(false, true), var_1.e, true), select(var_1.e, var_1.e, vec2<bool>(true, true))), true)), !vec2<bool>(all(!vec3<bool>(false, var_1.c, var_1.d.b)), true), var_1.e.x);
    let var_3 = vec2<bool>(all(vec2<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(var_1.d.b, var_2.x, false))))), all(select(var_2, !select(var_2, var_2, var_2), false)));
    return Struct_4(Struct_1(-1618f, any(select(!vec2<bool>(var_1.e.x, var_2.x), !vec2<bool>(var_1.c, false), true)), ~_wgslsmith_sub_vec3_u32(reverseBits(var_1.d.c), var_1.d.c)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = any(arg_1.e);
    var_0 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.d.b, true, arg_1.d.b), vec3<bool>(arg_1.e.x, true, true)), vec3<bool>(all(arg_1.e), any(vec2<bool>(arg_1.d.b, true)), all(vec4<bool>(arg_1.e.x, false, arg_1.e.x, arg_1.e.x))), any(!vec3<bool>(arg_1.c, false, true))), !vec3<bool>(arg_1.e.x, !arg_1.d.b, true), abs(arg_1.b << (u_input.a % 32u)) <= -13465i));
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1509f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(min(1003f, -414f)))));
    let var_3 = var_2.x;
    return min(reverseBits(~select(vec3<u32>(arg_1.d.c.x, u_input.a, 1u), vec3<u32>(arg_1.d.c.x, 1u, var_1.a.c.x), vec3<bool>(var_1.a.b, true, var_1.a.b))) & ~var_1.a.c, ~_wgslsmith_mult_vec3_u32(abs(var_1.a.c), max(arg_1.d.c, ~var_1.a.c)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = 0i;
    var var_1 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a, arg_0.a), arg_1, false)))).a);
    var_1 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, var_1.a.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(-856f, global0[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_vec2_f32(arg_1 + vec2<f32>(global0[_wgslsmith_index_u32(arg_0.c.x, 19u)], -607f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-518f, arg_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1)))));
    var var_2 = countOneBits(-reverseBits(~select(vec4<i32>(var_0, var_0, 0i, 47564i), vec4<i32>(2147483647i, var_0, 1i, var_0), vec4<bool>(arg_0.b, var_1.a.b, var_1.a.b, false))));
    var var_3 = arg_0.c;
    return select(vec2<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(false, var_1.a.b, true)))), all(select(vec3<bool>(true, arg_0.b, true), vec3<bool>(var_1.a.b, arg_0.b, true), vec3<bool>(false, var_1.a.b, false))) && (!arg_0.b && var_1.a.b)), select(select(select(vec2<bool>(false, var_1.a.b), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_1.a.b, var_1.a.b)), true), vec2<bool>(var_1.a.b, var_1.a.b), func_2(vec2<f32>(arg_0.a, -1011f)).a.b), vec2<bool>(any(select(vec2<bool>(arg_0.b, var_1.a.b), vec2<bool>(false, arg_0.b), vec2<bool>(true, arg_0.b))), global0[_wgslsmith_index_u32(~arg_0.c.x, 19u)] <= arg_1.x), select(select(vec2<bool>(arg_0.b, var_1.a.b), vec2<bool>(true, arg_0.b), select(vec2<bool>(arg_0.b, var_1.a.b), vec2<bool>(var_1.a.b, false), arg_0.b)), !(!vec2<bool>(false, var_1.a.b)), all(vec3<bool>(var_1.a.b, arg_0.b, true)))), arg_0.c.x < max(~1u, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_mod_i32(35441i, -28951i), -1i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-482f - global0[_wgslsmith_index_u32(u_input.a, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33837u, u_input.a), vec2<u32>(u_input.a, u_input.a)), 19u)])))));
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(31868u ^ _wgslsmith_mult_u32(u_input.a, ~43831u), 19u)])), true, vec3<u32>(u_input.a, ~1u ^ firstLeadingBit(4294967295u | u_input.a), u_input.a));
    let var_4 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1683f), var_3.b, _wgslsmith_add_vec3_u32(firstTrailingBit(func_1(vec3<f32>(var_1, -403f, var_1), Struct_2(-1071f, -32935i, true, Struct_1(1000f, false, vec3<u32>(97780u, var_3.c.x, var_3.c.x)), vec2<bool>(var_3.b, false)))), ~vec3<u32>(0u, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-799f)), _wgslsmith_f_op_f32(var_3.a + -540f))))));
    var var_5 = !(var_4.x & false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(abs(~6711i), select(-2147483647i, firstTrailingBit(1i), !var_3.b))), firstTrailingBit(~(~(~vec3<u32>(53349u, 26377u, 40327u)))));
}

