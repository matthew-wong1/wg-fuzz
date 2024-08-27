struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = array<i32, 3>();
    let var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -4094i, 2147483647i), _wgslsmith_mod_vec3_i32(~vec3<i32>(23089i, -11972i, 0i), ~reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b, 3u)] << (u_input.c % 32u);
    let var_2 = _wgslsmith_mult_i32(-2147483647i, -var_0);
    let var_3 = Struct_4(select(select(any(vec3<bool>(true, false, true)), select(true, true, false), true), abs(17452u) == reverseBits(u_input.b), any(vec4<bool>(true, true, true, true))) || false, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1075f, -1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-466f, -438f), vec2<f32>(1072f, 387f))))) * vec2<f32>(_wgslsmith_f_op_f32(max(1000f, 998f)), _wgslsmith_f_op_f32(select(-678f, 905f, false)))), 440f), Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -110f))), vec2<f32>(-995f, 1395f), _wgslsmith_div_f32(448f, _wgslsmith_f_op_f32(f32(-1f) * -770f))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 34144u) >> (u_input.a.yz % vec2<u32>(32u)), abs(vec2<u32>(u_input.b, u_input.b))) | 0u, Struct_2(select(true, false, false) | true)), vec3<f32>(628f, _wgslsmith_f_op_f32(min(571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(649f))))), _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    global0 = array<i32, 3>();
    var var_0 = func_3();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(arg_0 - arg_3), false)))), _wgslsmith_f_op_f32(f32(-1f) * -1534f), 375f));
    let var_2 = Struct_2(true);
    global0 = array<i32, 3>();
    return Struct_1(arg_0, vec2<f32>(_wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + arg_3), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, arg_0)) - arg_0))), _wgslsmith_f_op_f32(floor(arg_2.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> bool {
    var var_0 = 1u;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(-arg_1.a.a);
    let var_3 = Struct_3(func_2(-1297f, firstLeadingBit(vec3<i32>(0i, 1i, arg_3)), vec2<f32>(-1795f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.a.c, -336f)))), _wgslsmith_f_op_f32(-741f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -989f) + _wgslsmith_f_op_f32(-arg_1.a.b.x)))), arg_0.x, Struct_2(var_1.c.a));
    let var_4 = var_1.c;
    return func_3();
}

fn func_1() -> u32 {
    global0 = array<i32, 3>();
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(~(-11006i >> (firstLeadingBit(u_input.b) % 32u)), global0[_wgslsmith_index_u32(u_input.b, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)]), abs(vec3<i32>(-(~global0[_wgslsmith_index_u32(u_input.c, 3u)]), ~select(4742i, -1i, false), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, 4294967295u), vec3<u32>(u_input.b, 32876u, 35581u)), 3u)])));
    global0 = array<i32, 3>();
    let var_1 = true && func_4(~(~u_input.a.zw), Struct_3(func_2(1f, vec3<i32>(-10026i, var_0.x, -2147483647i), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1358f, -383f))), 966f), ~(~u_input.b), Struct_2(false)), _wgslsmith_clamp_u32(u_input.a.x >> (u_input.a.x % 32u), 0u, ~59329u) | 1u, 0i);
    var var_2 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), -249f, !(_wgslsmith_sub_i32(var_0.x, 0i) >= _wgslsmith_sub_i32(var_0.x, 38735i)))), vec3<i32>(~global0[_wgslsmith_index_u32(~u_input.c, 3u)], global0[_wgslsmith_index_u32(~u_input.a.x, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, select(u_input.a.zz, u_input.a.xw, vec2<bool>(false, false))) << (4294967295u % 32u), 3u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1520f, 388f)) + vec2<f32>(-830f, 240f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-592f, 491f))) + vec2<f32>(-612f, 1870f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1551f - -2216f)))));
    return 14959u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, u_input.c), u_input.b), abs(reverseBits(u_input.c)));
    let var_1 = min(54426u, ~func_1());
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((u_input.b >> (~var_1 % 32u)) & (u_input.c << (var_1 % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c) >> (u_input.a.xz % vec2<u32>(32u)), u_input.a.xx)));
}

