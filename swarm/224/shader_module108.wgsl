struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(146f, 586f);

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-31311i, vec4<u32>(4294967295u, 3111u, 27379u, 1u), vec4<i32>(-1i, 37552i, 2147483647i, 2822i), vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), -34729i, 2214i, -1i)), Struct_1(-72134i, vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<i32>(2147483647i, 1i, -6688i, 33710i), vec3<bool>(true, false, false), vec4<i32>(13433i, i32(-2147483648), 18765i, i32(-2147483648))), Struct_1(-2784i, vec4<u32>(1u, 0u, 0u, 41812u), vec4<i32>(-21422i, 1i, 2147483647i, i32(-2147483648)), vec3<bool>(true, true, true), vec4<i32>(-1i, -27452i, 0i, 0i)), Struct_1(i32(-2147483648), vec4<u32>(56321u, 0u, 4294967295u, 1u), vec4<i32>(i32(-2147483648), -14848i, 1i, 2147483647i), vec3<bool>(true, true, false), vec4<i32>(2147483647i, -21664i, 6417i, 2147483647i)), Struct_1(-44474i, vec4<u32>(0u, 0u, 39743u, 3186u), vec4<i32>(1i, -34949i, 2147483647i, -496i), vec3<bool>(false, false, false), vec4<i32>(0i, 1i, 2613i, 1i)), Struct_1(i32(-2147483648), vec4<u32>(36741u, 44233u, 27028u, 36860u), vec4<i32>(0i, 28781i, i32(-2147483648), 46860i), vec3<bool>(false, false, true), vec4<i32>(5781i, -1i, -50795i, 34730i)), Struct_1(-1i, vec4<u32>(0u, 4294967295u, 29576u, 60728u), vec4<i32>(0i, -20219i, 10804i, -11175i), vec3<bool>(true, false, false), vec4<i32>(35593i, 2147483647i, 20124i, 8748i)), Struct_1(0i, vec4<u32>(1u, 1u, 3888u, 2048u), vec4<i32>(9269i, -190i, 1i, 1i), vec3<bool>(true, true, false), vec4<i32>(2763i, 0i, 11797i, -46831i)), Struct_1(1i, vec4<u32>(36353u, 16510u, 0u, 17591u), vec4<i32>(-1i, -1i, 15244i, 31049i), vec3<bool>(true, true, false), vec4<i32>(39729i, 1i, 2147483647i, 1i)));

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_clamp_i32(reverseBits(arg_1.e.x), abs(~_wgslsmith_mult_i32(-24561i, -1i)), arg_1.e.x);
    global2 = !any(vec3<bool>(arg_1.d.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(47942u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)]) > _wgslsmith_f_op_f32(min(arg_2, 530f)), arg_1.d.x));
    var var_1 = abs(_wgslsmith_div_i32(~abs(arg_3), -53410i));
    var var_2 = vec4<bool>(true, false, false, arg_1.d.x);
    var var_3 = 173f;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2)))), global0[_wgslsmith_index_u32(1u, 2u)])), vec2<f32>(arg_2, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.x, 2u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -371f)))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    var var_0 = true;
    let var_1 = abs(~abs(vec2<i32>(1i, ~(-1i))));
    global0 = array<f32, 2>();
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_2.zz * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(u_input.a, u_input.b), Struct_1(2147483647i, vec4<u32>(13271u, 0u, u_input.b, 53353u), vec4<i32>(var_1.x, -1i, var_1.x, var_1.x), vec3<bool>(arg_0, true, false), vec4<i32>(var_1.x, -14018i, -27485i, var_1.x)), arg_1.x, var_1.x)) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(22285u, 2u)]))))));
    global0 = array<f32, 2>();
    return -1134f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-134f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.b.x, 2u)] + -1116f)), _wgslsmith_f_op_f32(func_2(arg_2, vec2<f32>(-623f, global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec4<f32>(-385f, arg_3.x, -341f, 1120f), arg_2)))));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, 1i), min(arg_0.a, -2147483647i), ~arg_0.c.x) >> ((arg_0.b.x & arg_1.b.x) % 32u)), 1i | _wgslsmith_mod_i32(arg_0.a, reverseBits(i32(-1i) * -34420i)), min(arg_0.e.x, ~reverseBits(-2147483647i)), 18386i);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.b, _wgslsmith_mod_vec4_u32(~(~(~arg_0.b)), vec4<u32>(firstLeadingBit(0u), 4294967295u | _wgslsmith_clamp_u32(65707u, 26501u, arg_1.b.x), 25150u, ~1u))), 2u)];
    let var_3 = Struct_1(6999i, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.b, vec4<u32>(4294967295u, arg_0.b.x, 4294967295u, 0u)) | vec4<u32>(42318u, 0u, u_input.b, 0u), arg_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.b.x, abs(arg_1.b.x), _wgslsmith_mult_u32(arg_0.b.x, 0u), firstTrailingBit(4294967295u)), select(arg_1.b & vec4<u32>(arg_0.b.x, arg_1.b.x, 1u, arg_1.b.x), ~arg_1.b, true))), arg_1.c, vec3<bool>(!(!any(vec2<bool>(arg_1.d.x, false))), arg_2, true), ~(~arg_0.c) & arg_0.e);
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.e.x, var_1.x, var_3.c.x, arg_0.c.x), arg_1.e), var_3.e, abs(arg_1.c ^ arg_1.c)), var_3.c) << (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~arg_1.b, ~arg_1.b), var_3.b) % vec4<u32>(32u));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(81205u, 0u, 4294967295u, u_input.b), vec4<u32>(1u, u_input.b, u_input.a, 1u)) >> (~(~vec4<u32>(27816u, u_input.b, u_input.b, 55283u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, func_1(global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], false, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -2071f, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), u_input.b), vec4<u32>(16925u, u_input.a, firstTrailingBit(u_input.a), 38277u))), select(46985u, ~0u ^ u_input.b, true));
    let var_1 = global1[_wgslsmith_index_u32(var_0.x, 9u)];
    var var_2 = -_wgslsmith_dot_vec2_i32(-(~(~vec2<i32>(var_1.a, var_1.c.x))), _wgslsmith_add_vec2_i32(var_1.e.zy, var_1.e.zw));
    var var_3 = vec2<bool>(var_1.d.x, var_1.d.x);
    var_0 = ~vec2<u32>(_wgslsmith_add_u32(countOneBits(~0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 79537u) | vec2<u32>(var_0.x, 4294967295u), var_1.b.zw << (var_1.b.yx % vec2<u32>(32u)))), (min(var_1.b.x, 0u) | _wgslsmith_dot_vec3_u32(var_1.b.wyz, var_1.b.zwx)) << (~func_1(Struct_1(var_1.a, vec4<u32>(30418u, var_0.x, 0u, var_1.b.x), vec4<i32>(-31456i, var_1.e.x, -11280i, 2147483647i), var_1.d, vec4<i32>(17019i, 19653i, var_1.e.x, -37261i)), global1[_wgslsmith_index_u32(var_1.b.x, 9u)], var_1.d.x, vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(var_0.x, 2u)], -481f, global0[_wgslsmith_index_u32(89743u, 2u)])) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_0.x, 2u)])))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], -334f, -2154f) - vec3<f32>(-1000f, 1171f, 261f))), vec3<f32>(_wgslsmith_f_op_f32(floor(-570f)), -701f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 2u)] * 360f))))), 0i);
}

