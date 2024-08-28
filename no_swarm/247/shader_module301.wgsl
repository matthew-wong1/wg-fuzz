struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 33595u;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), 6163u, false), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), 0u, false), 1752f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), 4294967295u, false), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), 22839u, false), -1000f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), 72861u, true), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), 42152u, false), 621f), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), 4294967295u, false), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), 93344u, true), -1581f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), 4294967295u, true), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), 1u, true), 153f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), 0u, true), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), 4294967295u, true), 145f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 0u, true), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), 1u, false), -252f), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), 4294967295u, false), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), 54599u, true), -1000f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), 48540u, true), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), 4189u, false), -1461f), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), 87530u, false), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), 0u, false), -898f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), 65373u, false), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), 1u, false), -1378f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), 26946u, false), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 32534u, false), 819f), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), 0u, false), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), 1u, false), 902f), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), 1u, false), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), 1u, true), 1060f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), 4294967295u, true), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), 16586u, true), -708f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    var var_0 = -819f;
    let var_1 = vec2<bool>(arg_3, true);
    var var_2 = u_input.b.yxx;
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-733f)), _wgslsmith_f_op_f32(round(555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2045f - _wgslsmith_f_op_f32(f32(-1f) * -1083f)) - _wgslsmith_f_op_f32(trunc(-581f)))));
    return vec4<bool>(false, !var_3.e, var_1.x, true);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(vec3<bool>(!(!(arg_0.b.x != false)), true, !(!arg_0.a.x)), arg_0.b, !(!func_3(abs(vec4<i32>(2147483647i, -14122i, u_input.b.x, 1i)), u_input.a.yyx | vec3<u32>(49997u, 4294967295u, 77462u), arg_0, arg_0.a.x)), arg_1.x, arg_0.e & true);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(29823u, 15u)];
    global1 = array<Struct_2, 15>();
    let var_1 = Struct_3(!select(arg_0.b.a, !vec3<bool>(false, var_0.a.b.x, var_0.a.e), true), var_0.a, !var_0.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d + var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -737f)))));
    global0 = ~arg_2;
    var var_2 = vec2<i32>(0i, ~(~(-min(10583i, -1i))));
    return Struct_2(Struct_1(vec3<bool>(select(arg_2 >= 1840u, false, var_1.d >= -1000f), all(arg_0.c), !any(vec2<bool>(false, arg_0.c.x))), arg_0.c, select(var_0.b.b, vec4<bool>(var_0.a.b.x, var_1.b.e && var_1.b.b.x, var_1.a.x, var_0.b.b.x), true || all(var_0.b.a.xx)), ~var_0.b.d & _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.d, var_1.b.d, arg_3.x, arg_2), arg_3), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), any(vec2<bool>(57068u != arg_3.x, any(var_1.a.xx)))), func_2(var_1.b, min(~vec3<u32>(arg_2, u_input.a.x, arg_2), u_input.a.xwz)), var_0.c);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_add_u32(0u, arg_0.b.d);
    let var_1 = func_2(arg_0.a, reverseBits(u_input.a.zyx));
    global0 = ~arg_0.a.d;
    let var_2 = 407f;
    var var_3 = Struct_2(Struct_1(func_4(Struct_3(func_4(Struct_3(vec3<bool>(arg_0.a.c.x, arg_0.a.b.x, false), Struct_1(vec3<bool>(false, var_1.e, var_1.e), vec4<bool>(arg_0.b.b.x, arg_0.b.b.x, arg_0.a.e, false), var_1.c, 4294967295u, var_1.e), arg_0.a.c, var_2), u_input.b.x, u_input.a.x, u_input.a).a.c.xyz, Struct_1(var_1.c.zwx, vec4<bool>(true, var_1.b.x, false, arg_0.b.c.x), vec4<bool>(false, false, arg_0.a.c.x, arg_0.b.c.x), 28885u, arg_0.a.c.x), !var_1.c, _wgslsmith_f_op_f32(-arg_0.c)), u_input.b.x, select(4294967295u, 10841u >> (var_1.d % 32u), func_4(Struct_3(vec3<bool>(true, true, arg_0.a.a.x), Struct_1(vec3<bool>(true, true, true), arg_0.b.c, var_1.b, 6640u, arg_0.b.a.x), vec4<bool>(arg_0.b.c.x, false, arg_0.a.a.x, true), 203f), u_input.b.x, 1u, vec4<u32>(u_input.a.x, var_1.d, 28851u, 15433u)).a.b.x), abs(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a))).a.c.yxz, func_3(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (vec4<u32>(1539u, 4294967295u, arg_0.b.d, 0u) % vec4<u32>(32u)), abs(u_input.a.yzw), func_4(Struct_3(vec3<bool>(false, var_1.e, false), Struct_1(arg_0.b.c.xzy, arg_0.a.c, var_1.b, var_1.d, false), vec4<bool>(var_1.e, arg_0.a.c.x, var_1.a.x, false), var_2), countOneBits(u_input.b.x), ~4294967295u, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, var_1.d, arg_0.b.d, 37637u), u_input.a)).b, var_1.b.x), func_2(var_1, vec3<u32>(16594u, var_1.d, 1u) >> (vec3<u32>(1u, u_input.a.x, arg_0.a.d) % vec3<u32>(32u))).b, 2132u, !arg_0.a.b.x), Struct_1(!select(vec3<bool>(true, true, true), arg_0.b.c.zyx, !var_1.b.zyy), !vec4<bool>(false, arg_0.b.c.x | arg_0.a.c.x, !var_1.e, false), vec4<bool>(var_1.a.x, var_1.e, var_1.b.x, arg_0.b.b.x), u_input.a.x, ((-10311i == u_input.b.x) & any(vec3<bool>(arg_0.b.a.x, true, false))) | all(var_1.c.ywz)), _wgslsmith_f_op_f32(-arg_0.c));
    return var_3.b;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    global1 = array<Struct_2, 15>();
    let var_0 = func_2(func_5(func_4(Struct_3(!vec3<bool>(arg_1, true, false), func_4(Struct_3(vec3<bool>(true, true, false), Struct_1(arg_0.c.zxx, vec4<bool>(false, false, arg_1, arg_1), arg_0.c, 62928u, arg_0.a.x), arg_0.c, -365f), 57328i, arg_0.d, u_input.a).b, !arg_0.b, -564f), 2147483647i << (u_input.a.x % 32u), firstLeadingBit(~1u), vec4<u32>(u_input.a.x, arg_0.d, u_input.a.x, 73614u))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), ~vec3<u32>(4294967295u, 1u, arg_0.d)) >> (u_input.a.zzx % vec3<u32>(32u)))).c;
    var var_1 = Struct_2(func_2(func_4(Struct_3(var_0.xyw, func_5(Struct_2(Struct_1(var_0.zzw, vec4<bool>(true, true, false, arg_1), var_0, u_input.a.x, true), Struct_1(var_0.yzx, var_0, var_0, u_input.a.x, arg_0.c.x), 474f)), func_2(arg_0, vec3<u32>(arg_0.d, 5719u, 0u)).c, -1471f), 0i ^ u_input.b.x, u_input.a.x & u_input.a.x, _wgslsmith_clamp_vec4_u32(~u_input.a, ~vec4<u32>(0u, 1u, arg_0.d, 0u), u_input.a)).a, u_input.a.zzz), func_2(func_2(Struct_1(!var_0.zyx, func_3(u_input.b, vec3<u32>(47522u, 72346u, arg_0.d), Struct_1(vec3<bool>(false, false, true), vec4<bool>(arg_0.e, arg_1, arg_0.b.x, var_0.x), var_0, 1u, arg_1), arg_0.c.x), !vec4<bool>(true, false, var_0.x, arg_1), 81976u ^ u_input.a.x, false), vec3<u32>(1u, _wgslsmith_mod_u32(arg_0.d, 47581u), ~0u)), ~(~(~vec3<u32>(u_input.a.x, arg_0.d, 56485u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f), 473f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(612f)) + _wgslsmith_div_f32(-216f, -1681f)))));
    let var_2 = Struct_4(select(false, var_1.a.b.x, func_4(Struct_3(vec3<bool>(arg_0.a.x, false, arg_0.b.x), Struct_1(vec3<bool>(false, arg_1, false), var_0, var_0, 1u, false), vec4<bool>(false, arg_1, arg_0.c.x, var_1.a.c.x), -1198f), -1i, 0u ^ arg_0.d, firstLeadingBit(u_input.a)).b.a.x) && true, Struct_3(select(var_1.a.c.zzw, vec3<bool>(arg_1, var_1.b.c.x, var_1.b.e), var_1.b.b.yxw), var_1.a, arg_0.b, -232f));
    let var_3 = Struct_4(arg_0.d >= var_2.b.b.d, var_2.b);
    return var_2.b;
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    return func_6(func_5(func_4(Struct_3(vec3<bool>(false, false, false), func_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), u_input.a.x, true), vec3<u32>(u_input.a.x, u_input.a.x, 11366u)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true), -1000f), _wgslsmith_clamp_i32(max(u_input.b.x, u_input.b.x), min(u_input.b.x, 14676i), ~u_input.b.x), abs(_wgslsmith_add_u32(25008u, u_input.a.x)), vec4<u32>(u_input.a.x & 32878u, 9230u, 1u, _wgslsmith_add_u32(u_input.a.x, 0u)))), all(vec4<bool>(any(vec4<bool>(true, true, true, true)), select(false, func_5(Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), 1u, false), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), 4294967295u, false), -1314f)).c.x, false), true, !(1i >= u_input.b.x))));
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = func_2(func_2(arg_2.b, ~u_input.a.yzx), u_input.a.xxy);
    global0 = u_input.a.x;
    var var_1 = select(!arg_2.c.wx, vec2<bool>(var_0.e, arg_2.a.x), !arg_2.a.xx);
    global0 = ~(~_wgslsmith_mult_u32(arg_1.a.d, u_input.a.x));
    let var_2 = vec3<f32>(func_4(Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, var_1.x, arg_2.b.b.x), !vec4<bool>(false, false, var_1.x, false), func_2(arg_2.b, vec3<u32>(21895u, arg_2.b.d, var_0.d)).b, _wgslsmith_mod_u32(var_0.d, arg_1.b.d), true), !var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.d)))), max(~(-14063i), _wgslsmith_add_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.b.x), vec3<i32>(1i, u_input.b.x, 1i)))), var_0.d, max(vec4<u32>(1u, arg_2.b.d, abs(arg_2.b.d), u_input.a.x), u_input.a)).c, _wgslsmith_f_op_f32(-arg_2.d), arg_0);
    return StorageBuffer(u_input.a.wyz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    var var_0 = u_input.a.wxy;
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_f32(242f + _wgslsmith_f_op_f32(f32(-1f) * -2175f)), global1[_wgslsmith_index_u32(64899u, 15u)], func_1());
}

