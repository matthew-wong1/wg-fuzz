struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 16>;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<i32>(9678i, -1i), false), Struct_1(vec2<i32>(23673i, 0i), false), Struct_1(vec2<i32>(0i, -44666i), false), Struct_1(vec2<i32>(1i, -23742i), true), Struct_1(vec2<i32>(-3308i, -1i), false), Struct_1(vec2<i32>(32047i, 0i), false));

var<private> global2: array<i32, 19>;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(max(arg_0.c, -1329f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1408f + 1275f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(928f)) * _wgslsmith_f_op_f32(floor(-1600f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2133f, 501f, 1322f, arg_0.c), vec4<f32>(2578f, arg_0.c, -830f, arg_0.c)), _wgslsmith_div_vec4_f32(vec4<f32>(1244f, -833f, arg_0.c, -1000f), vec4<f32>(-345f, 655f, -610f, -180f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -2164f, arg_0.c, -936f) - vec4<f32>(-1986f, arg_0.c, arg_0.c, arg_0.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1133f, -2272f, 821f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -1322f, arg_0.c, -901f)), vec4<f32>(arg_0.c, -869f, arg_0.c, 2084f), u_input.b.x < u_input.b.x)))));
    var var_2 = Struct_1(countOneBits(u_input.a.xz), (u_input.b.x >= ~select(u_input.b.x, 4294967295u, true)) == false);
    let var_3 = Struct_2(max(1u, 0u), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.b, -global2[_wgslsmith_index_u32(arg_0.a, 19u)], arg_0.b, -59941i), vec4<i32>(_wgslsmith_mod_i32(~(-2147483647i), abs(-26290i)), _wgslsmith_sub_i32(-17594i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(-11265i, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), 2147483647i, 1i)), arg_0.c, vec4<u32>(1u, 0u, ~(~28374u), _wgslsmith_sub_u32(arg_0.d.x << (arg_0.d.x % 32u), 47350u)), var_0);
    let var_4 = _wgslsmith_mod_vec3_i32(-(~min(vec3<i32>(-9063i, 1706i, 0i), ~vec3<i32>(arg_0.b, u_input.c, var_2.a.x))), ~_wgslsmith_mult_vec3_i32(-select(vec3<i32>(-67345i, 12110i, var_2.a.x), u_input.a, vec3<bool>(true, true, var_2.b)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, u_input.a), vec3<i32>(var_2.a.x, var_2.a.x, 2147483647i), min(u_input.a, vec3<i32>(arg_0.b, -1236i, 2147483647i)))));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(20408u, 0u, 41020u), reverseBits(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.d.x, 8542u, 76450u), arg_0.d.yxy, var_0), select(u_input.b.xwy, vec3<u32>(var_3.d.x, var_3.a, 1u), global3[_wgslsmith_index_u32(1u, 28u)]))));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec4<i32> {
    global2 = array<i32, 19>();
    let var_0 = func_3(arg_1);
    var var_1 = arg_1.d;
    global0 = array<vec2<i32>, 16>();
    let var_2 = arg_2.b;
    return (abs(~(-vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 19u)], arg_2.a.x, 53834i, arg_2.a.x))) | vec4<i32>(2147483647i, 0i, 2147483647i, arg_1.b)) >> (((select(~vec4<u32>(var_0.x, 4294967295u, arg_3, 4294967295u), vec4<u32>(4649u, u_input.b.x, 4294967295u, 6411u), !var_2) | countOneBits(vec4<u32>(11970u, var_1.x, arg_1.d.x, arg_1.a))) & vec4<u32>(u_input.b.x, (u_input.b.x >> (arg_1.a % 32u)) | max(0u, 1u), 1u, max(u_input.b.x, abs(27927u)))) % vec4<u32>(32u));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) - _wgslsmith_f_op_f32(f32(-1f) * -1641f)))) - -339f));
    let var_1 = -vec4<i32>(reverseBits(-1941i), reverseBits(global2[_wgslsmith_index_u32(19811u, 19u)] | global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), abs(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(109718u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)])), countOneBits(_wgslsmith_mult_i32(-3007i, global2[_wgslsmith_index_u32(u_input.b.x, 19u)]))) & _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~func_2(0i, Struct_2(34829u, 0i, var_0, vec4<u32>(4294967295u, 40737u, u_input.b.x, 1u), true), global1[_wgslsmith_index_u32(u_input.b.x, 6u)], 78805u), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, u_input.c, global2[_wgslsmith_index_u32(60739u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<i32>(global2[_wgslsmith_index_u32(45019u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)], 2147483647i))), _wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(1u, 19u)], u_input.a.x, global2[_wgslsmith_index_u32(56879u, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]) | _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 18267i, 0i, global2[_wgslsmith_index_u32(24465u, 19u)]), vec4<i32>(u_input.a.x, -11967i, 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 19u)])), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(18220u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, -5579i, u_input.c, 36882i))), func_2(func_2(-global2[_wgslsmith_index_u32(13911u, 19u)], Struct_2(4294967295u, 0i, var_0, u_input.b, true), Struct_1(u_input.a.xz, false), min(1u, 6069u)).x, Struct_2(reverseBits(0u), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), var_0, vec4<u32>(4294967295u, 40727u, u_input.b.x, 6292u), true), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-32426i, 14696i), global0[_wgslsmith_index_u32(23784u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), false), u_input.b.x));
    let var_2 = abs(_wgslsmith_dot_vec3_u32(u_input.b.wyw & vec3<u32>(u_input.b.x, u_input.b.x & u_input.b.x, countOneBits(52862u)), ~vec3<u32>(4294967295u, 41904u << (u_input.b.x % 32u), u_input.b.x ^ 14365u)));
    var var_3 = true;
    return Struct_2(_wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), -1318i, var_0, vec4<u32>(~(0u << (u_input.b.x % 32u)) ^ (~0u >> (_wgslsmith_sub_u32(u_input.b.x, 5426u) % 32u)), _wgslsmith_add_u32(func_3(Struct_2(u_input.b.x, 8748i, -1000f, vec4<u32>(var_2, 36936u, var_2, u_input.b.x), false)).x, firstTrailingBit(~1u)), _wgslsmith_div_u32(u_input.b.x, 103561u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 6836u, 117449u), u_input.b.yzz)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -407f);
    var var_2 = func_1();
    let var_3 = Struct_1(~(~(~func_2(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_2(20521u, u_input.c, var_1, var_2.d, var_2.e), Struct_1(vec2<i32>(var_2.b, u_input.a.x), var_2.e), u_input.b.x).zx)), select(!func_1().e, var_2.e, all(global3[_wgslsmith_index_u32(u_input.b.x, 28u)])));
    var_2 = func_1();
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x);
}

