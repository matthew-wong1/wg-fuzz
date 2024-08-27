struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(1155f, 1000f, 1446f), vec3<f32>(-2084f, -864f, -1027f));

var<private> global1: array<f32, 28>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: u32;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec4<bool>) -> bool {
    return !(global2.x | arg_3.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-556f, 1313f, global1[_wgslsmith_index_u32(global4.c, 28u)], 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(global4.c, 28u)], arg_1.x, -753f, global1[_wgslsmith_index_u32(global4.c, 28u)]), vec4<f32>(-1913f, global1[_wgslsmith_index_u32(global4.c, 28u)], arg_1.x, 721f))), vec4<f32>(1301f, 853f, arg_1.x, 201f)))));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 28u)];
    global1 = array<f32, 28>();
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 28u)])), _wgslsmith_f_op_f32(-1428f + arg_1.x), -743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1309f))));
    var var_2 = Struct_1(global4.a, reverseBits(~(-vec3<i32>(global4.b.x, u_input.a, arg_0.x))), _wgslsmith_div_u32(global4.c, 1u));
    return ~abs(~global4.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = -(~_wgslsmith_div_i32(~(~0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -1i, global4.b.x, global4.b.x), vec4<i32>(arg_0.b.x, -19076i, 14914i, global4.b.x))));
    let var_1 = u_input.c;
    let var_2 = Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0.a.x && false, all(vec4<bool>(false, false, global2.x, global2.x)), global2.x), arg_0.b, u_input.c), _wgslsmith_div_f32(1000f, -1000f), arg_0, ~(~1u) > func_3(global4.b, vec3<f32>(-1083f, arg_1.x, 699f)), -vec4<i32>(-36671i, 42114i, -1i, u_input.a) & -_wgslsmith_div_vec4_i32(vec4<i32>(global4.b.x, 1i, u_input.a, arg_0.b.x), vec4<i32>(2147483647i, 0i, -84594i, u_input.b))), Struct_2(arg_0, _wgslsmith_f_op_f32(381f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(!vec3<bool>(arg_0.a.x, global2.x, global4.a.x), ~(vec3<i32>(u_input.b, 46750i, arg_0.b.x) << (vec3<u32>(20001u, arg_0.c, arg_0.c) % vec3<u32>(32u))), arg_0.c), true, _wgslsmith_sub_vec4_i32(min(abs(vec4<i32>(arg_0.b.x, -23603i, -14405i, -1i)), vec4<i32>(arg_0.b.x, 43327i, arg_0.b.x, -1i) >> (vec4<u32>(arg_0.c, 37545u, 27168u, 30172u) % vec4<u32>(32u))), -(vec4<i32>(0i, -10081i, -31649i, u_input.b) ^ vec4<i32>(arg_0.b.x, u_input.b, 1i, u_input.a)))), -_wgslsmith_mod_i32(1i, -30842i));
    let var_3 = var_2.a.e;
    global0 = array<vec3<f32>, 2>();
    return var_2.a;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_2(func_2(func_2(arg_1.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 28u)], global1[_wgslsmith_index_u32(global4.c, 28u)]), vec2<f32>(arg_1.a.b, 966f), global4.a.xx)))).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, arg_1.a.b) - vec2<f32>(arg_1.b.b, 1226f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 28u)], arg_1.b.b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.b, 857f))))).c, arg_1.b.b, arg_1.b.c, !(arg_1.a.c.a.x & (false & global4.a.x)), arg_1.a.e);
    var var_1 = false;
    var var_2 = Struct_3(arg_1.b, func_2(Struct_1(arg_1.a.a.a, _wgslsmith_mod_vec3_i32(var_0.e.wwy, -vec3<i32>(2147483647i, var_0.a.b.x, 44895i)), _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(38451u, arg_1.b.c.c, arg_1.b.a.c))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.b), _wgslsmith_f_op_f32(-741f * arg_1.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], -1000f))))), global4.b.x);
    var_2 = arg_1;
    let var_3 = Struct_2(func_2(Struct_1(vec3<bool>(func_1(true, u_input.b, arg_1, vec4<bool>(var_2.b.d, var_2.a.a.a.x, global4.a.x, global2.x)), arg_1.b.a.a.x, !global2.x), vec3<i32>(-1i, 1i, var_2.c) | ~var_2.b.c.b, 5320u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.b, var_0.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.b, arg_1.b.b), vec2<f32>(448f, global1[_wgslsmith_index_u32(arg_2.x, 28u)]))), u_input.c != arg_2.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(531f, var_0.b))))).c, _wgslsmith_f_op_f32(arg_1.a.b + var_2.a.b), func_2(var_2.a.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.b, var_2.a.b)))))).a, false, firstLeadingBit(arg_1.a.e));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-185f)) - global1[_wgslsmith_index_u32(global4.c, 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 2>();
    let var_0 = Struct_2(Struct_1(vec3<bool>(!global4.a.x & func_1(global2.x, -2147483647i, Struct_3(Struct_2(Struct_1(vec3<bool>(global2.x, false, global4.a.x), vec3<i32>(-46737i, -5504i, global4.b.x), u_input.c), -118f, Struct_1(vec3<bool>(true, global2.x, global4.a.x), global4.b, global4.c), false, vec4<i32>(global4.b.x, 72809i, 2147483647i, u_input.a)), Struct_2(Struct_1(global4.a, global4.b, 46430u), 1326f, Struct_1(vec3<bool>(false, global2.x, false), vec3<i32>(u_input.a, -5625i, -38694i), global4.c), global4.a.x, vec4<i32>(u_input.a, -65452i, u_input.b, 0i)), global4.b.x), vec4<bool>(true, global4.a.x, true, global2.x)), true, global2.x), ~select(~global4.b, global4.b, all(vec4<bool>(true, false, true, false))), ~1u), _wgslsmith_f_op_f32(func_4(global4.c, Struct_3(func_2(Struct_1(vec3<bool>(global4.a.x, global4.a.x, false), global4.b, u_input.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(2284f, -1373f) - vec2<f32>(-431f, -1375f))), func_2(func_2(Struct_1(global4.a, vec3<i32>(global4.b.x, global4.b.x, u_input.b), 24680u), vec2<f32>(960f, global1[_wgslsmith_index_u32(0u, 28u)])).a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(690f, -475f)))), global4.b.x << (~u_input.c % 32u)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, global4.c, u_input.c, u_input.c), ~vec4<u32>(13364u, 42317u, global4.c, 0u))))), func_2(Struct_1(vec3<bool>(true, !global2.x, 27751i == u_input.b), vec3<i32>(u_input.a, reverseBits(-57685i), 60951i), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(6535u, 1u, 4294967295u, u_input.c), vec4<u32>(global4.c, 1u, 4294967295u, global4.c)), select(vec4<u32>(4294967295u, 1u, 1u, 40968u), vec4<u32>(4294967295u, global4.c, global4.c, global4.c), vec4<bool>(false, global4.a.x, global4.a.x, false)))), vec2<f32>(-734f, global1[_wgslsmith_index_u32(~44231u, 28u)])).c, true, vec4<i32>(select(_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(26884i, 2147483647i, global4.b.x, global4.b.x), vec4<i32>(global4.b.x, 1i, 14147i, u_input.b))), ~global4.b.x, all(vec4<bool>(global4.a.x, true, false, true)) || global4.a.x), global4.b.x, -1i, max(-u_input.b, -global4.b.x)));
    var var_1 = Struct_3(Struct_2(var_0.c, _wgslsmith_f_op_f32(select(var_0.b, 329f, u_input.c != (global4.c >> (0u % 32u)))), var_0.a, global4.a.x, -(var_0.e ^ -var_0.e)), func_2(func_2(Struct_1(func_2(var_0.a, vec2<f32>(var_0.b, 1708f)).a.a, abs(vec3<i32>(var_0.a.b.x, -20585i, 1i)), max(12853u, 1254u)), vec2<f32>(1249f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global4.c, 28u)] * var_0.b))).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1000f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(111f, 912f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(835f, global1[_wgslsmith_index_u32(u_input.c, 28u)]), vec2<f32>(433f, global1[_wgslsmith_index_u32(4294967295u, 28u)])))))), 1i);
    var var_2 = func_2(func_2(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -394f), _wgslsmith_f_op_f32(-1383f - _wgslsmith_div_f32(975f, var_0.b)))).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b, var_0.b) * vec2<f32>(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2433f, var_1.b.b), vec2<f32>(var_1.b.b, 188f), vec2<bool>(false, var_1.a.c.a.x))) + vec2<f32>(global1[_wgslsmith_index_u32(23907u, 28u)], var_1.a.b)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(global4.c, 28u)]), 1917f))));
    global1 = array<f32, 28>();
    let var_3 = global1[_wgslsmith_index_u32(~(firstTrailingBit(countOneBits(var_2.c.c)) ^ ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(118141u, var_1.a.c.c), vec2<u32>(var_2.c.c, 31896u)), select(var_2.a.c, 117592u, global2.x))), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b, 2153f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(2046u, 28u)], 1005f) - vec2<f32>(878f, 189f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), var_1.a.e.zwx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-var_0.b))), -1330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b))))));
}

