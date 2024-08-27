struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(202f, 198f, -1238f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, -391f, -1565f) - vec3<f32>(1180f, -685f, 1206f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -188f) - vec3<f32>(1129f, global0.x, 215f)), true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -168f, global0.x) * vec3<f32>(global0.x, global0.x, 1115f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1113f)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(-1000f, -885f))))));
    var var_0 = max(~countOneBits(max(-5642i, -30582i | u_input.a)), u_input.c.x | 3430i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(913f, -750f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.yz + global0.xy), global0.yz)) + global0.yy)));
    var_0 = ~_wgslsmith_add_i32(~arg_0.x, ~(arg_0.x ^ -39128i) & u_input.a);
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -1i, -3710i, u_input.a)), -_wgslsmith_sub_vec4_i32(arg_0, arg_0)));
    return !(!(all(vec3<bool>(true, true, true)) & all(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(select(vec4<bool>(all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, false)), false), vec4<bool>(true, true, func_3(vec4<i32>(u_input.c.x, 34647i, u_input.c.x, 2147483647i)), all(vec2<bool>(true, false))), true && (131f > global0.x)), u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, 789f), _wgslsmith_f_op_f32(1064f - 378f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(401f, 564f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-122f, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -460f) + vec3<f32>(265f, global0.x, 1541f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1288f, global0.x, global0.x)))), vec2<bool>(global0.x == _wgslsmith_f_op_f32(ceil(global0.x)), true)));
    var var_1 = vec4<u32>(min(~1u, ~_wgslsmith_sub_u32(0u & u_input.b.x, min(19582u, 0u))), ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b << (~u_input.b % vec4<u32>(32u))), 1u, 22163u);
    var var_2 = !(!all(vec4<bool>(false, false, any(var_0.a.a.xxw), true)));
    let var_3 = select(!(!(var_0.a.b.x <= u_input.a)) | false, all(var_0.a.e), true);
    let var_4 = var_0.a.a;
    return vec2<u32>(u_input.b.x, firstTrailingBit(~4294967295u));
}

fn func_1() -> bool {
    var var_0 = any(vec2<bool>(false, false));
    var var_1 = !(false & (75932u == ~u_input.b.x)) & (290f > global0.x);
    let var_2 = func_2(max(reverseBits(~0u), max(~(u_input.b.x >> (u_input.b.x % 32u)), ~u_input.b.x)));
    global0 = vec3<f32>(-622f, global0.x, _wgslsmith_div_f32(-148f, _wgslsmith_f_op_f32(f32(-1f) * -1224f)));
    var var_3 = vec2<i32>(u_input.c.x, ~(~u_input.a ^ u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1205f, global0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f)))) >= _wgslsmith_f_op_f32(-global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(all(vec2<bool>(u_input.c.x <= u_input.c.x, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), -1261f < global0.x))), !select(vec2<bool>(u_input.a >= u_input.c.x, func_1()), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(any(vec3<bool>(false, false, true)) && true, true), !vec2<bool>(true, 12043u > u_input.b.x), select((1i < u_input.a) == select(true, false, true), all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), true)));
    var var_1 = ~(~4294967295u);
    var var_2 = _wgslsmith_add_vec2_u32(max(u_input.b.xy, u_input.b.yw), u_input.b.wz);
    var var_3 = Struct_3(firstLeadingBit(u_input.b.wzz), Struct_1(select(select(!vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(true, false, var_0.x, false), false), vec4<bool>(true, !var_0.x, true, var_0.x), !select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), true)), select(vec3<i32>(u_input.a, 9968i, 2147483647i), u_input.c, !vec3<bool>(var_0.x, false, false)), -229f, _wgslsmith_f_op_vec3_f32(vec3<f32>(540f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.x, -1973f) - vec3<f32>(global0.x, global0.x, global0.x))), select(vec2<bool>(true, true), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), true), var_0.x)));
    var var_4 = ~max(vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.c.x), -34515i), var_3.b.b.yz);
    var var_5 = vec3<u32>(_wgslsmith_div_u32(var_2.x, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_3.a.x, 1u), firstLeadingBit(var_3.a.x))), 1u, min(~reverseBits(_wgslsmith_mod_u32(var_2.x, 4294967295u)), 21469u));
    let var_6 = -(~(-max(vec4<i32>(u_input.c.x, -25940i, 53928i, var_3.b.b.x), vec4<i32>(u_input.a, var_4.x, var_4.x, -2147483647i))) >> (abs(vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.a, u_input.b.wyy), ~10709u, 1u & var_2.x, ~var_3.a.x)) % vec4<u32>(32u)));
    let var_7 = Struct_3(~(~select(~u_input.b.xyw, var_3.a, select(vec3<bool>(var_3.b.e.x, false, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_3.b.e.x, var_3.b.e.x, false)))), Struct_1(select(select(var_3.b.a, vec4<bool>(var_3.b.a.x, var_0.x, var_3.b.a.x, var_3.b.e.x), 52884i >= var_4.x), !(!vec4<bool>(false, var_0.x, false, var_3.b.e.x)), var_3.b.a), -vec3<i32>(u_input.a << (u_input.b.x % 32u), i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(2147483647i, 0i, var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), var_3.b.d, select(!select(var_3.b.a.zz, vec2<bool>(true, false), vec2<bool>(var_0.x, var_3.b.a.x)), vec2<bool>(var_0.x, all(var_3.b.a.zxw)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f + -2083f))), -116f, -1103f), reverseBits(vec4<u32>(u_input.b.x, 1u, ~max(u_input.b.x, 36402u), 4294967295u)), var_6, -_wgslsmith_div_i32(-_wgslsmith_sub_i32(24012i, u_input.c.x), max(var_7.b.b.x, _wgslsmith_mod_i32(-2147483647i, -1i))));
}

