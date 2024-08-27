struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec3<f32>, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    let var_0 = global1[_wgslsmith_index_u32(332u, 3u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1000f - 1000f), var_0.b, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1547f, var_0.b, var_0.b, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -628f, var_0.b, 882f))))));
    return select(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i), u_input.c.yyz)) & 13545i, _wgslsmith_div_i32(-60933i, i32(-1i) * -1i) | firstTrailingBit(2147483647i), all(vec4<bool>(-u_input.c.x < _wgslsmith_mult_i32(4363i, 1i), any(select(vec2<bool>(true, true), vec2<bool>(false, var_0.c), true)), var_0.d, all(select(vec3<bool>(var_0.d, true, true), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(false, var_0.c, var_0.c))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> i32 {
    let var_0 = Struct_1(firstTrailingBit(46689u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) + _wgslsmith_f_op_f32(-arg_1)), any(vec3<bool>(any(!vec2<bool>(arg_0.a.c, arg_0.a.d)), (arg_1 < 728f) | (arg_1 < arg_1), 1175f >= _wgslsmith_f_op_f32(ceil(arg_1)))), select(all(vec3<bool>(arg_0.a.c || arg_0.a.c, false, true)), any(!vec2<bool>(arg_0.a.c, arg_0.a.c)) != all(vec4<bool>(arg_0.a.c, arg_0.a.c, true, arg_0.a.c)), !any(!vec4<bool>(arg_0.a.d, true, false, false))));
    let var_1 = 14887i;
    var var_2 = ~vec4<i32>(~_wgslsmith_mod_i32(-var_1, u_input.c.x), arg_2, i32(-1i) * -2147483647i, _wgslsmith_add_i32(reverseBits(arg_0.b), 13829i));
    global2 = array<vec3<f32>, 6>();
    global2 = array<vec3<f32>, 6>();
    return arg_0.b;
}

fn func_2() -> Struct_4 {
    global2 = array<vec3<f32>, 6>();
    global0 = select(true, false, true);
    global0 = true;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mult_u32(1u, u_input.b | ~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188f * 197f))), true, true), func_4(Struct_2(Struct_1(_wgslsmith_mod_u32(u_input.e, 62059u), -613f, true, true), firstLeadingBit(abs(u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f * -279f))), func_3()));
    global2 = array<vec3<f32>, 6>();
    return Struct_4(2795f);
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = false;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 3u)], abs(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), u_input.c.x)) ^ (firstTrailingBit(-u_input.c.x) ^ _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x, 2147483647i), ~31015i)));
    var_1 = Struct_2(Struct_1(u_input.e, 1560f, any(!vec2<bool>(var_1.a.d, var_0)), true), _wgslsmith_mult_i32(abs(var_1.b & _wgslsmith_sub_i32(0i, var_1.b)), func_4(Struct_2(var_1.a, -17051i & u_input.c.x), 618f, var_1.b)));
    var var_2 = var_1.a.b;
    var var_3 = select(false, select(37381u >= var_1.a.a, all(vec4<bool>(all(vec3<bool>(var_1.a.c, false, var_1.a.c)), true, false, true)), var_1.a.a >= _wgslsmith_clamp_u32(~1u, var_1.a.a ^ 0u, _wgslsmith_sub_u32(1u, 1u))), true);
    return countOneBits(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 64119u, 4294967295u), vec3<u32>(u_input.a, u_input.d, u_input.e)), vec3<u32>(u_input.e, u_input.b, 31586u))) > 34365u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32) -> f32 {
    var var_0 = arg_1.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_2)) - vec2<f32>(_wgslsmith_div_f32(1309f, 795f), _wgslsmith_f_op_f32(-arg_0.x)))));
    global0 = true;
    let var_1 = func_5(func_2());
    var var_2 = vec2<u32>(_wgslsmith_clamp_u32(u_input.e, u_input.e, ~1u ^ (9333u << (u_input.b % 32u))), abs(u_input.d));
    return -1026f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-2147483647i << (u_input.b % 32u)) >= u_input.c.x;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec3<f32>(-112f, _wgslsmith_f_op_f32(floor(1112f)), _wgslsmith_div_f32(1422f, -141f)), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(~0u, 6u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1837f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)))))));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~u_input.a, 3u)]);
    var_2 = Struct_3(Struct_1(u_input.b, _wgslsmith_div_f32(var_2.a.b, 762f), var_2.a.d, true));
    let var_3 = u_input.c.wy;
    let var_4 = Struct_2(var_2.a, -u_input.c.x);
    var_2 = Struct_3(var_2.a);
    var var_5 = u_input.c.xy;
    let var_6 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, _wgslsmith_dot_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(-u_input.c, countOneBits(~u_input.c))), abs(vec2<u32>(abs(~u_input.e), ~69163u)), countOneBits(firstTrailingBit(vec4<u32>(19254u, 4294967295u, var_6, 4294967295u) ^ vec4<u32>(u_input.b, 4294967295u, var_4.a.a, 56808u)) ^ firstTrailingBit(vec4<u32>(var_4.a.a, var_4.a.a, 89628u, 0u))), abs(~_wgslsmith_mod_i32(-34420i, var_4.b)) >> (var_2.a.a % 32u));
}

