struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 31>;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_5) -> bool {
    let var_0 = arg_2.b;
    var var_1 = Struct_3(arg_3.c.x, Struct_1(~vec3<u32>(~arg_2.b.a.x, 1u, 92946u), _wgslsmith_f_op_f32(154f * -1000f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -939f), global2.b.c.x, _wgslsmith_f_op_f32(1146f + -1360f)))), arg_2.a.d), max(_wgslsmith_dot_vec3_u32(~(vec3<u32>(4261u, 0u, 1804u) & arg_2.b.a), var_0.a), ~arg_2.b.a.x), select(select(global2.d, select(select(global2.d, global2.d, vec4<bool>(true, arg_3.a.a.x, false, false)), select(global2.d, global2.d, global2.d), vec4<bool>(false, true, arg_3.a.a.x, global2.d.x)), global2.d), select(vec4<bool>(false, arg_1, global2.d.x || global2.d.x, true), vec4<bool>(any(vec3<bool>(false, arg_3.a.a.x, global2.d.x)), select(false, false, false), false, select(global2.d.x, false, arg_1)), firstLeadingBit(global2.c) <= u_input.b), global2.d));
    global1 = array<vec2<f32>, 18>();
    var var_2 = _wgslsmith_f_op_f32(-345f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(-1763f - -550f), 0i == global2.b.d.x)), var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.c.x)) * -421f)));
    global0 = array<vec2<u32>, 31>();
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: i32) -> u32 {
    var var_0 = global2.b.d;
    let var_1 = !select(!global2.d.yy, vec2<bool>(func_3(_wgslsmith_sub_i32(0i, var_0.x), true, Struct_2(global2.b, Struct_1(vec3<u32>(0u, 1u, arg_2), 433f, global2.b.c, vec4<i32>(1i, 15270i, -1i, arg_3)), vec3<u32>(arg_2, 10215u, 1u)), Struct_5(Struct_4(vec3<bool>(global2.d.x, global2.d.x, false), global2.d.yy), Struct_2(global2.b, Struct_1(global2.b.a, -1978f, global2.b.c, vec4<i32>(arg_3, arg_3, -8562i, arg_3)), global2.b.a), global2.b.d.wz)), global2.d.x), any(vec3<bool>(true, true, !global2.d.x)));
    global2 = Struct_3(2147483647i, global2.b, 84822u & (u_input.b ^ select(global2.b.a.x, 46845u, !var_1.x)), select(vec4<bool>(true, var_1.x, global2.b.d.x >= max(var_0.x, arg_3), any(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, true, global2.d.x, false), global2.d))), vec4<bool>(true && all(global2.d.zzw), all(global2.d.zw), any(select(var_1, global2.d.yz, vec2<bool>(false, var_1.x))), true), vec4<bool>(false, !func_3(var_0.x, false, Struct_2(global2.b, global2.b, vec3<u32>(34140u, arg_2, 54527u)), Struct_5(Struct_4(global2.d.zwy, var_1), Struct_2(Struct_1(vec3<u32>(global2.c, 1u, 4294967295u), arg_1.x, vec3<f32>(arg_1.x, arg_1.x, 418f), global2.b.d), global2.b, global2.b.a), vec2<i32>(var_0.x, global2.a))), all(vec3<bool>(false, false, var_1.x)), all(!vec2<bool>(var_1.x, true)))));
    global2 = Struct_3(countOneBits(-43082i), global2.b, _wgslsmith_mult_u32(~(~(global2.c >> (150480u % 32u))), 1u), vec4<bool>(all(!global2.d.wz), any(!select(global2.d.wyy, global2.d.xyy, vec3<bool>(true, false, true))), firstLeadingBit(arg_3 & var_0.x) == ~(~0i), global2.d.x));
    let var_2 = Struct_2(global2.b, global2.b, global2.b.a);
    return firstLeadingBit(41760u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> Struct_2 {
    let var_0 = 620f;
    let var_1 = select(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(reverseBits(5556u), 70130u & arg_0.c), _wgslsmith_add_u32(arg_0.c | arg_1.b.c.x, 4294967295u)), vec2<u32>(u_input.b, ~(~21835u)), _wgslsmith_add_vec2_u32(arg_1.b.b.a.zx, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.b.a.x, 40186u, u_input.a, u_input.a), vec4<u32>(arg_1.b.a.a.x, u_input.b, 62269u, arg_0.b.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(22900u, 4294967295u, u_input.b), vec3<u32>(4294967295u, arg_0.b.a.x, global2.c))))), global0[_wgslsmith_index_u32(76171u, 31u)], arg_0.d.zw);
    var var_2 = Struct_5(Struct_4(!(!global2.d.zyx), select(!vec2<bool>(arg_1.a.a.x, arg_0.d.x), select(arg_1.a.a.xz, arg_0.d.yy, true), arg_0.d.yy)), arg_1.b, abs(arg_1.b.b.d.xz));
    global2 = arg_0;
    let var_3 = var_2.b;
    return arg_1.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_4(global2.d.yzy, global2.d.xw);
    global1 = array<vec2<f32>, 18>();
    var var_1 = abs(_wgslsmith_mod_vec3_u32(global2.b.a, global2.b.a));
    var_1 = min(~(~(~global2.b.a)), global2.b.a);
    var var_2 = 912f;
    return func_4(Struct_3(~(-global2.a) << (u_input.b % 32u), Struct_1(vec3<u32>(func_2(global2.b.c.x, vec2<f32>(global2.b.b, global2.b.b), global2.c, 1i), firstTrailingBit(var_1.x), 17039u), _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b.c), _wgslsmith_f_op_vec3_f32(abs(global2.b.c))), firstTrailingBit(vec4<i32>(global2.a, 0i, 0i, global2.b.d.x))), u_input.b, select(vec4<bool>(!arg_0, true, false, false), global2.d, global2.d.x)), Struct_5(Struct_4(vec3<bool>(true, true, true), !vec2<bool>(var_0.b.x, var_0.b.x)), Struct_2(global2.b, global2.b, ~(~vec3<u32>(var_1.x, 1u, 1u))), firstTrailingBit(~(~global2.b.d.zx))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = -(firstLeadingBit(func_4(Struct_3(arg_1.a.d.x, arg_1.b, u_input.a, global2.d), Struct_5(Struct_4(vec3<bool>(true, global2.d.x, global2.d.x), vec2<bool>(false, false)), Struct_2(arg_1.b, Struct_1(global2.b.a, 415f, global2.b.c, arg_1.b.d), vec3<u32>(global2.b.a.x, arg_3, 16597u)), vec2<i32>(global2.b.d.x, global2.b.d.x))).a.d.zyw) & global2.b.d.zyz);
    global1 = array<vec2<f32>, 18>();
    let var_1 = ~global2.a << (1u % 32u);
    global0 = array<vec2<u32>, 31>();
    global2 = Struct_3(23096i ^ countOneBits(select(1i, ~1i, true)), func_1(!(!(!arg_2))).b, u_input.b, global2.d);
    return global2.b;
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_5 {
    var var_0 = Struct_5(Struct_4(global2.d.yyy, vec2<bool>(false, global2.d.x)), arg_1, _wgslsmith_add_vec2_i32(vec2<i32>(3312i, _wgslsmith_mult_i32(~(-2147483647i), abs(arg_0))), select(_wgslsmith_add_vec2_i32(global2.b.d.zw & arg_1.a.d.wx, vec2<i32>(2147483647i, 28105i)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.c.x, global2.b.c.x, arg_1.b.b)), arg_1, global2.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, 84589u), vec2<u32>(u_input.b, arg_1.c.x))).d.xy, false)));
    let var_1 = 840f;
    return Struct_5(Struct_4(global2.d.wwx, !vec2<bool>(false | var_0.a.b.x, true)), var_0.b, _wgslsmith_clamp_vec2_i32(var_0.c, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1.b.d.zw, _wgslsmith_add_vec2_i32(arg_1.a.d.zx, global2.b.d.zz)), vec2<i32>(arg_0, arg_0)), vec2<i32>(-func_1(var_0.a.a.x).a.d.x, _wgslsmith_div_i32(_wgslsmith_div_i32(arg_2, var_0.c.x), ~var_0.b.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-1i << (~(0u | countOneBits(u_input.b)) % 32u), Struct_2(func_5(global2.b.c, func_1(false), !all(global2.d), global2.c), func_5(func_1(!global2.d.x).b.c, func_1(true), !global2.d.x, 0u), ~global2.b.a), -2147483647i);
    var_0 = Struct_5(func_6((select(global2.a, -2147483647i, var_0.a.b.x) | 17168i) | (~(-12799i) & var_0.b.a.d.x), Struct_2(func_1(false).b, func_1(select(var_0.a.a.x, global2.d.x, var_0.a.b.x)).a, vec3<u32>(u_input.a, 4294967295u, global2.c)), global2.a).a, Struct_2(global2.b, func_6(_wgslsmith_mult_i32(global2.b.d.x, 21488i), var_0.b, firstTrailingBit(_wgslsmith_dot_vec4_i32(var_0.b.a.d, vec4<i32>(var_0.c.x, global2.b.d.x, 0i, var_0.b.b.d.x)))).b.a, vec3<u32>(select(func_2(global2.b.b, vec2<f32>(595f, 1000f), u_input.b, var_0.c.x), ~global2.c, global2.d.x), 13261u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.b.a.x, var_0.b.b.a.x, global2.c, u_input.a), vec4<u32>(1u, var_0.b.c.x, var_0.b.a.a.x, var_0.b.c.x)))), vec2<i32>(global2.b.d.x, global2.b.d.x));
    let var_1 = !vec3<bool>(any(var_0.a.a), !func_3(_wgslsmith_sub_i32(var_0.c.x, 1i), var_0.a.b.x, Struct_2(global2.b, Struct_1(vec3<u32>(1u, 4294967295u, 1u), global2.b.c.x, global2.b.c, vec4<i32>(0i, var_0.b.a.d.x, -1i, var_0.b.a.d.x)), global2.b.a), func_6(-13909i, Struct_2(global2.b, var_0.b.a, global2.b.a), global2.a)), true);
    global0 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(firstLeadingBit(67660u), 4294967295u, ~1u), _wgslsmith_sub_vec3_i32(-global2.b.d.yxy, var_0.b.b.d.yxw), -global2.b.d.ywx, global2.b.c, vec4<u32>(u_input.a, _wgslsmith_add_u32(global2.b.a.x, ~(~u_input.b)), 0u ^ ~var_0.b.a.a.x, global2.b.a.x));
}

