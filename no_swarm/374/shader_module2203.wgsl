struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global1: Struct_3;

var<private> global2: u32 = 108476u;

var<private> global3: bool;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = min(_wgslsmith_clamp_i32(u_input.c, -33102i, 55278i), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.e), vec2<i32>(2147483647i, 30884i)), min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.e))) & _wgslsmith_mult_i32(-u_input.e, 1i), u_input.e));
    global0 = array<vec3<bool>, 30>();
    var var_1 = Struct_1(firstTrailingBit(0u));
    global3 = var_0 < (1i | -(~u_input.e << (1u % 32u)));
    var var_2 = select(global1.a.wxz, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(74250u, var_1.a, 4294967295u), ~vec3<u32>(arg_1.a, var_1.a, 0u)) << ((global1.b.x ^ _wgslsmith_div_u32(4294967295u, 56316u)) % 32u), 16569u >> (countOneBits(~global1.b.x) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(48126u), ~29184u), u_input.d.zz)), true);
    return global0[_wgslsmith_index_u32(~u_input.d.x, 30u)];
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = ~max(u_input.d.yx, select(u_input.d.xz, vec2<u32>(_wgslsmith_clamp_u32(u_input.b, arg_0.a, arg_0.a), ~arg_0.a), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))));
    var var_1 = func_3(false, arg_0, arg_0);
    var var_2 = Struct_3(select(global1.a | (reverseBits(global1.a) & abs(vec4<u32>(1971u, 4294967295u, global1.b.x, 23152u))), global1.a, true), vec3<u32>(~arg_2.a, 0u, max(~(~arg_0.a), ~global1.b.x << (~81913u % 32u))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1014f, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-global1.c.x)), -166f))), global1.d);
    global2 = ~1u;
    var_2 = Struct_3(~vec4<u32>(1u, firstLeadingBit(arg_2.a), _wgslsmith_add_u32(abs(arg_2.a), 1u), 72635u), global1.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - 2111f))), -1031f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - -966f))), Struct_1(1u));
    return 40699i >> (~_wgslsmith_div_u32(15499u, arg_2.a) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    var var_0 = -vec3<i32>(-7230i, _wgslsmith_mult_i32(countOneBits(arg_0) >> (arg_1.x % 32u), max(41684i, arg_3)), -1i);
    let var_1 = vec3<u32>(_wgslsmith_div_u32(arg_1.x, firstLeadingBit(arg_1.x << (0u % 32u))), ~(~(~arg_2.a)), ~(abs(28858u) << (arg_1.x % 32u))) ^ vec3<u32>(4294967295u, 4294967295u, u_input.b);
    global3 = all(select(!vec4<bool>(true, any(vec2<bool>(false, false)), all(vec2<bool>(false, true)), true), !select(vec4<bool>(true, true, true, true), select(global4[_wgslsmith_index_u32(1u, 18u)], vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, true, false)), false));
    let var_2 = ~(~39239u);
    global2 = _wgslsmith_sub_u32(var_1.x, _wgslsmith_clamp_u32(0u, var_1.x, ~1u) & arg_2.a);
    return Struct_3(global1.a, _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_2 | u_input.b, arg_1.x), ~(arg_2.a | global1.d.a), u_input.d.x), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(671f * 1686f), _wgslsmith_f_op_f32(1233f * -1886f), global1.c.x) + vec3<f32>(_wgslsmith_f_op_f32(-1027f - global1.c.x), -766f, -898f))), Struct_1(firstLeadingBit(14466u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !global4[_wgslsmith_index_u32(arg_1.b.x, 18u)];
    var var_1 = global1.c.x;
    return Struct_2(global1.d.a);
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(trunc(-449f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(348f - 1101f))))));
    let var_1 = func_5(Struct_1(26096u), func_4(u_input.e ^ -func_2(Struct_2(10230u), 233f, Struct_1(global1.d.a)), u_input.d, Struct_1(801u), _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, u_input.e, u_input.c, 1i), ~vec4<i32>(-3999i, 1i, u_input.e, u_input.c)), vec4<i32>(-3111i, _wgslsmith_mult_i32(0i, u_input.c), 5808i, -u_input.e))), global1.d);
    global4 = array<vec4<bool>, 18>();
    var var_2 = func_4(-1i, firstLeadingBit(abs(vec3<u32>(19280u, 1u, 4294967295u))) ^ firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.d, u_input.d) ^ firstLeadingBit(vec3<u32>(var_1.a, 1u, u_input.b))), Struct_1(~var_1.a), u_input.e).d;
    var_2 = func_4(countOneBits(u_input.c), ~u_input.d >> (~global1.b % vec3<u32>(32u)), func_4(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(29525i, 2147483647i, 14511i, -1i)), -vec4<i32>(-10890i, u_input.c, u_input.c, u_input.c)), ~(~4835i)), vec3<u32>(global1.d.a, ~u_input.d.x, u_input.a), func_4(-1i, ~firstLeadingBit(vec3<u32>(81285u, 0u, 4294967295u)), func_4(-7137i, ~u_input.d, func_4(u_input.e, global1.b, Struct_1(var_1.a), -2147483647i).d, _wgslsmith_mod_i32(1i, u_input.e)).d, u_input.c).d, _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, u_input.c ^ u_input.c, min(u_input.c, u_input.c), func_2(Struct_2(global1.a.x), -588f, Struct_1(4294967295u))), vec4<i32>(firstTrailingBit(-1i), -2147483647i, ~u_input.c, 1i))).d, ~(1i | u_input.e)).d;
    return Struct_2(var_2.a << (abs(~select(33045u, 65056u, false)) % 32u));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: f32) -> bool {
    var var_0 = u_input.d.x != ~func_5(global1.d, func_4(abs(u_input.c), vec3<u32>(25508u, 246u, arg_0.a) >> (u_input.d % vec3<u32>(32u)), func_4(7425i, u_input.d, global1.d, u_input.e).d, -2147483647i << (arg_0.a % 32u)), Struct_1(~arg_1.a)).a;
    var var_1 = -29433i;
    var_0 = -2704f > arg_3;
    return any(!global0[_wgslsmith_index_u32(func_5(Struct_1(_wgslsmith_dot_vec4_u32(global1.a, global1.a)), Struct_3(firstTrailingBit(global1.a), global1.a.zxw, global1.c, Struct_1(42377u)), func_4(u_input.e, ~global1.b, Struct_1(u_input.d.x), u_input.c).d).a, 30u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -727f;
    global3 = func_6(func_1(), func_1(), _wgslsmith_div_vec3_f32(global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, var_0)));
    let var_1 = false;
    global0 = array<vec3<bool>, 30>();
    var var_2 = Struct_1(min(4294967295u | (~0u << (_wgslsmith_mult_u32(global1.b.x, global1.b.x) % 32u)), 4294967295u));
    let var_3 = Struct_1(54479u);
    let x = u_input.a;
    s_output = StorageBuffer(1000f, -800f, 1245f);
}

