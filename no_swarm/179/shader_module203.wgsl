struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(89758u, 0u, 20477u, 4294967295u, 80609u, 4294967295u, 1u, 66527u, 15819u, 2044u, 1u, 4294967295u, 4294967295u, 0u, 1u, 4294967295u, 51193u);

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, true, true, false, true, false, true, false, false, false, false, true, false, false, false, true, true);

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4294967295u, 41188u, 1u, 101728u), vec4<u32>(4294967295u, 0u, 28015u, 18353u), vec4<u32>(25702u, 0u, 4294967295u, 4294967295u), vec4<u32>(83679u, 4294967295u, 63696u, 1u), vec4<u32>(4294967295u, 109678u, 4294967295u, 8415u), vec4<u32>(61112u, 0u, 10135u, 0u), vec4<u32>(42004u, 40907u, 83956u, 21874u));

var<private> global3: vec3<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(firstTrailingBit(6117u), 7u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 7u)]);
    let var_1 = !arg_0.yw;
    var var_2 = var_1.x;
    global2 = array<vec4<u32>, 7>();
    global0 = array<u32, 17>();
    return global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(countOneBits(~(~4294967295u)), u_input.a & ~_wgslsmith_mult_u32(u_input.a, var_0.x)), 17u)];
}

fn func_3(arg_0: vec3<i32>) -> vec3<u32> {
    let var_0 = vec2<f32>(-414f, global3.x);
    let var_1 = select(vec4<u32>(52283u, global0[_wgslsmith_index_u32(~u_input.a ^ _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(u_input.a, 17u)]), 17u)]), 17u)], ~(u_input.a ^ 44325u), (0u >> (1u % 32u)) << ((~global0[_wgslsmith_index_u32(27767u, 17u)] >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24263u, 17u)], 17u)], 47082u) % 32u)) % 32u)), max(_wgslsmith_add_vec4_u32(max(~vec4<u32>(4294967295u, 22200u, u_input.a, 35571u), ~global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 7u)]), ~select(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22148u, 17u)], 22u)]))), ~vec4<u32>(~1u, abs(1u), 1u, u_input.a)), all(!(!(!vec2<bool>(global1[_wgslsmith_index_u32(55501u, 22u)], global1[_wgslsmith_index_u32(7157u, 22u)])))));
    return var_1.wzw & ~_wgslsmith_sub_vec3_u32(select(var_1.xzx, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 13021u, var_1.x), var_1.zyw, var_1.yxz), global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<u32>(~global0[_wgslsmith_index_u32(var_1.x, 17u)], var_1.x, reverseBits(global0[_wgslsmith_index_u32(1u, 17u)])));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = ~1u;
    global1 = array<bool, 22>();
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(654f, 489f, 355f), vec3<bool>(false, true, arg_3.x))) + arg_0.b)))));
    global1 = array<bool, 22>();
    let var_1 = vec4<u32>(arg_1.x, ~arg_1.x, reverseBits(~countOneBits(select(52591u, u_input.a, arg_0.a.a))), _wgslsmith_add_u32(~reverseBits(4294967295u), arg_1.x) << (1u % 32u));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b)) * _wgslsmith_f_op_vec3_f32(ceil(arg_0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(943f, arg_0.b.x, -837f) + vec3<f32>(-276f, -809f, -739f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, arg_0.b.x, 1000f) * vec3<f32>(global3.x, arg_0.b.x, 470f)) + arg_0.b)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(select(-18268i, -40835i, false), -30767i) >= arg_1.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(arg_1.b));
    global2 = array<vec4<u32>, 7>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(arg_2.a, _wgslsmith_mult_vec3_u32(func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 21776i, arg_2.c), vec3<i32>(arg_1.e, arg_1.e, arg_1.e))), ~(~vec3<u32>(u_input.a, arg_2.a.c.x, global0[_wgslsmith_index_u32(arg_2.d.c.x, 17u)]))) << (vec3<u32>(29079u, arg_2.d.c.x, 4294967295u) % vec3<u32>(32u)), 50588u, select(arg_2.b, !arg_2.b, select(!vec4<bool>(true, false, arg_1.a.a, arg_2.b.x), vec4<bool>(arg_2.b.x, false, var_0.a, !arg_2.b.x), !(!arg_2.d.d.a)))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, 1825f, var_1.x))) - _wgslsmith_div_vec3_f32(var_1, arg_1.b)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, 326f, -1068f))))))));
    return ((firstLeadingBit(~vec3<u32>(u_input.a, 0u, 4294967295u)) << ((firstTrailingBit(vec3<u32>(4294967295u, 0u, u_input.a)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(33250u, 0u, arg_2.a.c.x), vec3<u32>(32801u, u_input.a, u_input.a))) % vec3<u32>(32u))) ^ vec3<u32>(_wgslsmith_clamp_u32(22871u, arg_1.c.x, abs(4294967295u)), _wgslsmith_mult_u32(~4294967295u, ~27546u), ~(1u >> (u_input.a % 32u)))) >> (func_3(_wgslsmith_add_vec3_i32(~vec3<i32>(-2542i, arg_2.c, 1i), -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -38624i, arg_1.e), vec3<i32>(arg_2.a.e, arg_2.d.e, 66578i)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~(-(~_wgslsmith_div_i32(28328i, 2147483647i))));
    var var_1 = vec4<u32>(42911u, func_1(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 17u)]), 22u)], !global1[_wgslsmith_index_u32(58431u, 22u)], all(vec4<bool>(true, true, false, true)), false)), ~global0[_wgslsmith_index_u32(4294967295u, 17u)], ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 17u)], 17u)]) << (52502u % 32u)) ^ (global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.a, 17u)], 7u)] ^ vec4<u32>(u_input.a, max(~1u, ~0u), ~(~61193u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 45242u, global0[_wgslsmith_index_u32(u_input.a, 17u)]), func_2(1151f, Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<f32>(1180f, global3.x, global3.x), vec2<u32>(u_input.a, u_input.a), Struct_1(false), -5991i), Struct_3(Struct_2(Struct_1(false), vec3<f32>(1140f, -265f, 288f), vec2<u32>(u_input.a, 4294967295u), Struct_1(global1[_wgslsmith_index_u32(1876u, 22u)]), -1i), vec4<bool>(global1[_wgslsmith_index_u32(86034u, 22u)], global1[_wgslsmith_index_u32(84387u, 22u)], false, global1[_wgslsmith_index_u32(1u, 22u)]), 1i, Struct_2(Struct_1(true), vec3<f32>(global3.x, 1000f, global3.x), vec2<u32>(u_input.a, 38305u), Struct_1(global1[_wgslsmith_index_u32(22659u, 22u)]), 2147483647i))))));
    var_0 = -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-13045i, 35529i, -55406i), vec3<i32>(-1i, 18571i, 21075i)), -vec3<i32>(1i, 1i, 1i)), min(-_wgslsmith_add_vec3_i32(vec3<i32>(-47036i, 22427i, 7466i), vec3<i32>(-1i, 21163i, 13746i)), select(vec3<i32>(-1i, -87848i, -10297i), vec3<i32>(14948i, -1i, 0i), vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.x, 17u)], 22u)], true, global1[_wgslsmith_index_u32(16000u, 22u)])) & -vec3<i32>(-2147483647i, -20110i, -42529i)));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(-32284i, -7833i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, 1i), -abs(_wgslsmith_mod_i32(-2147483647i, -6491i))), 2147483647i, ~(-44887i));
    var var_3 = var_2.xx;
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-461f, -769f, 138f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1056f, global3.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, -1000f, global3.x), vec3<f32>(global3.x, -1572f, global3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, global3.x) - vec3<f32>(837f, -862f, global3.x)))))), global1[_wgslsmith_index_u32(1u, 22u)]));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<f32>(-2868f, -351f, -1367f), var_1.wy, Struct_1(global1[_wgslsmith_index_u32(6906u, 22u)]), -2147483647i), _wgslsmith_div_vec3_u32(var_1.xwy, vec3<u32>(18140u, 31072u, u_input.a)), var_1.x, vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)]))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 787f, -212f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1063f, global3.x, 414f) + vec3<f32>(global3.x, 1170f, -1569f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, 1000f), vec3<f32>(1902f, 1091f, 2795f), vec3<bool>(global1[_wgslsmith_index_u32(68274u, 22u)], true, false))))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(floor(-118f))), _wgslsmith_f_op_f32(f32(-1f) * -410f), 463f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1439f - global3.x)) - _wgslsmith_f_op_f32(-861f + _wgslsmith_f_op_f32(abs(-137f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x)))), _wgslsmith_f_op_f32(max(global3.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-332f * -672f), -392f), 1000f))), _wgslsmith_f_op_vec2_f32(-global3.yy), countOneBits(-1i));
}

