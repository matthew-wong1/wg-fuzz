struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_3,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: vec2<u32>;

var<private> global2: vec4<i32> = vec4<i32>(0i, -10900i, 0i, 2147483647i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec4<bool>) -> u32 {
    let var_0 = !(!arg_1.zy);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(821f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1624f, -1408f)));
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_2), vec3<f32>(arg_2.x, arg_0.c, arg_2.x))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -980f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.c), 1000f), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_div_vec3_i32(global2.wzw, select(vec3<i32>(global2.x, u_input.a.x, global2.x), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<bool>(true, true, arg_0.b)))), ~(~vec3<i32>(1i, global2.x, -2147483647i))), vec3<u32>(arg_0.a, ~u_input.d, reverseBits(~arg_0.a)));
    let var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.a.yy, firstTrailingBit(global2.yw), abs(vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(global2.x, -6785i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a.wx), vec2<i32>(global2.x, global2.x) & global2.wz)), -global2.xx >> (~firstTrailingBit(u_input.e) % vec2<u32>(32u))), abs(~(global2.wz << (vec2<u32>(1u, global1.x) % vec2<u32>(32u)))));
    let var_4 = Struct_3(~abs(global1.x) & u_input.d, all(vec4<bool>(false, true, select(var_0.x, !arg_0.b, arg_0.b), !arg_0.b)));
    return ~(~_wgslsmith_clamp_u32(50209u, _wgslsmith_sub_u32(1u, abs(global1.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, u_input.e.x), ~var_4.a, countOneBits(var_4.a))));
}

fn func_2() -> i32 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 49450u, u_input.c) ^ vec3<u32>(global1.x, u_input.c, 30012u), vec3<u32>(global1.x, 106615u, u_input.d)) >> (vec3<u32>(global1.x, 1u << (0u % 32u), ~u_input.b) % vec3<u32>(32u)), ~(~vec3<u32>(0u, 40079u, global1.x))), 39213u, u_input.e.x, _wgslsmith_clamp_u32(0u, ~4294967295u, global1.x));
    var var_1 = any(select(vec3<bool>((u_input.a.x < global2.x) || true, select(true, all(vec2<bool>(true, true)), true), any(vec4<bool>(false, false, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), false, false)), true));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, ~u_input.b, _wgslsmith_sub_u32(30689u, 29605u) << (min(func_3(Struct_1(97106u, false, -681f), vec3<bool>(true, false, true), vec3<f32>(229f, 937f, 475f), vec4<bool>(true, false, true, true)), var_0.x) % 32u), 34388u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, u_input.e.x, global1.x, ~u_input.c), abs(~max(vec4<u32>(0u, var_0.x, 4294967295u, 1u), vec4<u32>(1u, var_0.x, 4294967295u, u_input.b))), reverseBits(max(vec4<u32>(u_input.e.x, global1.x, 0u, global1.x), vec4<u32>(var_0.x, u_input.d, global1.x, global1.x))) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, u_input.b, 0u, var_0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(5873u, var_0.x, 39499u, u_input.d), vec4<u32>(32043u, 0u, 27555u, u_input.b)))));
    var var_3 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), true, true)));
    global1 = vec2<u32>(_wgslsmith_mod_u32(global1.x, ~(~abs(91524u))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, var_2.x, 0u), vec3<u32>(1u, global1.x, 45403u)), vec3<u32>(6328u, 84951u, var_2.x)), _wgslsmith_mult_u32(0u, ~u_input.d), _wgslsmith_mult_u32(11276u, abs(73223u)), _wgslsmith_sub_u32(u_input.d, u_input.b)), ~(~vec4<u32>(global1.x, 1u, 0u, 1u))));
    return u_input.a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_1 {
    global2 = vec4<i32>(-_wgslsmith_mod_i32(19555i, global2.x), i32(-1i) * -1139i, -2147483647i, -1i);
    global1 = vec2<u32>(~(~arg_1.x), arg_2.b.x);
    global1 = arg_1 ^ reverseBits(_wgslsmith_div_vec2_u32(~arg_0 & ~vec2<u32>(arg_0.x, global1.x), ~vec2<u32>(arg_1.x, 4294967295u) & ~arg_2.b));
    global0 = array<vec4<i32>, 14>();
    var var_0 = func_2();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.e, vec2<u32>(1u, global1.x ^ u_input.c) | vec2<u32>(95540u, u_input.b), Struct_4(Struct_1(~u_input.c ^ firstTrailingBit(global1.x), true, _wgslsmith_div_f32(-1556f, _wgslsmith_f_op_f32(-363f + 946f))), u_input.e));
    var_0 = func_1(vec2<u32>(var_0.a, 16337u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(40260u, u_input.e.x), 22594u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, u_input.b, var_0.a), vec3<u32>(104841u, var_0.a, 4205u)), 83979u, 32761u)), 21113u), Struct_4(func_1(vec2<u32>(firstTrailingBit(4294967295u), 42121u), ~u_input.e, Struct_4(func_1(vec2<u32>(0u, 51167u), vec2<u32>(u_input.d, u_input.c), Struct_4(Struct_1(u_input.b, false, var_0.c), vec2<u32>(u_input.d, u_input.b))), ~vec2<u32>(var_0.a, 7088u))), u_input.e));
    global2 = vec4<i32>(global2.x, u_input.a.x ^ u_input.a.x, 1i, ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-15621i, u_input.a.x)), vec2<i32>(-2147483647i, 5813i) ^ global2.yx));
    global0 = array<vec4<i32>, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, _wgslsmith_f_op_f32(abs(var_0.c)))))));
    let var_2 = Struct_5(!(u_input.e.x != ~u_input.d) == (!all(vec4<bool>(true, false, true, true)) && any(select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)))), 1000f, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - 1000f), var_0.c) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1137f, 451f))), 31207i, vec3<u32>(func_1(min(vec2<u32>(var_0.a, var_0.a), vec2<u32>(0u, 0u)), vec2<u32>(0u, u_input.b), Struct_4(Struct_1(1u, var_0.b, -574f), vec2<u32>(35424u, 4294967295u))).a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_0.a, 1641u, var_0.a), vec4<u32>(4294967295u, global1.x, 27673u, 67939u)), 1u)), Struct_3(~var_0.a ^ (~var_0.a >> ((global1.x << (4294967295u % 32u)) % 32u)), false), Struct_4(func_1(~countOneBits(vec2<u32>(u_input.c, global1.x)), vec2<u32>(~global1.x, _wgslsmith_div_u32(var_0.a, var_0.a)), Struct_4(Struct_1(53232u, true, -575f), u_input.e)), ~_wgslsmith_div_vec2_u32(u_input.e, u_input.e)));
    global0 = array<vec4<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(1241u, _wgslsmith_add_vec2_i32(vec2<i32>(i32(-1i) * -30107i, -var_2.c.c) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 0u), ~var_2.e.b) % vec2<u32>(32u)), vec2<i32>(countOneBits(_wgslsmith_clamp_i32(40499i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(0i, global2.x))), select(global0[_wgslsmith_index_u32(var_2.c.d.x, 14u)], u_input.a, select(!vec4<bool>(var_0.b, false, false, true), vec4<bool>(true, true, var_0.b, var_2.e.a.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 67140u), vec2<u32>(u_input.b, 4294967295u)) < var_2.e.b.x)), 1u);
}

