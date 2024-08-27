struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global4: vec4<f32> = vec4<f32>(-1091f, -1000f, -1087f, 483f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global4 = global2.c;
    global2 = Struct_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(global2.a << ((vec4<u32>(global2.b.b.x, 58583u, 38359u, 0u) | global2.b.b) % vec4<u32>(32u)), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), -global2.a), -vec4<i32>(-37870i, u_input.a.x, -2198i, global2.a.x) & global2.a, ~(max(global2.a, vec4<i32>(-13316i, arg_0.x, 0i, u_input.a.x)) >> (vec4<u32>(global2.b.b.x, global2.b.b.x, global2.b.b.x, global2.b.b.x) % vec4<u32>(32u)))), global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c))))));
    let var_0 = reverseBits(global2.a);
    let var_1 = -u_input.a.x;
    global3 = array<vec2<bool>, 7>();
    return Struct_2(~(vec4<i32>(arg_0.x, 28571i, -39681i, -6184i) & (vec4<i32>(arg_0.x, var_1, 36739i, 0i) ^ vec4<i32>(var_1, global2.b.d, 6508i, global2.b.d))) << (vec4<u32>(global2.b.b.x, _wgslsmith_add_u32(0u >> (global2.b.b.x % 32u), 17213u), ~min(1u, global2.b.b.x), ~0u) % vec4<u32>(32u)), Struct_1(global3[_wgslsmith_index_u32(1u, 7u)], vec4<u32>(_wgslsmith_add_u32(1u ^ global2.b.b.x, 4294967295u >> (global2.b.b.x % 32u)), ~_wgslsmith_add_u32(81870u, 0u), global2.b.b.x, _wgslsmith_div_u32(abs(0u), abs(global2.b.b.x))), firstLeadingBit(firstTrailingBit(u_input.a.x) & _wgslsmith_mult_i32(var_1, global2.b.d)), arg_0.x), global2.c);
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<f32>(global4.x, _wgslsmith_f_op_f32(463f - -128f), _wgslsmith_f_op_f32(-1271f + _wgslsmith_f_op_f32(global4.x * global2.c.x)));
    global3 = array<vec2<bool>, 7>();
    global1 = global2.b.b.x <= 39310u;
    var var_1 = func_2(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~(global2.a.yzy & vec3<i32>(28588i, global2.a.x, u_input.a.x)), -select(vec3<i32>(37089i, -49214i, -47491i), global2.a.wwz, global2.b.a.x)), vec3<i32>(global2.b.d, countOneBits(u_input.a.x) >> (func_2(vec3<i32>(u_input.a.x, 0i, global2.a.x)).b.b.x % 32u), -5256i))).b;
    global2 = func_2(countOneBits(-max(global2.a.xzw, firstLeadingBit(vec3<i32>(-1i, 2147483647i, u_input.a.x)))));
    return vec4<u32>(~global2.b.b.x, countOneBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~21662u, 0u), _wgslsmith_dot_vec4_u32(global2.b.b, global2.b.b ^ global2.b.b))), 50463u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~countOneBits(22214u), max(global2.b.b.x, var_1.b.x)), max(~vec3<u32>(var_1.b.x, var_1.b.x, global2.b.b.x), _wgslsmith_mod_vec3_u32(global2.b.b.xxz, var_1.b.xxy))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(global2.a.yxx);
    var var_1 = func_3();
    let var_2 = var_0;
    var var_3 = !(!select(vec4<bool>(true, all(vec3<bool>(global2.b.a.x, var_0.b.a.x, false)), var_0.b.a.x & true, var_2.b.a.x), !select(vec4<bool>(var_2.b.a.x, global2.b.a.x, global2.b.a.x, true), vec4<bool>(global2.b.a.x, false, false, false), true), !(global2.b.a.x | var_0.b.a.x)));
    var var_4 = Struct_1(vec2<bool>(!all(vec4<bool>(true, false, false, true)), (false | all(vec3<bool>(true, true, false))) || (arg_0 <= -721f)), vec4<u32>(~_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(var_0.b.b.x, 38315u, 0u)), firstLeadingBit(_wgslsmith_clamp_u32(abs(var_1.x), 4294967295u, 0u)), var_2.b.b.x, ~4294967295u), global2.b.c, var_2.b.d);
    return Struct_1(var_0.b.a, ~var_2.b.b, 32418i, _wgslsmith_mult_i32(select(-global2.a.x, reverseBits(-1138i), true), 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(90748u, var_0.b.b.x), abs(vec2<u32>(0u, var_4.b.x))) % 32u)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(vec2<bool>(!(func_1(-1030f).a.x | (arg_0.a.x && true)), !(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.b.x, 32u)])) != global2.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(global2.b.b, vec4<u32>(0u, 4294967295u, arg_0.b.x, global2.b.b.x)), global2.b.b.x, 1u) | arg_0.b, func_1(-231f).b), 25647i, -17288i);
    var var_1 = ~vec4<i32>(-1i, ~(~func_1(global4.x).d), 1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(15123i, 36766i, 2147483647i), global2.a.x), ~global2.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-859f, _wgslsmith_f_op_f32(global2.c.x - 561f), -824f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.c.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14827u, 32u)] * global4.x), -739f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.b.b.x, 32u)] * -399f))))));
    var var_3 = select(vec4<bool>(true, any(vec2<bool>(global2.b.a.x, any(vec3<bool>(global2.b.a.x, true, arg_0.a.x)))), global2.b.d < arg_0.c, var_0.a.x), select(!select(!vec4<bool>(false, true, true, var_0.a.x), vec4<bool>(arg_0.a.x, global2.b.a.x, arg_0.a.x, false), vec4<bool>(global2.b.a.x, false, true, true)), vec4<bool>(func_1(_wgslsmith_f_op_f32(-global4.x)).a.x, all(vec3<bool>(global2.b.a.x, true, global2.b.a.x)) || any(vec3<bool>(global2.b.a.x, true, global2.b.a.x)), any(vec2<bool>(false, true)), global2.b.a.x), true), vec4<bool>(~_wgslsmith_div_u32(arg_0.b.x, 25376u) == abs(0u), all(!func_2(var_1.zzx).b.a), func_2(vec3<i32>(arg_0.c, arg_0.c, _wgslsmith_clamp_i32(arg_0.d, u_input.a.x, -7359i))).b.a.x, !(1i <= _wgslsmith_sub_i32(arg_0.c, 72579i))));
    var_1 = global2.a;
    return _wgslsmith_clamp_u32(var_0.b.x ^ reverseBits(38316u), func_2(min(func_2(vec3<i32>(-2147483647i, var_0.d, -7966i)).a.xyz, vec3<i32>(-31307i, -2147483647i, 33309i) & var_1.yxz) | global2.a.yzz).b.b.x, countOneBits(0u) >> (arg_0.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(all(select(vec4<bool>(false, global2.b.a.x, true, global2.b.a.x), vec4<bool>(true, global2.b.a.x, true, global2.b.a.x), vec4<bool>(true, global2.b.a.x, false, false))), all(!vec3<bool>(false, true, global2.b.a.x))), select(vec2<bool>(true, -1170f > global2.c.x), select(global2.b.a, !global2.b.a, !vec2<bool>(global2.b.a.x, global2.b.a.x)), true), vec2<bool>(global2.b.a.x, any(!vec4<bool>(true, false, global2.b.a.x, true)))), vec4<u32>(~func_4(func_1(-343f)), ~4294967295u, reverseBits(4294967295u), ~global2.b.b.x), select(_wgslsmith_mult_i32(global2.b.d, -global2.a.x), u_input.a.x, func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, global2.c.x) + -1881f)).a.x), -abs(-1i));
    var var_1 = true;
    let var_2 = countOneBits(~(~(~reverseBits(global2.b.b.ywx))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.c.x, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(global2.b.b.x, 32u)])), var_0.a.x))), _wgslsmith_f_op_f32(floor(global2.c.x))));
    var var_4 = func_2(-abs(vec3<i32>(_wgslsmith_div_i32(0i, u_input.a.x), u_input.a.x ^ -2147483647i, 1i)));
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -113f), ~_wgslsmith_clamp_i32(u_input.a.x >> (4294967295u % 32u), 1i, func_1(733f).d) | firstTrailingBit(var_0.d), func_2(~vec3<i32>(35132i, u_input.a.x, -1i)).b.b.x ^ _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(4294967295u, var_0.b.x)));
}

