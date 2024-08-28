struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-52867i, 0i), vec2<i32>(i32(-2147483648), -33614i), vec2<i32>(0i, 2147483647i), vec2<i32>(-31835i, -34853i), vec2<i32>(4923i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 57287i), vec2<i32>(0i, 2098i), vec2<i32>(1353i, 0i), vec2<i32>(39078i, -46397i), vec2<i32>(23249i, -1i), vec2<i32>(-20712i, 1i), vec2<i32>(-29679i, -5933i), vec2<i32>(41547i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(7582i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(8460i, 2147483647i), vec2<i32>(-61109i, 54742i), vec2<i32>(i32(-2147483648), -46222i), vec2<i32>(27691i, -1i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 0i), vec2<i32>(9041i, 62490i));

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: array<i32, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global2 = true;
    var var_1 = var_0;
    var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(-1i, -var_0.a), 1i), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_add_i32(max(u_input.a.x, 21402i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -71789i, global1.a, var_1.a), vec4<i32>(u_input.b, 88999i, var_1.a, 8363i))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(sign(var_1.c.x)))), global1.c);
    return 33692u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec2<i32>) -> i32 {
    var var_0 = min(arg_1.x, func_3(-2098f, Struct_1(-abs(-18394i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * global1.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -433f)) + _wgslsmith_f_op_vec2_f32(-global1.c)))));
    var var_1 = Struct_1(-4678i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c.x, 456f)) * _wgslsmith_f_op_f32(round(-1980f))) - -290f), _wgslsmith_f_op_f32(f32(-1f) * -651f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.x, global1.c.x) - _wgslsmith_f_op_vec2_f32(-arg_0.xy)), global1.c)));
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -493f))), Struct_1(arg_2.x ^ u_input.b, -134f, arg_0.zx)), 14u)] & (-u_input.c | global3[_wgslsmith_index_u32(13701u, 14u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2156f * 934f) - _wgslsmith_f_op_f32(var_1.c.x + global1.b)) * -1276f), 1023f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, global1.c.x) + vec2<f32>(arg_0.x, var_1.b))), _wgslsmith_f_op_vec2_f32(var_1.c * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.c, global1.c) * _wgslsmith_div_vec2_f32(var_1.c, arg_0.xz))), true && (arg_0.x >= 1f))));
    let var_3 = Struct_1(firstLeadingBit(arg_2.x), -702f, var_1.c);
    let var_4 = any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)) & (false & !all(vec2<bool>(true, true)));
    return _wgslsmith_dot_vec2_i32(u_input.a >> (~select(arg_1, arg_1, any(vec2<bool>(var_4, var_4))) % vec2<u32>(32u)), -vec2<i32>(firstTrailingBit(abs(u_input.a.x)), (i32(-1i) * -1i) | var_2.a));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1503f, -254f, global1.c.x)))), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~2064u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 64726u), ~vec2<u32>(2785u, 1u))), _wgslsmith_mult_vec2_i32(countOneBits(reverseBits(global0[_wgslsmith_index_u32(1u, 24u)])), vec2<i32>(1i, u_input.c | global3[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(820f))), _wgslsmith_f_op_vec2_f32(-global1.c));
    let var_1 = select(select(select(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(all(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))))), vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !vec3<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec4<bool>(true, false, false, true))));
    global3 = array<i32, 14>();
    var var_2 = Struct_1(global3[_wgslsmith_index_u32(~reverseBits(6476u), 14u)], _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(728f, _wgslsmith_f_op_f32(-var_0.b))))), vec2<f32>(_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_div_f32(var_0.b, -1000f))), var_0.c.x));
    var var_3 = ~(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(29463u), ~0u, 1u, 1u), vec4<u32>(max(1u, 7218u), ~1u, 4294967295u, 4294967295u)) >> (vec4<u32>(abs(44418u) >> (1u % 32u), 10009u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23761u, 4294967295u, 25594u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 14247u), vec4<u32>(61682u, 4294967295u, 4294967295u, 52418u), vec4<u32>(50969u, 0u, 1u, 23599u))), firstLeadingBit(~18353u)) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_div_i32(min(-20688i, var_0.a), var_0.a), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(-var_0.c));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec3<bool> {
    global3 = array<i32, 14>();
    let var_0 = arg_1;
    let var_1 = max(-2147483647i << ((1u << (firstTrailingBit(~11807u) % 32u)) % 32u), 1i);
    global3 = array<i32, 14>();
    global3 = array<i32, 14>();
    return select(vec3<bool>(true, false, true), !select(vec3<bool>(true, all(vec2<bool>(arg_2, false)), arg_1.a <= u_input.b), !(!vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(true, arg_2, false), !vec3<bool>(false, false, arg_2), !vec3<bool>(arg_0, true, arg_0))), !(~_wgslsmith_clamp_i32(var_1, var_1, arg_1.a) < var_0.a));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    global2 = arg_0.x;
    return Struct_1(-global1.a, global1.c.x, vec2<f32>(_wgslsmith_f_op_f32(min(global1.c.x, global1.c.x)), global1.b));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    let var_0 = Struct_1(~(i32(-1i) * -8129i), -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.c * vec2<f32>(global1.b, -139f)))))));
    var var_1 = Struct_1((i32(-1i) * -1i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, 10150u, arg_1.x, 4294967295u), vec4<u32>(arg_1.x, 1u, arg_1.x, 1u)), min(vec4<u32>(24516u, arg_1.x, 19418u, arg_1.x), vec4<u32>(arg_1.x, 1u, arg_1.x, 1u))) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0.b)))))), _wgslsmith_f_op_f32(func_5(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))).c.x + 1228f)));
    let var_2 = vec2<bool>(true, true);
    global1 = arg_0;
    var_1 = func_1();
    return 1352f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(func_6(func_5(func_4(all(vec4<bool>(var_0, false, var_0, true)), func_1(), all(vec3<bool>(var_0, var_0, var_0)))), ~(firstTrailingBit(vec2<u32>(4294967295u, 56861u)) | ~vec2<u32>(1u, 10779u)))), _wgslsmith_f_op_vec2_f32(-global1.c));
    global3 = array<i32, 14>();
    global3 = array<i32, 14>();
    global3 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global1.c), max(-1i, -2147483647i) << (1u % 32u), min(vec3<i32>(max(var_1.a, var_1.a), _wgslsmith_add_i32(u_input.b, ~u_input.a.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, u_input.b, -73354i), vec3<i32>(global3[_wgslsmith_index_u32(1u, 14u)], global1.a, 22152i) & vec3<i32>(1i, global1.a, global1.a))), vec3<i32>(-reverseBits(u_input.c), ~_wgslsmith_mod_i32(global1.a, global1.a), ~(~u_input.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, -641f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, 715f) + global1.c), !var_0)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(min(global1.c.x, -116f))), vec2<bool>(var_0, var_1.a >= global1.a)))), _wgslsmith_f_op_vec2_f32(-var_1.c));
}

