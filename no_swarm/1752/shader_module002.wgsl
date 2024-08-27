struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4196u, 1u);

var<private> global1: array<f32, 2> = array<f32, 2>(365f, 260f);

var<private> global2: Struct_2 = Struct_2(1u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~(~(~(~vec4<u32>(30556u, global2.a, 104631u, 4294967295u) << (reverseBits(vec4<u32>(0u, u_input.b, 19366u, 27035u)) % vec4<u32>(32u)))));
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    let var_1 = !(!(-(-1i << (u_input.b % 32u)) < reverseBits(reverseBits(u_input.a.x))));
    let var_2 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(global0.x, 1u), _wgslsmith_add_u32(countOneBits(u_input.b >> (var_0.x % 32u)), _wgslsmith_dot_vec2_u32(var_0.xw, ~vec2<u32>(1u, 0u)))), 2u)], -172f, global1[_wgslsmith_index_u32(~4294967295u, 2u)]);
    return u_input.a.zz;
}

fn func_2() -> Struct_4 {
    global1 = array<f32, 2>();
    global1 = array<f32, 2>();
    global2 = Struct_2(_wgslsmith_mod_u32(max(global2.a, select(global0.x, global2.a, true)), 9183u));
    return Struct_4(_wgslsmith_dot_vec2_i32(func_3(), u_input.a.xx), true & !any(vec4<bool>(false, false, true, false)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a, 2u)] - 749f), _wgslsmith_div_f32(-182f, global1[_wgslsmith_index_u32(u_input.b, 2u)]), 2504f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 211f, -877f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 999f, global1[_wgslsmith_index_u32(4294967295u, 2u)]) + vec3<f32>(global1[_wgslsmith_index_u32(global2.a, 2u)], -1630f, global1[_wgslsmith_index_u32(4294967295u, 2u)])))), global1[_wgslsmith_index_u32(~5643u, 2u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(abs(global2.a)), 2u)]), vec2<u32>(~countOneBits(u_input.b), global2.a >> (countOneBits(u_input.b) % 32u)), vec3<bool>(!any(vec3<bool>(true, false, false)), !all(vec3<bool>(false, true, false)), true)), ~firstLeadingBit(global0.x) | global0.x, countOneBits(global2.a));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_4) -> vec4<i32> {
    global2 = Struct_2(~0u);
    let var_0 = u_input.a.xx;
    var var_1 = select(_wgslsmith_clamp_vec4_i32((min(vec4<i32>(arg_2.a, var_0.x, u_input.a.x, arg_2.a), vec4<i32>(2147483647i, -1i, 19304i, var_0.x)) >> (max(vec4<u32>(20649u, global0.x, 39307u, 0u), vec4<u32>(103780u, u_input.b, 7214u, 28425u)) % vec4<u32>(32u))) | abs(vec4<i32>(u_input.a.x, arg_2.a, -1i, var_0.x) ^ vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, 0i, 11681i) ^ vec4<i32>(-1i, u_input.a.x, -30312i, -22103i), vec4<i32>(18315i, 21311i, arg_2.a, u_input.a.x)), min(~vec4<i32>(-2147483647i, -2147483647i, -5826i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-62801i, -11217i, arg_2.a, var_0.x), vec4<i32>(45119i, u_input.a.x, 1218i, -72072i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(max(u_input.a, u_input.a), u_input.a), -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-51823i, u_input.a.x, -52695i)), 2147483647i, countOneBits(-26235i | var_0.x))), vec4<i32>(arg_2.a, -1i, u_input.a.x, arg_2.a), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.c.e.x, func_2().b, !arg_2.c.e.x, select(all(vec4<bool>(arg_2.c.e.x, false, arg_2.b, arg_2.b)), !arg_2.c.e.x, true)), _wgslsmith_div_u32(~14528u, firstTrailingBit(arg_2.d)) > _wgslsmith_mult_u32(1u, 58619u)));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(~global2.a, global2.a), ~_wgslsmith_sub_vec2_u32(~arg_0, arg_0)) ^ min(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), ~global2.a), _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 52199u, 9327u), vec3<u32>(global0.x, u_input.b, u_input.b)))), ~(~countOneBits(arg_2.c.d)));
    global2 = Struct_2(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.c.d.x, 19257u), vec2<u32>(4294967295u, arg_0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(16708u, 1u), ~vec2<u32>(global0.x, arg_0.x))));
    return firstTrailingBit(max(vec4<i32>(u_input.a.x, reverseBits(abs(0i)), -33860i, u_input.a.x), _wgslsmith_div_vec4_i32(-(vec4<i32>(var_1.x, var_0.x, var_0.x, u_input.a.x) << (vec4<u32>(arg_2.d, 0u, 21251u, global0.x) % vec4<u32>(32u))), vec4<i32>(~25426i, abs(var_1.x), -u_input.a.x, 24634i))));
}

fn func_1() -> Struct_2 {
    global2 = Struct_2(1u);
    let var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -(~1i), select(reverseBits(u_input.a.x), 1i, any(vec2<bool>(false, false)))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, countOneBits(u_input.a.x), u_input.a.x, ~1i), -vec4<i32>(42687i, u_input.a.x, u_input.a.x, -2147483647i))), u_input.a.x ^ _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-14131i, u_input.a.x), u_input.a.x));
    var var_1 = global1[_wgslsmith_index_u32(~(global2.a ^ ~(~(~u_input.b))), 2u)];
    var var_2 = 208f;
    let var_3 = firstLeadingBit(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(12604u, 28038u), vec2<u32>(u_input.b, 4294967295u), vec2<u32>(79303u, u_input.b)) >> (vec2<u32>(4294967295u, global2.a) % vec2<u32>(32u)), global1[_wgslsmith_index_u32(6440u, 2u)], func_2()) & vec4<i32>(~2334i, func_3().x, 43420i, 22050i));
    return Struct_2(firstTrailingBit(~(~global2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = u_input.a.yz;
    global2 = func_1();
    global2 = func_1();
    let var_2 = ~(~global2.a);
    var var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_mult_vec3_i32(u_input.a, func_4(~vec2<u32>(8665u, global2.a) ^ vec2<u32>(41969u, var_2), func_2().c.a.x, Struct_4(1i, true, Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(38660u, 2u)], global1[_wgslsmith_index_u32(var_2, 2u)]), global1[_wgslsmith_index_u32(var_2, 2u)], global1[_wgslsmith_index_u32(43820u, 2u)], vec2<u32>(2585u, u_input.b), vec3<bool>(false, true, true)), abs(u_input.b), ~4294967295u)).zzx), vec4<i32>(var_1.x, u_input.a.x, var_1.x, var_1.x));
}

