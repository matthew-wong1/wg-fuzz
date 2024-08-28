struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: array<i32, 23> = array<i32, 23>(22184i, -43440i, 1i, i32(-2147483648), -1201i, 18744i, -1i, 0i, -28916i, 6731i, -1i, i32(-2147483648), -4013i, 0i, 2147483647i, 27543i, 35772i, -13793i, -35479i, 1i, 33318i, -1i, 70968i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = countOneBits(-2147483647i);
    let var_1 = arg_1;
    let var_2 = arg_0;
    var var_3 = 10440i;
    var var_4 = -_wgslsmith_dot_vec4_i32(vec4<i32>(51768i, var_0, -1i << (~4294967295u % 32u), global1[_wgslsmith_index_u32(var_2.a, 23u)]), ~(-vec4<i32>(global1[_wgslsmith_index_u32(0u, 23u)], arg_0.c, u_input.a, u_input.a) & vec4<i32>(-41694i, arg_0.c, arg_0.c, 1i)));
    return !arg_1.b.x;
}

fn func_2(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(false, select(arg_0.b, select(vec3<bool>(func_3(Struct_2(u_input.c, 1589f, global1[_wgslsmith_index_u32(u_input.d, 23u)]), arg_0), true, true), arg_0.b, (73936u == u_input.c) & all(vec4<bool>(false, true, false, true))), any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 18u)], true), select(arg_0.b.xx, vec2<bool>(global0[_wgslsmith_index_u32(1u, 18u)], arg_0.b.x), false), arg_0.b.zy))));
    var var_1 = vec3<bool>(true, true, var_0.b.x);
    let var_2 = !var_0.b.zy;
    let var_3 = Struct_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-367f, _wgslsmith_f_op_f32(f32(-1f) * -1668f)))) * -551f), _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, u_input.a)));
    let var_4 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.b, -1628f, var_3.b), vec3<f32>(-1382f, -1000f, -691f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, -1080f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.b, var_3.b, var_3.b))), vec3<f32>(_wgslsmith_f_op_f32(var_3.b - var_3.b), var_3.b, _wgslsmith_div_f32(355f, -208f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-var_3.b), 294f, _wgslsmith_f_op_f32(max(var_3.b, var_3.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    global1 = array<i32, 23>();
    global0 = array<bool, 18>();
    global1 = array<i32, 23>();
    let var_0 = Struct_2(u_input.d & u_input.d, 215f, _wgslsmith_div_i32(arg_2, arg_2));
    global0 = array<bool, 18>();
    return arg_1.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<i32, 23>();
    let var_0 = 38995u;
    global0 = array<bool, 18>();
    global0 = array<bool, 18>();
    global1 = array<i32, 23>();
    return Struct_2(_wgslsmith_div_u32(45609u, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(false, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d, 18u)], false, false)), _wgslsmith_f_op_vec3_f32(func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.d, 18u)], vec3<bool>(global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(10242u, 18u)], true)))), _wgslsmith_mod_i32(arg_0.x, 9008i), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0, 18u)], true, false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0, 18u)]), global0[_wgslsmith_index_u32(var_0, 18u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1597f))) + 1242f), select(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(2884u, 23u)], -42204i, -1i), u_input.b | vec3<i32>(global1[_wgslsmith_index_u32(var_0, 23u)], arg_0.x, arg_0.x)), 0i, any(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_0, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]), global0[_wgslsmith_index_u32(var_0 << (1u % 32u), 18u)]))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> i32 {
    var var_0 = -2315f;
    let var_1 = -470f;
    var var_2 = 1i;
    let var_3 = _wgslsmith_clamp_vec3_i32(u_input.b, ~u_input.b, _wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-1i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.c, 23u)], 24876i), i32(-1i) * -2147483647i) >> (vec3<u32>(28543u >> (1u % 32u), 28860u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, u_input.d, 7389u, 28188u), vec4<u32>(4294967295u, 1u, u_input.c, u_input.c))) % vec3<u32>(32u))));
    let var_4 = !arg_1;
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(3355i, 14087i, arg_2.c, var_3.x))), firstLeadingBit(vec4<i32>(-57206i, -8867i, -1i, 1i) | vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(arg_2.a, 23u)], arg_2.c, global1[_wgslsmith_index_u32(1u, 23u)]))) & -2411i, global1[_wgslsmith_index_u32(67117u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.d, u_input.c, ~_wgslsmith_mod_u32(firstTrailingBit(1u), u_input.d));
    var var_1 = vec4<i32>(~(~min(global1[_wgslsmith_index_u32(48375u, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)])), u_input.a, _wgslsmith_mod_i32(-10276i, global1[_wgslsmith_index_u32(u_input.d, 23u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(36574i, -36621i, global1[_wgslsmith_index_u32(u_input.d, 23u)], 1i), -vec4<i32>(global1[_wgslsmith_index_u32(28146u, 23u)], u_input.b.x, 2147483647i, -2147483647i)) | func_5(global0[_wgslsmith_index_u32(~4294967295u, 18u)], true, func_1(u_input.b.zy), true && global0[_wgslsmith_index_u32(0u, 18u)])) >> (abs(~reverseBits(~vec4<u32>(u_input.d, 6581u, u_input.d, 2804u))) % vec4<u32>(32u));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(1u, 18u)], !(!vec3<bool>(global0[_wgslsmith_index_u32(~var_0.x, 18u)], true, true)));
    let var_3 = Struct_1((-438f != func_1(vec2<i32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)])).b) || true, var_2.b);
    var_0 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(58217u, ~(~u_input.c), 1u), _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.c, u_input.c, 4294967295u)), vec3<u32>(u_input.c << (28645u % 32u), var_0.x, var_0.x))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, u_input.d)), vec3<u32>(35047u | var_0.x, abs(var_0.x), ~125367u)) | ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, u_input.d), vec3<u32>(var_0.x, u_input.d, u_input.d))), global0[_wgslsmith_index_u32(u_input.c, 18u)]);
    let var_4 = Struct_2(~1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -394f)))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~(vec4<i32>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.c, 23u)], global1[_wgslsmith_index_u32(16170u, 23u)]) << (vec4<u32>(u_input.c, var_0.x, u_input.c, 0u) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_1.x, -1i, -16664i), vec4<i32>(-1i, -30713i, u_input.b.x, u_input.b.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(26376i, -21107i, 2147483647i), var_1.x, -var_1.x, global1[_wgslsmith_index_u32(~var_0.x, 23u)]), vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_0.x, 23u)], 7175i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], 43559i, -2147483647i), vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(1356u, 23u)], var_1.x, -1i)), -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-49992i, 1i) >> (var_0.zx % vec2<u32>(32u)), 0u, _wgslsmith_dot_vec4_u32((max(vec4<u32>(21343u, 73031u, 37841u, var_0.x), vec4<u32>(var_4.a, u_input.c, 79186u, 35882u)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(48883u, 1u, 92182u, 34303u), vec4<u32>(var_0.x, var_0.x, 103932u, 123894u))) << (vec4<u32>(4294967295u, ~4294967295u, var_4.a, firstTrailingBit(5763u)) % vec4<u32>(32u)), abs(~vec4<u32>(0u, 0u, var_0.x, u_input.d))), vec2<u32>(~4294967295u >> (_wgslsmith_mod_u32(~var_0.x, abs(4460u)) % 32u), _wgslsmith_div_u32(21660u, ~_wgslsmith_mod_u32(u_input.c, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(373f, _wgslsmith_f_op_f32(-var_4.b))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, 359f)))))));
}

