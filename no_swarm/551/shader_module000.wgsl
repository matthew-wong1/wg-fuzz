struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(1u, 4294967295u, 1u, 58801u, 11854u, 14922u, 76845u, 1715u, 4294967295u, 47774u, 3517u, 14728u, 37614u, 32004u, 3372u, 4294967295u, 4294967295u, 1u, 0u, 47282u, 4294967295u);

var<private> global1: array<Struct_1, 19>;

var<private> global2: vec2<f32>;

var<private> global3: array<u32, 3> = array<u32, 3>(4294967295u, 40277u, 10445u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    global3 = array<u32, 3>();
    let var_0 = u_input.c.x;
    let var_1 = vec4<i32>(~(~(-47292i)), i32(-1i) * -(~(var_0 >> (global0[_wgslsmith_index_u32(arg_0.x, 21u)] % 32u))), var_0, var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2009f, global2.x) * _wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(-global2.x))), -1000f, global2.x));
    let var_3 = arg_0.x >= ~(~firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(46879u, 1u, 1u), vec3<u32>(1u, u_input.a.x, arg_0.x))));
    return var_3;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global0 = array<u32, 21>();
    var var_0 = select(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false)), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), func_3(u_input.a)), vec2<bool>(any(vec4<bool>(false, true, true, true)), true))), vec2<bool>(!all(vec4<bool>(true, true, false, false)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true));
    var var_1 = vec2<bool>(false && all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), true)), true);
    var var_2 = arg_0.c.x;
    var var_3 = !(!vec4<bool>(!var_0.x || var_0.x, !(!var_1.x), true, false));
    return Struct_2(-8858i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = u_input.c;
    global1 = array<Struct_1, 19>();
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), global2.x));
    global1 = array<Struct_1, 19>();
    let var_1 = ~vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(u_input.a, vec4<u32>(0u, 4294967295u, 0u, 74140u), false)), select(vec4<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69473u, 3u)], 21u)], 12468u) & vec4<u32>(38589u, 40719u, 50739u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), ~vec4<u32>(1u, 4294967295u, 1u, u_input.a.x), true)), _wgslsmith_add_u32(1u, 1u), u_input.a.x);
    return _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x))))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(func_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 21u)]), 1u), 19u)]), Struct_2(-637i)));
    global1 = array<Struct_1, 19>();
    global0 = array<u32, 21>();
    let var_1 = select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, true, true)), true, true), select(true, true, false)), !select(vec4<bool>(true, any(vec2<bool>(false, false)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), true), select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true))), !vec4<bool>(true, any(vec4<bool>(true, true, true, false)), true, true), _wgslsmith_div_i32(arg_0.x, _wgslsmith_sub_i32(-53269i, arg_0.x)) < arg_0.x));
    global1 = array<Struct_1, 19>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -2761f)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1293f, global2.x), vec2<f32>(-1483f, global2.x)), vec2<f32>(162f, global2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, -505f), vec2<f32>(2035f, 373f))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-190f, global2.x))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1409f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, 59506u & global0[_wgslsmith_index_u32(~u_input.a.x, 21u)], 11173u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, u_input.a), u_input.a), reverseBits(vec4<u32>(14199u, 39240u, 1u, 1u))), ~(~vec4<u32>(global3[_wgslsmith_index_u32(71286u, 3u)], 1u, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(step(global2.x, global2.x));
    var var_2 = global1[_wgslsmith_index_u32(1u, 19u)];
    global2 = _wgslsmith_f_op_vec2_f32(func_1(~min(vec2<i32>(29025i, -2147483647i), vec2<i32>(9661i, select(u_input.c.x, -2147483647i, false)))));
    var var_3 = func_2(Struct_1(var_2.b, _wgslsmith_dot_vec4_i32(~(vec4<i32>(2147483647i, u_input.c.x, 10968i, -32561i) ^ vec4<i32>(0i, -1i, u_input.b, 2147483647i)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(11592i, -52381i, var_2.e.x, 15414i), vec4<i32>(0i, -20191i, var_2.a, 1i), true), vec4<i32>(var_2.e.x, var_2.a, var_2.e.x, var_2.b) | vec4<i32>(1i, -2147483647i, 46997i, 0i))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_2.c))), ~select(~var_0, vec4<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 3u)], 27204u, 46203u), vec4<bool>(true, true, true, true)), vec2<i32>(var_2.b, var_2.e.x)));
    let var_4 = !all(vec4<bool>(false, true, !any(vec4<bool>(false, true, true, true)), false));
    var var_5 = vec4<bool>(var_4, true, -var_2.b <= (_wgslsmith_clamp_i32(39367i, 1i, _wgslsmith_clamp_i32(var_3.a, var_3.a, 1i)) & (select(26218i, u_input.c.x, var_4) & _wgslsmith_mod_i32(var_3.a, var_2.a))), ~(-2147483647i) > (var_3.a & _wgslsmith_sub_i32(1i, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(vec3<i32>(~22685i, 2147483647i & var_3.a, ~var_2.b)), -abs(vec3<i32>(var_2.a, 33739i, var_2.b) & vec3<i32>(-12151i, -58854i, 0i))), _wgslsmith_div_vec2_f32(var_2.c.zy, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1303f, -1366f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.c)).x + _wgslsmith_f_op_f32(-var_2.c.x)))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~global0[_wgslsmith_index_u32(20642u, 21u)]), 72317u));
}

