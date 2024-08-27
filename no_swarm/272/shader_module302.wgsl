struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: u32;

var<private> global2: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global3: vec4<u32> = vec4<u32>(42478u, 0u, 4294967295u, 0u);

var<private> global4: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(0u, 89975u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global4 = array<vec2<u32>, 1>();
    let var_0 = global3.x;
    var var_1 = max(min(vec3<i32>(-7893i, select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, global3.x), 30u)], -2147483647i, arg_0.x), u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(-10431i, -global0[_wgslsmith_index_u32(4294967295u, 30u)], -u_input.a), max(-vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(16971u, 30u)], u_input.a), -vec3<i32>(global0[_wgslsmith_index_u32(29607u, 30u)], -40359i, u_input.a)), -(vec3<i32>(-30109i, global0[_wgslsmith_index_u32(102457u, 30u)], global0[_wgslsmith_index_u32(global3.x, 30u)]) << (vec3<u32>(0u, 73385u, 1u) % vec3<u32>(32u))))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(1i, u_input.a, global0[_wgslsmith_index_u32(41064u, 30u)]) & vec3<i32>(u_input.a, -19357i, -2147483647i), ~vec3<i32>(-14520i, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)])), -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -56202i, u_input.a), -vec3<i32>(9231i, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(global3.x, 30u)]))));
    var var_2 = -729f;
    var var_3 = Struct_2(-944f, arg_0);
    return ~(_wgslsmith_clamp_u32(abs(global3.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.x, global3.x), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global3.x, 27552u), var_3.b.x)), ~_wgslsmith_div_u32(global3.x, 30493u)) | 29466u);
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(604f)));
    let var_1 = -25593i;
    var var_2 = Struct_1(!all(vec3<bool>(true, true, true)), firstTrailingBit(vec4<i32>(19599i, ~(var_1 << (arg_1 % 32u)), u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -25134i), vec2<i32>(-18626i, u_input.a)), u_input.a))), ~vec4<u32>((34508u >> (global3.x % 32u)) >> ((33274u << (arg_1 % 32u)) % 32u), 1u, 1u, abs(_wgslsmith_mod_u32(0u, global3.x))));
    let var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-350f)), _wgslsmith_f_op_f32(910f * -1406f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(129f)), _wgslsmith_f_op_f32(-1124f * -789f)))));
    var var_4 = var_2.b;
    return _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_4.x, 1i, global0[_wgslsmith_index_u32(1u, 30u)], -1i)), var_2.b, var_2.b) & min(vec4<i32>(3413i, 2147483647i, var_1, var_1) | var_2.b, var_2.b | ~vec4<i32>(global0[_wgslsmith_index_u32(29599u, 30u)], var_1, var_2.b.x, var_4.x)), var_2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, func_4(_wgslsmith_clamp_u32(func_3(vec2<bool>(true, true)), ~1u, ~29800u), global3.x, select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, true), true)) & abs(~abs(vec4<i32>(43231i, -11001i, global0[_wgslsmith_index_u32(global3.x, 30u)], -2147483647i))), abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.x, global3.x, global3.x, global3.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 6052u, global3.x, global3.x), vec4<u32>(1u, 1u, global3.x, global3.x)) % vec4<u32>(32u)), countOneBits(abs(vec4<u32>(global3.x, global3.x, 65665u, 6543u))))));
    let var_1 = var_0.c.x;
    var var_2 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(~global3.x, 1u)], _wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(global3.x, 23769u)))), var_0.c.zz));
    global1 = var_0.c.x & 1u;
    var var_3 = ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(86203u), _wgslsmith_dot_vec3_u32(vec3<u32>(68220u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 1u))), ~0u), _wgslsmith_dot_vec3_u32(min(var_0.c.wzw, ~vec3<u32>(4294967295u, 49981u, var_0.c.x)), select(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(2037u, 8002u, global3.x), false)), 16062u);
    return Struct_1(!(true || !any(vec2<bool>(false, true))), vec4<i32>(~u_input.a, u_input.a, reverseBits(abs(global0[_wgslsmith_index_u32(~1u, 30u)])), _wgslsmith_add_i32(var_0.b.x, u_input.a)), abs(var_0.c));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = global3.x;
    var var_1 = func_2();
    global3 = ~vec4<u32>(global3.x, arg_2.x, ~abs(~global3.x), ~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), ~global3.x));
    let var_2 = -u_input.a;
    var var_3 = var_1.b.wxz;
    return _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(var_3.zy, select(-vec2<i32>(global0[_wgslsmith_index_u32(arg_2.x, 30u)], var_3.x), vec2<i32>(global0[_wgslsmith_index_u32(50596u, 30u)], u_input.a), !vec2<bool>(var_1.a, var_1.a)), vec2<i32>(var_2, -2020i))), abs(vec2<i32>(-28137i, global0[_wgslsmith_index_u32(96515u, 30u)])) | ~func_2().b.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.x;
    global2 = array<vec3<bool>, 3>();
    var var_0 = true;
    var_0 = false;
    var var_1 = Struct_1(true, vec4<i32>(-(global0[_wgslsmith_index_u32(42948u, 30u)] << (global3.x % 32u)), ~func_1(vec3<f32>(-1060f, 394f, 169f), vec3<f32>(-1151f, -2167f, 811f), vec3<u32>(global3.x, global3.x, global3.x), vec4<f32>(-847f, -1721f, 368f, -1038f)), global0[_wgslsmith_index_u32(global3.x, 30u)] ^ ~u_input.a, -global0[_wgslsmith_index_u32(global3.x, 30u)]) & vec4<i32>(-(~(-33546i)), 1687i, -25639i, abs(~global0[_wgslsmith_index_u32(global3.x, 30u)])), ~vec4<u32>(global3.x, global3.x, global3.x, global3.x >> (2964u % 32u)));
    global4 = array<vec2<u32>, 1>();
    global3 = ~var_1.c;
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global4[_wgslsmith_index_u32(global3.x, 1u)], global3.yz), vec2<u32>(global3.x, global3.x))), _wgslsmith_add_vec4_u32(var_1.c, var_1.c), _wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32((~18094u | _wgslsmith_add_u32(global3.x, 0u)) | global3.x, 1u)], vec2<u32>(38140u, ~43312u)), 1u);
}

