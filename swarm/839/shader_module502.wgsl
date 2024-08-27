struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, 21759i), 4294967295u, vec4<f32>(767f, 257f, 1414f, -1039f), -1i);

var<private> global3: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    let var_0 = vec3<i32>(global3.a.x, ~(-_wgslsmith_dot_vec2_i32(global3.a, vec2<i32>(global3.a.x, -18952i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global3.a.x, global3.a.x, global2.a.x), abs(-vec3<i32>(global3.d, -39686i, global3.d)))) & vec3<i32>(-(i32(-1i) * -13815i), -2147483647i, global3.d);
    global2 = Struct_1(vec2<i32>(var_0.x, var_0.x ^ -(i32(-1i) * -75815i)), abs(~global2.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) - _wgslsmith_f_op_f32(global2.c.x - global3.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c.x))), -1000f, _wgslsmith_f_op_f32(1344f + -1554f)))), min(countOneBits(global3.d), -(global2.a.x | global2.d)) ^ _wgslsmith_dot_vec3_i32(max(var_0, firstTrailingBit(vec3<i32>(global2.d, global2.d, 0i))), vec3<i32>(2147483647i, 66144i, ~1i)));
    var var_1 = !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true & any(vec4<bool>(false, false, false, true))));
    global3 = Struct_1(~(~(-max(var_0.xy, var_0.zy))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(abs(u_input.a.x), global3.b), 1u)), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global3.c.x), 188f, _wgslsmith_f_op_f32(select(-296f, global3.c.x, false))), (global2.d << (global0[_wgslsmith_index_u32(global2.b, 7u)] % 32u)) & ~min(1i, countOneBits(27349i)));
    var_1 = select(vec3<bool>(true, false, !(all(var_1.zx) && (var_1.x & false))), vec3<bool>(true, false || any(vec4<bool>(true, true, true, true)), !(~global3.b > (u_input.a.x | global2.b))), any(vec4<bool>(!var_1.x, true, 62970u >= global2.b, all(vec2<bool>(var_1.x, true)))) || ((~global2.b <= _wgslsmith_mult_u32(global3.b, global3.b)) && var_1.x));
    return firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(-4864i, firstLeadingBit(global2.a.x), 24790i), _wgslsmith_div_vec3_i32(min(var_0, vec3<i32>(2147483647i, global2.a.x, 21190i)) ^ _wgslsmith_add_vec3_i32(var_0, vec3<i32>(-1i, var_0.x, global3.d)), var_0)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(func_3() >> (vec3<u32>(u_input.a.x, arg_0.a.b, ~(~global3.b)) % vec3<u32>(32u)), vec3<i32>(func_3().x, global2.d, -2147483647i));
    var var_1 = global3.c.wwz;
    global2 = arg_0.a;
    var var_2 = ~2147483647i;
    var var_3 = vec2<f32>(global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(abs(-668f))));
    return arg_0.c;
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    let var_0 = !(!(!vec3<bool>(select(true, true, true), true, true)));
    let var_1 = _wgslsmith_mod_u32(arg_0.a.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1862u, global3.b, arg_0.a.b), u_input.a), select(_wgslsmith_div_vec4_u32(u_input.a, u_input.a), u_input.a | vec4<u32>(0u, 4294967295u, 98810u, 4294967295u), !var_0.x)), vec4<u32>(143611u, ~(~42935u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyz, u_input.a.wyw), 1u), (0u | arg_0.a.b) | min(global2.b, arg_0.a.b))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2.c + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.c.x, 527f, 3046f, arg_0.a.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, arg_0.a.c.x, 316f, global2.c.x)))))) - vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(897f + 598f), _wgslsmith_f_op_f32(-global2.c.x), true))), _wgslsmith_f_op_f32(-global2.c.x), -379f));
    var var_3 = ~vec4<u32>(func_2(Struct_2(arg_0.a, var_2.x, arg_0.a), -1112f, -1171f).b, _wgslsmith_add_u32(countOneBits(global0[_wgslsmith_index_u32(var_1, 7u)]), ~u_input.a.x), 1u, ~(~var_1)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 7328u, 1u), u_input.a), select(u_input.a, u_input.a, vec4<bool>(true, true, var_0.x, var_0.x)), u_input.a), vec4<u32>(0u, 33918u, u_input.a.x, 0u & arg_0.a.b)), global3.b, arg_0.a.b, ~global2.b) % vec4<u32>(32u));
    let var_4 = !vec2<bool>(!var_0.x, true);
    return Struct_3(global3.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.a;
    global3 = arg_1.a;
    var var_1 = -151f;
    return vec4<f32>(1015f, 427f, _wgslsmith_f_op_f32(step(-805f, -448f)), 1251f);
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_4(func_2(Struct_2(arg_0.a, 983f, Struct_1(arg_0.a.a, 6593u, arg_0.a.c, global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_0.a.c.x)), global2.a.x)), Struct_2(Struct_1(global3.a, global3.b, _wgslsmith_f_op_vec4_f32(-global2.c), global2.a.x & global2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1302f + _wgslsmith_f_op_f32(-1000f - arg_0.a.c.x))), arg_0.a), func_2(Struct_2(Struct_1(arg_0.a.a << (u_input.a.wx % vec2<u32>(32u)), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(184f, global3.c.x, arg_0.a.c.x, arg_0.a.c.x) + arg_0.a.c), _wgslsmith_mod_i32(20675i, 2147483647i)), -355f, Struct_1(-vec2<i32>(-36659i, arg_0.b), ~global0[_wgslsmith_index_u32(35795u, 7u)], vec4<f32>(492f, global3.c.x, arg_0.a.c.x, 164f), -13420i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.c.x), _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(floor(global2.c.x)))));
    let var_1 = vec3<i32>(_wgslsmith_div_i32(-20612i, -global2.a.x), arg_0.a.d, 31859i) >> (u_input.a.yww % vec3<u32>(32u));
    let var_2 = arg_0;
    global3 = func_2(Struct_2(Struct_1(~firstTrailingBit(arg_0.a.a), u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -352f), _wgslsmith_f_op_f32(var_2.a.c.x + 1000f), arg_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -895f)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), Struct_1(vec2<i32>(-58511i, global2.a.x), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.xw)), 7u)], vec4<f32>(831f, -645f, var_2.a.c.x, _wgslsmith_f_op_f32(-global3.c.x)), -1i | ~arg_0.b)), _wgslsmith_f_op_f32(ceil(-563f)), 297f);
    let var_3 = -select(vec2<i32>(_wgslsmith_div_i32(~var_2.b, -var_1.x), min(arg_0.a.a.x, ~global2.d)), global3.a, !(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~u_input.a.zw);
    let var_1 = func_1(Struct_4(Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_i32(global3.a, global2.a)), _wgslsmith_add_u32(0u, u_input.a.x) >> (~4294967295u % 32u), global2.c, ~_wgslsmith_mult_i32(-47646i, global2.d)), -_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, -2147483647i, 2147483647i, global3.d), -vec4<i32>(global2.a.x, global3.d, 42578i, 0i))));
    var var_2 = Struct_4(Struct_1(func_2(Struct_2(Struct_1(var_1.a, 51887u, vec4<f32>(119f, 501f, var_1.c.x, global2.c.x), var_1.d), _wgslsmith_f_op_f32(global2.c.x * -247f), func_2(Struct_2(Struct_1(global2.a, 44301u, vec4<f32>(global2.c.x, -994f, 1000f, -1364f), global3.d), -1000f, var_1), var_1.c.x, global3.c.x)), _wgslsmith_f_op_f32(global3.c.x * -1737f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f + global2.c.x))).a, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, global3.c.x, global2.c.x, global2.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(global3.c.x, 1000f, var_1.c.x, 913f), vec4<f32>(var_1.c.x, var_1.c.x, global3.c.x, var_1.c.x)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(global2.a.x, -2147483647i, 16943i) & -vec3<i32>(-41133i, var_1.d, global2.a.x), -(~vec3<i32>(0i, global2.a.x, global3.a.x)))), -2147483647i);
    var_2 = Struct_4(func_1(Struct_4(var_1, _wgslsmith_clamp_i32(countOneBits(var_1.a.x), _wgslsmith_mult_i32(global3.a.x, var_1.a.x), ~var_2.b))), ~(-2147483647i));
    var var_3 = (vec2<u32>(global3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 7u)], 72359u), reverseBits(vec2<u32>(u_input.a.x, 35993u)))) ^ u_input.a.xy) & firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(func_4(Struct_4(Struct_1(var_1.a, 1u, var_2.a.c, var_1.d), var_2.a.d)).a, 7u)], firstTrailingBit(4294967295u) >> (firstLeadingBit(6320u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_i32(var_2.b, abs(_wgslsmith_mod_i32(-702i, var_1.d))), _wgslsmith_div_i32(0i | var_2.b, global3.d | (0i ^ var_2.b)), false), vec2<i32>(reverseBits(~(~0i)), (~global2.a.x >> (4294967295u % 32u)) ^ ((global2.d << (global2.b % 32u)) << (func_2(Struct_2(var_2.a, global2.c.x, Struct_1(global2.a, var_3.x, global2.c, -21484i)), global3.c.x, global2.c.x).b % 32u))));
}

