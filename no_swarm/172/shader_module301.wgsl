struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18> = array<vec2<bool>, 18>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<vec4<u32>, 5>;

var<private> global2: array<i32, 20>;

var<private> global3: array<f32, 6> = array<f32, 6>(947f, 529f, 1668f, 446f, 521f, 1112f);

var<private> global4: array<i32, 24> = array<i32, 24>(-1i, 0i, 1454i, i32(-2147483648), 0i, 0i, 2147483647i, 0i, 34610i, 50807i, 65341i, -1i, -20766i, -1i, 1i, -840i, i32(-2147483648), 1i, i32(-2147483648), -24493i, i32(-2147483648), 0i, 26807i, -7901i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    global3 = array<f32, 6>();
    let var_0 = select(!global0[_wgslsmith_index_u32(firstLeadingBit(1u | _wgslsmith_add_u32(arg_0.x, 4294967295u)), 18u)], !vec2<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), select(!select(global0[_wgslsmith_index_u32(~58661u, 18u)], select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), vec2<bool>(false, false), all(vec2<bool>(true, false))));
    var var_1 = Struct_3(~(~max(vec3<i32>(-1i, global4[_wgslsmith_index_u32(arg_0.x, 24u)], -1i) & vec3<i32>(global4[_wgslsmith_index_u32(1u, 24u)], 1i, global2[_wgslsmith_index_u32(71403u, 20u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a, -17019i), vec3<i32>(1i, -1i, 0i)))), 1u << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 33635u, 27042u), vec3<u32>(1u, 1u, 1u))) % 32u));
    return ~(~u_input.c);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool) -> vec4<u32> {
    var var_0 = 12372u;
    global3 = array<f32, 6>();
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(~u_input.c.x, 5u)], global1[_wgslsmith_index_u32(~(~min(55045u, 0u)), 5u)]), min(u_input.c, ~func_3(~vec3<u32>(u_input.b, 1u, 58694u))), Struct_1(_wgslsmith_mod_u32(u_input.b, ~4294967295u), ~vec4<u32>(44745u, _wgslsmith_clamp_u32(1u, u_input.c.x, u_input.c.x), select(u_input.c.x, u_input.b, true), u_input.b), select(-vec3<i32>(28607i, 28790i, u_input.a), ~vec3<i32>(u_input.a, u_input.a, 1i), select(true, true, false)) << (max(select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, u_input.b, 4294967295u), true), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.b), vec3<u32>(12304u, 64190u, 0u))) % vec3<u32>(32u)), ~func_3(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)).x), _wgslsmith_f_op_f32(f32(-1f) * -1072f));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1258f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(833f, var_1.d)) * global3[_wgslsmith_index_u32(_wgslsmith_div_u32(33777u, 1u), 6u)])), arg_1, _wgslsmith_div_f32(-518f, var_1.d))));
    return countOneBits(vec4<u32>(u_input.c.x, firstTrailingBit(u_input.c.x), ~abs(_wgslsmith_mod_u32(u_input.b, u_input.b)), select(23385u >> (u_input.b % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), var_1.b), arg_2)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(arg_2.d, 6u)], -892f, global3[_wgslsmith_index_u32(arg_2.b.x, 6u)])))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-284f, 345f, global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(64383u, 6u)]), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(u_input.c.x, 6u)], global3[_wgslsmith_index_u32(1u, 6u)], 614f), vec4<bool>(arg_3, arg_3, arg_1.x, true))))))))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(1u, 5u)], arg_2.b.ww, arg_2, 1000f);
    global3 = array<f32, 6>();
    global2 = array<i32, 20>();
    let var_2 = ~vec2<i32>(-2147483647i, -36513i);
    return Struct_2(_wgslsmith_add_vec4_u32(~_wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(u_input.b, u_input.c.x, var_1.c.d, 4294967295u)), ~arg_2.b), min(u_input.c, ~(_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(78473u, var_1.a.x)) << (vec2<u32>(var_1.c.b.x, 45745u) % vec2<u32>(32u)))), var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -484f));
}

fn func_1() -> Struct_2 {
    var var_0 = -32989i;
    var var_1 = true;
    let var_2 = u_input.c;
    var var_3 = global4[_wgslsmith_index_u32(~var_2.x, 24u)];
    global1 = array<vec4<u32>, 5>();
    return func_4(vec4<i32>(u_input.a, -10885i, -2147483647i, 14613i), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), Struct_1(0u, _wgslsmith_mult_vec4_u32(func_2(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(8052u, 24u)], -2147483647i), global3[_wgslsmith_index_u32(var_2.x, 6u)], true), global1[_wgslsmith_index_u32(~min(var_2.x, var_2.x), 5u)]), min(vec3<i32>(1i, _wgslsmith_add_i32(-43897i, u_input.a), -22302i), countOneBits(abs(vec3<i32>(u_input.a, u_input.a, -2147483647i)))), ~(~1u) ^ var_2.x), true | (2147483647i == _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.c.x, 24u)] ^ global4[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_div_i32(-17150i, -43961i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-349f)) * -1416f)), 476f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2912f, _wgslsmith_f_op_f32(var_0.d + -467f), var_0.d, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 6u)] + var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(u_input.b, 6u)], var_0.d, -370f) * vec4<f32>(-630f, var_0.d, global3[_wgslsmith_index_u32(0u, 6u)], var_0.d)), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1812u, 6u)]), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(41030u, 6u)]), _wgslsmith_f_op_f32(1365f * var_0.d), var_0.d) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, 913f, var_0.d, 999f) + vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(var_0.c.b.x, 6u)], var_0.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-239f, global3[_wgslsmith_index_u32(1u, 6u)], -1484f, var_0.d) - vec4<f32>(var_0.d, global3[_wgslsmith_index_u32(var_0.b.x, 6u)], -704f, 1638f))))), _wgslsmith_f_op_f32(-var_0.d));
}

