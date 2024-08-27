struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 15>;

var<private> global2: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = countOneBits(~vec4<i32>(~(global0.a.x | global0.a.x), firstLeadingBit(-u_input.c.x), u_input.c.x, ~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x)));
    let var_1 = ~(~(-74337i));
    let var_2 = vec2<bool>(select(global0.b, false, all(vec2<bool>(global0.e.c, true))) | all(vec3<bool>(true, all(vec4<bool>(true, global0.e.c, true, arg_0.c)), true)), global0.b);
    let var_3 = u_input.e;
    var var_4 = Struct_4(~(~var_0.yz), ~(~(~17042u)) == u_input.e.x, global0.c, global0.d, arg_0);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(834f, -327f))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1608f, var_4.e.d)), _wgslsmith_f_op_f32(exp2(global0.c.a.b)))), var_4.e.b, _wgslsmith_div_f32(var_4.c.a.d, _wgslsmith_f_op_f32(global0.c.a.b * 446f))))), vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.a.d), _wgslsmith_f_op_f32(max(var_4.c.a.b, 401f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d + global0.c.a.b), -653f))))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 132f) == _wgslsmith_f_op_f32(-global0.c.a.d), !var_2.x, false)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-151f, 1353f, -1098f), vec3<f32>(-1000f, 2628f, global0.e.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, global0.e.d, 1596f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.a.b, global0.c.b.a.b, global0.c.b.a.d))) * vec3<f32>(3214f, _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(-global0.c.a.b))), global0.d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.e.a, global0.e.b, false, global0.c.b.a.d))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(938f, -378f, global0.c.b.a.d), vec3<f32>(429f, global0.c.a.d, global0.e.b)))))));
    global2 = _wgslsmith_f_op_f32(global0.c.a.b - _wgslsmith_f_op_f32(-global0.c.b.a.b));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.e.d, _wgslsmith_f_op_f32(-573f - 878f), global0.c.a.c))))) + _wgslsmith_f_op_f32(select(-1789f, var_0.x, true)));
    var var_1 = u_input.c;
    var var_2 = var_1.x;
    return countOneBits(abs(abs(u_input.a.x)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, -16630i << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, abs(-2147483647i), countOneBits(-1i)), -u_input.c)), max(vec3<i32>(arg_2, reverseBits(-7227i), abs(_wgslsmith_div_i32(u_input.c.x, 17094i))), ~(~vec3<i32>(arg_2, arg_2, global0.a.x) ^ vec3<i32>(global0.a.x, 35921i, arg_2))));
    global2 = _wgslsmith_f_op_f32(-global0.c.a.d);
    let var_1 = global0.c;
    var var_2 = -select(-10615i ^ firstTrailingBit(2147483647i), arg_2, true);
    var var_3 = reverseBits(func_2() & _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.b.b, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(55622u, arg_1), u_input.e.xw)));
    return Struct_1(global0.c.a.a, _wgslsmith_f_op_f32(448f + -1428f), 788f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.e.d, global0.e.b)) * -1000f) * 1000f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) * _wgslsmith_f_op_f32(-1866f - 1667f)), global0.e.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.c.b.a.b)), global0.e.c)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -643f);
    var var_1 = _wgslsmith_f_op_f32(global0.c.a.b - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-409f, _wgslsmith_f_op_f32(arg_0.b * global0.e.b))), -795f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f)), _wgslsmith_f_op_f32(-global0.c.b.a.b)))));
    let var_2 = global0.e.d;
    return Struct_3(func_4(arg_0.a.x & 37699u, countOneBits(~u_input.d.x), countOneBits(~u_input.c.x)), global0.c.b, true);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global0.c.a.b);
    var var_1 = Struct_5(global0.b, global0.e.d, vec4<bool>(any(!select(vec2<bool>(true, false), global0.d.zy, global0.e.c)), true, global0.b != (!global0.e.c & (arg_3.c && true)), select(arg_3.b != global0.e.d, all(vec4<bool>(arg_3.c, false, arg_3.c, true)), global0.b) && (arg_3.c & any(global0.d))), _wgslsmith_mod_i32(-19499i, _wgslsmith_sub_i32(-_wgslsmith_mult_i32(u_input.c.x, 0i), min(global0.a.x, 0i) ^ ~global0.a.x)), global0.c.a);
    let var_2 = 22011u;
    var_0 = 1274f;
    let var_3 = arg_3.c;
    return func_5(func_4(func_2(), _wgslsmith_div_u32(~(var_1.e.a.x ^ 5581u), ~0u), 9141i), any(vec2<bool>(true, true)), 1u, arg_3.a.xy);
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_3(global0.c.a, func_5(global0.c.b.a, arg_0.a.d == 322f, ~(_wgslsmith_add_u32(0u, arg_3.b.a.a.x) & arg_3.a.a.x), u_input.d.yw).b, any(vec4<bool>(arg_0.a.c, true, select(arg_3.c, global0.e.c, true), false)) == func_1(4294967295u, ~arg_3.b.a.a.x, vec4<u32>(~19300u, global0.c.b.b, global0.c.b.a.a.x, arg_3.a.a.x | global0.e.a.x), Struct_1(reverseBits(vec3<u32>(arg_0.a.a.x, 4294967295u, arg_3.a.a.x)), -353f, select(true, true, arg_0.b.a.c), _wgslsmith_f_op_f32(arg_0.a.d + -399f))).c);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(arg_0.a));
    return Struct_4(u_input.c.yw, true, Struct_3(arg_3.a, func_5(arg_0.b.a, true, ~arg_0.b.b, firstLeadingBit(vec2<u32>(1u, var_0.b.b))).b, false), !select(global0.d, global0.d, var_0.b.a.c), Struct_1(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(22245u, 1u, arg_3.a.a.x), var_0.a.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.b.b, 4294967295u, global0.e.a.x), vec3<u32>(u_input.d.x, var_0.b.a.a.x, var_0.a.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_3.b.a.b)), _wgslsmith_f_op_f32(arg_0.b.a.d - _wgslsmith_f_op_f32(-global0.e.b)))), arg_0.b.a.c, _wgslsmith_f_op_f32(-var_0.b.a.d)));
}

