struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(0u, 78711u, 0u, 0u), vec4<u32>(72894u, 5023u, 0u, 1u), vec4<u32>(49543u, 73341u, 1u, 1u), vec4<u32>(62130u, 4294967295u, 7613u, 1u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(0u, 46144u, 0u, 0u), vec4<u32>(75657u, 68495u, 4294967295u, 0u), vec4<u32>(41138u, 25399u, 4193u, 78943u), vec4<u32>(77367u, 141598u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 25899u, 4294967295u), vec4<u32>(67424u, 41509u, 1u, 14337u), vec4<u32>(0u, 4294967295u, 3465u, 4294967295u), vec4<u32>(9901u, 4294967295u, 16189u, 4294967295u), vec4<u32>(45107u, 1u, 42473u, 40075u), vec4<u32>(9944u, 4294967295u, 4294967295u, 53974u), vec4<u32>(4294967295u, 3883u, 5190u, 0u));

var<private> global1: u32 = 0u;

var<private> global2: f32;

var<private> global3: array<bool, 18> = array<bool, 18>(true, true, false, true, true, true, true, true, true, false, false, false, true, true, false, false, false, true);

var<private> global4: array<u32, 16>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> u32 {
    return _wgslsmith_add_u32(~global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(153286u, 16u)] << (u_input.d % 32u), 16u)], vec4<u32>(0u, u_input.d, u_input.b, 26344u)), 16u)] >> (9733u % 32u), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 16u)], 16u)]);
}

fn func_3() -> f32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-720f * -281f))) - _wgslsmith_f_op_f32(749f - _wgslsmith_f_op_f32(f32(-1f) * -1557f))));
    global4 = array<u32, 16>();
    let var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(4294967295u, u_input.b, 7162u)), abs(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)], 16u)], u_input.b, u_input.b))), ~(85757u | global4[_wgslsmith_index_u32(u_input.d, 16u)]), global4[_wgslsmith_index_u32(countOneBits(0u), 16u)]), firstLeadingBit(~(~abs(vec3<u32>(1u, u_input.d, global4[_wgslsmith_index_u32(4294967295u, 16u)])))));
    var var_1 = all(select(vec3<bool>(select(global3[_wgslsmith_index_u32(~13150u, 18u)], true, select(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(1u, 18u)], global3[_wgslsmith_index_u32(102847u, 18u)])), global3[_wgslsmith_index_u32(1u, 18u)], true), !(!select(vec3<bool>(global3[_wgslsmith_index_u32(33256u, 18u)], false, false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 16u)], 18u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18207u, 16u)], 16u)], 18u)]), global3[_wgslsmith_index_u32(1u, 18u)])), vec3<bool>(select(any(vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_0.x, 16u)], 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], false)), any(vec3<bool>(true, global3[_wgslsmith_index_u32(26808u, 18u)], global3[_wgslsmith_index_u32(67659u, 18u)])), true), false || !global3[_wgslsmith_index_u32(42196u, 18u)], global3[_wgslsmith_index_u32(~(~var_0.x), 18u)])));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 658f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1929f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1227f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1336f)))) * 1251f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -286f);
}

fn func_2() -> u32 {
    var var_0 = 2672f >= _wgslsmith_div_f32(_wgslsmith_div_f32(527f, -291f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = vec4<u32>(~u_input.b, u_input.d, 0u, 60362u | ~u_input.b);
    var var_2 = u_input.d;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f - -352f));
    var var_3 = Struct_3(Struct_1(u_input.a.zw ^ -u_input.a.ww), Struct_2(!select(vec2<bool>(true, true), select(vec2<bool>(global3[_wgslsmith_index_u32(33657u, 18u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(77788u, 18u)]), false), !global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 18u)]), Struct_1(u_input.c.xy)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global4[_wgslsmith_index_u32(~24110u, 16u)], ~(~(50506u << (global4[_wgslsmith_index_u32(1u, 16u)] % 32u)))), 18u)], 2102f, ~(-27261i));
    return ~u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 16>();
    global1 = _wgslsmith_div_u32(0u, u_input.d << (5173u % 32u));
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(17874u, 1u, ~60168u, ~(func_1() << (func_2() % 32u))), vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(1u, 16u)], ~u_input.d, ~_wgslsmith_add_u32(func_2(), u_input.d)));
    var var_1 = any(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(true, false))), vec2<bool>(!global3[_wgslsmith_index_u32(var_0.x, 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)]), false));
    var var_2 = Struct_3(Struct_1(countOneBits(u_input.c.yz)), Struct_2(select(vec2<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 18u)], global3[_wgslsmith_index_u32(u_input.b, 18u)], global3[_wgslsmith_index_u32(var_0.x, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]))), vec2<bool>(true | global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)] | global3[_wgslsmith_index_u32(var_0.x, 18u)]), u_input.a.x != u_input.c.x), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.yy, _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(-11162i, u_input.a.x))))), global3[_wgslsmith_index_u32(25299u, 18u)], _wgslsmith_f_op_f32(step(116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1676f, 697f))) * 837f))), abs(_wgslsmith_mod_i32(u_input.c.x, 1i) >> (firstTrailingBit(u_input.d) % 32u)) ^ -23325i);
    var var_3 = u_input.c;
    var_1 = !(!var_2.c);
    var_1 = !(!var_2.b.a.x && !any(!vec2<bool>(var_2.b.a.x, true)));
    var var_4 = i32(-1i) * -20343i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(global4[_wgslsmith_index_u32(1u, 16u)], ~(~1u)), _wgslsmith_mult_vec4_i32(-_wgslsmith_clamp_vec4_i32(abs(u_input.a), vec4<i32>(20150i, -2147483647i, var_2.b.b.a.x, -2387i), _wgslsmith_div_vec4_i32(vec4<i32>(-36131i, -36225i, 1i, u_input.c.x), u_input.a)), select(-vec4<i32>(u_input.a.x, u_input.a.x, -29794i, 0i), u_input.a, select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 18u)], var_2.b.a.x, var_2.c, global3[_wgslsmith_index_u32(u_input.d, 18u)]), !vec4<bool>(true, true, global3[_wgslsmith_index_u32(var_0.x, 18u)], true), global3[_wgslsmith_index_u32(abs(39602u), 18u)]))), ~firstTrailingBit(var_3.x), var_2.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-823f - -1000f), _wgslsmith_div_f32(-423f, _wgslsmith_f_op_f32(exp2(var_2.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.d)))))));
}

