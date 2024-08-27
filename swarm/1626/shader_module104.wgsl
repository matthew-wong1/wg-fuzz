struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-1276f, 605f, -251f, -1018f), vec4<f32>(-373f, 795f, 1044f, 139f), vec4<f32>(-116f, 428f, -579f, -596f), vec4<f32>(-1109f, -1743f, 640f, 367f), vec4<f32>(1222f, 654f, -139f, -379f), vec4<f32>(-1549f, 1087f, 204f, 295f));

var<private> global3: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(16002u, 26656u, 6569u, 0u), vec4<u32>(1u, 1u, 114u, 1681u), vec4<u32>(7375u, 23336u, 0u, 7144u), vec4<u32>(52563u, 0u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 60944u, 0u), vec4<u32>(47759u, 4294967295u, 10063u, 0u), vec4<u32>(41750u, 59970u, 0u, 4697u), vec4<u32>(92129u, 15965u, 0u, 49061u), vec4<u32>(10414u, 81777u, 4294967295u, 0u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(10419u, 4294967295u, 38111u, 4294967295u), vec4<u32>(0u, 33430u, 4294967295u, 4294967295u));

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_mod_u32(global4.x, u_input.b.x);
    let var_1 = _wgslsmith_mult_vec2_i32(reverseBits(select(u_input.d.wy, vec2<i32>(arg_2 >> (global4.x % 32u), 1i), vec2<bool>(true, true))), vec2<i32>(24087i, u_input.a.x));
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-573f, arg_1.x))), _wgslsmith_sub_vec4_u32(max(~vec4<u32>(u_input.b.x, global4.x, u_input.c, 4294967295u), firstLeadingBit(global3[_wgslsmith_index_u32(0u, 12u)] << (global3[_wgslsmith_index_u32(25691u, 12u)] % vec4<u32>(32u)))), select(vec4<u32>(~global4.x, 1u, ~4294967295u, select(u_input.b.x, u_input.c, false)), global3[_wgslsmith_index_u32(11729u, 12u)], vec4<bool>(true, true, true, true))));
    return _wgslsmith_mod_u32(~abs(_wgslsmith_dot_vec3_u32(var_2.c.yzx, select(vec3<u32>(var_2.a.x, u_input.b.x, u_input.c), var_2.c.xzz, vec3<bool>(true, true, true)))), ~select(~countOneBits(9453u), ~4932u ^ firstTrailingBit(0u), false));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c, 6u)]);
    let var_1 = 1u < ~global4.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - -618f), _wgslsmith_f_op_f32(f32(-1f) * -677f), !var_1))));
    global2 = array<vec4<f32>, 6>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_0.x)))));
    return Struct_1(~u_input.b << (vec2<u32>(func_3(~u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, -351f, -1000f)), u_input.a.x, _wgslsmith_f_op_f32(var_0.x * 1000f)), select(_wgslsmith_add_u32(u_input.c, 6126u), ~0u, true)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(var_0.zw, var_0.zw)), vec2<f32>(-316f, var_0.x))), _wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, global4.x, u_input.b.x, u_input.c), global3[_wgslsmith_index_u32(global4.x, 12u)], vec4<u32>(90762u, 41557u, 4294967295u, global4.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 19767u, 15640u, global4.x), global3[_wgslsmith_index_u32(19606u, 12u)]), vec4<bool>(true, var_1, var_1, false)) << (global3[_wgslsmith_index_u32(global4.x, 12u)] % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 3996u, 1u, global4.x), vec4<u32>(u_input.b.x, 124035u, 1u, 0u))));
}

fn func_1() -> bool {
    global2 = array<vec4<f32>, 6>();
    global0 = -533f;
    var var_0 = _wgslsmith_dot_vec2_i32(~(u_input.d.yz ^ _wgslsmith_mod_vec2_i32(u_input.d.zz, u_input.d.zx)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x << (4294967295u % 32u), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.d.xw)), vec2<i32>(-27244i, u_input.d.x))) | _wgslsmith_mod_i32(i32(-1i) * -58773i, u_input.d.x);
    global2 = array<vec4<f32>, 6>();
    var var_1 = func_2();
    return 9668i != _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d | u_input.d, vec4<i32>(u_input.a.x, u_input.d.x, -2147483647i, 8884i) >> (global3[_wgslsmith_index_u32(global4.x, 12u)] % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -57500i, u_input.d.x, 42793i), min(u_input.d, vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, 19627i)), -vec4<i32>(u_input.a.x, u_input.d.x, 778i, 19545i)), min(select(u_input.d, u_input.d, vec4<bool>(true, true, true, true)), vec4<i32>(-9227i, u_input.d.x, u_input.d.x, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 22>();
    global1 = array<Struct_2, 22>();
    let var_0 = countOneBits(~(~global3[_wgslsmith_index_u32(countOneBits(min(u_input.c, 32569u)), 12u)]));
    let var_1 = Struct_2(func_1(), func_2(), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, false)), false), !vec2<bool>(true, any(vec3<bool>(false, false, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), true)), vec2<bool>(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), u_input.d.x <= _wgslsmith_div_i32(1i, 0i << (var_0.x % 32u))), Struct_1(~vec2<u32>(global4.x, 4294967295u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(262f, -108f))) + vec2<f32>(1069f, 566f)))), vec4<u32>(reverseBits(u_input.c >> (2336u % 32u)), _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(global4.x, u_input.b.x, 6877u, global4.x)), _wgslsmith_sub_u32(u_input.c ^ global4.x, 21975u << (var_0.x % 32u)), u_input.c)));
    var var_2 = var_1.e;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~vec2<u32>(var_3.e.a.x, _wgslsmith_add_u32(u_input.c, var_0.x)), var_0.xz), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(reverseBits(0u), 6u)] - global2[_wgslsmith_index_u32((var_0.x ^ ~var_2.c.x) ^ var_0.x, 6u)]), vec4<f32>(1064f, 477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-524f - -556f) - -607f)), _wgslsmith_f_op_f32(1000f - -1921f)), 47701i, 1i);
}

