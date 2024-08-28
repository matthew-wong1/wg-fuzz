struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(26520u, true, vec4<i32>(31244i, i32(-2147483648), 32932i, -6924i), true, vec3<i32>(i32(-2147483648), -46586i, 19742i));

var<private> global4: array<u32, 17> = array<u32, 17>(0u, 1u, 4294967295u, 0u, 8077u, 4294967295u, 45744u, 1u, 8927u, 47421u, 1u, 1u, 0u, 11958u, 4294967295u, 7449u, 51236u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> f32 {
    global3 = arg_3;
    let var_0 = Struct_5(!global1.x, global0[_wgslsmith_index_u32(u_input.c.x, 11u)]);
    var var_1 = arg_3;
    global2 = global0[_wgslsmith_index_u32(u_input.c.x, 11u)];
    global4 = array<u32, 17>();
    return _wgslsmith_f_op_f32(f32(-1f) * -931f);
}

fn func_2(arg_0: u32, arg_1: bool) -> bool {
    var var_0 = global2.c.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1755f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1280f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - -1000f))));
    let var_1 = Struct_1(4294967295u, true, global2.a | global2.a, !any(!(!vec3<bool>(arg_1, global3.d, true))), global3.c.zzz);
    let var_2 = select(global1.xw, !(!global1.zy), !(_wgslsmith_f_op_f32(func_3(vec4<bool>(global1.x, false, global3.b, true), vec2<bool>(global3.b, var_1.b), _wgslsmith_div_i32(-81635i, 19028i), Struct_1(global4[_wgslsmith_index_u32(global3.a, 17u)], var_1.d, global3.c, global1.x, global2.a.wzx))) != global2.b.x));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.a << (1u % 32u), 21357u, ~abs(_wgslsmith_add_u32(global3.a | global4[_wgslsmith_index_u32(u_input.b, 17u)], 1u))), 11u)];
    let var_3 = Struct_2(vec2<i32>(u_input.a, _wgslsmith_div_i32(global2.a.x, 2147483647i)), var_1);
    return global2.b.x <= 1f;
}

fn func_1() -> i32 {
    var var_0 = u_input.c.xx;
    global1 = select(!(!(!select(vec4<bool>(true, global1.x, false, true), vec4<bool>(global3.b, global3.d, true, false), true))), vec4<bool>(global3.b, all(vec4<bool>(!global1.x, 1523f >= global2.c.x, true, global3.b)), global1.x, false), func_2(~countOneBits(var_0.x), all(global1.yz)));
    var var_1 = ~vec2<u32>(global4[_wgslsmith_index_u32(1u, 17u)], ~global3.a);
    let var_2 = u_input.c.x >= 0u;
    var var_3 = 90956u;
    return global2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(global2.a.x, 5882i, _wgslsmith_sub_i32(i32(-1i) * -global2.a.x, 34302i), -_wgslsmith_sub_i32(abs(func_1()), -35133i));
    var var_1 = max(~(~vec4<u32>(~30535u, global3.a >> (global3.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, 1u), u_input.c.xy), ~4294967295u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(2220u, u_input.c.x, 25374u, 1u), vec4<u32>(0u, 73190u, global4[_wgslsmith_index_u32(u_input.c.x, 17u)], global3.a), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global4[_wgslsmith_index_u32(global3.a, 17u)], global3.a, u_input.c.x), vec4<u32>(global3.a, global3.a, global4[_wgslsmith_index_u32(1u, 17u)], 0u))), vec4<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.c.x, 21060u)), global4[_wgslsmith_index_u32(u_input.b, 17u)] & 1u, ~global4[_wgslsmith_index_u32(10335u, 17u)])) ^ vec4<u32>(abs(0u), _wgslsmith_mult_u32(global3.a, 17312u) >> (~11202u % 32u), global3.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 39763u, 1u, global4[_wgslsmith_index_u32(u_input.b, 17u)]), vec4<u32>(global3.a, u_input.b, u_input.b, 3517u)), vec4<u32>(u_input.b, 0u, 127132u, 1u))));
    let var_2 = global2.b;
    let var_3 = Struct_4(Struct_2(global2.a.yz, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 11642u, global3.a, 25887u), firstTrailingBit(vec4<u32>(4294967295u, 0u, global3.a, var_1.x))), any(global1.yx), _wgslsmith_add_vec4_i32(-global3.c, firstLeadingBit(global2.a)), global3.b, var_0.yyx)), vec4<i32>(-1i) * -(~(~global3.c)));
    var var_4 = _wgslsmith_mod_vec4_u32(firstTrailingBit(~(vec4<u32>(0u, u_input.c.x, global4[_wgslsmith_index_u32(4294967295u, 17u)], 7481u) | vec4<u32>(global4[_wgslsmith_index_u32(54660u, 17u)], 1u, 58549u, 4294967295u)) << (vec4<u32>(_wgslsmith_div_u32(22991u, var_1.x), var_3.a.b.a, reverseBits(var_3.a.b.a), ~4294967295u) % vec4<u32>(32u))), vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(64867u, 17u)], global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstLeadingBit(var_3.a.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a, global4[_wgslsmith_index_u32(42931u, 17u)]), vec2<u32>(var_3.a.b.a, 32009u))), 17u)], ~u_input.c.x));
    let var_5 = _wgslsmith_mod_u32(33441u, 21973u);
    let var_6 = _wgslsmith_f_op_f32(step(1362f, _wgslsmith_f_op_f32(1000f - 939f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(2147483647i, -23208i), global2.b, _wgslsmith_div_f32(var_6, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_6, global2.c.x), global2.b.x, global1.x)), -1221f, (9939u == global3.a) | (var_3.a.b.d == global1.x)))), abs(vec4<u32>(1u, u_input.b, var_5, countOneBits(firstLeadingBit(global4[_wgslsmith_index_u32(32313u, 17u)])))));
}

