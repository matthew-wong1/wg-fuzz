struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<i32>(0i, -50123i, 58585i), i32(-2147483648), vec2<i32>(22172i, 1i)), vec2<i32>(97305i, 0i), vec3<bool>(false, true, true));

var<private> global3: f32 = -582f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(-2147483647i, u_input.a, global0.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1009f, -649f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-416f, -1437f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1432f, 1000f)))))), !(reverseBits(-global0.x) <= -29719i)));
    let var_2 = global2.c.x;
    let var_3 = ~1u;
    var var_4 = !(_wgslsmith_div_i32(-4311i, ~var_0.x) >= global0.x) || (var_1.x >= _wgslsmith_f_op_f32(-var_1.x));
    return 29683u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_4) -> vec4<bool> {
    global1 = vec2<u32>(1u, 1u);
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) * -447f), -320f)), 260f);
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(-2267f * arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(559f + _wgslsmith_f_op_f32(round(arg_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 2173f) * -830f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(587f, arg_0.x))))));
    global3 = arg_0.x;
    let var_1 = 4294967295u >> (~func_3() % 32u);
    return select(select(!vec4<bool>(all(vec4<bool>(false, true, global2.c.x, arg_2.a.x)), !arg_2.a.x, false || arg_2.a.x, any(vec3<bool>(arg_2.a.x, false, global2.c.x))), select(vec4<bool>(all(global2.c), all(vec4<bool>(true, true, true, global2.c.x)), true & arg_2.a.x, true), !(!vec4<bool>(arg_2.a.x, arg_2.a.x, true, global2.c.x)), vec4<bool>(false, arg_2.a.x || global2.c.x, false, arg_2.a.x == true)), global2.c.x), select(vec4<bool>(true, true, true, true), vec4<bool>(all(!global2.c), false, arg_2.a.x, false), select(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x), !(!vec4<bool>(true, false, true, global2.c.x)), !all(vec4<bool>(false, global2.c.x, true, true)))), select(select(!(!vec4<bool>(arg_2.a.x, true, global2.c.x, global2.c.x)), select(vec4<bool>(false, global2.c.x, global2.c.x, true), vec4<bool>(true, true, global2.c.x, false), !vec4<bool>(false, global2.c.x, true, false)), vec4<bool>(false, all(vec4<bool>(arg_2.a.x, false, global2.c.x, false)), arg_2.a.x, !arg_2.a.x)), select(!select(vec4<bool>(true, arg_2.a.x, false, false), vec4<bool>(arg_2.a.x, true, false, false), arg_2.a.x), !(!vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x)), any(vec4<bool>(arg_2.a.x, global2.c.x, arg_2.a.x, arg_2.a.x))), !select(select(vec4<bool>(global2.c.x, false, true, global2.c.x), vec4<bool>(true, global2.c.x, global2.c.x, arg_2.a.x), global2.c.x), !vec4<bool>(false, true, global2.c.x, true), global2.c.x & arg_2.a.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = !select(select(vec4<bool>(true, arg_3.c.x, !arg_2, true), select(select(vec4<bool>(arg_2, true, true, true), vec4<bool>(global2.c.x, arg_3.c.x, arg_3.c.x, true), global2.c.x), !vec4<bool>(global2.c.x, false, false, global2.c.x), vec4<bool>(true, true, global2.c.x, false)), vec4<bool>(!arg_3.c.x, true, any(global2.c), all(arg_3.c.yy))), !func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(903f, -2693f, -444f) * vec3<f32>(944f, -836f, -577f)), vec3<u32>(119027u, 27245u, global1.x), Struct_4(arg_3.c.zy)), true);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(-1i, Struct_1(global2.a.a ^ vec3<i32>(global0.x, 1i, u_input.a), ~(-12348i), vec2<i32>(u_input.a, -2147483647i) ^ vec2<i32>(-2147483647i, global2.a.a.x)), global2.c.x, Struct_2(Struct_1(vec3<i32>(global2.b.x, u_input.a, 54824i), global0.x, vec2<i32>(1i, global2.a.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(global2.b.x, -16461i), vec2<i32>(-20384i, u_input.a)), vec3<bool>(global2.c.x, global2.c.x, global2.c.x))));
    let var_1 = Struct_2(Struct_1(global2.a.a, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, global0.x, 1i, -2147483647i), select(vec4<i32>(u_input.a, 0i, global0.x, -2147483647i), vec4<i32>(u_input.a, global2.a.a.x, 5816i, 16637i), vec4<bool>(false, false, global2.c.x, true))), ~max(vec4<i32>(-17131i, -1i, -17507i, u_input.a), vec4<i32>(65381i, u_input.a, global0.x, u_input.a))), vec2<i32>(-1i) * -min(vec2<i32>(global0.x, -55474i), global2.a.c)), ~global2.b, global2.c);
    let var_2 = Struct_2(global2.a, firstTrailingBit(var_1.a.a.yz), vec3<bool>(func_1(_wgslsmith_mult_i32(global0.x, 2147483647i), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), var_1.b.x, vec2<i32>(31697i, -1i)), var_1.c.x, var_1) == select(19252u & global1.x, u_input.b.x << (69810u % 32u), func_2(vec3<f32>(1063f, 143f, 1000f), vec3<u32>(2995u, 0u, u_input.b.x), Struct_4(global2.c.yz)).x), var_1.c.x, !var_1.c.x));
    global1 = _wgslsmith_mult_vec2_u32(u_input.b.xy, vec2<u32>(0u, u_input.b.x) ^ vec2<u32>((global1.x & 16133u) ^ u_input.b.x, 22570u));
    global0 = ~global2.b;
    var_0 = min(abs(0u), 3736u);
    let var_3 = abs(_wgslsmith_sub_vec4_i32((min(vec4<i32>(-47662i, var_2.a.b, var_2.b.x, -2797i), vec4<i32>(var_1.a.a.x, global2.b.x, 0i, var_1.a.c.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -46918i, -2438i, -11581i), vec4<i32>(2147483647i, 0i, var_1.a.a.x, 0i))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 69914u, global1.x, 58725u), vec4<u32>(54074u, 1u, 11176u, 30026u)) % vec4<u32>(32u)), -(~(-vec4<i32>(-2147483647i, -379i, -2147483647i, u_input.a)))));
    global2 = Struct_2(var_1.a, max(-(~vec2<i32>(var_1.a.c.x, 2147483647i)), var_2.b & var_3.xz) >> (((_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)) ^ countOneBits(u_input.b.zz)) ^ ~vec2<u32>(0u, u_input.b.x)) % vec2<u32>(32u)), !(!func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(979f, 1149f, -518f), vec3<f32>(460f, 1885f, 1460f), vec3<bool>(var_1.c.x, global2.c.x, global2.c.x))), u_input.b.ywx, Struct_4(vec2<bool>(var_2.c.x, true))).yyw));
    var_0 = abs(firstTrailingBit(~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, var_1.b.x), 17715i), var_2.a.a.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -536f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(565f, -267f))), vec2<f32>(_wgslsmith_f_op_f32(161f + 553f), 956f), global2.c.x)))));
}

