struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, 20426i, -1i, -1i);

var<private> global2: array<vec4<f32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> bool {
    global2 = array<vec4<f32>, 14>();
    let var_0 = false;
    let var_1 = arg_1;
    global2 = array<vec4<f32>, 14>();
    var var_2 = Struct_1(arg_1, global1.zw, vec3<u32>(reverseBits(u_input.a), _wgslsmith_mult_u32(u_input.a, 8148u), _wgslsmith_div_u32(~(~35179u), u_input.b)), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(1i, 1i)), select(firstLeadingBit(arg_2), firstTrailingBit(_wgslsmith_sub_i32(arg_2, arg_0.x)), 63224i >= global1.x)), u_input.a);
    return func_3(Struct_1(arg_1, -abs(var_2.b), var_2.c, 15136i, var_2.c.x & ~var_2.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, var_2.a, true))), -1770f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, var_2.a), vec2<f32>(var_1, -1196f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 171f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, 102f), vec2<f32>(1206f, 171f), var_0)))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(22902u, 30985u, 1u)), arg_3.c)), ~vec3<u32>(_wgslsmith_add_u32(abs(arg_3.e), arg_1 << (0u % 32u)), 66181u, var_0.e));
    let var_2 = arg_3;
    var var_3 = vec4<bool>(arg_2, true, arg_2, arg_2);
    let var_4 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(372f))))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_0.a, 612f))))), -405f));
}

fn func_1() -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(775f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-917f, 203f) + 1087f)), global1.zz, ~vec3<u32>(u_input.b, ~u_input.a, _wgslsmith_clamp_u32(4294967295u, 58218u, u_input.b)), ~global1.x, _wgslsmith_clamp_u32(48853u, u_input.a, u_input.a)), 1u, !func_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(85039i, 2147483647i, global1.x, 2147483647i), select(vec4<i32>(-1i, global1.x, global1.x, -2147483647i), vec4<i32>(0i, global1.x, global1.x, global1.x), false)), _wgslsmith_f_op_f32(-1938f - -1254f), global1.x), Struct_1(_wgslsmith_f_op_f32(select(2145f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1000f, -362f)))), -1i == global1.x)), ~_wgslsmith_add_vec2_i32(global1.wz >> (vec2<u32>(u_input.a, 19637u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(9719i, -51245i), global1.yz, vec2<i32>(global1.x, global1.x))), ~vec3<u32>(46706u, 1u, ~u_input.b), _wgslsmith_dot_vec3_i32(global1.yzy, global1.yxx), u_input.b)));
    var var_1 = global1.x;
    global2 = array<vec4<f32>, 14>();
    var var_2 = -vec4<i32>(global1.x, countOneBits(-1i >> (max(104483u, u_input.a) % 32u)), -7351i, global1.x << (~u_input.b % 32u));
    var var_3 = ~(~vec3<u32>(~0u, u_input.b >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), vec4<u32>(1u, 13901u, 1u, 4294967295u)))) | (max(reverseBits(~vec3<u32>(4294967295u, u_input.b, u_input.a)), ~reverseBits(vec3<u32>(u_input.a, 0u, 4294967295u))) & ~vec3<u32>(~1u, ~15544u, 47697u));
    return countOneBits(-(select(vec2<i32>(global1.x, 57598i), ~vec2<i32>(global1.x, -1i), vec2<bool>(true, true)) | vec2<i32>(firstTrailingBit(-1i), 53845i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 14>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(global1.x, global1.x), global1.wz), func_1()), ~(~(~abs(vec3<u32>(u_input.b, 93980u, u_input.b)))), abs(37649i), _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.b, 19408u), ~41268u), u_input.a));
    var var_1 = ~(~vec2<u32>(~0u, _wgslsmith_dot_vec3_u32(var_0.c >> (vec3<u32>(1u, 8399u, 0u) % vec3<u32>(32u)), max(vec3<u32>(u_input.a, var_0.e, 38972u), var_0.c))));
    global2 = array<vec4<f32>, 14>();
    var var_2 = Struct_1(_wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-120f - _wgslsmith_f_op_f32(select(-1461f, 718f, false))), true))), _wgslsmith_div_vec2_i32(global1.yw, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(30731i, var_0.b.x), var_0.b), var_0.b), global1.zy)), max(vec3<u32>(var_0.c.x, ~16714u, ~var_0.e << (_wgslsmith_dot_vec4_u32(vec4<u32>(30310u, var_1.x, u_input.b, u_input.b), vec4<u32>(38920u, var_1.x, var_1.x, var_0.c.x)) % 32u)), vec3<u32>(~_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(u_input.b, 1u, var_0.c.x)), _wgslsmith_mod_u32(u_input.a, ~67106u), 16726u)), _wgslsmith_mult_i32(global1.x, _wgslsmith_mod_i32(-global1.x, ~67603i)), u_input.b);
    var var_3 = var_0;
    var var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.b), var_2.b.x, var_1.x);
}

