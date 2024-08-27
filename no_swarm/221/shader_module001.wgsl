struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1030f, -687f, 1022f), vec3<f32>(-102f, 568f, -1207f), vec3<f32>(1000f, -1000f, -1606f), vec3<f32>(-491f, -1201f, 382f), vec3<f32>(1172f, -684f, 992f), vec3<f32>(-679f, 1000f, -265f), vec3<f32>(866f, 1042f, -1278f));

var<private> global2: array<i32, 15>;

var<private> global3: f32 = -363f;

var<private> global4: array<u32, 26> = array<u32, 26>(4294967295u, 0u, 0u, 1u, 1u, 0u, 20396u, 35963u, 0u, 13311u, 88900u, 28395u, 36503u, 11660u, 33240u, 4294967295u, 4294967295u, 32647u, 37755u, 4294967295u, 38230u, 7077u, 4294967295u, 0u, 1u, 37042u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_5) -> u32 {
    var var_0 = vec2<bool>(arg_0.c.a, global0.c.a != arg_0.c.a);
    let var_1 = arg_0.a;
    global4 = array<u32, 26>();
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(17381u, global4[_wgslsmith_index_u32(~u_input.e, 26u)], 4294967295u, global4[_wgslsmith_index_u32(~84344u, 26u)]), countOneBits(vec4<u32>(~35070u, arg_0.a.e << (var_1.a.x % 32u), 1u, firstTrailingBit(var_1.a.x))));
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    global2 = array<i32, 15>();
    var var_0 = Struct_1(global0.a.a << (~(~(global0.a.a << (global0.a.a % vec2<u32>(32u)))) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a.b, global0.a.b))), -9402i, vec4<i32>(reverseBits(_wgslsmith_div_i32(-2147483647i, global2[_wgslsmith_index_u32(1u | u_input.e, 15u)])), abs(-72704i), 0i, -1i), global0.a.e & global0.a.e);
    var var_1 = Struct_5(global0.a, Struct_4(true), Struct_4(false));
    let var_2 = vec2<bool>(var_1.c.a, !any(select(vec4<bool>(false, true, arg_0.a, false), select(vec4<bool>(global0.c.a, true, global0.c.a, global0.c.a), vec4<bool>(false, true, false, var_1.b.a), true), vec4<bool>(var_1.b.a, global0.c.a, var_1.c.a, false))));
    var_0 = global0.a;
    return !var_2;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = !vec2<bool>(global0.b.a, global0.a.b > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a.b, -134f), 974f)));
    let var_1 = Struct_5(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(global0.a.e, 4294967295u)), firstLeadingBit(global0.a.a)), abs(global0.a.a)), _wgslsmith_f_op_f32(global0.a.b * -228f), -2147483647i, ~vec4<i32>(firstLeadingBit(19637i), firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(u_input.d, arg_1), _wgslsmith_add_i32(1i, u_input.a)), 6890u), global0.c, Struct_4(true));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(global0.a.b, 2170f)), _wgslsmith_f_op_f32(global0.a.b * 753f));
    global4 = array<u32, 26>();
    var var_3 = vec2<i32>(var_1.a.c ^ arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.a.e, 26u)], 15u)], -2147483647i) & vec2<i32>(1i, var_1.a.c), var_1.a.d.ww), _wgslsmith_mod_i32(reverseBits(arg_1), ~(-38995i))), vec4<i32>(36780i, u_input.d, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.e, 41285u), var_1.a.a), 15u)], -2147483647i)));
    return Struct_1(var_1.a.a, var_2.x, global2[_wgslsmith_index_u32(var_1.a.e, 15u)], -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-32861i, -12749i, u_input.a, var_3.x), var_1.a.d) ^ -global0.a.d), max(global4[_wgslsmith_index_u32(~(~(~var_1.a.e)), 26u)], global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.c.x, 14329u)) >> (firstLeadingBit(global4[_wgslsmith_index_u32(4294967295u, 26u)] >> (52782u % 32u)) % 32u), 26u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~select(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]), _wgslsmith_sub_u32(~global4[_wgslsmith_index_u32(9u, 26u)], global4[_wgslsmith_index_u32(4294967295u, 26u)] >> (58886u % 32u)), global0.a.b <= global0.a.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~func_1(Struct_5(global0.a, Struct_4(global0.b.a), Struct_4(true))), countOneBits(select(global0.a.e, 4294967295u, true))), global4[_wgslsmith_index_u32(~u_input.b.x, 26u)]), ~42719u, global4[_wgslsmith_index_u32(global0.a.a.x, 26u)]);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(38186u, 81117u), 7u)];
    global0 = Struct_5(func_3(func_2(Struct_4(global0.b.a | true)), global2[_wgslsmith_index_u32(global0.a.e, 15u)]), Struct_4(true), Struct_4(global0.c.a && (_wgslsmith_dot_vec3_i32(global0.a.d.wxz, vec3<i32>(0i, 1i, 1i)) >= (global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.a.a.x, 26u)], 15u)] >> (var_0.x % 32u)))));
    let var_2 = Struct_5(Struct_1(~vec2<u32>(~4294967295u, 0u), global0.a.b, -2147483647i, -global0.a.d, ~u_input.c.x), global0.c, Struct_4(all(!select(vec2<bool>(true, global0.c.a), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-1099f, var_1.x, 819f, var_2.a.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, global0.a.b, global0.a.b, -760f), vec4<f32>(var_2.a.b, global0.a.b, var_1.x, -302f))) + vec4<f32>(var_2.a.b, var_2.a.b, -533f, 396f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1386f, var_2.a.b, var_2.a.b, var_2.a.b))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.wy);
}

