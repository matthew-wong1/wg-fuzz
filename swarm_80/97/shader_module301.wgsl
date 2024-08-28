struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec3<u32>(0u, 24335u, 0u), Struct_1(50542i), 196f), Struct_3(vec3<u32>(1u, 0u, 4294967295u), Struct_1(71083i), -566f), Struct_3(vec3<u32>(4294967295u, 4294967295u, 78405u), Struct_1(6079i), 315f), Struct_3(vec3<u32>(4030u, 162564u, 50739u), Struct_1(24633i), 356f), Struct_3(vec3<u32>(23431u, 0u, 1u), Struct_1(-35904i), -1677f), Struct_3(vec3<u32>(4294967295u, 11135u, 1u), Struct_1(i32(-2147483648)), 256f), Struct_3(vec3<u32>(4294967295u, 2301u, 4294967295u), Struct_1(28693i), -531f), Struct_3(vec3<u32>(11819u, 0u, 643u), Struct_1(-15148i), -2555f), Struct_3(vec3<u32>(25409u, 17069u, 66706u), Struct_1(i32(-2147483648)), 1506f), Struct_3(vec3<u32>(19707u, 4294967295u, 4294967295u), Struct_1(1i), -404f), Struct_3(vec3<u32>(6543u, 4294967295u, 103400u), Struct_1(-46827i), 456f), Struct_3(vec3<u32>(20060u, 66440u, 30158u), Struct_1(i32(-2147483648)), -473f), Struct_3(vec3<u32>(4294967295u, 1u, 33400u), Struct_1(-7163i), -232f), Struct_3(vec3<u32>(20557u, 1u, 21941u), Struct_1(i32(-2147483648)), -687f), Struct_3(vec3<u32>(0u, 90796u, 1u), Struct_1(2147483647i), 795f), Struct_3(vec3<u32>(1u, 8334u, 4294967295u), Struct_1(1i), 1750f), Struct_3(vec3<u32>(27756u, 0u, 43184u), Struct_1(-23587i), -2514f), Struct_3(vec3<u32>(34774u, 59170u, 4294967295u), Struct_1(-61091i), -1177f), Struct_3(vec3<u32>(0u, 6754u, 1u), Struct_1(2547i), 995f));

var<private> global2: u32 = 19135u;

var<private> global3: vec3<f32> = vec3<f32>(1000f, 1000f, 331f);

var<private> global4: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_1.x ^ (max(u_input.b.x, arg_1.x) << (max(arg_2.a, arg_3.a) % 32u)), vec4<i32>(arg_0, arg_3.b.x, _wgslsmith_dot_vec4_i32(arg_3.b, vec4<i32>(min(-28662i, arg_2.d), global0.a, select(arg_3.d, arg_2.d, true), u_input.a >> (14974u % 32u))), _wgslsmith_add_i32(~max(arg_2.d, global0.a), -global0.a)), select(vec2<bool>(arg_3.c.x, arg_3.c.x), select(!arg_2.c, arg_3.c, vec2<bool>(arg_2.c.x, arg_3.c.x)), !arg_3.c), (arg_2.d | _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, arg_2.b.x, u_input.a, arg_0), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 38510i, -2147483647i, 17390i), vec4<i32>(33363i, u_input.a, arg_3.d, arg_0)))) | _wgslsmith_mod_i32(-(i32(-1i) * -77929i), max(global0.a, 1i)));
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global3.x, global3.x)))))));
    let var_1 = Struct_1(-39510i);
    global2 = ~(~(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(70830u, arg_3.a)), ~arg_1.zz) & var_0.a));
    var var_2 = arg_3.b.wxx;
    return var_2.x;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    return select(firstTrailingBit(-(~(arg_0 & arg_1.b.xy))), _wgslsmith_sub_vec2_i32(max(-vec2<i32>(2147483647i, u_input.a) | abs(arg_0), arg_1.b.yx), min(-arg_1.b.yx, countOneBits(arg_0))), !vec2<bool>(any(select(vec3<bool>(false, arg_1.c.x, false), vec3<bool>(arg_1.c.x, arg_3, false), true)), arg_1.c.x));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(~(-arg_0.a), _wgslsmith_mult_i32(1i, -21266i), -_wgslsmith_dot_vec4_i32(-(~vec4<i32>(15649i, global0.a, u_input.a, 1i)), vec4<i32>(~(-2147483647i), u_input.a ^ arg_0.a, _wgslsmith_sub_i32(global0.a, 1i), global0.a)), ~(-1i));
    var var_1 = func_4(vec2<i32>(_wgslsmith_div_i32(0i >> (~u_input.b.x % 32u), _wgslsmith_clamp_i32(0i, 2147483647i, u_input.a) >> (0u % 32u)), max(arg_0.a, _wgslsmith_add_i32(func_3(36796i, vec3<u32>(4294967295u, 0u, u_input.b.x), Struct_2(u_input.b.x, vec4<i32>(global0.a, 4112i, 35401i, -7876i), vec2<bool>(true, false), 0i), Struct_2(76190u, vec4<i32>(var_0.x, -24388i, u_input.a, 0i), vec2<bool>(false, false), -40193i)), -16748i))), Struct_2(~(u_input.b.x >> (1u % 32u)) & 0u, ~(-vec4<i32>(3112i, arg_0.a, arg_0.a, -37827i) >> (~vec4<u32>(22765u, u_input.b.x, u_input.b.x, 40051u) % vec4<u32>(32u))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), var_0.x > arg_0.a)), firstLeadingBit(_wgslsmith_sub_i32(~var_0.x, global0.a))), Struct_1(-1i), all(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(arg_0.a > var_0.x, true, u_input.a == arg_0.a, false), vec4<bool>(true, true, true, true))));
    return Struct_2(u_input.b.x, (vec4<i32>(-1i) * -vec4<i32>(21342i, -10394i, 25282i, arg_0.a)) ^ -(~vec4<i32>(global0.a, var_1.x, -23465i, var_1.x)), select(vec2<bool>(true, false), select(vec2<bool>(global3.x == global3.x, true), vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), vec2<bool>(false, false), false), all(vec2<bool>(true, true)))), 2147483647i);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = -49727i;
    let var_1 = Struct_2(4294967295u, _wgslsmith_sub_vec4_i32(~select(arg_0.b ^ arg_0.b, vec4<i32>(4572i, -2147483647i, 47600i, -35524i) >> (vec4<u32>(27573u, 4294967295u, arg_0.a, u_input.b.x) % vec4<u32>(32u)), select(vec4<bool>(true, true, arg_0.c.x, arg_0.c.x), vec4<bool>(arg_0.c.x, false, arg_0.c.x, false), arg_0.c.x)), abs(-arg_0.b >> (~vec4<u32>(arg_0.a, 1u, u_input.b.x, 52125u) % vec4<u32>(32u)))), vec2<bool>(!all(!arg_0.c), false), u_input.a);
    var var_2 = Struct_1(~arg_0.b.x);
    return false;
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_2(4294967295u << (0u % 32u), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, u_input.a), -u_input.a, _wgslsmith_mod_i32(-26063i, ~global0.a), global0.a), firstLeadingBit(vec4<i32>(abs(u_input.a), 0i, global0.a | 1i, firstLeadingBit(global0.a)))), vec2<bool>(true, func_5(func_2(Struct_1(global0.a)), _wgslsmith_f_op_f32(1229f * 1086f)) && true), -global0.a);
    global0 = Struct_1(global0.a);
    global4 = 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(-656f)))));
    var var_2 = var_0.b.wx;
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.x, 242f), global3.x, true)) - -788f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-908f)), global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

