struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<u32, 15> = array<u32, 15>(17058u, 38344u, 0u, 84688u, 41625u, 26134u, 63820u, 4294967295u, 1u, 11370u, 7704u, 28172u, 35141u, 28055u, 1u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> u32 {
    global0 = Struct_5(global0.a, ~global0.b, Struct_1(_wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, global0.c.b.x), 4294967295u), ~global0.c.b, global0.c.c));
    global1 = array<u32, 15>();
    global0 = Struct_5(global0.a, global0.b, global0.c);
    var var_0 = global0.b.x;
    var var_1 = true;
    return ~(~(~_wgslsmith_mult_u32(countOneBits(global0.a.a.d), 0u)));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = select(vec3<bool>(global0.a.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) == arg_0), select(vec3<bool>(true, any(!vec4<bool>(global0.a.c.x, true, false, global0.a.c.x)), global0.a.b), global0.a.c, vec3<bool>(20695i < select(u_input.c, -56532i, global0.a.b), false, !(global0.a.b && global0.a.c.x))), !vec3<bool>(true, any(!vec4<bool>(false, global0.a.c.x, false, global0.a.c.x)), _wgslsmith_dot_vec2_i32(global0.b.yy, vec2<i32>(-2147483647i, u_input.c)) != ~u_input.c));
    var var_1 = _wgslsmith_dot_vec3_i32(global0.b >> (select(~global0.c.c.yxz, global0.c.c.wzw, select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, false, var_0.x), var_0)) % vec3<u32>(32u)), vec3<i32>(~0i & reverseBits(global0.b.x), countOneBits(1i), firstTrailingBit(u_input.c))) ^ _wgslsmith_mod_i32(~1i, ~(i32(-1i) * -global0.b.x));
    var var_2 = global0.b;
    var var_3 = 1i;
    var var_4 = Struct_5(global0.a, vec3<i32>(~(-global0.a.a.a.a), _wgslsmith_div_i32(~2147483647i, ~u_input.b), ~_wgslsmith_clamp_i32(-12638i, global0.a.a.a.a, global0.b.x)) << (vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(min(global0.c.c, vec4<u32>(global1[_wgslsmith_index_u32(0u, 15u)], 87254u, 41217u, global1[_wgslsmith_index_u32(1u, 15u)])), vec4<u32>(1u, 1u, 47603u, global0.a.a.c)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.c.x, 4294967295u, 81506u, 103692u), vec4<u32>(4294967295u, 28819u, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(36772u, 15u)]))) % vec3<u32>(32u)), global0.c);
    return select(var_4.c.c.wyx, vec3<u32>(global1[_wgslsmith_index_u32(~global0.c.a, 15u)], min(_wgslsmith_add_u32(select(var_4.a.a.d, global1[_wgslsmith_index_u32(0u, 15u)], var_0.x), 4294967295u), global0.a.a.d), global0.a.a.d), false);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5) -> u32 {
    let var_0 = max(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(arg_1.b.x, u_input.c), global0.b.xx, !arg_1.a.b), -select(vec2<i32>(u_input.b, arg_1.b.x), vec2<i32>(arg_1.a.a.b.a, -2147483647i), false)), ~vec2<i32>(~arg_1.b.x, 0i)), vec2<i32>(abs(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-31943i, arg_1.b.x), vec2<i32>(~global0.a.a.a.a, ~(-2147483647i)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-932f))) - _wgslsmith_f_op_f32(f32(-1f) * -1158f))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), 927f);
    global0 = arg_1;
    global1 = array<u32, 15>();
    global0 = arg_1;
    return global1[_wgslsmith_index_u32(arg_1.a.a.c, 15u)];
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: u32) -> Struct_3 {
    global1 = array<u32, 15>();
    var var_0 = global0.a.a;
    let var_1 = reverseBits(firstTrailingBit(_wgslsmith_mod_i32(abs(-2147483647i), var_0.b.a))) ^ _wgslsmith_mod_i32(~u_input.c, ~var_0.a.a);
    return Struct_3(Struct_2(_wgslsmith_mult_i32(i32(-1i) * -1i, firstTrailingBit(30090i))), global0.a.a.b, arg_2, global0.c.c.x);
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_5 {
    var var_0 = func_5(23033u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1272f, 662f))), arg_0, arg_0, arg_0), 1u).a;
    global1 = array<u32, 15>();
    var_0 = global0.a.a.a;
    var var_1 = func_5(_wgslsmith_mod_u32(45758u, _wgslsmith_mod_u32(~1u, countOneBits(arg_3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -465f, -282f, arg_0), vec4<f32>(arg_0, 894f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, 683f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(876f, arg_0, -470f, -486f) + vec4<f32>(arg_0, 772f, arg_0, -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -173f, 805f, arg_0))) - vec4<f32>(arg_0, -175f, -867f, 1000f))), u_input.a).a;
    global1 = array<u32, 15>();
    return Struct_5(Struct_4(Struct_3(func_5(19420u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -382f, arg_0, -2009f), vec4<f32>(617f, -1185f, arg_0, 747f), vec4<bool>(false, false, false, false))), 4294967295u).b, global0.a.a.b, 99912u, arg_3.x), (global0.a.c.x || false) && false, global0.a.c), ((vec3<i32>(arg_1, 39464i, 2147483647i) << (global0.c.c.yzw % vec3<u32>(32u))) & -global0.b) | ((vec3<i32>(-1i) * -global0.b) | global0.b), global0.c);
}