fn func_7(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_3 {
    global0 = arg_2;
    var var_0 = global0.d.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.b.a.d), _wgslsmith_f_op_f32(global0.e.d - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(553f, -238f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(2273f, var_1.x, arg_2.c.a.b), _wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(4527u, 15u)]))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_3(func_5(global1[_wgslsmith_index_u32(17031u, 15u)], !arg_2.b, ~(~global0.e.a.x), _wgslsmith_div_vec2_u32(func_1(arg_2.e.a.x, ~arg_2.e.a.x, ~u_input.d, arg_2.c.a).a.a.xx, ~arg_2.e.a.zz)).a)).x;
    return arg_2.c;
}

fn func_8(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = global0.c;
    var var_1 = arg_0.c.a;
    let var_2 = !arg_0.d;
    global1 = array<Struct_1, 15>();
    var var_3 = Struct_4(vec2<i32>(~u_input.c.x, -35098i), global0.c.b.a.c, Struct_3(var_0.a, func_6(global0.c, -global0.a.x & -arg_0.a.x, _wgslsmith_div_u32(var_0.b.b, ~1u), Struct_3(arg_0.e, Struct_2(arg_3.a, 1u), !var_1.c)).c.b, arg_3.a.c), global0.d, Struct_1(~_wgslsmith_div_vec3_u32(global0.c.b.a.a, arg_0.e.a >> (global0.c.b.a.a % vec3<u32>(32u))), func_1(_wgslsmith_mult_u32(u_input.d.x, 30908u) >> (_wgslsmith_dot_vec3_u32(u_input.d.wyw, var_0.a.a) % 32u), (u_input.d.x ^ global0.e.a.x) | func_2(), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(1u, 4294967295u, 1u, arg_0.e.a.x)), vec4<u32>(1u, arg_3.b, global0.c.b.b, arg_0.c.b.b)), Struct_1(vec3<u32>(9455u, 4294967295u, u_input.d.x), 536f, true, arg_0.e.b)).a.b, arg_2, func_6(func_5(Struct_1(var_1.a, arg_3.a.b, false, 1198f), !arg_0.e.c, 1u, reverseBits(vec2<u32>(54669u, 4294967295u))), -_wgslsmith_mult_i32(arg_0.a.x, -16967i), 28737u, arg_0.c).c.a.b));
    return ~countOneBits(_wgslsmith_clamp_vec2_u32(arg_1, (var_1.a.xz | arg_3.a.a.yx) >> (reverseBits(var_3.c.a.a.yx) % vec2<u32>(32u)), vec2<u32>(1u, 45618u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(Struct_4(u_input.c.xx, false, func_7(false, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d.x, u_input.a.x, 35627u), vec3<u32>(0u, u_input.e.x, 4294967295u)), func_6(func_1(global0.c.a.a.x, global0.c.a.a.x, u_input.d, Struct_1(u_input.e.yyx, global0.e.b, true, global0.c.a.d)), -18520i ^ u_input.c.x, _wgslsmith_mod_u32(4294967295u, u_input.a.x), func_5(global0.e, global0.e.c, u_input.e.x, u_input.a)), global0.c.b.a.a), global0.d, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.e.a.x, 14732u, 0u, 16436u), vec4<u32>(98014u, 1u, u_input.e.x, 43844u), vec4<u32>(4294967295u, global0.e.a.x, 4294967295u, 1u)), u_input.e, reverseBits(u_input.d)), u_input.d), 15u)]), u_input.a, func_7(true, 1u << (1u % 32u), func_6(Struct_3(func_1(0u, 0u, vec4<u32>(global0.c.a.a.x, 68656u, u_input.d.x, u_input.b), global1[_wgslsmith_index_u32(37728u, 15u)]).b.a, Struct_2(global0.e, 107346u), global0.a.x > global0.a.x), 44910i, firstLeadingBit(0u | global0.e.a.x), Struct_3(global1[_wgslsmith_index_u32(func_6(Struct_3(Struct_1(u_input.e.wzw, -1724f, global0.b, global0.e.b), global0.c.b, global0.b), 0i, global0.c.a.a.x, global0.c).e.a.x, 15u)], Struct_2(Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), 519f, global0.c.c, global0.e.d), 21141u), !global0.e.c)), vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(global0.c.a.a.x, 81273u)), 60132u, global0.c.a.a.x)).a.c, global0.c.b);
    let var_1 = Struct_5(global0.c.b.a.b <= 2293f, _wgslsmith_f_op_f32(floor(1055f)), !vec4<bool>(global0.c.c, select(true, true, global0.e.c), true, u_input.c.x < (i32(-1i) * -34256i)), 3918i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_div_vec4_u32(~u_input.d << (abs(vec4<u32>(global0.e.a.x, 4294967295u, 6956u, 0u)) % vec4<u32>(32u)), u_input.d)), 15u)]);
    var var_2 = global0.c.b.a.a.xx;
    var var_3 = Struct_5(var_1.a, global0.e.d, !select(vec4<bool>(global0.b, !global0.c.a.c, var_1.c.x, func_4(1u, global0.e.a.x, 2147483647i).c), select(vec4<bool>(global0.e.c, global0.b, true, global0.d.x), vec4<bool>(false, false, var_1.e.c, false), all(vec3<bool>(global0.c.c, false, global0.c.c))), false), reverseBits(-_wgslsmith_mod_i32(u_input.c.x, global0.a.x)) & _wgslsmith_mod_i32(u_input.c.x, ~(global0.a.x << (0u % 32u))), func_6(global0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-21564i), -4818i), ~(global0.a ^ vec2<i32>(u_input.c.x, var_1.d))), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global0.e.a, global0.e.a), ~0u) >> (~(~1u) % 32u), func_5(func_7(global0.d.x, func_5(Struct_1(vec3<u32>(81867u, 1u, 5514u), -2501f, true, global0.c.a.b), false, var_2.x, var_1.e.a.xy).b.a.a.x, func_6(Struct_3(var_1.e, global0.c.b, false), var_1.d, var_1.e.a.x, global0.c), var_1.e.a).b.a, all(vec2<bool>(false, var_1.a)), ~var_2.x, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(var_1.e.a.xz, u_input.e.yy), reverseBits(var_1.e.a.zz)))).e);
    var_0 = ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.e.a.xx | _wgslsmith_sub_vec2_u32(u_input.d.xw, global0.e.a.xz), var_1.e.a.xz), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(41632u, 0u), ~u_input.e.xw));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(func_6(Struct_3(global0.e, Struct_2(Struct_1(u_input.e.zzz, 590f, false, var_1.b), 4294967295u), var_3.a), countOneBits(2147483647i), 32220u, func_5(Struct_1(var_3.e.a, 335f, var_3.a, 1044f), true, global0.c.a.a.x, global0.e.a.xy)).a.x), ~_wgslsmith_mult_i32(global0.a.x, i32(-1i) * -9556i), true));
}

