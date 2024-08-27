struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<f32, 3>();
    var var_0 = true;
    let var_1 = vec4<i32>(1i ^ u_input.b, arg_0.c, 2147483647i, ~u_input.a);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(220f, _wgslsmith_f_op_f32(-473f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 3u)] * global0[_wgslsmith_index_u32(2780u, 3u)]))), -2022f), _wgslsmith_sub_vec3_u32(arg_0.b, arg_0.b), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 0i), var_1.wy), ~var_1.wy), vec2<i32>(~44046i, 35795i)));
    global0 = array<f32, 3>();
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(arg_0.b.x, 3u)], _wgslsmith_f_op_f32(select(-170f, arg_0.a, false))) + global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, ~var_2.b.x), 3u)]), _wgslsmith_f_op_f32(abs(-1385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.b.x, 3u)] - -418f)), 1595f)));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global0 = array<f32, 3>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, global0[_wgslsmith_index_u32(0u, 3u)], -2159f, global0[_wgslsmith_index_u32(12487u, 3u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -398f, global0[_wgslsmith_index_u32(34960u, 3u)], 390f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(24183u, 3u)], 1000f, 180f, 1000f) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1320f, 1436f, 845f, global0[_wgslsmith_index_u32(39329u, 3u)]), vec4<f32>(1213f, global0[_wgslsmith_index_u32(49882u, 3u)], -1051f, 2119f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(2967u, 3u)], 775f, -697f, 228f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, -1000f, global0[_wgslsmith_index_u32(17221u, 3u)], -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 3u)])), firstTrailingBit(vec3<u32>(4294967295u, 1u, 1u)), u_input.a)))));
    let var_2 = Struct_1(min(~(~firstTrailingBit(vec3<u32>(508u, 4294967295u, 9931u))), vec3<u32>(1u, _wgslsmith_mod_u32(0u, abs(1u)), ~1u)), vec2<u32>(1u, 1u));
    global0 = array<f32, 3>();
    return 33012u;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = array<f32, 3>();
    var var_0 = u_input.a;
    let var_1 = Struct_1(vec3<u32>(41866u, ~(~(~13912u)), func_2(select(!vec3<bool>(arg_0, arg_1, arg_0), !vec3<bool>(false, arg_1, arg_0), arg_0))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30238u, 1u), vec3<u32>(29443u, 75401u, 10404u)) & select(1u, 4294967295u, arg_0), ~(~50932u)));
    var_0 = max(-u_input.a, 5661i);
    var var_2 = abs(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(4294967295u, var_1.b.x), 4294967295u), vec2<u32>(var_1.b.x, 0u))));
    return Struct_1(var_1.a, vec2<u32>(0u, 26623u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<bool> {
    let var_0 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false), any(vec2<bool>(false, false))), false), select(vec3<bool>(true, false, true), vec3<bool>(select(false, true, true), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(false, true, false, true)), true), true)), vec3<bool>(all(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, true)), !(_wgslsmith_f_op_f32(-arg_2) == _wgslsmith_f_op_f32(765f + global0[_wgslsmith_index_u32(17562u, 3u)])), any(vec3<bool>(select(false, true, true), true, select(false, true, false)))));
    global0 = array<f32, 3>();
    var var_1 = select(arg_0.a.x ^ countOneBits((arg_0.a.x | 17030u) | 49934u), arg_1, true | (var_0.x & var_0.x));
    global0 = array<f32, 3>();
    var var_2 = 253f;
    return select(select(var_0, select(select(select(var_0, var_0, var_0), vec3<bool>(var_0.x, true, false), select(var_0, vec3<bool>(var_0.x, true, false), false)), !select(var_0, vec3<bool>(true, true, var_0.x), var_0), var_0), select(vec3<bool>(arg_0.a.x < arg_1, false, var_0.x), vec3<bool>(!var_0.x, true, var_0.x), !any(var_0.zx))), !var_0, var_0.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = ~vec2<i32>(-1i, -(~1i));
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(~(-vec3<i32>(1i, arg_1.c, 2147483647i)), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.a), vec3<i32>(u_input.a, var_0.x, -1i))), true), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, arg_1.c, u_input.b), vec3<i32>(var_0.x, u_input.b, 2147483647i), arg_0.x), vec3<i32>(u_input.a, -1i, 27302i) | vec3<i32>(u_input.b, u_input.b, -62759i)), ~vec3<i32>(41894i, arg_1.c, 24424i)), _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(8191i, 62436i, arg_1.c)), firstLeadingBit(vec3<i32>(u_input.b, -45280i, 1i))) << (vec3<u32>(func_1(arg_0.x, arg_0.x).b.x, arg_1.b.x, _wgslsmith_dot_vec2_u32(arg_1.b.yx, arg_1.b.zy)) % vec3<u32>(32u))), select(min(vec3<i32>(var_0.x, u_input.b, 44895i) & vec3<i32>(u_input.b, u_input.a, var_0.x), min(vec3<i32>(arg_1.c, var_0.x, -7544i), vec3<i32>(2147483647i, var_0.x, 2147483647i) | vec3<i32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, -21390i, max(u_input.b, -22626i)), vec3<i32>(-19866i, arg_1.c, u_input.b) << (arg_1.b % vec3<u32>(32u))), func_4(func_1(arg_0.x, arg_0.x), arg_1.b.x, 346f)));
    let var_2 = arg_1;
    let var_3 = Struct_1(arg_1.b ^ var_2.b, vec2<u32>(1u, 1u));
    var_1 = vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), 0i, var_0.x);
    return _wgslsmith_dot_vec2_u32(~(~var_3.a.zx), ~_wgslsmith_add_vec2_u32(var_2.b.zy, firstLeadingBit(var_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1647f;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(67557u, 3u)], var_0) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-320f, 1332f)) - vec2<f32>(577f, 559f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(187f, var_0), _wgslsmith_f_op_f32(-873f + global0[_wgslsmith_index_u32(28003u, 3u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-827f, var_0)), _wgslsmith_f_op_f32(trunc(var_0)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-554f, 1000f)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - global0[_wgslsmith_index_u32(countOneBits(23309u), 3u)]), _wgslsmith_f_op_f32(-329f * global0[_wgslsmith_index_u32(~4294967295u, 3u)])))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(func_5(func_4(func_1(false, false), ~0u, _wgslsmith_f_op_f32(trunc(var_0))), Struct_2(_wgslsmith_f_op_f32(max(var_0, -1000f)), ~vec3<u32>(15336u, 1u, 0u), u_input.a), _wgslsmith_f_op_f32(-var_0)), 3u)], _wgslsmith_f_op_f32(-1542f - global0[_wgslsmith_index_u32(58389u, 3u)])), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~66313u ^ func_2(vec3<bool>(false, false, false))), 3u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2276u, 3u)] * -1000f))))), -1718f);
    let var_3 = func_1(!all(vec2<bool>(true, true)), false);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.wy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.xz)), _wgslsmith_f_op_vec2_f32(ceil(var_2.yx))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.xy + var_2.yw), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, global0[_wgslsmith_index_u32(4294967295u, 3u)]))))))));
    let x = u_input.a;
    s_output = StorageBuffer(899f, vec4<u32>(_wgslsmith_mod_u32(func_2(vec3<bool>(false, false, true)), 1u), _wgslsmith_add_u32(62031u, reverseBits(68895u)), ~var_3.a.x, firstLeadingBit(~28544u)), vec2<i32>(13755i, u_input.b) >> (var_3.b % vec2<u32>(32u)));
}

