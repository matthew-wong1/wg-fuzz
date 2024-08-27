struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 9> = array<bool, 9>(false, false, false, true, true, true, true, true, true);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_div_f32(1100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(601f + -219f) + _wgslsmith_f_op_f32(ceil(-1078f)))))));
    global0 = -23693i;
    let var_1 = arg_0;
    var var_2 = 37236u;
    var var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(floor(-1454f));
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(func_3(34405u, abs(u_input.e.x)));
    var var_1 = false;
    let var_2 = Struct_3(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.b.x, u_input.c, u_input.a | 0i), _wgslsmith_add_vec3_i32(select(u_input.b.yxy, vec3<i32>(-1i, -22027i, 26851i), true), min(vec3<i32>(-19864i, -2147483647i, u_input.a), u_input.b.yyy)))), Struct_1(u_input.b.ywy), _wgslsmith_add_i32(-1i, firstLeadingBit(-2449i)), Struct_2(Struct_1(u_input.b.wwx), _wgslsmith_f_op_f32(sign(1132f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.d.x, u_input.e.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-393f, 741f) * 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1008f, -1385f), vec2<f32>(1772f, -137f))) + vec2<f32>(547f, 324f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1306f, -1192f) + vec2<f32>(-1124f, -125f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1287f, -225f)))));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(var_2.a.a.x, 33159i))), u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(var_2.b.a), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.c), u_input.b.wwz), vec3<i32>(var_2.d.a.a.x, -35591i, u_input.c)), select(u_input.b.wxz, var_2.a.a, vec3<bool>(true, false, true)))), vec2<i32>(~u_input.c, -43527i));
    var var_3 = var_2.d;
    return Struct_3(var_3.a, var_3.a, 2147483647i, Struct_2(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-469f + var_2.d.d.x), _wgslsmith_f_op_f32(var_3.b * var_2.d.e))), var_3.d.x, var_3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-195f))) + _wgslsmith_f_op_f32(ceil(-499f)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = func_2(true);
    global1 = array<bool, 9>();
    global0 = u_input.b.x;
    var var_1 = global1[_wgslsmith_index_u32(~1u, 9u)] && true;
    var var_2 = 2147483647i;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 9>();
    let var_0 = -1i;
    var var_1 = reverseBits(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(func_1(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec2<f32>(890f, -758f)), 4294967295u), 5441u, 0u)));
    var var_2 = _wgslsmith_add_vec2_u32(~reverseBits(_wgslsmith_sub_vec2_u32(min(u_input.e.ww, vec2<u32>(u_input.e.x, 1u)), u_input.e.xw)), _wgslsmith_sub_vec2_u32(~(~(~u_input.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(3362u, u_input.d.x), select(u_input.e.zy, _wgslsmith_mod_vec2_u32(u_input.e.yy, vec2<u32>(5964u, 0u)), true))));
    let var_3 = !vec2<bool>(true | !all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 9u)], global1[_wgslsmith_index_u32(var_2.x, 9u)], global1[_wgslsmith_index_u32(7630u, 9u)], true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-717f, func_2(all(!vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 9u)], var_3.x))).d.c)), _wgslsmith_mod_i32(-2147483647i, ~(~(-3022i))), _wgslsmith_f_op_f32(-func_2(var_3.x).d.e));
}

