struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<u32, 3>();
    var var_0 = 0u;
    global2 = array<Struct_1, 30>();
    let var_1 = vec4<i32>(u_input.b.x, u_input.c, -1i, u_input.c);
    return true;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(select(1000f, arg_2.x, false))), true))));
    global2 = array<Struct_1, 30>();
    let var_1 = !vec3<bool>(true, func_2(global1[_wgslsmith_index_u32(46294u, 18u)]), !func_2(global1[_wgslsmith_index_u32(max(16547u, 64702u), 18u)]));
    global1 = array<Struct_1, 18>();
    var var_2 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 3u)], 18u)];
    return _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(arg_0 | arg_0, 3u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u & _wgslsmith_div_u32(arg_0, 27692u)), 0u) < u_input.a.x;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<u32, 3>();
    var var_0 = vec4<bool>(!(!all(vec3<bool>(true, true, true))), !func_2(Struct_1(true)), true, func_2(global2[_wgslsmith_index_u32(~68450u, 30u)]) | true);
    var_0 = select(select(vec4<bool>(var_0.x, all(vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x, any(var_0.zx)), vec4<bool>(true, var_0.x, var_0.x, true && any(vec4<bool>(true, true, false, false))), vec4<bool>(func_3(~arg_0, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-399f, -782f, 984f, 211f), vec4<f32>(448f, 1752f, -1417f, 1766f), vec4<bool>(false, true, var_0.x, var_0.x))), vec2<f32>(-530f, 1026f)), func_2(Struct_1(true)), _wgslsmith_div_u32(arg_0, arg_0) < 20586u, firstLeadingBit(0u) > _wgslsmith_sub_u32(83502u, u_input.a.x))), !select(vec4<bool>(false, true, var_0.x, var_0.x), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, var_0.x, true, var_0.x)), vec4<bool>(false, true, false, true), !vec4<bool>(var_0.x, true, var_0.x, false)), all(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !var_0.x), select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x))), select(!vec4<bool>(var_0.x, var_0.x, true, false), !vec4<bool>(var_0.x, true, true, var_0.x), !var_0.x)), select(!vec4<bool>(var_0.x, true, true, true), vec4<bool>(!var_0.x, var_0.x & true, true, !var_0.x), !vec4<bool>(var_0.x, true, true, false)), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, true, var_0.x), true), vec4<bool>(true, var_0.x, true | var_0.x, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, false), false), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), false), false))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -623f);
    var var_2 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(abs(u_input.a.yzx)), vec3<u32>(41413u, u_input.a.x, 0u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(6588u, 3u)], 77769u, global0[_wgslsmith_index_u32(1u, 3u)]))), u_input.a.yzy)), 30u)];
    return Struct_1(firstLeadingBit(-2147483647i) > u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & (!all(vec4<bool>(false, true, true, true)) | false);
    var var_1 = Struct_1(!var_0);
    let var_2 = func_1(firstTrailingBit(829u));
    global1 = array<Struct_1, 18>();
    let var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, -vec2<i32>(u_input.b.x, -41840i)), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.b), vec2<i32>(u_input.c, u_input.c))) | -2147483647i, firstTrailingBit(~(-countOneBits(u_input.c))), (i32(-1i) * -45118i) ^ ~(u_input.c >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6587u, 3u)], 3u)]) % 32u)));
    global0 = array<u32, 3>();
    let var_4 = Struct_1(!(!var_1.a));
    var var_5 = var_4.a;
    var var_6 = vec3<i32>(u_input.b.x, u_input.b.x, ~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-min(firstTrailingBit(vec2<i32>(24853i, 2147483647i)), vec2<i32>(1i, var_6.x) >> (vec2<u32>(32670u, 85875u) % vec2<u32>(32u)))), 23116i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-120f - -1000f), 1128f, !var_4.a))))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -7002i, -31694i, 0i), vec4<i32>(5376i, var_6.x, var_6.x, u_input.c)), ~vec4<i32>(u_input.b.x, u_input.b.x, 28351i, 32440i)), ~reverseBits(~vec4<i32>(var_3.x, 24559i, -1i, 20514i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.c, var_3.x, 18149i), vec4<i32>(-10718i, var_3.x, -1i, 26458i)) & vec4<i32>(0i, ~(-11326i), ~u_input.b.x, 11043i)), -(-(~vec2<i32>(-10810i, -26848i)) >> (vec2<u32>(global0[_wgslsmith_index_u32(36234u, 3u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) % vec2<u32>(32u))));
}

