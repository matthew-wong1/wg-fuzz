struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: i32 = 32536i;

var<private> global3: array<f32, 3>;

var<private> global4: vec2<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = firstTrailingBit(~2147483647i);
    let var_1 = vec4<f32>(-1412f, _wgslsmith_f_op_f32(arg_0 + -1108f), 449f, global4.x);
    global3 = array<f32, 3>();
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a << (1u % 32u), -reverseBits(-1i), -38474i), firstLeadingBit(u_input.a) & min(i32(-1i) * -1761i, countOneBits(3806i))), global1[_wgslsmith_index_u32(1u, 13u)]);
    global0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1076f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24778u, 3u)] - global3[_wgslsmith_index_u32(4294967295u, 3u)]), global3[_wgslsmith_index_u32(~4294967295u, 3u)])))) - _wgslsmith_f_op_f32(-var_1.x));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(629f)), ~u_input.a, ~abs(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, -24438i), vec3<i32>(arg_0, 33873i, u_input.a)), u_input.a, 1i)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))), !vec3<bool>(false, 54751i > -u_input.a, false));
    let var_1 = max(vec4<u32>(~0u, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mult_u32(1u, 1u), 0u, 17905u, _wgslsmith_mod_u32(1u, 18422u))), abs(_wgslsmith_mult_u32(1u, 0u))), vec4<u32>(1u, _wgslsmith_add_u32(countOneBits(~107280u), firstLeadingBit(1u)), 4294967295u, 5090u));
    var var_2 = (_wgslsmith_sub_u32(4294967295u, ~(~12774u)) > ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 26815u), vec2<u32>(var_1.x, var_1.x))) & var_0.e.x;
    var var_3 = Struct_2(!var_0.d.x, Struct_1(-849f, arg_0, firstLeadingBit((vec3<i32>(var_0.b, 0i, u_input.a) | var_0.c) << (vec3<u32>(25824u, 34434u, 72583u) % vec3<u32>(32u))), !select(!var_0.e, !var_0.e, select(var_0.e, var_0.e, var_0.d)), var_0.e));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1311f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - global3[_wgslsmith_index_u32(var_1.x, 3u)]) * var_0.a), _wgslsmith_f_op_f32(global4.x + _wgslsmith_f_op_f32(-global4.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-507f, global3[_wgslsmith_index_u32(var_1.x, 3u)], -309f) * vec3<f32>(1354f, -670f, global3[_wgslsmith_index_u32(4294967295u, 3u)])) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(1u, 3u)], var_3.b.a, var_3.b.a))))))));
    return _wgslsmith_dot_vec4_u32(var_1, ~vec4<u32>(_wgslsmith_div_u32(76757u ^ var_1.x, _wgslsmith_dot_vec2_u32(var_1.yx, var_1.yz)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 25506u, 128735u), firstTrailingBit(vec4<u32>(39937u, 15363u, var_1.x, var_1.x))), firstLeadingBit(1u), 39625u));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(1631u, ~73364u, select(func_2(u_input.a) & 42472u, _wgslsmith_clamp_u32(~0u, 1u, 29507u), true) & 0u);
    let var_1 = abs(_wgslsmith_add_vec2_i32(min(arg_0.ww >> (vec2<u32>(44911u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 0i), vec2<i32>(arg_0.x, -2147483647i) << (var_0.yy % vec2<u32>(32u)), max(arg_0.wz, arg_0.zx))), global1[_wgslsmith_index_u32(var_0.x | 13503u, 13u)]));
    global2 = var_1.x;
    var var_2 = var_0.x;
    global2 = i32(-1i) * -arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1260f, global4.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-823f - -603f)))) - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))))), 1i, countOneBits(~countOneBits(countOneBits(vec3<i32>(25024i, -9414i, -4262i)))), select(vec3<bool>(true, all(vec4<bool>(true, false, true, false)), any(vec2<bool>(true, true))), vec3<bool>(any(vec2<bool>(true, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true)), all(vec2<bool>(true, true))), !(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.x < var_1.x, all(vec3<bool>(true, false, false))), true), !vec3<bool>(1509f > global4.x, true, true), !vec3<bool>(true, all(vec3<bool>(false, true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 758f, -705f, 539f)) - vec4<f32>(-315f, global4.x, -1000f, -1022f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(542f, -1888f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-977f + global3[_wgslsmith_index_u32(11878u, 3u)])))))));
    let var_1 = Struct_2(-2147483647i != _wgslsmith_add_i32(u_input.a | -u_input.a, 2147483647i), func_1(vec4<i32>(-2147483647i, 1i, countOneBits(-2147483647i), ~countOneBits(u_input.a))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_f32(min(-618f, _wgslsmith_f_op_f32(-var_0.x))))) + global3[_wgslsmith_index_u32(35791u, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -603f, -1178f);
    let var_2 = Struct_2(all(func_1(reverseBits(vec4<i32>(var_1.b.c.x, var_1.b.b, -2147483647i, var_1.b.b))).d.yx), var_1.b);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1097f + -1000f), var_2.b.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(90970u, 3u)] + var_0.x) - _wgslsmith_f_op_f32(-var_2.b.a)) + var_2.b.a)), _wgslsmith_f_op_f32(-1096f + func_1(vec4<i32>(reverseBits(u_input.a), var_2.b.c.x << (0u % 32u), i32(-1i) * -49936i, -65888i)).a)));
    global1 = array<vec2<i32>, 13>();
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -1000f, _wgslsmith_f_op_f32(trunc(1576f)), 391f)), vec4<f32>(-1309f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1117f, global3[_wgslsmith_index_u32(1u, 3u)]))), _wgslsmith_f_op_f32(trunc(-368f)), 119f), vec4<bool>(var_1.a, true, false, func_1(-vec4<i32>(-2147483647i, -41232i, var_2.b.b, var_2.b.b)).d.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.x, 2949f, var_0.x, 120f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-460f, var_1.b.a, -1975f, 551f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-976f, 129f, var_0.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.a, var_2.b.a, -1321f, 600f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(func_1(vec4<i32>(-1i, var_2.b.c.x, -39410i, var_1.b.b)).c | var_2.b.c, vec3<i32>(u_input.a, max(1i, 1i << (0u % 32u)), _wgslsmith_clamp_i32(-2147483647i, -var_1.b.b, i32(-1i) * -2147483647i))), ~vec2<i32>(-1i, func_1(-vec4<i32>(var_2.b.b, -2147483647i, var_1.b.b, u_input.a)).c.x), vec2<u32>(23494u, 48522u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11314u), vec2<u32>(21555u, 0u)) % 32u)) | vec2<u32>(~53974u, 4294967295u));
}

