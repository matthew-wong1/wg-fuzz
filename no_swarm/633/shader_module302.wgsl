struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 15401u, 578u);

var<private> global2: array<f32, 30> = array<f32, 30>(-1777f, -320f, -1000f, -964f, -1323f, 2502f, 445f, -353f, 1442f, 141f, 108f, -247f, -932f, -1000f, 1427f, -1000f, -2140f, -763f, -1455f, 381f, -1067f, 1187f, -577f, 233f, -1363f, 349f, 683f, 1121f, -959f, 1085f);

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(1i), Struct_2(1i), Struct_2(140i), Struct_2(2147483647i), Struct_2(-29709i), Struct_2(67392i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(19791i), Struct_2(10228i), Struct_2(0i), Struct_2(2147483647i));

var<private> global4: array<vec4<bool>, 27>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x | 0u, 30u)]))), 1415f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 30u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(global1.x, 30u)])) + -1691f))))));
    var var_2 = 4294967295u;
    let var_3 = any(vec3<bool>(!arg_1, false, false));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.c.x, 30u)])) - -501f), -2541f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-247f - 905f))) + -471f)));
    return ~(~arg_0);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(30856u, 30u)]), _wgslsmith_mult_vec3_u32(~firstLeadingBit(u_input.c), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, u_input.c >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 1u), vec3<u32>(global1.x, 0u, 29937u)) & _wgslsmith_div_vec3_u32(u_input.c, u_input.c))));
    var var_1 = vec3<i32>(~(reverseBits(-16414i) | func_3(select(global0.a, -35115i, true), true)), 29941i, u_input.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1741f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))) - global2[_wgslsmith_index_u32(u_input.c.x, 30u)])), u_input.c);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(533f, var_0.a)) - var_2.a)))));
    let var_4 = true;
    return Struct_1(_wgslsmith_f_op_f32(-var_0.a), ~_wgslsmith_clamp_vec3_u32(var_2.b ^ (var_0.b ^ vec3<u32>(24736u, 0u, 1u)), abs(vec3<u32>(var_2.b.x, 26922u, global1.x)) ^ u_input.c, ~var_2.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    global1 = func_2().b;
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    global1 = u_input.c;
    let var_0 = func_4(func_2(), Struct_3(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(536f, global2[_wgslsmith_index_u32(global1.x, 30u)])) * _wgslsmith_f_op_f32(1098f - 835f)))));
    global3 = array<Struct_2, 12>();
    let var_1 = -465f;
    var var_2 = vec4<i32>(func_3((u_input.a | arg_0) | _wgslsmith_mult_i32(13487i, global0.a), !(12835u <= global1.x)) << (_wgslsmith_mult_u32(var_0.b.x, ~u_input.c.x >> (0u % 32u)) % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2713i, -1462i), max(vec2<i32>(-12535i, arg_0) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)), u_input.e.xz & vec2<i32>(arg_0, -4975i))), u_input.b >> (~(~var_0.b.x) % 32u)), _wgslsmith_mult_i32(_wgslsmith_div_i32(~arg_0, 1i), arg_0 & abs(global0.a)) << (4294967295u % 32u), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(556f, -2405f, true)) * _wgslsmith_f_op_f32(-var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<bool>, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(599f, 797f, -1019f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(1u, 30u)], 825f, global2[_wgslsmith_index_u32(global1.x, 30u)]))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1413f, 297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.e.x, vec3<bool>(false, true, true), -448f)) * _wgslsmith_f_op_f32(1000f - global2[_wgslsmith_index_u32(4294967295u, 30u)])))));
    global4 = array<vec4<bool>, 27>();
    var var_1 = Struct_1(var_0.x, vec3<u32>(1u, u_input.c.x, firstLeadingBit(u_input.c.x)));
    global2 = array<f32, 30>();
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(global1.yz), ~(u_input.c.zz | max(vec2<u32>(global1.x, var_1.b.x), abs(var_1.b.yz)))), 12u)];
    let var_2 = _wgslsmith_f_op_f32(sign(-729f));
    global4 = array<vec4<bool>, 27>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-361f, global2[_wgslsmith_index_u32(var_1.b.x, 30u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(u_input.b, vec3<bool>(false, false, true), 615f)))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.b.x, u_input.c.x | global1.x), 30u)], _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.a, -1786f), -152f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -981f, -2239f, var_2) + vec4<f32>(var_1.a, var_2, -1035f, global2[_wgslsmith_index_u32(18537u, 30u)])))), any(vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1000f) - -175f) + _wgslsmith_f_op_f32(ceil(-123f))))), u_input.c, u_input.e.xy, u_input.e << (vec3<u32>(var_1.b.x, (1u & global1.x) >> (var_1.b.x % 32u), 4294967295u >> ((u_input.c.x ^ 47085u) % 32u)) % vec3<u32>(32u)));
}

