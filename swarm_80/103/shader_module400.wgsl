struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = vec3<u32>(1084u, arg_0.x, u_input.d.x);
    var var_1 = -_wgslsmith_mod_i32(arg_1, ~(-1i));
    var_1 = ~firstLeadingBit(_wgslsmith_dot_vec3_i32(-global0.c.xwz, -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_1, -1i), vec3<i32>(0i, arg_1, -1i), u_input.a.xyz)));
    var_0 = arg_0 & vec3<u32>(firstTrailingBit(select(~u_input.b, arg_0.x, global0.c.x >= u_input.c.x)), u_input.d.x, ~(~37861u));
    var_0 = arg_0;
    return global0.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.d.x, u_input.b), vec3<u32>(4294967295u, 1u, 4294967295u)), 0i | (arg_0.x >> (0u % 32u)))))), vec2<bool>(true, !all(vec3<bool>(true, true, true))), vec4<i32>(global0.c.x, _wgslsmith_clamp_i32(global0.c.x, ~(-arg_0.x), u_input.c.x), arg_0.x, u_input.c.x));
    let var_0 = all(select(!(!vec4<bool>(arg_1.x, false, global0.b.x, arg_1.x)), vec4<bool>(global0.b.x, !arg_1.x | (true & arg_1.x), !arg_1.x, !(arg_1.x | true)), vec4<bool>(!arg_1.x, _wgslsmith_f_op_f32(floor(global0.a.x)) > _wgslsmith_f_op_f32(394f * -1393f), true, true)));
    var var_1 = global0.c.x;
    var var_2 = -(_wgslsmith_sub_i32(-38067i, -5176i) | u_input.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(206f * -645f), _wgslsmith_f_op_f32(global0.a.x - -720f), 1209f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, global0.a.x, -2087f)) - _wgslsmith_f_op_vec3_f32(-global0.a))))), arg_1, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_clamp_i32(-12995i, -2147483647i, arg_0.x), u_input.c.x, global0.c.x), u_input.a), ~countOneBits(abs(u_input.a))));
    return var_3;
}

