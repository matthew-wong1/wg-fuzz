struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(30228u, 1u, 1u, 4294967295u), vec4<f32>(216f, -1587f, -224f, -439f), vec3<i32>(11095i, -1i, 39821i)), Struct_1(vec4<u32>(57086u, 1u, 1u, 12591u), vec4<f32>(-1401f, 1914f, -1000f, 352f), vec3<i32>(0i, i32(-2147483648), -18739i)), Struct_1(vec4<u32>(0u, 12146u, 47931u, 21296u), vec4<f32>(-738f, -662f, -435f, 519f), vec3<i32>(1i, 0i, 101065i)), Struct_1(vec4<u32>(1u, 0u, 1u, 52240u), vec4<f32>(589f, -865f, -934f, -1682f), vec3<i32>(2147483647i, 9825i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 91093u, 33952u, 0u), vec4<f32>(-918f, 531f, -481f, -1425f), vec3<i32>(0i, -1i, i32(-2147483648))));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = -1i;
    global0 = array<Struct_1, 23>();
    var var_1 = global1.c.x;
    var var_2 = select(select(vec3<bool>(true, true, true), vec3<bool>(~global1.c.x > 0i, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), !vec3<bool>(~arg_0.a.x >= _wgslsmith_add_u32(global1.a.x, arg_0.a.x), true, true), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true)) && (all(vec2<bool>(false, true)) & true));
    global2 = array<Struct_1, 5>();
    return _wgslsmith_div_u32(1u << (0u % 32u), ~global1.a.x << (arg_0.a.x % 32u)) ^ ~(~global1.a.x);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = !all(vec2<bool>(all(vec4<bool>(true, false, false, false)), false));
    var var_1 = -abs(-u_input.a.x);
    var var_2 = !vec2<bool>(true, !(!var_0) | all(!vec4<bool>(var_0, true, var_0, var_0)));
    let var_3 = Struct_1(vec4<u32>(0u, 4294967295u, _wgslsmith_div_u32(global1.a.x, 4294967295u), max(48985u, abs(firstTrailingBit(global1.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f), arg_0.x), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1125f)))) - global1.b), ~(~global1.c));
    var var_4 = Struct_1(_wgslsmith_mod_vec4_u32(global1.a, vec4<u32>(func_3(Struct_1(var_3.a, arg_0, u_input.a.xzw), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -1197f, -796f, -1243f) + arg_0)), 1u, 0u, ~79373u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-772f, arg_0.x))), _wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1897f))))), ~global1.c);
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 5>();
    let var_0 = all(select(vec4<bool>(true, false, true & all(vec3<bool>(false, false, false)), true), !vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, true, false))));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(global1.a.x, ~_wgslsmith_dot_vec3_u32(arg_2, global1.a.wyz & global1.a.ywx), arg_2.x)), 5u)];
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_2.x, 26779u), 9200u, abs(arg_0.a.x), abs(_wgslsmith_add_u32(4294967295u ^ arg_2.x, 73207u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-203f, 322f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1015f)))), 380f, -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1599f, var_1.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-273f, 1000f))))))), global1.c);
    global0 = array<Struct_1, 23>();
    return Struct_1(vec4<u32>(~reverseBits(2681u), ~countOneBits(var_2.a.x), global1.a.x, _wgslsmith_add_u32(firstTrailingBit(45449u), ~(~var_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, 1464f, false)), _wgslsmith_div_f32(-1411f, -1000f)), _wgslsmith_f_op_f32(floor(var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), var_1.b.x)), vec3<i32>(-83936i, arg_0.c.x, _wgslsmith_mod_i32(u_input.b.x, var_1.c.x)) & -arg_0.c);
}

fn func_1() -> vec4<bool> {
    let var_0 = func_4(global0[_wgslsmith_index_u32(global1.a.x, 23u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.b)) - vec4<f32>(652f, global1.b.x, _wgslsmith_f_op_f32(floor(global1.b.x)), 135f)), _wgslsmith_f_op_vec4_f32(sign(global1.b)))), vec3<u32>(0u, _wgslsmith_mod_u32(global1.a.x ^ global1.a.x, func_2(global1.b)) << (4294967295u % 32u), 1u));
    var var_1 = var_0.a.zw;
    global1 = Struct_1(~func_4(global2[_wgslsmith_index_u32(56008u, 5u)], vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x, 477f, _wgslsmith_f_op_f32(-var_0.b.x)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_0.a.x), vec3<u32>(56380u, 83786u, var_0.a.x)))).a, vec4<f32>(var_0.b.x, var_0.b.x, global1.b.x, -1303f), global1.c);
    var var_2 = ~(var_0.c.x << (func_3(func_4(global0[_wgslsmith_index_u32(11139u, 23u)], var_0.b, global1.a.xzx), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, 505f, 1600f, 1151f), vec4<f32>(var_0.b.x, -352f, var_0.b.x, -936f))) % 32u)) << (min(var_1.x, max(37213u, ~(~global1.a.x))) % 32u);
    let var_3 = vec3<bool>(all(vec4<bool>(true, false, true, any(vec4<bool>(true, false, true, false)))) && true, false, false);
    return !vec4<bool>(var_3.x, any(var_3.yx), true, all(!select(var_3.zx, var_3.xx, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.a.x;
    global0 = array<Struct_1, 23>();
    let var_1 = ~vec2<u32>(89317u, 1u);
    var var_2 = !(!select(vec4<bool>(var_1.x != 4294967295u, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true)), func_1()));
    let var_3 = ~vec3<u32>(global1.a.x, global1.a.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -1000f, -203f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(914f, -165f, -1211f)))))), max(select(vec4<i32>(-2147483647i, ~(-2147483647i), -34852i, -2147483647i | u_input.a.x), -(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 2147483647i) ^ u_input.a), !(!vec4<bool>(var_2.x, false, true, true))), _wgslsmith_clamp_vec4_i32(~(~u_input.a), min(vec4<i32>(-32086i, global1.c.x, u_input.b.x, -2147483647i), select(vec4<i32>(1i, u_input.b.x, u_input.a.x, 0i), u_input.a, false)), u_input.a)), global1.b.x, vec2<u32>(87491u, 1u), firstTrailingBit(global1.c));
}

