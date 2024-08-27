struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1072f, -1965f), vec2<f32>(859f, -1319f), vec2<f32>(-975f, 740f), vec2<f32>(947f, 1083f), vec2<f32>(-345f, -340f), vec2<f32>(-981f, -1910f), vec2<f32>(-505f, -471f), vec2<f32>(546f, 1103f), vec2<f32>(1401f, -372f), vec2<f32>(-1477f, 1224f), vec2<f32>(-1206f, -1011f), vec2<f32>(-162f, 313f), vec2<f32>(-173f, -225f), vec2<f32>(-654f, 1178f), vec2<f32>(-352f, -586f), vec2<f32>(789f, -215f), vec2<f32>(-1122f, 1536f), vec2<f32>(727f, 176f), vec2<f32>(835f, 253f));

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> vec3<i32> {
    global1 = array<vec2<f32>, 19>();
    let var_0 = Struct_1(u_input.a | vec3<i32>(2147483647i, -1i, _wgslsmith_mod_i32(1i, -1i)), _wgslsmith_f_op_f32(-863f * _wgslsmith_div_f32(1f, 1f)), min(vec3<i32>(abs(~u_input.a.x), ~(~u_input.a.x), _wgslsmith_add_i32(1i, u_input.a.x)), u_input.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_1, 43352u) & _wgslsmith_mod_u32(~arg_0, 31668u), _wgslsmith_add_u32(~(~u_input.c.x), 1u)));
    var var_1 = var_0;
    global1 = array<vec2<f32>, 19>();
    let var_2 = vec3<bool>((var_1.b <= var_0.b) & (_wgslsmith_f_op_f32(f32(-1f) * -230f) > var_0.b), true, true);
    return var_1.c;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    global0 = u_input.b;
    var var_0 = arg_1.xx;
    let var_1 = Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(firstLeadingBit(abs(arg_1))), select(~vec3<i32>(var_0.x, var_0.x, u_input.a.x) ^ func_3(u_input.c.x, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.x, -2147483647i), vec3<i32>(var_0.x, arg_1.x, -2147483647i) & vec3<i32>(u_input.a.x, var_0.x, 37180i), -u_input.a), true)), -779f, arg_1, ~reverseBits(~u_input.b));
    var var_2 = select(!select(vec2<bool>(false, true), arg_2.yy, vec2<bool>(var_0.x > u_input.a.x, arg_2.x)), arg_2.yy, !(!all(vec3<bool>(false, arg_2.x, arg_2.x))));
    var var_3 = ~_wgslsmith_div_vec3_u32(abs(reverseBits(vec3<u32>(u_input.c.x, 0u, var_1.d))), countOneBits(~(vec3<u32>(52229u, 69655u, 19930u) >> (vec3<u32>(var_1.d, var_1.d, var_1.d) % vec3<u32>(32u)))));
    return _wgslsmith_f_op_f32(select(-668f, _wgslsmith_div_f32(var_1.b, -190f), (_wgslsmith_clamp_i32(abs(u_input.a.x), _wgslsmith_mult_i32(var_1.a.x, var_1.c.x), 1i) <= arg_1.x) || true));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true);
    global2 = 1i;
    global1 = array<vec2<f32>, 19>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(526f, -219f, 379f), ~vec3<i32>(u_input.a.x, -1i, u_input.a.x), !var_0))) - -1280f)));
    let var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 22073u), vec4<u32>(910u, 6586u, 1u, u_input.b)), u_input.c.x, 10216u) ^ u_input.b) >> (1u % 32u), 19u)];
    return Struct_1(-vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -2147483647i, -1i, 63225i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 19798i)), 0i, -1276i), _wgslsmith_f_op_f32(ceil(-1095f)), vec3<i32>(u_input.a.x, func_3(max(min(1u, u_input.c.x), ~u_input.c.x), reverseBits(23289u)).x, 1i), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 43050u), countOneBits(countOneBits(u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = arg_0.b;
    let var_1 = arg_1;
    let var_2 = -2147483647i;
    var var_3 = Struct_1(select(-_wgslsmith_div_vec3_i32(func_3(u_input.c.x, arg_0.d), firstLeadingBit(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i))), ~(-arg_0.a) ^ arg_1.ywx, vec3<bool>(true, true, true)), var_0, select(~func_1().a, u_input.a, !arg_2), ~u_input.b);
    let var_4 = var_3.d;
    return _wgslsmith_mult_u32(1u, ~select(firstTrailingBit(~arg_0.d), arg_0.d, all(vec2<bool>(arg_2.x, false)) == arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~abs(max(vec4<u32>(u_input.c.x, u_input.b, 0u, 50441u), vec4<u32>(u_input.b, 0u, u_input.b, u_input.c.x)))));
    var var_1 = 0u ^ u_input.c.x;
    let var_2 = vec3<bool>(true, all(vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1703f * 561f), _wgslsmith_div_f32(-563f, 861f)) - 393f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f * _wgslsmith_f_op_f32(148f + 239f)))));
    var var_4 = ~func_4(func_1(), -(abs(vec4<i32>(u_input.a.x, -2147483647i, -1i, -31779i)) ^ vec4<i32>(13349i, -2147483647i, -1i, u_input.a.x)), vec3<bool>(any(var_2.xy) || !var_2.x, true, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mod_u32(func_4(Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), var_3, vec3<i32>(994i, 23952i, -10678i), 0u), vec4<i32>(-1i, 0i, u_input.a.x, 2147483647i), var_2), abs(var_0.x)) ^ ~u_input.c.x) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 16525u, 18477u, var_0.x), vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x)) >> (vec4<u32>(1u, var_0.x, 75890u, var_0.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, var_0.x, u_input.c.x, var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 6959u, u_input.b, 33731u), vec4<u32>(1u, 20655u, u_input.b, var_0.x)))) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-571f, 605f, var_3, 573f), _wgslsmith_f_op_vec4_f32(vec4<f32>(730f, 1365f, var_3, 1862f) - vec4<f32>(var_3, var_3, -802f, -368f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(262f, var_3, 488f, -450f)))), 3426u, var_3, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(round(1515f)), _wgslsmith_f_op_f32(floor(var_3)), var_3), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1251f, -111f, -445f, -328f), vec4<f32>(-325f, 2608f, -1680f, -631f), vec4<bool>(false, var_2.x, false, var_2.x)))))))));
}

