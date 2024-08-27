struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: bool,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_5, 31>;

var<private> global2: array<f32, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-576f, -870f, 2188f), _wgslsmith_f_op_vec3_f32(arg_1.c.xzy * vec3<f32>(973f, 402f, 925f))), arg_1.c.zwz, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)]) + -478f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28441u, 27u)])), _wgslsmith_f_op_f32(min(-216f, 2204f)))));
    var var_1 = arg_1;
    let var_2 = 17488u;
    global0 = -(~(-_wgslsmith_add_i32(i32(-1i) * -57026i, u_input.c)));
    global2 = array<f32, 27>();
    return _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(arg_1.a, 4294967295u, 21610u, arg_1.a) & vec4<u32>(var_1.a, arg_1.a, arg_1.a, var_1.a), select(vec4<u32>(var_1.a, 3057u, arg_1.a, u_input.b), vec4<u32>(var_2, 4294967295u, 44271u, u_input.b), arg_0), var_0.x >= global2[_wgslsmith_index_u32(1u, 27u)])), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 17257u, 4294967295u, 4294967295u) | vec4<u32>(arg_1.a, arg_1.a, u_input.d.x, arg_1.a), ~vec4<u32>(u_input.b, u_input.d.x, var_2, var_1.a), vec4<u32>(var_2, var_1.a, arg_1.a, 4294967295u)) >> (vec4<u32>(arg_1.a, abs(14653u), ~_wgslsmith_add_u32(102891u, 1u), var_2) % vec4<u32>(32u)));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mult_i32(~u_input.c, 1i) << (_wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(93646u, u_input.d.x, 12957u, u_input.d.x)), countOneBits(vec4<u32>(u_input.b, 0u, 0u, u_input.d.x)))) % 32u);
    var var_1 = Struct_4(u_input.d.x, select(vec4<bool>(-62165i > (u_input.a.x << (15761u % 32u)), all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), all(vec3<bool>(true, true, true))), vec4<bool>(select(false, true, false) || (global2[_wgslsmith_index_u32(u_input.b, 27u)] < global2[_wgslsmith_index_u32(0u, 27u)]), any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 204f, global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 1270f))))))));
    global0 = -2147483647i;
    var var_2 = Struct_5(vec3<i32>(abs(~u_input.a.x), u_input.c ^ _wgslsmith_mult_i32(-u_input.a.x, u_input.a.x & -1i), ~min(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-6006i, u_input.a.x, -1i), vec3<i32>(u_input.c, u_input.c, -2147483647i)))), true, Struct_4(firstLeadingBit(abs(~1u)), select(var_1.b, vec4<bool>(true, all(vec2<bool>(false, true)), true, true), all(vec3<bool>(true, false, var_1.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(282f, 1075f, global2[_wgslsmith_index_u32(u_input.d.x, 27u)], var_1.c.x), vec4<f32>(1000f, global2[_wgslsmith_index_u32(44493u, 27u)], -210f, var_1.c.x), var_1.b.x)))), var_1.c))), var_1.a);
    let var_3 = var_2.a;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.c.x, _wgslsmith_div_f32(-578f, global2[_wgslsmith_index_u32(66573u, 27u)])))))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = (-2147483647i <= _wgslsmith_mod_i32(arg_2.b, 1i)) && !arg_2.e.x;
    let var_1 = Struct_2(Struct_1(360f, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.x, u_input.c), arg_2.c.zz), 7339i), _wgslsmith_mod_i32(1i, 2147483647i)), abs(select(u_input.a << (arg_1 % vec4<u32>(32u)), vec4<i32>(u_input.c, -1i, 1i, arg_2.b), !vec4<bool>(true, arg_2.e.x, arg_2.e.x, var_0))), global2[_wgslsmith_index_u32(reverseBits(~31279u), 27u)], !arg_2.e));
    global0 = ~(-arg_2.b ^ arg_2.c.x);
    global0 = ~min(-_wgslsmith_sub_i32(arg_2.c.x, _wgslsmith_sub_i32(5954i, -26856i)), 1i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(arg_1.x, arg_1.x, u_input.b, 9900u)), ~vec4<u32>(arg_1.x, 4294967295u, u_input.b, u_input.b)) % 32u));
    var var_2 = abs(_wgslsmith_mult_vec4_i32(-(~vec4<i32>(arg_2.b, -1659i, -2252i, 2147483647i)), reverseBits(u_input.a)));
    return 16020u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = ~min(~0u, 4032u);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(63217u, func_4(-115f, (vec4<u32>(0u, 1u, u_input.b, 4294967295u) ^ vec4<u32>(arg_0.x, 90356u, 18271u, 1u)) | ~arg_0, Struct_1(_wgslsmith_div_f32(arg_1.x, arg_1.x), u_input.c, u_input.a, _wgslsmith_f_op_f32(func_3()), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), 38163u, ~1u), abs(arg_0)), 31u)];
    let var_2 = -19272i;
    var var_3 = u_input.a.xxw;
    global1 = array<Struct_5, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 27u)] * -1899f) + 1000f) - 1000f) + _wgslsmith_f_op_f32(arg_1.x - -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, 0u, ~_wgslsmith_sub_u32(u_input.d.x, 6163u), 37071u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1676f, global2[_wgslsmith_index_u32(func_1(vec4<bool>(false, true, false, true), Struct_4(u_input.b, vec4<bool>(true, true, false, true), vec4<f32>(1000f, 457f, 329f, global2[_wgslsmith_index_u32(u_input.b, 27u)]))), 27u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(56000u, 27u)]), global2[_wgslsmith_index_u32(56745u, 27u)]) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 27u)], global2[_wgslsmith_index_u32(28988u, 27u)], -2053f, -231f)))))))));
    var var_1 = ~_wgslsmith_dot_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 0u, 100194u), vec4<u32>(u_input.b, u_input.b, 33146u, 4294967295u)), vec4<u32>(u_input.b, 22699u, 1u, 2009u), false) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.b, 52520u), vec4<u32>(0u, 9567u, u_input.d.x, 0u)) << (~vec4<u32>(u_input.b, u_input.b, u_input.d.x, u_input.b) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, 34180u, 41974u)), ~(vec4<u32>(39212u, 1u, u_input.d.x, u_input.d.x) | vec4<u32>(u_input.d.x, 4294967295u, 3018u, u_input.b))));
    global1 = array<Struct_5, 31>();
    let var_2 = _wgslsmith_dot_vec3_i32(reverseBits(-u_input.a.ywx), ~((_wgslsmith_mod_vec3_i32(u_input.a.xyy, vec3<i32>(-1736i, u_input.a.x, u_input.c)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-5997i, u_input.c, u_input.c), vec3<i32>(71629i, -55287i, u_input.a.x))) ^ (firstLeadingBit(vec3<i32>(2147483647i, 1i, 44308i)) & -vec3<i32>(0i, 2147483647i, u_input.a.x))));
    var_1 = ~select(~reverseBits(_wgslsmith_div_u32(35040u, u_input.b)), u_input.b, _wgslsmith_dot_vec3_i32(u_input.a.yzx, min(u_input.a.yyz, u_input.a.zxz)) > _wgslsmith_dot_vec4_i32(-u_input.a, select(u_input.a, vec4<i32>(-2147483647i, 25793i, u_input.a.x, -47462i), vec4<bool>(true, true, true, false))));
    global0 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-447f, 918f) + vec2<f32>(global2[_wgslsmith_index_u32(u_input.b, 27u)], 1119f))))), -min(var_2, _wgslsmith_sub_i32(firstTrailingBit(var_2), u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 27u)] - -987f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 27u)] - 1000f), _wgslsmith_f_op_f32(max(-1539f, 1011f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 27u)], -1000f, global2[_wgslsmith_index_u32(1u, 27u)])))), all(vec4<bool>(true, true, false, true)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b ^ u_input.b, 27u)], 474f, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(36582u, 27u)]))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 27u)], 193f, global2[_wgslsmith_index_u32(u_input.b, 27u)])))))), ~u_input.b);
}

