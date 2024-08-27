struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
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

var<private> global0: array<i32, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = arg_0;
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = abs(max(min(vec4<i32>(arg_0.b, u_input.b.x, var_0.b, -20243i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_1.c.a, -993i), vec4<i32>(-2147483647i, 2147483647i, arg_0.a, -29889i))) | vec4<i32>(-24701i, 1i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)] ^ arg_0.a, arg_0.a >> (var_0.c.x % 32u)), reverseBits(~vec4<i32>(var_0.a, 2147483647i, var_0.a, -1i))));
    global0 = array<i32, 22>();
    return 52669u;
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<i32, 22>();
    var var_0 = !(_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(11216u, 22u)], 1i, u_input.a), arg_0.b) < ~(-(arg_0.b << (0u % 32u))));
    let var_1 = arg_0;
    var_0 = !((1u >= ~func_3(Struct_1(u_input.a, global0[_wgslsmith_index_u32(arg_0.c.x, 22u)], var_1.c, 4294967295u, vec2<bool>(arg_0.e.x, true)), Struct_2(vec2<f32>(-287f, 167f), var_1.b, Struct_1(u_input.c, 6102i, vec4<u32>(arg_0.d, 4294967295u, u_input.d.x, u_input.d.x), u_input.d.x, var_1.e), u_input.b, var_1.c.x))) & all(vec3<bool>(all(vec4<bool>(arg_0.e.x, false, false, false)), var_1.c.x > u_input.d.x, false)));
    let var_2 = var_1.b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-510f, -422f, 595f, 622f))), vec4<bool>(false, arg_0.e.x, true, var_1.e.x)))));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec2<bool> {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(countOneBits(select(-1i, u_input.b.x, false)), firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, global0[_wgslsmith_index_u32(46227u, 22u)])))), ~(~(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, 0u))), ~(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), arg_1.x | arg_0) & arg_0), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-817f)), arg_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 1294f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_2.x)))), 1543f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 271f, 293f, arg_2.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(var_0))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)), -168f), _wgslsmith_f_op_f32(trunc(arg_2.x)), arg_2.x, arg_2.x)));
    var var_2 = var_0.e.x;
    return select(select(!vec2<bool>(select(true, false, var_0.e.x), var_0.e.x), vec2<bool>(var_0.e.x, any(vec4<bool>(true, true, true, var_0.e.x))), select(select(!var_0.e, !vec2<bool>(true, var_0.e.x), var_0.e.x), !vec2<bool>(var_0.e.x, false), (var_0.d > arg_1.x) || var_0.e.x)), select(select(vec2<bool>(all(vec3<bool>(true, var_0.e.x, var_0.e.x)), any(vec3<bool>(false, var_0.e.x, false))), var_0.e, var_0.e.x), var_0.e, vec2<bool>(false, var_0.e.x | true)), true);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))))), -2147483647i, arg_3.c, ~(firstLeadingBit(~arg_3.b.yx) & _wgslsmith_mult_vec2_i32(~vec2<i32>(2147483647i, -25408i), firstLeadingBit(vec2<i32>(u_input.b.x, 1i)))), ~_wgslsmith_clamp_u32(~abs(arg_3.c.c.x), ~abs(9724u), _wgslsmith_div_u32(1u, 59203u)));
    global0 = array<i32, 22>();
    var var_1 = var_0;
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_0.a.x) * var_1.a), global0[_wgslsmith_index_u32(1u, 22u)], var_1.c, vec2<i32>(abs(select(reverseBits(var_0.b), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_3.c.d, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), var_1.d), false)), -(var_0.c.b ^ abs(-71104i))), 4294967295u);
    var_1 = var_0;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(~(u_input.c >> (30921u % 32u))), ~abs(_wgslsmith_mult_i32(u_input.a, var_1.c.b)), var_1.d.x, ~arg_3.c.b), ~arg_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(304f, -603f, -407f))), vec3<f32>(364f, -522f, 1f)), !select(func_1(u_input.d.x, vec3<u32>(4294967295u, 4294967295u, u_input.d.x), vec3<f32>(-320f, -782f, 610f)), func_1(4294967295u, vec3<u32>(u_input.d.x, 62543u, 46857u), vec3<f32>(-443f, 1604f, -199f)), all(vec3<bool>(false, true, false))), true, Struct_3(u_input.d.x < ~6513u, max(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 1i, 2084i, global0[_wgslsmith_index_u32(1u, 22u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], 0i, 0i, global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), min(vec4<i32>(44820i, 22708i, 1i, -2147483647i), vec4<i32>(u_input.c, 0i, 2147483647i, global0[_wgslsmith_index_u32(94007u, 22u)]))), Struct_1(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(3934u, 22u)], u_input.c), -55356i & global0[_wgslsmith_index_u32(u_input.d.x, 22u)], _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 76613u, 2869u, u_input.d.x), vec4<u32>(u_input.d.x, 44808u, 41134u, 1u)), ~u_input.d.x, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = -_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(~var_0.wxw, -vec3<i32>(-1i, 17612i, 39568i)), vec3<i32>(~(-35315i), 0i, _wgslsmith_dot_vec3_i32(var_0.zyz, vec3<i32>(50352i, -25732i, u_input.b.x))) << (vec3<u32>(u_input.d.x, 14550u, ~32247u) % vec3<u32>(32u)));
    var var_2 = Struct_3(true, countOneBits(vec4<i32>(-71886i, -26746i, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), u_input.d.x), 22u)], -2147483647i)), Struct_1(global0[_wgslsmith_index_u32(~1u, 22u)], ~func_4(vec3<f32>(386f, -255f, 412f), vec2<bool>(true, true), true, Struct_3(false, vec4<i32>(var_1.x, var_1.x, u_input.b.x, -3402i), Struct_1(2147483647i, 2147483647i, vec4<u32>(u_input.d.x, 28747u, 0u, u_input.d.x), u_input.d.x, vec2<bool>(true, true)))).x, abs(countOneBits(vec4<u32>(18821u, u_input.d.x, 52469u, u_input.d.x))), ~85015u, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = array<i32, 22>();
    var var_3 = select(var_0.x, ~(-1i), true) | (-1i | _wgslsmith_add_i32(~_wgslsmith_sub_i32(-2147483647i, u_input.c), i32(-1i) * -global0[_wgslsmith_index_u32(u_input.d.x, 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(22063u);
}

