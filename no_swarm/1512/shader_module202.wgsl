struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: Struct_4 = Struct_4(false, Struct_3(606u, Struct_2(Struct_1(-1019f, 1873f, vec3<u32>(68348u, 65220u, 1u)), vec4<u32>(13159u, 30306u, 4294967295u, 0u), Struct_1(243f, 210f, vec3<u32>(0u, 4294967295u, 4294967295u))), vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(false, false, true), Struct_3(0u, Struct_2(Struct_1(-973f, -893f, vec3<u32>(23206u, 30618u, 2903u)), vec4<u32>(12320u, 61877u, 4294967295u, 30586u), Struct_1(1000f, -1852f, vec3<u32>(4294967295u, 0u, 71982u))), vec2<u32>(1u, 88115u)), Struct_1(1057f, -323f, vec3<u32>(28436u, 1u, 40216u)));

var<private> global1: Struct_1;

var<private> global2: array<u32, 18>;

var<private> global3: array<i32, 14> = array<i32, 14>(33930i, 0i, 26343i, -23125i, 1i, 33037i, i32(-2147483648), 0i, 1i, -46110i, 23526i, 1i, 0i, 23498i);

var<private> global4: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<u32>, arg_3: i32) -> u32 {
    global0 = Struct_4(-(2i | _wgslsmith_mult_i32(2147483647i, u_input.c.x)) == global3[_wgslsmith_index_u32(arg_0.c.c.x, 14u)], global0.d, !vec3<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 8022i), u_input.c) < arg_3, global0.a), global0.d, arg_0.c);
    global4 = array<vec4<bool>, 18>();
    var var_0 = firstTrailingBit(countOneBits(59892u >> ((_wgslsmith_mult_u32(global0.e.c.x, 60162u) ^ (1u >> (global0.b.c.x % 32u))) % 32u)));
    var var_1 = select(vec2<bool>(!global0.c.x, global0.a), global0.c.xy, select(!(!(!vec2<bool>(global0.a, false))), vec2<bool>(all(!vec2<bool>(global0.c.x, true)), any(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.e.c.x, 8109u), 18u)], 18u)])), global0.c.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(526f, -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1485f - _wgslsmith_f_op_f32(exp2(global0.b.b.a.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a))))), _wgslsmith_div_f32(arg_0.c.a, global0.d.b.c.a));
    return arg_2.x & u_input.a;
}

fn func_2() -> u32 {
    let var_0 = true;
    global2 = array<u32, 18>();
    let var_1 = global1.c.x;
    global4 = array<vec4<bool>, 18>();
    return _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, _wgslsmith_clamp_u32(77046u, ~9798u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 18u)], 0u, global0.e.c.x), global0.b.b.c.c))), _wgslsmith_clamp_u32(max(func_3(global0.b.b, u_input.c, vec3<u32>(64u, u_input.a, 67783u), 0i), u_input.a), global1.c.x, ~global1.c.x)), func_3(Struct_2(Struct_1(-234f, global0.e.b, global0.e.c), global0.b.b.b, Struct_1(-295f, _wgslsmith_f_op_f32(global1.b * global0.e.a), vec3<u32>(u_input.a, global1.c.x, 1u))), abs(min(u_input.c, vec2<i32>(9446i, -2147483647i)) << (~vec2<u32>(18080u, global2[_wgslsmith_index_u32(4294967295u, 18u)]) % vec2<u32>(32u))), global0.e.c, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-29826i, u_input.c.x, global3[_wgslsmith_index_u32(global0.d.b.a.c.x, 14u)]) << (0u % 32u), ~_wgslsmith_add_i32(15724i, 0i))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 18>();
    var var_0 = vec4<u32>(max(arg_2.c.x, _wgslsmith_mult_u32(~select(26434u, arg_0.a.c.x, arg_3.x), 2215u)), _wgslsmith_mult_u32(func_2(), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)]), abs(4294967295u), ~(~(830u << (func_3(Struct_2(Struct_1(global1.a, global1.a, global1.c), global0.d.b.b, arg_2), u_input.c, global1.c, 15910i) % 32u))));
    global1 = arg_2;
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(global0.d.b.c, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(global0.d.c.x, ~38045u, ~6162u, ~arg_2.c.x)), countOneBits(countOneBits(vec4<u32>(33723u, 72752u, arg_2.c.x, 4294967295u)))), arg_0.c);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(max(264f, _wgslsmith_f_op_f32(min(1190f, global0.b.b.a.b)))))), _wgslsmith_f_op_f32(step(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1520f + var_2.a.a) * 410f))), vec3<u32>(_wgslsmith_mod_u32(~4294967295u >> (1u % 32u), func_3(Struct_2(global0.b.b.a, vec4<u32>(arg_2.c.x, global0.e.c.x, u_input.a, 4294967295u), Struct_1(global0.b.b.a.b, var_2.c.b, vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(var_2.a.c.x, 18u)], global0.e.c.x))), _wgslsmith_mult_vec2_i32(u_input.c, u_input.c), arg_0.b.zxy, arg_1 ^ u_input.c.x)), arg_2.c.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.x;
    global1 = func_1(global0.b.b, u_input.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-587f, _wgslsmith_f_op_f32(select(-404f, -201f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(583f))), global1.c), !vec3<bool>(any(global0.c.yx), !(global1.b >= global1.b), !global0.c.x && !global0.a));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -41320i, u_input.c.x, u_input.c.x), vec4<i32>(global3[_wgslsmith_index_u32(38706u, 14u)], -1i, 1i, -2147483647i)), 2147483647i) >> (abs(_wgslsmith_clamp_u32(0u, 42419u, 2725u)) % 32u), -select(~18894i, global3[_wgslsmith_index_u32(global0.e.c.x, 14u)], !global0.a)), u_input.c.x, 28999i ^ (u_input.c.x ^ -_wgslsmith_div_i32(0i, -1i)));
    global2 = array<u32, 18>();
    var var_2 = Struct_2(global0.e, vec4<u32>(min(~global1.c.x, global2[_wgslsmith_index_u32(abs(global0.d.a), 18u)] >> (0u % 32u)), 1u, 60082u, (1u >> (_wgslsmith_div_u32(1u, global0.e.c.x) % 32u)) & u_input.a), global0.e);
    let var_3 = 1u << (global2[_wgslsmith_index_u32(var_2.c.c.x, 18u)] % 32u);
    var var_4 = func_1(global0.b.b, -55616i, func_1(global0.b.b, global3[_wgslsmith_index_u32(global1.c.x, 14u)], global0.b.b.c, global0.c), vec3<bool>(!(global0.c.x & global0.c.x) && false, true, any(vec3<bool>(global0.c.x, true, global0.c.x)) && !all(vec2<bool>(true, global0.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(abs(firstTrailingBit(firstLeadingBit(var_4.c.x))), 14u)]);
}