fn func_3() -> Struct_1 {
    var var_0 = countOneBits(3488u);
    let var_1 = !vec4<bool>(global0.b.x, !global0.b.x, global0.b.x, !(!global0.b.x) | false);
    var var_2 = vec3<i32>(-2147483647i, 25149i, ~u_input.c.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 13439u, u_input.b), vec3<u32>(~(~u_input.b), abs(1u), ~47962u)) % vec3<u32>(32u));
    var var_3 = -38127i;
    var_3 = _wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x);
    return func_1(max(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_2.x, 0i, 9204i, -2147483647i)) | ~vec4<i32>(global0.c.x, -34709i, 2147483647i, var_2.x), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 39780i, 33906i, var_2.x), u_input.a), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), select(vec4<i32>(var_2.x, var_2.x, var_2.x, 10065i), firstLeadingBit(vec4<i32>(-2147483647i, var_2.x, u_input.c.x, 2147483647i)), !global0.b.x)), -(global0.c << (vec4<u32>(u_input.d.x, 1u, 1u, u_input.b) % vec4<u32>(32u)))), vec2<bool>(true, u_input.b < ~_wgslsmith_div_u32(u_input.d.x, u_input.b)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(floor(-996f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, 1110f, arg_0.b, -1448f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1806f, -146f, arg_0.b, arg_0.b) + vec4<f32>(-751f, -215f, -404f, -502f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, 496f, global0.a.x, 1579f) * vec4<f32>(-314f, 363f, arg_0.b, global0.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2222f, global0.a.x, -846f, 692f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1571f, 299f, -1133f, 106f))), !vec4<bool>(false, true, arg_2.b.x, arg_0.c))))));
    let var_1 = arg_2;
    let var_2 = func_1(-_wgslsmith_sub_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(global0.c.x, i32(-1i) * -1i, -1i, global0.c.x | 64190i)), vec2<bool>(false, true));
    var_0 = vec4<f32>(775f, func_1(vec4<i32>(_wgslsmith_add_i32(-25483i, u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -2147483647i, -1i, var_2.c.x), vec4<i32>(arg_2.c.x, 9147i, 12178i, 39929i)), 1i, ~_wgslsmith_sub_i32(arg_3, -2147483647i)), select(func_1(-global0.c, var_1.b).b, !global0.b, !global0.b)).a.x, func_1(var_1.c | select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 65875i, 1i, 1i), var_2.c), var_1.c, vec4<bool>(true, true, true, true)), select(select(select(vec2<bool>(arg_2.b.x, global0.b.x), var_1.b, false), vec2<bool>(true, true), vec2<bool>(true, true)), !vec2<bool>(var_2.b.x, false), func_3().b)).a.x, _wgslsmith_f_op_f32(-1001f - -1486f));
    let var_3 = 1371f;
    return select(select(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(global0.c.xww, var_2.c.zwy), select(var_1.c.yzy, ~global0.c.ywy, select(vec3<bool>(true, false, var_2.b.x), vec3<bool>(false, false, var_2.b.x), arg_2.b.x))), countOneBits(abs(abs(vec3<i32>(arg_3, -1i, var_2.c.x)))), vec3<bool>(true, func_1(global0.c, select(var_1.b, var_1.b, arg_2.b.x)).b.x, var_1.c.x != (var_2.c.x & arg_1))), ~u_input.a.ywz, vec3<bool>(!(!var_1.b.x), (_wgslsmith_sub_i32(var_1.c.x, var_1.c.x) >= _wgslsmith_mult_i32(arg_3, var_2.c.x)) | false, any(vec3<bool>(!arg_0.c, arg_0.c, var_1.b.x))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), arg_1.b, _wgslsmith_f_op_f32(global0.a.x - -1852f))), arg_2.b, _wgslsmith_mod_vec4_i32(arg_2.c, global0.c) >> (~(~(~vec4<u32>(arg_1.a.x, u_input.d.x, u_input.b, u_input.b))) % vec4<u32>(32u)));
    let var_1 = select(!(!select(!vec3<bool>(arg_1.c, true, arg_2.b.x), !vec3<bool>(arg_1.c, arg_2.b.x, global0.b.x), all(vec2<bool>(true, var_0.b.x)))), !(!select(select(vec3<bool>(true, arg_2.b.x, arg_2.b.x), vec3<bool>(true, arg_1.c, arg_2.b.x), var_0.b.x), !vec3<bool>(arg_1.c, false, arg_1.c), var_0.b.x & false)), false & all(vec2<bool>(true, true)));
    let var_2 = ~select(vec4<u32>(abs(_wgslsmith_mod_u32(0u, 88002u)), min(countOneBits(25730u), _wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a)), u_input.d.x, 671u), firstLeadingBit(~(~vec4<u32>(48563u, arg_1.a.x, 4294967295u, 28895u))), vec4<bool>(arg_2.b.x & !var_0.b.x, arg_1.c, true, any(vec4<bool>(var_1.x, false, global0.b.x, false))));
    global0 = func_3();
    let var_3 = !select(!vec4<bool>(arg_2.b.x, !var_1.x, func_1(vec4<i32>(arg_0, u_input.c.x, 0i, -54815i), arg_2.b).b.x, func_3().b.x), vec4<bool>(!arg_1.c, func_3().b.x, -334f <= func_1(vec4<i32>(0i, -2147483647i, 18714i, -2147483647i), vec2<bool>(var_1.x, arg_1.c)).a.x, any(!vec4<bool>(var_0.b.x, false, true, arg_2.b.x))), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-296f + global0.a.x))), 219f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = ~(~2988u);
    var var_2 = any(!select(vec4<bool>(true, !global0.b.x, global0.b.x, all(vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, !global0.b.x), !global0.b.x));
    let var_3 = func_5(1i ^ global0.c.x, Struct_2(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(0u, var_1, u_input.b), vec3<u32>(4294967295u, 1u, var_1), vec3<bool>(true, true, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(17160u, var_1, u_input.d.x) << (vec3<u32>(u_input.d.x, u_input.d.x, 85346u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 31602u, 3594u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 186f) - _wgslsmith_f_op_f32(sign(-1427f)))), all(!vec3<bool>(global0.b.x, false, global0.b.x)) || (any(vec2<bool>(false, false)) && global0.b.x)), func_1(-u_input.a, vec2<bool>(!global0.b.x, false)), _wgslsmith_sub_vec3_i32(func_4(Struct_2(~vec3<u32>(0u, u_input.d.x, 1u), global0.a.x, !global0.b.x), global0.c.x, func_3(), _wgslsmith_mod_i32(u_input.a.x, -global0.c.x)), vec3<i32>(61979i, _wgslsmith_sub_i32(countOneBits(u_input.c.x), -1i), _wgslsmith_mult_i32(u_input.c.x, global0.c.x))));
    global0 = func_3();
    let var_4 = func_3().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-14838i, vec4<u32>(~func_5(max(-1i, 1i), var_3, Struct_1(vec3<f32>(var_4, global0.a.x, -2576f), vec2<bool>(false, false), global0.c), -global0.c.yxz).a.x, ~(~var_1), reverseBits(var_1), _wgslsmith_sub_u32(u_input.b, 28572u) >> ((reverseBits(var_1) ^ ~u_input.b) % 32u)), countOneBits(var_3.a.xy >> (vec2<u32>(var_3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(60977u, u_input.b, var_3.a.x), var_3.a)) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-408f, -1383f, 563f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(703f, 2205f, var_3.b, var_0.x), vec4<f32>(var_3.b, global0.a.x, var_4, global0.a.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(var_3.a, u_input.a.x)).x, 1683f, -639f, _wgslsmith_f_op_f32(-var_3.b)) - vec4<f32>(_wgslsmith_f_op_f32(191f - global0.a.x), _wgslsmith_f_op_f32(sign(-923f)), -505f, global0.a.x))));
}

