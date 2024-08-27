struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 19252u, 1u, 16804u, 1u, 6003u, 26500u, 94041u, 34303u, 1u, 1u, 4294967295u, 57828u, 1u, 14410u);

var<private> global2: array<Struct_1, 21>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    var var_0 = -50962i;
    let var_1 = 896f != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -775f), 672f), _wgslsmith_f_op_f32(round(1330f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-223f + -412f)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(608f * -292f), _wgslsmith_f_op_f32(step(178f, -1000f)))) - 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(660f, -341f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(530f - 1428f))))));
    var var_3 = vec4<u32>(0u, ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), 15u)], 44567u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, ~u_input.a, abs(0u)), ~0u), ~(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45778u, 15u)] ^ 24848u, 15u)])));
    let var_4 = vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_add_i32(global3.a, ~u_input.c), u_input.c), abs(global3.a), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.b.xx), u_input.b.zz >> (u_input.d.yz % vec2<u32>(32u)), vec2<i32>(global3.a, 2903i) & u_input.b.xz)), ~vec2<i32>(0i, 1i) & u_input.b.xz), _wgslsmith_sub_i32(u_input.b.x, 2147483647i));
    return 1f;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    global1 = array<u32, 15>();
    global1 = array<u32, 15>();
    let var_0 = _wgslsmith_f_op_f32(func_3());
    global2 = array<Struct_1, 21>();
    let var_1 = ~(i32(-1i) * -2147483647i);
    return Struct_1(i32(-1i) * -var_1);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = 1u;
    let var_0 = func_2(~select(firstLeadingBit(-39125i), u_input.e, true), true);
    global0 = ~_wgslsmith_div_u32(~u_input.d.x, 35579u);
    let var_1 = select(~abs(vec3<u32>(17u, global1[_wgslsmith_index_u32(u_input.d.x, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]) << (abs(vec3<u32>(40088u, 114679u, 4294967295u)) % vec3<u32>(32u))), firstLeadingBit(vec3<u32>(0u, _wgslsmith_sub_u32(20687u, ~global1[_wgslsmith_index_u32(4294967295u, 15u)]), 32638u)), true);
    let var_2 = abs(vec4<u32>(var_1.x, ~u_input.d.x, 90709u, u_input.a) | u_input.d);
    return func_2(_wgslsmith_mod_i32(var_0.a, arg_0.a), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> vec2<bool> {
    let var_0 = func_4(func_2(u_input.e, ~20476i <= _wgslsmith_mult_i32(-2147483647i, u_input.c)));
    let var_1 = u_input.d.xzw;
    global1 = array<u32, 15>();
    global0 = min(~var_1.x, ~39962u);
    let var_2 = vec4<f32>(732f, _wgslsmith_f_op_f32(f32(-1f) * -309f), -239f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1099f + 1421f) * 1346f)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))))));
    return select(vec2<bool>(true, true), vec2<bool>(false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)))), !vec2<bool>(!(var_0.a == arg_3), -1i >= (-1i ^ u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    global0 = 43475u;
    global3 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(firstTrailingBit(reverseBits(abs(4294967295u)))), _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, 11007u), u_input.d.xw, !func_1(u_input.d, Struct_1(16729i), -2147483647i, -2147483647i)), u_input.d.yy)), 15u)], 21u)];
    let var_0 = true;
    global2 = array<Struct_1, 21>();
    var var_1 = u_input.d.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(global3.a), vec4<i32>(_wgslsmith_add_i32(-1i, global3.a), -(~57051i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, select(u_input.b, vec3<i32>(global3.a, -14659i, 28363i), false)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, global3.a, u_input.c)), func_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(30686i, u_input.c), vec2<i32>(global3.a, u_input.e)), u_input.e), any(!vec4<bool>(true, var_0, false, false))).a), u_input.d);
}

