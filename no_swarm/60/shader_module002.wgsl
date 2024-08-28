struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 4294967295u, 38056u, 4294967295u, 5690u, 44395u, 1u);

var<private> global1: array<vec2<i32>, 29>;

var<private> global2: array<vec2<f32>, 22>;

var<private> global3: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(arg_1.x, 1273f, arg_1.x, -590f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_0.x)), -1000f, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global3.a)))))))), -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-8529i, u_input.c, arg_0.x), vec3<i32>(global3.b.x, u_input.a.x, -33679i)), -u_input.c), u_input.a << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u) % vec2<u32>(32u))), !global3.d, global3.d, global3.e);
    global0 = array<u32, 7>();
    var var_2 = select(_wgslsmith_div_vec3_u32(vec3<u32>(52241u, ~49415u, firstTrailingBit(1u)), vec3<u32>(min(u_input.b, 4317u), u_input.b, ~17243u) & vec3<u32>(~17878u, _wgslsmith_mod_u32(13425u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30939u, 7u)], 7u)]), ~u_input.b)), vec3<u32>(select(_wgslsmith_add_u32(0u, global0[_wgslsmith_index_u32(10130u, 7u)]), ~1u, global3.d.x), (u_input.b >> (1u % 32u)) << (0u % 32u), ~1u) ^ ~vec3<u32>(_wgslsmith_add_u32(89160u, 81636u), 1u, _wgslsmith_div_u32(28073u, 1441u)), true);
    var var_3 = Struct_1(_wgslsmith_div_f32(-433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - _wgslsmith_f_op_f32(-452f * _wgslsmith_f_op_f32(abs(arg_1.x))))), -(vec2<i32>(-1i) * -max(vec2<i32>(u_input.c, 0i), global3.b)), vec3<bool>(var_1.d.x, select(!global3.e.x, any(vec2<bool>(global3.e.x, global3.d.x)), all(vec3<bool>(global3.e.x, false, false))) == true, ~(var_2.x << (var_2.x % 32u)) < 0u), var_1.c, vec2<bool>(var_1.e.x, any(!vec4<bool>(false, true, false, var_1.d.x))));
    return max(abs(var_1.b.x), 40265i);
}

