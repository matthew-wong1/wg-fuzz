struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32;

var<private> global2: bool = true;

var<private> global3: array<Struct_3, 28>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> vec4<f32> {
    global1 = 16468u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1596f), -560f, _wgslsmith_f_op_f32(trunc(-294f)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global2 = arg_0.x;
    global3 = array<Struct_3, 28>();
    global0 = vec4<i32>(-2147483647i, min(global0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-12018i, 2147483647i, u_input.c.x, global0.x)), -vec4<i32>(847i, u_input.c.x, u_input.b, -1i)), _wgslsmith_add_vec4_i32(max(vec4<i32>(-50117i, -1i, -2147483647i, global0.x), vec4<i32>(global0.x, u_input.b, -1i, global0.x)), ~vec4<i32>(1081i, 1i, u_input.c.x, u_input.b)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0.yxx, select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, global0.x, 1i), u_input.a), ~vec3<i32>(-18789i, 12910i, u_input.c.x), arg_0.x)), u_input.b), _wgslsmith_div_i32(global0.x, max(-abs(u_input.b), ~u_input.a.x)));
    global0 = -(~firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.b, global0.x), vec4<i32>(0i, global0.x, -18495i, -38228i))));
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(-2885i), _wgslsmith_mod_i32(22805i, (u_input.b << (30713u % 32u)) ^ global0.x), _wgslsmith_add_i32(abs(global0.x), -(~1i)), abs(u_input.a.x)), -min(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, global0.zyz), 0i | global0.x, -34426i, global0.x ^ u_input.c.x), -vec4<i32>(1i, 0i, 63128i, 42308i)));
    return 26045u;
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(var_0));
    global2 = true;
    global3 = array<Struct_3, 28>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1), var_1, !vec4<bool>(false, false, arg_0.x, false)))), vec2<u32>(1u, 1u) << (select(~vec2<u32>(25766u, 1u), select(select(vec2<u32>(66335u, 1u), vec2<u32>(102713u, 86307u), vec2<bool>(arg_0.x, true)), vec2<u32>(44881u, 0u), vec2<bool>(true, arg_0.x)), arg_0.x) % vec2<u32>(32u)), ~(func_3(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), -312f) | _wgslsmith_div_u32(~43724u, 9473u)));
    return !select(select(!select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, false, arg_0.x), arg_0.x), vec3<bool>(all(arg_0), true, !arg_0.x), select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, true, true), !vec3<bool>(true, false, arg_0.x))), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, arg_0.x && true, arg_0.x), select(false, false, arg_0.x)), select(select(select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(true, true, arg_0.x)), !vec3<bool>(true, arg_0.x, arg_0.x), true), select(vec3<bool>(true, false, arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x), true), arg_0.x || true), vec3<bool>(arg_0.x, false, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(478f, arg_1.a.x) - vec2<f32>(854f, arg_1.a.x)), vec2<f32>(1000f, arg_1.a.x))), vec2<f32>(119f, _wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.yy)), arg_1.a), arg_1.b);
    let var_1 = select(func_1(arg_0.zz), !func_1(vec2<bool>(!arg_0.x, arg_0.x)), !arg_0);
    let var_2 = ~vec2<u32>(~countOneBits(1u), ~_wgslsmith_div_u32(1u, ~0u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -1000f, var_0.a.x, var_0.a.x)))) - vec4<f32>(_wgslsmith_f_op_f32(895f - arg_1.a.x), _wgslsmith_f_op_f32(-1107f - var_0.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(step(var_0.a.x, 1572f)))))), var_2, 43759u << (_wgslsmith_add_u32(0u, countOneBits(_wgslsmith_add_u32(10839u, var_2.x))) % 32u));
    var var_4 = var_3.a;
    return !select(vec4<bool>(!any(arg_0.zz), true, var_1.x, u_input.a.x >= -8771i), !select(select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x), var_1.x), vec4<bool>(false, false, arg_0.x, false), arg_0.x), vec4<bool>(arg_0.x, !func_1(var_1.zx).x, var_1.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(vec3<bool>(all(func_1(vec2<bool>(false, false))), func_1(vec2<bool>(true, true)).x, false), !vec3<bool>(false, all(vec3<bool>(false, true, false)), true), !(true || any(vec2<bool>(false, false)))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(170f, 549f) + vec2<f32>(1017f, 429f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, 1000f)))), vec2<i32>(_wgslsmith_div_i32(~(-51832i), global0.x), u_input.b)));
    var_0 = func_4(func_1(!(!(!var_0.xx))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec4_f32(func_2()).yx, vec2<f32>(1f, 1f)), global0.ww));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2()).x;
    var_0 = select(func_4(vec3<bool>(true, true, var_0.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 20172u, 0u), countOneBits(vec3<u32>(1u, 32664u, 1562u))) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(89743u, 22563u)), 28u)]), func_4(!var_0.wyx, global3[_wgslsmith_index_u32(abs(~66812u), 28u)]), false);
    global0 = ~(vec4<i32>(_wgslsmith_div_i32(global0.x & 2147483647i, _wgslsmith_mult_i32(-16612i, global0.x)), ~2147483647i, -1i, _wgslsmith_div_i32(~1i, -2147483647i)) | -vec4<i32>(max(2147483647i, 0i), global0.x, global0.x ^ u_input.c.x, u_input.c.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()).x)), -452f)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-42788i, -2147483647i), u_input.a.yy), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global0.x, global0.x), u_input.a)));
}

