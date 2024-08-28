struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: i32;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: u32;

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    global3 = _wgslsmith_mod_u32(u_input.b, ~firstLeadingBit(~u_input.b >> (0u % 32u)));
    let var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, u_input.b, 0u, _wgslsmith_mod_u32(u_input.b, arg_2.x)), ~max(vec4<u32>(arg_1.x, 19418u, 91184u, u_input.b), vec4<u32>(arg_2.x, 29744u, arg_1.x, 0u)))), 22u)];
    var var_1 = ~u_input.b;
    let var_2 = -_wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(-vec2<i32>(60612i, var_0.a.a), ~vec2<i32>(global4.x, -41094i)), ~(-vec2<i32>(-2147483647i, 1i)));
    var var_3 = -firstLeadingBit(0i);
    return arg_2.x;
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x, u_input.a, -60054i), vec3<i32>(u_input.a, global4.x, global4.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-25974i, -6102i, u_input.a), vec3<i32>(-2147483647i, -1i, u_input.a))), _wgslsmith_mod_i32(u_input.a, 3498i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a, -1i, global4.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-28731i, 1i, global4.x), vec3<i32>(-2147483647i, global4.x, -1i), vec3<i32>(-15665i, u_input.a, global4.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-33020i, 0i, -2147483647i), vec3<i32>(6102i, u_input.a, 26337i)), vec3<i32>(global4.x, -32180i, 2147483647i) ^ vec3<i32>(global4.x, global4.x, 48644i))), select(vec3<bool>(true, true, true), vec3<bool>(u_input.a > -55174i, true, true), countOneBits(global4.x) > 9098i)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(22102i, 0i, -36738i) ^ vec3<i32>(14095i, 2147483647i, u_input.a)), abs(min(vec3<i32>(u_input.a, -64263i, -1i), vec3<i32>(u_input.a, u_input.a, -1i)))), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -52481i), vec3<i32>(2147483647i, 2147483647i, global4.x)), ~(-vec3<i32>(u_input.a, global4.x, global4.x)))));
    let var_1 = vec2<bool>(true, true);
    global3 = _wgslsmith_dot_vec2_u32(((vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) & abs(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, 4294967295u))) << (vec2<u32>(69515u, reverseBits(13614u)) % vec2<u32>(32u)), ~vec2<u32>(abs(4294967295u), ~u_input.b));
    global4 = var_0.xy;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(521f - _wgslsmith_f_op_f32(abs(1159f)))));
    return 1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>) -> vec4<bool> {
    let var_0 = all(!select(vec3<bool>(true, any(vec3<bool>(false, true, true)), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), select(true, true, false)));
    global4 = -vec2<i32>(-1437i, 2147483647i);
    let var_1 = Struct_1(select(!vec4<bool>(var_0 || false, var_0, var_0, true), !select(vec4<bool>(var_0, true, true, true), !vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(var_0, true, false, false)), !select(!vec4<bool>(var_0, false, var_0, var_0), !vec4<bool>(var_0, true, false, var_0), !vec4<bool>(true, var_0, false, false))), max(firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, arg_1.x, u_input.b, arg_0.x), vec4<u32>(8551u, 4294967295u, u_input.b, arg_0.x))), arg_0), _wgslsmith_add_i32(_wgslsmith_mult_i32(48496i, func_3()), u_input.a) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, firstTrailingBit(1i), u_input.a), vec3<i32>(-1i) * -vec3<i32>(u_input.a, 0i, 1214i)));
    global1 = global4.x;
    let var_2 = Struct_2(-2147483647i);
    return select(var_1.a, select(vec4<bool>(any(vec3<bool>(var_1.c, true, var_0)), _wgslsmith_clamp_i32(0i, -24122i, -2147483647i) == ~var_2.a, var_0, any(var_1.a.zz) & var_0), select(!vec4<bool>(false, var_1.a.x, var_1.c, true), vec4<bool>(var_1.c, var_1.c, all(var_1.a.xy), global4.x >= 0i), var_0), !select(var_1.a, var_1.a, !var_1.a)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, reverseBits(u_input.a)), ~(-(vec2<i32>(u_input.a, global4.x) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)))));
    var var_0 = 0u;
    let var_1 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 7053u)), ~func_1(-1000f, vec2<u32>(0u, u_input.b), vec3<u32>(u_input.b, u_input.b, 79338u)), ~u_input.b, u_input.b), ~(~max(vec4<u32>(u_input.b, u_input.b, 16850u, u_input.b), vec4<u32>(4294967295u, 9855u, 65909u, u_input.b))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1509f * 1125f), -233f)) - -1209f) * _wgslsmith_f_op_f32(f32(-1f) * -1129f));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - var_2) * _wgslsmith_f_op_f32(max(-575f, -2311f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 - -1000f) - 1f), any(vec4<bool>(-1149f == var_2, _wgslsmith_mod_i32(u_input.a, global4.x) > 2147483647i, any(func_2(var_1, var_1.yxy)), all(vec2<bool>(true, false)))), true);
    let var_4 = Struct_2(-u_input.a);
    var var_5 = -616f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, select(reverseBits(countOneBits(vec3<i32>(-31420i, -31322i, -7662i))) << (~var_1.wxz % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(0i, -var_4.a), ~global4.x | firstLeadingBit(-8485i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, var_4.a), vec3<i32>(1i, global4.x, 1i)))), any(!(!vec4<bool>(var_3.x, true, var_3.x, true)))), firstLeadingBit(u_input.b), vec2<i32>(u_input.a, -global4.x));
}

