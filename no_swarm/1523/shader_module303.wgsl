struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(32297u, 4294967295u, 5233u, 1u, 1u, 1017u, 3151u);

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: array<bool, 26>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    global0 = array<u32, 7>();
    global2 = array<bool, 26>();
    var var_0 = ~_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.a, -50184i ^ u_input.a, arg_0.a >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1587u, 7u)], 7u)], 7u)], 7u)] % 32u), ~1i), u_input.b);
    var var_1 = Struct_1(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(-1i), min(4233i, 1i), 1i ^ u_input.a, var_0.x), ~u_input.b | -u_input.b), var_0.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.c.x, 936f)))))))));
    let var_2 = Struct_1(abs(var_0.x), (i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(44508i, arg_0.a, -11064i), vec3<i32>(0i, -1i, 1i))) >> (_wgslsmith_clamp_u32(6096u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], u_input.c << (u_input.c % 32u)), 1u) % 32u), arg_0.c);
    return vec4<i32>(~(-2147483647i), var_1.a, u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-83234i, var_1.b << (25864u % 32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(5087i, u_input.d.x), vec2<i32>(5725i, -1816i))), global1[_wgslsmith_index_u32(~u_input.c, 26u)]));
}

fn func_2() -> i32 {
    var var_0 = ~(~10835u);
    var var_1 = Struct_1(u_input.d.x, u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-786f, -924f) + vec2<f32>(423f, 1388f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1462f))))));
    var_0 = 73761u;
    global1 = array<vec2<i32>, 26>();
    let var_2 = Struct_1(-_wgslsmith_dot_vec4_i32(~func_3(Struct_1(824i, 2147483647i, var_1.c)), abs(u_input.b) ^ vec4<i32>(u_input.e, 81106i, u_input.e, 1i)), min(-2147483647i, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(var_1.c.x, 715f))));
    return _wgslsmith_sub_i32(0i, var_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = -vec2<i32>(-1i, arg_1.a);
    global0 = array<u32, 7>();
    let var_1 = arg_0;
    var var_2 = !select(select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(8538u, 26u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)]), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57413u, 7u)], 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], true), !vec3<bool>(true, global2[_wgslsmith_index_u32(89041u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)])), select(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(84263u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)], false), global2[_wgslsmith_index_u32(2689u, 26u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 26u)], true, true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]), true), false), true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 26u)] != global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 26u)]), !select(vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], 26u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], 26u)], global2[_wgslsmith_index_u32(28979u, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(28209u, 26u)], global2[_wgslsmith_index_u32(49317u, 26u)], global2[_wgslsmith_index_u32(43856u, 26u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c, 26u)])), !(!vec3<bool>(global2[_wgslsmith_index_u32(67556u, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], true))), select(vec3<bool>(select(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 26u)]), true, any(vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20566u, 7u)], 26u)], true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39909u, 7u)], 26u)]))), !vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], 26u)]), vec3<bool>(true, arg_0.c.x > var_1.c.x, global2[_wgslsmith_index_u32(16291u, 26u)])));
    var var_3 = Struct_1(min(-28732i, firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.yy, countOneBits(vec2<i32>(arg_1.a, var_0.x))))), -28637i & _wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, arg_0.b, -2147483647i, -1i), u_input.b), vec4<i32>(_wgslsmith_mod_i32(var_1.b, u_input.d.x), 39141i, _wgslsmith_add_i32(u_input.b.x, 38236i), var_1.b)), _wgslsmith_f_op_vec2_f32(var_1.c + vec2<f32>(_wgslsmith_div_f32(-330f, -1004f), 2086f)));
    return _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstTrailingBit(u_input.c), u_input.c), 7u)], 7u)], ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57583u, 7u)], 7u)], 39534u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 0u, global0[_wgslsmith_index_u32(u_input.c, 7u)])))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = u_input.c;
    let var_2 = -_wgslsmith_dot_vec3_i32(u_input.b.yzw, vec3<i32>(~(~u_input.e), 20230i, arg_0.a));
    global1 = array<vec2<i32>, 26>();
    let var_3 = arg_0;
    return ~func_4(Struct_1(func_2(), i32(-1i) * -838i, vec2<f32>(412f, arg_0.c.x)), Struct_1(-_wgslsmith_sub_i32(0i, u_input.a), -10471i, var_3.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.c.x))))));
}

fn func_5(arg_0: u32, arg_1: bool) -> vec2<f32> {
    global0 = array<u32, 7>();
    global2 = array<bool, 26>();
    var var_0 = vec3<bool>(arg_1, false, global2[_wgslsmith_index_u32(0u, 26u)] || true);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.b.x, ~(-2147483647i), -1i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 7u)], 7u)] % 32u)) << (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(11422u, 1u, arg_0, arg_0)), ~vec4<u32>(1u, arg_0, 6486u, 0u)) % vec4<u32>(32u)), u_input.b & u_input.b), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, 970f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1790f), vec2<f32>(201f, 459f)))) - vec2<f32>(_wgslsmith_f_op_f32(629f * -395f), _wgslsmith_f_op_f32(258f * -255f)))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = -42675i;
    global2 = array<bool, 26>();
    let var_1 = Struct_1(u_input.a, 0i, _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~36528u, 4294967295u, u_input.c), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 3897u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4482u, 7u)], 7u)], u_input.c, 4294967295u) & vec4<u32>(6569u, 27461u, 88696u, u_input.c)), 7u)]), !global2[_wgslsmith_index_u32(func_1(Struct_1(-16670i, 19770i, vec2<f32>(-1000f, -1519f))), 26u)])));
    global1 = array<vec2<i32>, 26>();
    global2 = array<bool, 26>();
    var var_2 = _wgslsmith_f_op_f32(ceil(-1746f));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(979f, _wgslsmith_f_op_f32(f32(-1f) * -995f), var_1.c.x, _wgslsmith_f_op_f32(-var_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(min(1491f, var_1.c.x)), _wgslsmith_f_op_f32(-151f + -450f), _wgslsmith_f_op_f32(590f + var_1.c.x), _wgslsmith_f_op_f32(select(var_1.c.x, var_1.c.x, true))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.c.x, var_1.c.x))), 152f, -400f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x - -1000f), var_1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, -1024f))))), _wgslsmith_sub_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.d.x) << (vec2<u32>(global0[_wgslsmith_index_u32(101881u, 7u)], 4294967295u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-55300i, var_1.a), u_input.d), -global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 7u)], 7u)], 26u)]), ~u_input.d), vec4<i32>(u_input.b.x, -_wgslsmith_add_i32(-var_1.a, -29525i), var_1.b, countOneBits(min(_wgslsmith_sub_i32(var_1.b, u_input.d.x), reverseBits(33456i)))));
}

