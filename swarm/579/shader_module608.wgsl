struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1>;

var<private> global1: array<i32, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>) -> bool {
    let var_0 = vec3<bool>(any(select(vec4<bool>(true, u_input.a.x > 22503i, all(vec4<bool>(true, true, false, true)), true), vec4<bool>(true, true, true, true), false)), false, !(!(all(vec3<bool>(true, false, false)) | false)));
    var var_1 = Struct_4(var_0.zy);
    var var_2 = arg_0;
    let var_3 = Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, true), !var_0.x));
    var_1 = Struct_4(var_1.a);
    return true;
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    global1 = array<i32, 5>();
    var var_0 = Struct_5(select(!select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(false, false), vec2<bool>(false, arg_1)), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1)), Struct_4(!select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), false))));
    global1 = array<i32, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), -946f))))), (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, 0u), 1u)] ^ (vec4<i32>(-1i, -2147483647i, -26364i, u_input.a.x) >> (~vec4<u32>(77780u, 4294967295u, 4718u, 4294967295u) % vec4<u32>(32u)))) | global0[_wgslsmith_index_u32(4294967295u, 1u)], vec3<u32>(~4294967295u, _wgslsmith_mult_u32(1u, 1u), ~(~51536u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 1466f) + _wgslsmith_f_op_f32(156f + -456f)), var_1.a.x))));
    return -1413f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = !vec2<bool>(arg_0, arg_0);
    var var_1 = _wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-496f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(291f, var_0.x)))))));
    let var_2 = vec2<i32>(-23954i, ~(~2147483647i));
    var var_3 = Struct_4(vec2<bool>(!func_1(global0[_wgslsmith_index_u32(22436u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]) & true, !arg_0));
    global0 = array<vec4<i32>, 1>();
    return vec2<u32>(~(~_wgslsmith_sub_u32(4294967295u, firstLeadingBit(4200u))), min(1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 31790u, 15245u), max(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u)), vec3<bool>(arg_0, false, arg_0)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(35938u, 37289u, 43118u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec2<bool>(true, -2147483647i <= reverseBits(u_input.a.x)), !vec4<bool>(select(func_1(vec4<i32>(-2147483647i, -24134i, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, 33718i, global1[_wgslsmith_index_u32(69433u, 5u)], -2147483647i)), true, true), true, false, true && any(vec3<bool>(true, true, false))), vec4<u32>(~2969u << (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 27755u)), func_2(false, vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(1u, 5u)]))) % 32u), 1u, ~reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(19318u, ~37722u), vec2<u32>(1u, 1u))));
    var var_1 = false;
    global1 = array<i32, 5>();
    let var_2 = -(~(-1i));
    var var_3 = u_input.a.zx;
    var var_4 = _wgslsmith_f_op_f32(round(2355f));
    let var_5 = Struct_2(select(var_0.a, select(vec2<bool>(var_2 >= global1[_wgslsmith_index_u32(57879u, 5u)], var_0.a.x), !select(vec2<bool>(var_0.b.x, var_0.a.x), vec2<bool>(true, var_0.a.x), var_0.a.x), !var_0.a), var_0.a), var_0.b, ~min(max(select(var_0.c, var_0.c, var_0.b.x), _wgslsmith_sub_vec4_u32(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))), max(firstLeadingBit(vec4<u32>(40254u, var_0.c.x, var_0.c.x, 32931u)), ~vec4<u32>(38665u, 25549u, var_0.c.x, 1898u))));
    var var_6 = _wgslsmith_add_vec2_i32(vec2<i32>(1i, -(_wgslsmith_clamp_i32(u_input.a.x, global1[_wgslsmith_index_u32(26145u, 5u)], 4777i) >> ((4294967295u << (var_0.c.x % 32u)) % 32u))), vec2<i32>(~(i32(-1i) * -2147483647i) ^ firstTrailingBit(_wgslsmith_mult_i32(-14644i, -1i)), firstTrailingBit(var_2 & abs(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.zxy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1625f, -1953f) + _wgslsmith_f_op_f32(-1332f - -951f))))));
}

