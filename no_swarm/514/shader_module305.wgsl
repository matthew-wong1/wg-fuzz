struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec4<f32>(-743f, -785f, 1112f, -826f));

var<private> global1: Struct_2 = Struct_2(Struct_1(1u, -1i, 2147483647i, vec4<f32>(325f, -665f, 1437f, -216f), 1906u), 1i, Struct_1(64501u, 0i, -6729i, vec4<f32>(101f, -747f, -1485f, 284f), 50853u));

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> vec4<f32> {
    let var_0 = Struct_4(Struct_3(global0.a, arg_1.d), (vec2<i32>(global1.c.b, 1i >> (global1.c.a % 32u)) ^ select(vec2<i32>(1i, 28023i) << (u_input.a.xx % vec2<u32>(32u)), vec2<i32>(global1.b, 22762i) & vec2<i32>(arg_0, 5863i), !vec2<bool>(global0.a, global0.a))) ^ vec2<i32>(~global1.a.b, ~(-2147483647i)));
    let var_1 = countOneBits(_wgslsmith_add_u32(arg_2, 1u) & 1u);
    global1 = Struct_2(Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_1) ^ vec2<u32>(1u, global1.c.a), vec2<u32>(var_1, arg_2)), global1.b, -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))), 0u), ~0i, global1.a);
    var var_2 = Struct_2(arg_1, _wgslsmith_mod_i32(-arg_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(min(0i, 0i), -17404i, abs(var_0.b.x)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_0.b.x, 23983i), vec3<i32>(0i, 7924i, -2585i)))), Struct_1(8065u, reverseBits(global1.a.c), firstLeadingBit(countOneBits(-global1.a.b)), vec4<f32>(603f, -381f, global1.a.d.x, _wgslsmith_f_op_f32(max(var_0.a.b.x, _wgslsmith_f_op_f32(-arg_1.d.x)))), arg_1.e));
    global2 = false;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1993f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.b.x)) - -789f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.d.x) + -384f)))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(~global1.c.e, global1.b << (global1.c.e % 32u), global1.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(global1.c.b, Struct_1(u_input.a.x, 61249i, 1i, global0.b, global1.a.e), _wgslsmith_clamp_u32(u_input.a.x, global1.c.e, 71553u), select(vec3<bool>(global0.a, true, false), vec3<bool>(false, global0.a, true), vec3<bool>(false, global0.a, false))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(484f, global1.c.d.x, 733f, global1.c.d.x))))), _wgslsmith_f_op_vec4_f32(func_3(i32(-1i) * -78502i, global1.c, 8200u, vec3<bool>(true, true, true))))), ~27182u);
    global1 = Struct_2(Struct_1(~u_input.a.x, _wgslsmith_mod_i32(var_0.c, abs(i32(-1i) * -2147483647i)), -_wgslsmith_add_i32(global1.a.c, global1.b) & -9022i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.d) + _wgslsmith_f_op_vec4_f32(ceil(global1.a.d))), _wgslsmith_mult_u32(var_0.e, firstTrailingBit(1u))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, -59633i), select(~vec3<i32>(2147483647i, 20584i, var_0.b), vec3<i32>(-1i, -30382i, global1.a.b), global0.a && true), vec3<bool>(select(false, false, false), all(vec4<bool>(true, false, global0.a, global0.a)), -54171i < var_0.b)), _wgslsmith_div_vec3_i32(max(vec3<i32>(global1.a.b, var_0.c, global1.c.b), vec3<i32>(1i, global1.c.b, global1.b)), select(select(vec3<i32>(global1.a.b, global1.a.b, var_0.c), vec3<i32>(-2147483647i, global1.c.c, global1.b), global0.a), vec3<i32>(19190i, var_0.c, -159i), global0.a))), global1.a);
    let var_1 = Struct_3(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(-1097f, 1473f, global1.c.d.x, global0.b.x), vec4<bool>(global0.a, false, false, global0.a)))))) + vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_vec4_f32(func_3(var_0.c, Struct_1(u_input.a.x, -28717i, var_0.c, vec4<f32>(var_0.d.x, 1226f, 928f, global0.b.x), 56229u), u_input.a.x, vec3<bool>(global0.a, true, global0.a))).x), var_0.d.x, _wgslsmith_f_op_f32(global0.b.x + -641f), global1.a.d.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.b.x, var_1.b.x), _wgslsmith_f_op_f32(max(global1.a.d.x, var_1.b.x)), -715f, global0.b.x) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, global1.a.d.x, global0.b.x, var_0.d.x)))), global1.a.d)));
    global0 = Struct_3((var_0.c > min(max(2713i, -2147483647i), 2147483647i)) && global0.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, global0.b.x, var_1.b.x, -166f) * vec4<f32>(-116f, -118f, var_1.b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -400f, 688f, var_0.d.x)))))));
    return _wgslsmith_div_u32(reverseBits(42218u), _wgslsmith_sub_u32(1u, u_input.b));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2() ^ ~global1.c.e;
    global1 = Struct_2(Struct_1(90136u, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.a.b, global1.a.c, global1.b) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-32274i, 0i, 14742i, -2147483647i), vec4<i32>(global1.b, -3881i, global1.c.b, global1.c.c))), -vec4<i32>(-7437i, global1.c.c, global1.c.b, global1.b)), global1.c.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_div_vec4_f32(vec4<f32>(global1.c.d.x, global0.b.x, global1.a.d.x, global1.a.d.x), vec4<f32>(1013f, global0.b.x, 1025f, -828f)))), global1.a.a), 4250i, Struct_1(4294967295u, -2147483647i, 79033i, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.c.d.x, 1000f)))), global0.b.x, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.x) * global1.a.d.x)), 40489u));
    let var_1 = -114f;
    let var_2 = var_0;
    let var_3 = global1.a.d.x;
    return Struct_1(~_wgslsmith_mult_u32(~global1.c.a, 1u) >> ((global1.c.a & _wgslsmith_clamp_u32(min(0u, global1.a.a), var_2, var_0)) % 32u), -2147483647i, -1i, global0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, global1.a.a), u_input.a.yxy), ~global1.c.a), var_0, ~(var_2 >> (var_0 % 32u)), 4294967295u), countOneBits(u_input.a) ^ ~(~vec4<u32>(var_0, 1u, u_input.a.x, 0u))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> StorageBuffer {
    global0 = Struct_3(true, func_1().d);
    global1 = arg_1;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.d.x, _wgslsmith_f_op_f32(-global1.c.d.x), global1.a.d.x)));
    global0 = arg_0;
    let var_1 = Struct_1(6457u, _wgslsmith_sub_i32(~(-3172i) & func_1().b, arg_1.b) << (1u % 32u), _wgslsmith_add_i32(-1i, global1.c.c), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.d.x, 915f, -2941f, arg_0.b.x) + global1.c.d)) * _wgslsmith_f_op_vec4_f32(min(arg_0.b, _wgslsmith_f_op_vec4_f32(floor(global0.b))))))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 23288u)), ~(global1.a.e | global1.a.a)), u_input.a.x, _wgslsmith_sub_u32(~(53052u ^ u_input.b), arg_1.a.a >> (func_1().a % 32u))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.wyw * global0.b.yzw)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.d.yxx - vec3<f32>(var_1.d.x, 460f, global1.a.d.x)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.zyw))))), var_1.d.wzx, !select(select(vec3<bool>(false, arg_0.a, true), vec3<bool>(arg_0.a, false, false), global0.a), select(vec3<bool>(false, false, true), vec3<bool>(global0.a, arg_0.a, global0.a), vec3<bool>(true, arg_0.a, global0.a)), vec3<bool>(global0.a, true, true)))), _wgslsmith_mod_vec2_u32(u_input.a.wz, max(abs(vec2<u32>(u_input.a.x, 22u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.c.a, 0u), vec2<u32>(4294967295u, 1u), u_input.a.wy), ~u_input.a.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !global0.a;
    global2 = select(true, false, all(!vec3<bool>(!global0.a, 49868u == global1.c.e, all(vec4<bool>(true, global0.a, false, global0.a)))));
    let var_0 = global1.a.e < global1.a.a;
    let var_1 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))));
    global0 = Struct_3(global1.c.a < 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(2031f)), _wgslsmith_f_op_f32(-global0.b.x), -643f, _wgslsmith_f_op_f32(max(var_1, global0.b.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -335f, global0.b.x, var_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, var_1, global1.a.d.x, -690f))))));
    global2 = false;
    let x = u_input.a;
    s_output = func_4(Struct_3(var_0, vec4<f32>(_wgslsmith_f_op_f32(-1639f - _wgslsmith_f_op_f32(step(-251f, global1.c.d.x))), -995f, -719f, var_1)), Struct_2(func_1(), min(global1.a.b, -1i), Struct_1(_wgslsmith_sub_u32(~9418u, global1.a.a), -17215i, countOneBits(0i), global1.a.d, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 13070i, global1.b), vec3<i32>(~(~global1.b), ~firstLeadingBit(global1.c.b), global1.b)));
}