fn func_2(arg_0: i32) -> i32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(sign(-168f)), ~global1[_wgslsmith_index_u32(~(~u_input.b), 29u)], vec3<bool>(_wgslsmith_f_op_f32(step(1253f, _wgslsmith_f_op_f32(global3.a * global3.a))) == _wgslsmith_f_op_f32(f32(-1f) * -1212f), global3.c.x, global3.c.x), vec3<bool>((func_3(vec4<i32>(arg_0, -1i, arg_0, -38359i), vec4<f32>(-1363f, -1054f, 1627f, global3.a)) ^ (arg_0 << (1u % 32u))) <= min(2147483647i, 1i), false, true), vec2<bool>(false, all(!vec4<bool>(true, global3.d.x, global3.e.x, global3.c.x))));
    let var_0 = Struct_1(global3.a, firstTrailingBit(~(vec2<i32>(-1i) * -global1[_wgslsmith_index_u32(u_input.b, 29u)])), !(!select(!global3.d, vec3<bool>(false, false, true), !global3.c)), global3.d, select(select(select(vec2<bool>(global3.d.x, global3.d.x), vec2<bool>(false, false), global3.d.x == global3.c.x), select(select(vec2<bool>(global3.d.x, false), global3.d.xz, vec2<bool>(false, global3.e.x)), vec2<bool>(global3.c.x, global3.c.x), true), global3.a == _wgslsmith_f_op_f32(global3.a * -1841f)), vec2<bool>(!global3.c.x, true), vec2<bool>(select(global3.c.x, false, all(global3.c.yz)), !select(false, global3.e.x, global3.e.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(447f, global3.a)), _wgslsmith_add_vec2_i32(select(~(-vec2<i32>(1i, u_input.c)), vec2<i32>(global3.b.x, -1i), !var_0.c.zx), abs(vec2<i32>(-1i, ~(-18148i)))), select(!(!(!var_0.d)), global3.d, vec3<bool>(true, !(!global3.d.x), global3.e.x)), global3.d, select(!var_0.d.yy, !vec2<bool>(u_input.b > 4294967295u, var_0.c.x), vec2<bool>(global3.d.x, all(select(vec2<bool>(false, true), var_0.e, global3.e.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * 379f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) - _wgslsmith_f_op_f32(-global3.a)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - global3.a)), -866f, true && all(vec3<bool>(false, false, true))))));
    let var_3 = countOneBits(abs(vec2<i32>(_wgslsmith_mult_i32(var_1.b.x, var_0.b.x), reverseBits(2147483647i))));
    return reverseBits(_wgslsmith_mult_i32(var_3.x, func_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global3.b.x, 11725i, u_input.c), vec4<i32>(global3.b.x, var_1.b.x, var_3.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, var_2.x, -112f, -261f) - vec4<f32>(var_1.a, -1000f, 924f, var_2.x)) + vec4<f32>(global3.a, var_1.a, global3.a, var_0.a)))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(0i, ~vec4<i32>(func_2(42491i), ~(~0i), u_input.a.x, arg_3 >> (reverseBits(11227u) % 32u)), -921f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-532f, 1748f, global3.a, 196f), vec4<f32>(-466f, global3.a, global3.a, 260f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, global3.a, 1304f))), !arg_2))));
    let var_1 = 117f;
    var var_2 = ~vec2<u32>(u_input.b, _wgslsmith_mod_u32(~(~32075u), firstTrailingBit(4294967295u)));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.d.x), arg_1 >> (vec2<u32>(~1u, var_2.x) % vec2<u32>(32u)), select(arg_2.ywz, select(!vec3<bool>(global3.c.x, arg_2.x, arg_2.x), select(global3.d, vec3<bool>(global3.e.x, true, false), !global3.d.x), global3.e.x), !arg_2.xzx), global3.c, vec2<bool>(arg_2.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(22082u, _wgslsmith_add_u32(~1u, max(u_input.b, abs(u_input.b)))), 7u)], -global3.b, !(!(!vec4<bool>(global3.e.x, global3.d.x, true, true))), _wgslsmith_clamp_i32(-15067i, -18871i, global3.b.x << (7926u % 32u)));
    var var_1 = min(vec4<i32>(-20513i, ~var_0.b.x, global3.b.x, var_0.b.x), select((firstTrailingBit(vec4<i32>(0i, -1i, var_0.b.x, global3.b.x)) ^ vec4<i32>(var_0.b.x, u_input.c, global3.b.x, -1i)) >> ((reverseBits(vec4<u32>(u_input.b, 48709u, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(23412u, 7u)])) ^ vec4<u32>(1u, 1u, 63120u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, -72170i, var_0.b.x, var_0.b.x) | vec4<i32>(33027i, var_0.b.x, 24550i, var_0.b.x), -vec4<i32>(var_0.b.x, 0i, var_0.b.x, 0i), vec4<i32>(28831i, select(35163i, global3.b.x, global3.e.x), -var_0.b.x, ~u_input.a.x)), vec4<bool>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] <= u_input.b, any(!global3.e), var_0.d.x, var_0.e.x)));
    let var_2 = select(~(vec2<i32>(i32(-1i) * -2147483647i, u_input.a.x) & max(vec2<i32>(u_input.c, -23737i), abs(var_0.b))), vec2<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_mod_i32(u_input.a.x, global3.b.x)), 16688i), _wgslsmith_mod_i32(_wgslsmith_add_i32(30761i, 0i), var_1.x)), global3.d.zx);
    global3 = Struct_1(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * 667f)))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-max(-2147483647i, var_0.b.x), 31433i), vec2<i32>(global3.b.x, global3.b.x), global3.b), vec3<bool>(true, global3.d.x, var_0.c.x), var_0.d, global3.e);
    var var_3 = ~9626i;
    var var_4 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(854f + 642f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-214f + _wgslsmith_f_op_f32(-var_0.a))), !(!all(!vec4<bool>(false, false, global3.d.x, false))), var_0.e.x);
    let var_5 = func_1(39971u, global1[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~4294967295u, 7u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), 25836u), 29u)], !(!(!select(vec4<bool>(false, var_0.c.x, false, var_4.x), vec4<bool>(global3.d.x, global3.e.x, global3.c.x, true), vec4<bool>(var_4.x, var_0.e.x, true, var_4.x)))), ~(-1i));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.a, _wgslsmith_f_op_f32(-559f - -1000f))))), -_wgslsmith_mod_vec2_i32(var_2, vec2<i32>(var_1.x, 0i)), global3.c, select(func_1(reverseBits(~u_input.b), abs(vec2<i32>(1i, -5195i)), select(!vec4<bool>(var_5.d.x, true, var_0.c.x, var_0.d.x), vec4<bool>(var_5.d.x, var_4.x, var_4.x, var_5.d.x), vec4<bool>(false, var_5.c.x, true, var_4.x)), ~(~(-39324i))).c, vec3<bool>(all(!vec4<bool>(false, var_0.e.x, var_4.x, var_0.d.x)), (u_input.a.x & var_0.b.x) > _wgslsmith_dot_vec3_i32(var_1.wwy, vec3<i32>(2147483647i, 33545i, u_input.c)), false), !global3.c), var_5.e);
    var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(19171i, select(_wgslsmith_sub_i32(-1i, 2147483647i) ^ firstLeadingBit(_wgslsmith_dot_vec3_i32(var_1.wzz, var_1.zxx)), 45179i, var_5.d.x));
}

