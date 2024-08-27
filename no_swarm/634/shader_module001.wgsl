struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<i32>, 25>;

var<private> global2: Struct_3 = Struct_3(1i, Struct_2(2119f), 2147483647i, Struct_2(-1035f), vec4<bool>(true, true, true, false));

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    global2 = Struct_3(global2.c, global2.b, -(~(global2.a >> (~13414u % 32u))), Struct_2(1000f), !vec4<bool>(true, !select(true, false, global3.x), u_input.a.x >= _wgslsmith_sub_u32(3474u, 0u), false));
    var var_0 = true;
    var var_1 = Struct_3(_wgslsmith_div_i32(-2147483647i, ~2147483647i), Struct_2(global2.b.a), -48822i, global2.b, vec4<bool>(!all(vec2<bool>(true, global3.x)) & global2.e.x, global2.e.x, _wgslsmith_f_op_f32(427f * _wgslsmith_f_op_f32(abs(global2.d.a))) >= -910f, true));
    var var_2 = false;
    var var_3 = -vec3<i32>(-reverseBits(global2.a), firstLeadingBit(select(1i, 27874i, global3.x)), var_1.a) << (vec3<u32>(abs(select(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 52688u), global3.x & false)), u_input.a.x, u_input.a.x) % vec3<u32>(32u));
    return -min(vec2<i32>(~0i, _wgslsmith_sub_i32(var_3.x, global2.c)) << (countOneBits(~vec2<u32>(u_input.a.x, 40881u)) % vec2<u32>(32u)), var_3.yy);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global1 = array<vec4<i32>, 25>();
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(global2.b.a - -517f)), _wgslsmith_f_op_f32(454f + _wgslsmith_f_op_f32(select(global0.a, 560f, true)))))));
    var var_1 = _wgslsmith_clamp_vec3_i32(~(((vec3<i32>(1i, global2.c, -16076i) ^ vec3<i32>(-43120i, 25751i, 2147483647i)) << (min(u_input.a.yyw, u_input.a.xyy) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(~u_input.a.ywx, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), u_input.a.yxz), u_input.a.zwz) % vec3<u32>(32u))), ~vec3<i32>(~_wgslsmith_mult_i32(-37526i, global2.c), countOneBits(~var_0.a.x), var_0.a.x), ~vec3<i32>(arg_0, 46738i, -(i32(-1i) * -54387i)));
    global0 = global2.b;
    var_1 = firstTrailingBit(abs(vec3<i32>(countOneBits(_wgslsmith_div_i32(-19220i, 2147483647i)), var_0.a.x, var_1.x & ~48407i)));
    return global2.b;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_3(57967i, func_2(35216i, vec3<bool>(select(any(global2.e.xxw), global3.x, arg_3.e.x), !arg_3.e.x, global3.x), true), arg_3.a, arg_1, vec4<bool>(global2.e.x, global3.x & global3.x, true, select(all(!arg_3.e.xyy), !(global2.e.x & false), !global3.x)));
    var_0 = global2.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a))));
    global2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a, 35822i, 1i, 9867i), vec4<i32>(min(i32(-1i) * -2147483647i, 0i), arg_3.a, (-32682i ^ var_1.c) & _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -41689i, 1i), vec3<i32>(1i, -1i, 1i)), 33565i)), arg_1, -1i, Struct_2(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global2.b.a))), select(vec4<bool>(any(vec3<bool>(global3.x, arg_3.e.x, global2.e.x)), true, arg_3.e.x | global3.x, true), arg_3.e, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.c, var_1.c), vec2<i32>(-12149i, var_1.c), vec2<i32>(arg_3.c, -27419i)), vec2<i32>(71464i, global2.a) ^ vec2<i32>(var_1.a, global2.a)) <= global2.a));
    return arg_3.c;
}

