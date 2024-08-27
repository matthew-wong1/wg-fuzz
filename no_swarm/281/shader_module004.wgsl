struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(45326u, 18880u, 63102u, 33065u, 88540u, 1u, 56707u, 4294967295u, 4294967295u, 29544u, 0u, 79174u, 4332u, 1u, 43217u, 4294967295u, 5397u, 67733u, 29765u);

var<private> global1: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, global2.c.a, global2.c.a, global2.d.b))))))));
    global2 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(-(vec4<i32>(0i, arg_0, global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)]) ^ vec4<i32>(global2.a.x, 22993i, global2.a.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 1u)])), vec4<i32>(i32(-1i) * -2147483647i, ~arg_0, ~global1[_wgslsmith_index_u32(global2.d.c, 1u)], ~(-1i))), arg_0), _wgslsmith_f_op_f32(1149f - global2.b), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -118f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -604f) - var_0.x)), _wgslsmith_f_op_f32(-global2.d.a), select(global0[_wgslsmith_index_u32(~1u, 19u)], ~4294967295u, ~global2.a.x <= -arg_0)), Struct_1(151f, -613f, 236u));
    var var_1 = countOneBits(~(-26158i));
    let var_2 = select(vec2<bool>(false, (true || select(true, true, false)) == !any(vec4<bool>(false, true, false, true))), select(vec2<bool>(select(select(false, true, true), false, all(vec2<bool>(true, false))), _wgslsmith_mult_u32(u_input.a.x, 19845u) >= u_input.a.x), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(select(false, false, false), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))), true);
    let var_3 = any(select(select(!var_2, select(vec2<bool>(true, var_2.x), var_2, var_2.x), vec2<bool>(false, var_2.x)), !vec2<bool>(var_2.x, true), !var_2.x)) || !any(!select(var_2, var_2, var_2.x));
    return ~44101i;
}

fn func_2() -> Struct_3 {
    var var_0 = abs(u_input.a.x | ~reverseBits(1u));
    let var_1 = ~abs(vec2<i32>(global1[_wgslsmith_index_u32(firstTrailingBit(0u), 1u)], -global1[_wgslsmith_index_u32(56330u, 1u)]) & -select(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 1u)], 2147483647i), vec2<i32>(29462i, 3759i), true));
    return Struct_3(min(firstLeadingBit(~(-vec4<i32>(global2.a.x, -2147483647i, var_1.x, global1[_wgslsmith_index_u32(global2.d.c, 1u)]))), vec4<i32>(-1i, _wgslsmith_div_i32(16560i, -18746i) >> (global0[_wgslsmith_index_u32(countOneBits(59077u), 19u)] % 32u), -func_3(2147483647i), i32(-1i) * -global2.a.x)), ((firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])) << (vec3<u32>(u_input.a.x, global2.d.c, global2.d.c) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(13254u, u_input.a.x), u_input.a), ~0u, select(4294967295u, 114949u, false))) << (~vec3<u32>(u_input.a.x, ~u_input.a.x, ~1u) % vec3<u32>(32u)), Struct_2(-(~(global2.a & vec2<i32>(-28162i, -2613i))), 198f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.d.b))), 790f, u_input.a.x), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.d.a, 305f))), _wgslsmith_f_op_f32(abs(-227f)), _wgslsmith_dot_vec2_u32(~vec2<u32>(global2.d.c, global2.d.c), ~u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = !(0u == arg_1.c.d.c) | true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-407f, global2.d.b, -489f, -633f), vec4<f32>(-675f, global2.b, global2.b, arg_1.c.c.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.b, arg_1.c.b, 1000f) - vec4<f32>(arg_1.c.d.a, global2.d.a, 208f, 1079f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(933f, global2.d.a, global2.c.b, global2.d.a))) + vec4<f32>(-1277f, _wgslsmith_f_op_f32(940f * global2.c.a), _wgslsmith_f_op_f32(f32(-1f) * -576f), _wgslsmith_div_f32(-1000f, -352f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-var_1.ww), arg_1.c.a >> (_wgslsmith_div_vec2_u32(arg_1.b.yx, _wgslsmith_div_vec2_u32(u_input.a, func_2().b.xz)) % vec2<u32>(32u)));
    let var_3 = ~_wgslsmith_add_vec3_i32(-arg_1.a.zzz, ~arg_1.a.ywz);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1136f, var_2.a.x))));
    return Struct_1(global2.d.a, 1360f, ~firstTrailingBit(_wgslsmith_sub_u32(min(12063u, 4294967295u), firstTrailingBit(global2.c.c))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<u32, 19>();
    var var_0 = Struct_5(Struct_3(-(abs(vec4<i32>(global1[_wgslsmith_index_u32(global2.d.c, 1u)], 21540i, -45658i, global1[_wgslsmith_index_u32(arg_0.c, 1u)])) ^ (vec4<i32>(global2.a.x, -1i, 2147483647i, -9731i) & vec4<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71412u, 19u)], 1u)], -2147483647i, 1i, 2147483647i))), ~(~vec3<u32>(1u, 1u, 1u)), Struct_2(global2.a, -1537f, Struct_1(_wgslsmith_f_op_f32(1426f - arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -525f), u_input.a.x | arg_0.c), Struct_1(global2.c.b, _wgslsmith_f_op_f32(trunc(global2.c.a)), ~u_input.a.x))), u_input.a.x);
    var var_1 = _wgslsmith_dot_vec3_u32(countOneBits(var_0.a.b), vec3<u32>(~(~39381u), 122115u, ~(var_0.b & 24862u)) << (vec3<u32>(abs(var_0.a.b.x), global2.c.c, countOneBits(global2.c.c) | u_input.a.x) % vec3<u32>(32u)));
    var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(func_2().c.d.c, _wgslsmith_sub_u32(~(var_0.b << (arg_0.c % 32u)), 3289u)), ~0u);
    global0 = array<u32, 19>();
    return 604f;
}

