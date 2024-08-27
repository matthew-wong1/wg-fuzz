struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(1576f, -767f, 339f), 779f, vec4<i32>(i32(-2147483648), 1i, -65609i, -75441i)));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(1000f, -1054f, 676f), -279f, vec4<i32>(41115i, 61795i, i32(-2147483648), i32(-2147483648)));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(-1011f, -948f, -1104f), 1249f, vec4<i32>(51366i, 1i, 28151i, 0i)), Struct_1(vec3<f32>(-1030f, -208f, -480f), -1000f, vec4<i32>(-10695i, 24437i, 30216i, -1i)), Struct_1(vec3<f32>(292f, -1302f, -894f), -1252f, vec4<i32>(6261i, -92546i, -1322i, -38687i)), Struct_1(vec3<f32>(-551f, -746f, 1000f), -1856f, vec4<i32>(2147483647i, 6784i, 11295i, -29977i)), Struct_1(vec3<f32>(-107f, 441f, -262f), -160f, vec4<i32>(0i, 13468i, -8170i, 2147483647i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = 1159f;
    global1 = Struct_1(vec3<f32>(global1.b, global1.b, global1.b), global1.b, global1.c);
    let var_1 = -2147483647i;
    var var_2 = countOneBits(~(~global1.c.xxx));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a * global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1406f, global1.a.x), _wgslsmith_f_op_f32(step(global1.b, -1627f)), _wgslsmith_f_op_f32(f32(-1f) * -1684f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), vec4<i32>(u_input.d, -(~(i32(-1i) * -1i)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(abs(var_2.yx), global1.c.zw)), ~abs(62808i)));
    return 25235u;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(func_3(), 1u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(-1020f, 587f, -398f)) - _wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(-1462f, 935f, 2124f))))) - global1.a), -832f, var_0.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, 126f, var_0.b) + vec3<f32>(400f, 537f, 229f)))) + vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.b, global1.a.x)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(sign(var_1.a)))))), var_1.a.x, max(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(var_0.c, var_1.c), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-42501i, 2147483647i, -1i, 77217i)), global1.c)), max(select(vec4<i32>(global1.c.x, -59535i, -13755i, u_input.d), var_1.c, vec4<bool>(true, true, true, true)), var_1.c)));
    let var_3 = -17967i <= (var_0.c.x >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e.x, 27042u, 32192u), vec4<u32>(u_input.a, 0u, u_input.e.x, 4294967295u)), 84662u) % 32u));
    var_2 = global2[_wgslsmith_index_u32(u_input.a, 5u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(3740f - var_0.a.x), 859f, _wgslsmith_f_op_f32(var_0.a.x - -1898f)) * global1.a)), _wgslsmith_div_f32(-310f, _wgslsmith_f_op_f32(var_1.b - var_2.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, var_0.c.x, firstLeadingBit(2147483647i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(27710i, 44985i, -19053i), vec3<i32>(global1.c.x, 1i, 2147483647i)), _wgslsmith_div_i32(16510i, global1.c.x), -global1.c.x, 1i)), 47904i, ~global1.c.x, ~9790i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.b;
    global1 = func_2();
    let var_1 = func_2();
    let var_2 = firstLeadingBit(global1.c.x) | (_wgslsmith_add_i32(1i >> ((0u >> (0u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.c.x), var_1.c.xw) >> (0u % 32u)) & 2147483647i);
    global1 = global0[_wgslsmith_index_u32(abs(u_input.b), 1u)];
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b & 4294967295u), 1u)])), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, false, true, true), Struct_1(global1.a, -234f, vec4<i32>(global1.c.x, global1.c.x, 2147483647i, -18556i)))), _wgslsmith_f_op_f32(-global1.b)), -663f, true)), -315f, global1.a.x));
    var var_1 = ~func_2().c.x;
    var var_2 = true;
    global2 = array<Struct_1, 5>();
    var var_3 = true;
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.a.xx - _wgslsmith_f_op_vec2_f32(-var_0.ww)), func_2().a.zx) - _wgslsmith_f_op_vec2_f32(select(var_0.yy, var_4.a.zz, vec2<bool>(false, any(vec2<bool>(true, false)))))), -global1.c.xxy, func_2().b, _wgslsmith_div_i32(firstTrailingBit(var_4.c.x), -19093i), u_input.e.x);
}

