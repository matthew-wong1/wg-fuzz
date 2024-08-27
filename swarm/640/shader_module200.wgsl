struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 1> = array<f32, 1>(-357f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2536f, _wgslsmith_f_op_f32(floor(119f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 1u)]))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.c.x, 1u)] * -1100f), _wgslsmith_div_f32(-1227f, global2[_wgslsmith_index_u32(arg_1.c.x, 1u)]), -906f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_1.b.x, 1u)], -971f, 1187f))))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(arg_1.c.x, 1u)])))))));
    let var_2 = select(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.wxx)), select(arg_0.xxx, !select(vec3<bool>(false, arg_0.x, true), arg_0.yzw, false), !vec3<bool>(all(vec3<bool>(arg_0.x, false, false)), true, arg_0.x)), !((true == arg_0.x) && (arg_0.x | arg_0.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(var_0.zx, vec2<f32>(var_0.x, var_0.x), arg_0.zy)), var_0.xz)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1582f, var_0.x), vec2<f32>(var_0.x, global2[_wgslsmith_index_u32(54847u, 1u)]))))))));
    var var_4 = arg_1;
    return ~_wgslsmith_mult_i32(0i, -2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = arg_0.d.zx;
    let var_1 = all(!select(!vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, true, arg_0.c.x < 93209u), true));
    global1 = vec2<i32>(u_input.a, u_input.b ^ -(_wgslsmith_div_i32(global1.x, var_0.x) | ~(-2147483647i)));
    var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(func_3(!vec4<bool>(false, var_1, var_1, false), Struct_1(1i, arg_0.b, arg_0.c, arg_0.d)), global1.x), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -1i, -22205i), arg_0.d), select(global1.x, global1.x, var_1) ^ (i32(-1i) * -1i))), firstLeadingBit(-2147483647i ^ abs(_wgslsmith_div_i32(-28650i, u_input.b))));
    var var_2 = -2147483647i;
    return Struct_2(_wgslsmith_div_u32(arg_0.b.x, _wgslsmith_mod_u32(~(39006u >> (arg_0.c.x % 32u)), 1u)), arg_0);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = Struct_3(func_2(Struct_1(_wgslsmith_div_i32(u_input.b, 2147483647i), ~abs(vec2<u32>(4294967295u, 140u)), vec3<u32>(1u, 4294967295u, countOneBits(52851u)), vec3<i32>(1i, _wgslsmith_mult_i32(-1i, -36745i), ~(-386i))), false, vec3<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(12752u, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(39321u, 1u)] + -1562f) * -407f), 667f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 1u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])))), _wgslsmith_f_op_f32(f32(-1f) * -1064f)))));
    let var_1 = var_0.a.a;
    var var_2 = Struct_3(Struct_2(var_0.a.b.c.x, var_0.a.b), vec3<f32>(global2[_wgslsmith_index_u32(1u, 1u)], var_0.b.x, -3163f));
    var_2 = Struct_3(func_2(var_2.a.b, false, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-315f, -1007f, -118f), var_2.b, false)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1738f, 1000f, global2[_wgslsmith_index_u32(var_2.a.a, 1u)])))) - var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(-368f, -1000f, var_0.b.x))) - var_2.b)));
    var_2 = var_0;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(vec3<u32>(~58910u, 1u, 1085u), ~reverseBits(vec3<u32>(36684u, 0u, 4294967295u)), false) ^ (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 46025u, 4294967295u), _wgslsmith_mult_u32(1u, 0u)), func_1(abs(vec4<i32>(25119i, global1.x, u_input.b, u_input.b))), ~17228u) & vec3<u32>(1u, 1u, 1u));
    global2 = array<f32, 1>();
    global1 = vec2<i32>(~abs(u_input.b), ~func_2(Struct_1(17753i, var_0.yz, vec3<u32>(42054u, 15436u, 18571u), vec3<i32>(global1.x, -1i, global1.x)), true, vec3<f32>(global2[_wgslsmith_index_u32(4080u, 1u)], 1000f, 1000f)).b.a & global1.x);
    let var_1 = Struct_2(var_0.x, func_2(Struct_1(abs(global1.x ^ 1i), vec2<u32>(var_0.x | var_0.x, 36427u << (var_0.x % 32u)), vec3<u32>(~0u, _wgslsmith_add_u32(var_0.x, 1u), _wgslsmith_sub_u32(13716u, 0u)), abs(vec3<i32>(1i, 1i, 1i))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-876f, -664f, -1876f) + vec3<f32>(-156f, global2[_wgslsmith_index_u32(var_0.x, 1u)], -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(45182u, 1u)], global2[_wgslsmith_index_u32(36896u, 1u)], global2[_wgslsmith_index_u32(var_0.x, 1u)])))).b);
    var var_2 = Struct_3(var_1, vec3<f32>(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(976u, 1u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-986f - 1448f))))), -1722f));
    let var_3 = !(!select(vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(false, true, false)), true, true), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), all(vec2<bool>(false, false))), (u_input.a <= u_input.b) || true));
    global0 = array<Struct_2, 4>();
    var var_4 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.b.b.x, 1u)]);
    let var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(648f, vec2<i32>(1i, ~(-max(-2147483647i, var_2.a.b.d.x))), var_5.a, ~var_5.d);
}