fn func_1(arg_0: bool) -> Struct_4 {
    global1 = array<i32, 1>();
    var var_0 = global1[_wgslsmith_index_u32(51044u, 1u)];
    global0 = array<u32, 19>();
    var var_1 = ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 20077u, 1u), vec3<u32>(global0[_wgslsmith_index_u32(global2.d.c, 19u)], 39036u, u_input.a.x)), max(vec3<u32>(12476u, 7793u, u_input.a.x), vec3<u32>(global2.d.c, 0u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)])))) ^ vec3<u32>(min(0u, 75959u), global2.c.c, u_input.a.x);
    global2 = Struct_2(~(~min(global2.a, -vec2<i32>(3850i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -273f) - _wgslsmith_f_op_f32(func_5(func_4(global2.a.x, func_2())))), global2.d, func_4(global2.a.x, Struct_3(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, global1[_wgslsmith_index_u32(31380u, 1u)], global1[_wgslsmith_index_u32(73824u, 1u)], global2.a.x), vec4<i32>(global2.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 1u)], -9941i, 5302i)), max(vec3<u32>(0u, global2.d.c, var_1.x), ~vec3<u32>(0u, global0[_wgslsmith_index_u32(11210u, 19u)], var_1.x)), func_2().c)));
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.c.b), -1113f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(539f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-519f, -112f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d.a, global2.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, global2.b) * vec2<f32>(global2.d.b, global2.b)) + vec2<f32>(-362f, global2.b))))), reverseBits(vec2<i32>(0i, (global1[_wgslsmith_index_u32(global2.d.c, 1u)] | global2.a.x) << (0u % 32u))));
}

fn func_6(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    global1 = array<i32, 1>();
    let var_0 = Struct_3(abs(abs(-vec4<i32>(-1i, global1[_wgslsmith_index_u32(33610u, 1u)], -53098i, 2147483647i))), vec3<u32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(34328u, 31563u), vec2<u32>(0u, global2.c.c)), vec2<u32>(28936u, 13875u)), 19u)], 4294967295u, _wgslsmith_mod_u32(0u, ~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]))), func_2().c);
    var var_1 = arg_2;
    var var_2 = var_0.c.c;
    let var_3 = ~(-64666i);
    return var_0;
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5, arg_3: u32) -> Struct_2 {
    let var_0 = func_2();
    global0 = array<u32, 19>();
    let var_1 = _wgslsmith_mult_u32(reverseBits(arg_1.c), ~global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.c), 19u)]);
    let var_2 = func_1(true);
    let var_3 = 2147483647i;
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(_wgslsmith_f_op_f32(f32(-1f) * -238f), Struct_1(global2.d.a, 1859f, 4294967295u), Struct_5(func_6(global2.a.x, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), func_1(true)), 0u), ~min(abs(u_input.a.x), 0u) & u_input.a.x);
    let var_0 = select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(true, false, true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)));
    let var_1 = func_6(global2.a.x, !select(!(!vec3<bool>(var_0.x, false, var_0.x)), !(!vec3<bool>(false, true, var_0.x)), !select(false, true, true)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-756f, global2.d.a), vec2<f32>(-184f, global2.d.a)) - vec2<f32>(global2.c.a, 488f))), global2.a)).a.x;
    var var_2 = _wgslsmith_f_op_f32(max(global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1023f)));
    let var_3 = _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(firstLeadingBit(abs(_wgslsmith_div_u32(48859u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u)))), 19u)], u_input.a.x << (92740u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~42265u, ~(~38931u), u_input.a.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_3, global2.d.c), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global2.c.c, 19u)], 0u))));
}