fn func_1(arg_0: u32) -> Struct_5 {
    let var_0 = func_6(_wgslsmith_f_op_f32(-355f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f + 1291f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 15184i, func_5(func_2(), vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(394f - 1419f) * _wgslsmith_f_op_f32(abs(-1238f))), 629f, _wgslsmith_f_op_f32(trunc(356f))), ~global1[_wgslsmith_index_u32(func_4(func_3(1064f), Struct_5(Struct_4(global0.a.a, true, vec3<bool>(global0.a.b, global0.a.b, global0.a.b)), global0.b, Struct_1(u_input.a, global0.c.c.yz, global0.c.c))), 15u)]), firstLeadingBit(global0.c.b));
    var var_1 = !(!(select(var_0.a.b, true, false) || any(vec4<bool>(true, var_0.a.c.x, global0.a.c.x, false))) && !global0.a.c.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1262f)) - _wgslsmith_f_op_f32(-2496f - -313f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 990f)))), vec2<bool>(!(true == global0.a.c.x), true)))));
    global1 = array<u32, 15>();
    var_1 = true;
    return func_6(var_2.x, -2147483647i, Struct_3(func_5(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(arg_0, 15u)], 1u, 35196u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -236f, var_2.x, var_2.x))), var_0.c.a).b, global0.a.a.b, _wgslsmith_mod_u32(1u << (max(global0.c.c.x, 11697u) % 32u), func_2()), u_input.a), global0.c.c.zw);
}

fn func_7(arg_0: Struct_5) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(523f)) - _wgslsmith_f_op_f32(f32(-1f) * -782f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - 852f) + _wgslsmith_f_op_f32(f32(-1f) * -149f)) + -689f)));
    let var_1 = arg_0.a.a.b;
    let var_2 = _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(global0.b.x, 2147483647i, arg_0.b.x, 1i) ^ vec4<i32>(var_1.a, -26257i, arg_0.b.x, 10586i))), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -7716i, u_input.c, var_1.a), vec4<i32>(3416i, arg_0.a.a.a.a, global0.a.a.a.a, var_1.a))) << (43560u % 32u);
    global1 = array<u32, 15>();
    var var_3 = -34032i;
    return func_1((~1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.a.a.c, arg_0.a.a.d), arg_0.c.c.wyw) % 32u)) >> (arg_0.c.b.x % 32u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(func_7(func_1(1u)), vec3<i32>(func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(2488f)), -189f, true)), u_input.b, Struct_3(Struct_2(u_input.b), Struct_2(-8617i), func_2(), global0.c.c.x), _wgslsmith_add_vec2_u32(func_1(global0.a.a.d).c.c.yx, vec2<u32>(global0.a.a.c, 7449u))).a.a.b.a, global0.a.a.b.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(29606i, -44128i) & vec2<i32>(-22233i, global0.a.a.b.a), vec2<i32>(global0.b.x, 0i))), func_6(_wgslsmith_f_op_f32(step(-197f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1501f))))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(8623i, global0.b.x, 1i, u_input.c), vec4<i32>(0i, 0i, u_input.b, u_input.b)) >> (~vec4<u32>(8379u, 4294967295u, global1[_wgslsmith_index_u32(7980u, 15u)], 4294967295u) % vec4<u32>(32u)), -(~vec4<i32>(-4166i, 14489i, global0.a.a.a.a, u_input.b))), Struct_3(global0.a.a.a, Struct_2(global0.a.a.a.a), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global0.c.b.x, 15u)] | global1[_wgslsmith_index_u32(1u, 15u)], global0.c.a), 95272u), vec2<u32>(u_input.a, u_input.a)).c);
    global0 = func_1(global0.c.a);
    let var_0 = !global0.a.c.xy;
    let var_1 = Struct_2(5624i);
    var var_2 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)) + -655f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1208f))))), u_input.b, Struct_3(global0.a.a.a, Struct_2(~(i32(-1i) * -2147483647i)), ~1u, u_input.a), vec2<u32>(max(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(22582u, 15u)], global1[_wgslsmith_index_u32(29631u, 15u)]), global0.c.b), 15u)] & abs(u_input.a), func_2()), u_input.a)).a;
    var var_3 = global0.a.c.xy;
    let var_4 = vec4<bool>(any(!(!vec2<bool>(false, var_0.x))), var_3.x, -var_1.a >= _wgslsmith_div_i32(var_2.a.b.a, u_input.b), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(countOneBits(~(~vec4<u32>(u_input.a, 1u, 61420u, u_input.a))), ~global0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(213f))))), ~(-global0.b.xz | global0.b.zy), func_4(~vec3<u32>(var_2.a.c, 1u, _wgslsmith_mult_u32(60397u, u_input.a)), Struct_5(global0.a, ~global0.b >> (firstTrailingBit(global0.c.c.zzx) % vec3<u32>(32u)), Struct_1(var_2.a.c, select(global0.c.c.yw, global0.c.c.zy, var_2.c.yy), firstTrailingBit(global0.c.c)))));
}

