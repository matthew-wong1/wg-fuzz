struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: i32 = -18205i;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: array<vec4<u32>, 20>;

var<private> global4: vec3<f32> = vec3<f32>(-463f, -1060f, -1195f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    var var_0 = 1155f;
    let var_1 = 0u;
    var var_2 = u_input.e;
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, arg_1.x, 2429f)))) - arg_1.xyy));
    global0 = array<bool, 6>();
    return any(!vec3<bool>(global0[_wgslsmith_index_u32(5654u, 6u)], false, true));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<i32>) -> bool {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 6u)]);
    var var_1 = 1i;
    global4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, 559f, global4.x), vec3<f32>(global4.x, global4.x, global4.x)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, -828f, global4.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, global4.x, global4.x), vec3<f32>(1574f, 548f, global4.x), global0[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, -660f, global4.x) - vec3<f32>(-345f, -777f, -1258f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-851f, 145f, global4.x) + vec3<f32>(global4.x, -541f, -1361f))))))));
    global0 = array<bool, 6>();
    global2 = vec4<bool>(global2.x, var_0.a, func_3(_wgslsmith_f_op_f32(global4.x + 290f) <= _wgslsmith_f_op_f32(-154f * _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(620f, global4.x, 703f, global4.x) - vec4<f32>(global4.x, -1000f, global4.x, global4.x))))))), false);
    return arg_0.x;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global0 = array<bool, 6>();
    global1 = -u_input.a.x;
    var var_0 = 0u;
    let var_1 = 123f;
    var var_2 = select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 6u)], true, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], false, false))), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(arg_0, 6u)], false, func_2(global2.yz, -1i, vec2<i32>(u_input.a.x, 28476i))), vec4<bool>(false && global2.x, false, any(vec4<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(u_input.d, 6u)], true, true)), true, !global0[_wgslsmith_index_u32(arg_0, 6u)])), true));
    return vec3<bool>(func_2(global2.wz, ~1i, _wgslsmith_mult_vec2_i32(-u_input.c, abs(u_input.a.yx) & vec2<i32>(38102i, u_input.c.x))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0 >> (arg_0 % 32u), 6u)], true, !var_2.x, !global0[_wgslsmith_index_u32(34454u, 6u)]), true)), global2.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global4.yy, global4.xy))), vec4<i32>(1i, i32(-1i) * -2147483647i, u_input.c.x, 33449i), Struct_3(Struct_1(any(arg_0.xz))), -9820i);
    var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(441f * global4.x)) * 1394f), _wgslsmith_f_op_f32(f32(-1f) * -1230f)), _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(-_wgslsmith_sub_i32(var_0.b.x, -2147483647i), var_0.b.x, _wgslsmith_dot_vec4_i32(~var_0.b, countOneBits(u_input.a)), 1i)), Struct_3(Struct_1(!(var_0.a.x != global4.x))), -2147483647i);
    global3 = array<vec4<u32>, 20>();
    let var_1 = _wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b, abs(u_input.b) >> (~vec3<u32>(10990u, u_input.b.x, 1u) % vec3<u32>(32u))), 59237u));
    var var_2 = Struct_1(var_1 <= max(var_1, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(var_1, 20u)] | vec4<u32>(var_1, 1u, 60960u, 73947u), ~vec4<u32>(10418u, var_1, var_1, u_input.d))));
    return select(select(max(firstLeadingBit(~global3[_wgslsmith_index_u32(0u, 20u)]), select(~global3[_wgslsmith_index_u32(53435u, 20u)], vec4<u32>(9457u, u_input.b.x, var_1, 44303u), var_0.b.x >= 0i)), abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(0u, 4294967295u)), 0u ^ var_1, var_1, 52785u)), true), vec4<u32>(~(~0u), ~max(u_input.d, 1u), _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(11966u, 20u)], ~(global3[_wgslsmith_index_u32(4294967295u, 20u)] >> (vec4<u32>(var_1, 4294967295u, 60374u, var_1) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, ~1u, var_1, ~4294967295u), vec4<u32>(0u, u_input.d, ~23902u, ~0u))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(func_4(!select(func_1(0u), global2.zxx, global0[_wgslsmith_index_u32(37787u, 6u)] | global2.x), Struct_3(Struct_1(any(vec4<bool>(false, global0[_wgslsmith_index_u32(42142u, 6u)], global2.x, false))))), vec4<u32>(_wgslsmith_clamp_u32(60132u, 4294967295u, ~u_input.b.x), 1u, 15699u, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(461u, u_input.d)) & 4294967295u)));
    var var_1 = Struct_4(vec2<f32>(global4.x, _wgslsmith_f_op_f32(-1f)), select(u_input.a, _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c.x, u_input.a.x, u_input.e), -u_input.a) << (vec4<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.yz), _wgslsmith_clamp_u32(1u, u_input.b.x, var_0), u_input.d << (1u % 32u)) % vec4<u32>(32u)), global2.x), Struct_3(Struct_1(u_input.c.x >= _wgslsmith_dot_vec2_i32(vec2<i32>(-44175i, u_input.c.x), vec2<i32>(0i, 70166i)))), u_input.c.x);
    global0 = array<bool, 6>();
    let var_2 = ~_wgslsmith_sub_u32(var_0, ~(~(~u_input.d)));
    var_1 = Struct_4(var_1.a, ~vec4<i32>(var_1.b.x, _wgslsmith_dot_vec4_i32(-u_input.a, vec4<i32>(var_1.d, -29926i, -2147483647i, -1i)), -17868i >> (var_0 % 32u), 17702i), var_1.c, _wgslsmith_mod_i32(~5641i, min(0i, u_input.c.x)));
    var var_3 = global2.xyy;
    global1 = -28201i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(var_1.a)), ~abs(min(_wgslsmith_div_u32(54685u, 1u), var_2)), reverseBits(var_1.b));
}

