struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: bool = false;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    global1 = false;
    let var_0 = arg_0;
    global1 = all(arg_0.b.zy);
    var var_1 = u_input.b;
    let var_2 = vec4<i32>(select(_wgslsmith_clamp_i32(~arg_0.d.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-13276i, 15212i, -32017i, var_0.d.x), vec4<i32>(0i, 1i, arg_0.d.x, global0[_wgslsmith_index_u32(1542u, 28u)])), -8611i), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.d.x), u_input.a.zy), _wgslsmith_dot_vec3_i32(arg_0.d, vec3<i32>(arg_0.d.x, -74912i, var_0.d.x)))), select(false, var_0.b.x, var_0.b.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_0.d, var_0.d), _wgslsmith_div_i32(-22117i, 1i) >> (1u % 32u)), var_0.d.x), arg_0.d.x, 30402i);
    return !(arg_0.b.x && arg_0.b.x) & !(!all(vec4<bool>(var_0.b.x, var_0.b.x, arg_0.b.x, arg_0.b.x)) && !arg_0.b.x);
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_1(reverseBits(42490u), !vec3<bool>(false, true, !func_3(Struct_1(34479u, vec3<bool>(true, true, true), vec4<f32>(148f, 410f, 345f, 2567f), u_input.a), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, -1000f, 1387f, -230f)), vec4<f32>(_wgslsmith_div_f32(-1540f, 458f), _wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_f_op_f32(select(-1000f, -946f, true)), _wgslsmith_div_f32(-1000f, 276f)))), select(vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 28u)]), u_input.a.yy), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 28u)], -53862i)), _wgslsmith_dot_vec2_i32(u_input.a.xx, ~u_input.a.zz)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.a, u_input.a), countOneBits(vec3<i32>(0i, global0[_wgslsmith_index_u32(arg_0.x, 28u)], 0i))), _wgslsmith_div_u32(reverseBits(0u), firstLeadingBit(arg_0.x)) > _wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), arg_0))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~(~var_0.a)), ~arg_0.x, 39811u, ~((var_0.a >> (65589u % 32u)) >> (~0u % 32u))), vec4<u32>(~reverseBits(~arg_0.x), 41311u, select((var_0.a << (38698u % 32u)) | _wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.xz), 68390u, true), _wgslsmith_mod_u32(arg_0.x, 1u)));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(83386i, global0[_wgslsmith_index_u32(0u, 28u)], 2147483647i, 11125i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 28u)], -26750i), firstTrailingBit(vec4<i32>(0i, 41412i, u_input.a.x, var_0.d.x)))), firstLeadingBit(~min(vec4<i32>(-1i, global0[_wgslsmith_index_u32(1u, 28u)], var_0.d.x, var_0.d.x), vec4<i32>(44664i, var_0.d.x, -8045i, 34i)))) << (vec4<u32>(select(4294967295u, arg_0.x, var_0.b.x), 102315u, ~max(_wgslsmith_add_u32(var_1.x, var_0.a), var_0.a), 23130u) % vec4<u32>(32u));
    var var_3 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x, 122494u), firstTrailingBit(~30512u)), _wgslsmith_sub_u32(var_0.a, 1u), 50033u, 4294967295u);
    var var_4 = true && !(!(!(!var_0.b.x)));
    return _wgslsmith_f_op_f32(288f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.c.x)) + _wgslsmith_f_op_f32(-1048f + var_0.c.x))) * var_0.c.x));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec2<bool> {
    global1 = !(_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 1u, 1u))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) + _wgslsmith_f_op_f32(arg_1.x + -1088f)))));
    let var_0 = -185f;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-2343f)), _wgslsmith_f_op_f32(min(var_0, arg_1.x))))), _wgslsmith_f_op_f32(-var_0));
    let var_2 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), false), vec2<bool>(select(false, true, all(vec2<bool>(true, false))), !all(vec3<bool>(false, true, true)))));
    let var_3 = vec4<bool>(var_2, true, true, var_2);
    return vec2<bool>(true, !(!(!(false | var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(-vec4<i32>(-2147483647i, countOneBits(1i), u_input.b, min(11423i, global0[_wgslsmith_index_u32(4960u, 28u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(793f, 110f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-635f, -1000f) + vec2<f32>(-326f, 734f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(577f, -386f))))));
    global1 = true;
    global0 = array<i32, 28>();
    let var_1 = var_0.x;
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    let var_2 = vec3<i32>(u_input.a.x, -2147483647i, ~min(_wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(0u, 28u)], 1i, 1i), countOneBits(1i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(~firstTrailingBit(1u), 1u), reverseBits(select(~1u, ~3159u, var_0.x != false))), ~(~firstTrailingBit(vec2<u32>(0u, 11578u))), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 17805u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u))), vec4<u32>(select(abs(9961u), 1u, var_2.x <= 43531i), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 0u, 1u)), vec4<u32>(~(~firstTrailingBit(42849u)), _wgslsmith_add_u32(~1u, ~4294967295u), ~(~_wgslsmith_clamp_u32(1u, 0u, 107796u)), ~(firstTrailingBit(4294967295u) ^ 3661u)));
}