fn func_5(arg_0: i32) -> Struct_2 {
    var var_0 = all(select(select(global2.e.wz, vec2<bool>(global0.a <= global0.a, true), !(!global3.x)), !vec2<bool>(any(global2.e.yx), global3.x), !select(vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x), !global2.e.x)));
    let var_1 = u_input.a.x;
    global2 = Struct_3(_wgslsmith_mult_i32(-2147483647i & _wgslsmith_mod_i32(arg_0, reverseBits(arg_0)), 1i), func_2(5600i, !vec3<bool>(any(vec4<bool>(global2.e.x, true, false, false)), all(global2.e), global2.b.a != 1571f), false), arg_0 ^ -1921i, global2.d, vec4<bool>(!(var_1 < 43991u), true & global2.e.x, global2.e.x, false));
    global0 = func_2(1i, global2.e.ywx, global2.e.x);
    var_0 = !(true && global2.e.x);
    return global2.d;
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(2147483647i << (u_input.a.x % 32u));
    global0 = func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -abs(vec2<i32>(-2147483647i, global2.a)), vec2<i32>(func_4(vec3<f32>(global0.a, global2.b.a, global0.a), func_2(global2.c, global2.e.xwx, true), u_input.a.zyx, Struct_3(52353i, Struct_2(global2.b.a), -33601i, Struct_2(global2.b.a), vec4<bool>(global2.e.x, false, global2.e.x, true))), func_4(vec3<f32>(-1391f, -1140f, global2.b.a), func_2(global2.c, global2.e.wwz, false), u_input.a.zwx, Struct_3(-2147483647i, global2.d, global2.c, global2.b, global2.e)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) * _wgslsmith_f_op_f32(f32(-1f) * -165f));
    var var_2 = Struct_1(func_3(), global0.a, global2.d.a);
    return Struct_1(~var_2.a, global2.d.a, -498f);
}

fn func_6(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.x, -1i), vec2<i32>(_wgslsmith_mult_i32(global2.a, i32(-1i) * -arg_0.a.x), 1i));
    global1 = array<vec4<i32>, 25>();
    var var_2 = all(global2.e.zwx);
    global2 = Struct_3(_wgslsmith_clamp_i32(var_1.x, abs(1i), var_1.x), global2.d, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a * 717f), global2.b.a, -332f)), Struct_2(_wgslsmith_f_op_f32(-arg_0.c)), firstTrailingBit(max(vec3<u32>(u_input.a.x, u_input.a.x, 64353u), u_input.a.zxw) & (vec3<u32>(0u, 10498u, 32536u) & vec3<u32>(u_input.a.x, u_input.a.x, 1u))), Struct_3(-18928i, Struct_2(_wgslsmith_f_op_f32(global2.d.a * 1198f)), ~(-10298i), global2.b, global2.e)), Struct_2(global2.b.a), select(global2.e, vec4<bool>(!(!global3.x), (29654i & var_1.x) > arg_0.a.x, any(vec3<bool>(false, true, true)), global2.e.x), select(global2.e, global2.e, global2.e)));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b;
    var var_0 = ~abs(~(u_input.a.x ^ 85097u));
    let var_1 = Struct_3(func_6(func_1()), func_5(~_wgslsmith_add_i32(4433i, global2.c) | -abs(2147483647i)), global2.c, Struct_2(_wgslsmith_div_f32(-1233f, 129f)), !(!vec4<bool>(any(global2.e.xx), false, true, false)));
    var var_2 = _wgslsmith_sub_u32(0u, firstTrailingBit(~(~u_input.a.x << (~u_input.a.x % 32u))));
    let var_3 = i32(-1i) * -(i32(-1i) * -(~var_1.a));
    global2 = var_1;
    var var_4 = Struct_3(var_3, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - -423f) * _wgslsmith_f_op_f32(-global2.b.a)) * func_2(-global2.a, var_1.e.zxy, !global2.e.x).a)), var_1.c, Struct_2(var_1.b.a), vec4<bool>(global3.x && true, true, true, any(vec2<bool>(global3.x, all(var_1.e.xwy)))));
    let var_5 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(global2.c, var_4.c >> (0u % 32u)), _wgslsmith_div_vec2_i32(max(vec2<i32>(4682i, 0i), vec2<i32>(global2.a, global2.c)), vec2<i32>(global2.c, var_3) ^ vec2<i32>(-2147483647i, var_3))) & ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.a), vec2<i32>(-1i, global2.a)), firstTrailingBit(vec2<i32>(var_4.c, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), 642f)) - 150f) * _wgslsmith_f_op_f32(-global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_clamp_vec3_i32(firstTrailingBit(select(vec3<i32>(-8559i, var_4.a, 2054i), vec3<i32>(1i, 2147483647i, var_5.a.x), global2.e.yyx)), vec3<i32>(2147483647i, var_5.a.x, var_1.a) & (vec3<i32>(var_3, var_1.a, var_3) | vec3<i32>(0i, 29168i, var_3)), vec3<i32>(4669i, global2.c, -global2.c)) | (min(vec3<i32>(0i, var_4.a, 1i), max(vec3<i32>(33784i, global2.a, 5868i), vec3<i32>(var_5.a.x, var_3, 2147483647i))) | _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a, -3617i, 3865i), vec3<i32>(global2.a, 48840i, 1i)), -vec3<i32>(-1i, 21435i, 28760i))), 2147483647i);
}

