struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 6>;

var<private> global2: array<vec4<u32>, 14>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_4 {
    var var_0 = vec4<u32>(arg_2, _wgslsmith_mod_u32(54084u, ~u_input.a), arg_2, ~96313u);
    global1 = array<f32, 6>();
    let var_1 = _wgslsmith_mod_u32(~(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 1u), u_input.a) >> (~41616u % 32u)), abs((firstTrailingBit(var_0.x) ^ arg_2) & 4294967295u));
    return Struct_4(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, 1i), abs(2147483647i)), ~4294967295u, _wgslsmith_div_vec4_i32(vec4<i32>(-14981i | _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -2830i), vec3<i32>(-1191i, 23496i, -48553i)), _wgslsmith_mult_i32(abs(1i), -15003i), 1i, 1i), vec4<i32>(1i, min(1i, max(9416i, 3258i)), _wgslsmith_sub_i32(~(-2147483647i), 1i), ~min(2147483647i, -1i))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1289f)), _wgslsmith_f_op_f32(170f + _wgslsmith_f_op_f32(f32(-1f) * -396f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -455f))))), !select(vec3<bool>(true, all(vec3<bool>(true, false, false)), arg_2.c.x > 13057i), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, false))), 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 430f, -268f, arg_1.a.x) - arg_3.a))))))));
    let var_2 = Struct_4(arg_2.c.x, ~(~1u), abs(vec4<i32>(1i, -(i32(-1i) * -2147483647i), firstTrailingBit(var_0.c.x) | -arg_2.a, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<i32>(1i, 4927i, var_0.a), vec3<bool>(false, false, true)), -var_0.c.ywz))));
    global0 = 56078u;
    var var_3 = arg_1;
    return _wgslsmith_add_vec4_i32(arg_2.c, _wgslsmith_sub_vec4_i32(var_2.c, ~(~var_0.c)) ^ firstTrailingBit(~vec4<i32>(var_0.c.x, var_0.c.x, arg_2.a, -49092i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: i32) -> i32 {
    var var_0 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~arg_0.b, 6u)]), -1140f), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), true), vec3<bool>(true, !select(true, true, true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1872u, 6u)]) > _wgslsmith_f_op_f32(f32(-1f) * -458f)), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_0.b, 1u), 41043u >> (0u % 32u))) & select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12018u, 26995u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 21646u), vec3<u32>(arg_0.b, u_input.a, 4294967295u))), 4294967295u << (countOneBits(u_input.a) % 32u), true));
    var var_1 = vec2<bool>(true, true);
    var_0 = func_2(vec2<f32>(2170f, 1968f), select(select(!vec3<bool>(false, var_1.x, false), vec3<bool>(any(vec3<bool>(var_1.x, false, false)), global1[_wgslsmith_index_u32(4294967295u, 6u)] > global1[_wgslsmith_index_u32(var_0.b, 6u)], var_0.c.x > 1i), !select(vec3<bool>(true, false, var_1.x), vec3<bool>(false, var_1.x, true), true)), vec3<bool>(-398f >= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b, 6u)] + global1[_wgslsmith_index_u32(36853u, 6u)]), all(!vec2<bool>(var_1.x, var_1.x)), true), select(vec3<bool>(true, var_1.x, 1342f < global1[_wgslsmith_index_u32(u_input.a, 6u)]), !vec3<bool>(var_1.x, var_1.x, false), !vec3<bool>(var_1.x, false, true))), var_0.b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.b, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)], 892f, global1[_wgslsmith_index_u32(128142u, 6u)]))) + vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(27561u, 6u)], 312f, global1[_wgslsmith_index_u32(arg_0.b, 6u)])) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], -458f, global1[_wgslsmith_index_u32(u_input.a, 6u)])), vec4<f32>(1352f, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)], global1[_wgslsmith_index_u32(1u, 6u)])))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, global1[_wgslsmith_index_u32(u_input.a, 6u)], -689f, -789f) - vec4<f32>(-1262f, global1[_wgslsmith_index_u32(56258u, 6u)], global1[_wgslsmith_index_u32(var_0.b, 6u)], -521f)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.zx - vec2<f32>(-1399f, -524f)) * _wgslsmith_f_op_vec2_f32(var_2.a.xw - vec2<f32>(-1144f, var_2.a.x))), _wgslsmith_f_op_vec2_f32(max(var_2.a.yy, vec2<f32>(130f, 1056f))))), var_2.a.yw)));
    return arg_2;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 6u)]), global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(1u, 28816u), u_input.a), 6u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(~u_input.a, 6u)]))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(292f, global1[_wgslsmith_index_u32(u_input.a, 6u)]))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1129f) * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a, 6u)]))), 1194f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<i32>) -> StorageBuffer {
    global1 = array<f32, 6>();
    var var_0 = func_5(vec2<i32>(func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], -827f) + vec2<f32>(-153f, 733f)), vec3<bool>(arg_0.x, arg_2, arg_2), ~u_input.a), func_3(~vec3<u32>(1u, 37520u, u_input.a), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -1000f, 580f, global1[_wgslsmith_index_u32(1606u, 6u)])), Struct_4(-1i, 62457u, arg_1), Struct_3(vec4<f32>(global1[_wgslsmith_index_u32(0u, 6u)], 881f, global1[_wgslsmith_index_u32(36113u, 6u)], -118f))), arg_3.x), arg_1.x), Struct_1(select(arg_0.xyx, !vec3<bool>(arg_2, arg_0.x, arg_0.x), select(any(arg_0.zx), true, arg_0.x)), !(!all(vec2<bool>(false, false))), _wgslsmith_clamp_u32(min(~0u, u_input.a ^ u_input.a), ~(~0u), u_input.a), arg_1));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -907f);
    let var_2 = -132f;
    let var_3 = func_2(vec2<f32>(global1[_wgslsmith_index_u32(abs(u_input.a ^ (u_input.a & u_input.a)), 6u)], -173f), vec3<bool>(!(!(!arg_2)), arg_0.x, arg_2), u_input.a);
    return StorageBuffer(arg_3.x, arg_1.x, arg_3.x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~var_3.b, ~10714u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(28940u, u_input.a), vec2<u32>(88244u, u_input.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(1253u, u_input.a), vec2<u32>(var_3.b, 11641u))), select(vec2<u32>(1u, u_input.a), vec2<u32>(26646u, 34164u), vec2<bool>(arg_0.x, true)) >> (firstLeadingBit(vec2<u32>(var_3.b, var_3.b)) % vec2<u32>(32u))), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u), vec2<u32>(71926u, 31067u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(1u >= u_input.a);
    let x = u_input.a;
    s_output = func_1(select(!vec4<bool>(true, true, u_input.a <= 29450u, true), vec4<bool>(false, select(global1[_wgslsmith_index_u32(4294967295u, 6u)] < global1[_wgslsmith_index_u32(u_input.a, 6u)], true, all(vec4<bool>(false, true, true, false))), true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))), all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), _wgslsmith_sub_vec4_i32(-vec4<i32>(0i << (1u % 32u), _wgslsmith_clamp_i32(-2147483647i, 0i, 2147483647i), reverseBits(49251i), 0i), ~(abs(vec4<i32>(54350i, -1i, -1i, 34080i)) << (~vec4<u32>(1u, 12245u, u_input.a, u_input.a) % vec4<u32>(32u)))), true, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, -2147483647i)), select(vec2<i32>(_wgslsmith_div_i32(2147483647i, -1i), -66387i), min(vec2<i32>(46084i, -2147483647i), vec2<i32>(1i, 1i)), true)));
}

