struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.b.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 32u)], 4294967295u)) >> (4773u % 32u), ~_wgslsmith_sub_u32(3512u, 0u), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(37312u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(417u, 32u)], 32u)], 32u)]) ^ 1u, 32u)]));
    var var_1 = ~_wgslsmith_mult_vec4_u32(u_input.a, select(u_input.a, select(~u_input.a, vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x) ^ u_input.a, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false))), vec4<bool>(true, select(false, true, false), true, 89697u > var_0)));
    var_1 = select(u_input.a, vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], countOneBits(var_1.x) << (~global0[_wgslsmith_index_u32(4294967295u, 32u)] % 32u)), 65896u, 83776u, ~(~8958u)), any(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false)), false)));
    global0 = array<u32, 32>();
    var var_2 = Struct_1(any(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), any(vec4<bool>(false, false, false, false)))), vec4<u32>(u_input.a.x, 26214u, global0[_wgslsmith_index_u32(4294967295u, 32u)], 92699u), _wgslsmith_mult_u32(~_wgslsmith_mult_u32(min(var_1.x, 28896u), var_1.x), ~_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(71060u, 32u)] | 0u)), _wgslsmith_mod_vec3_u32(var_1.xwy, u_input.a.xxw), false);
    return ~vec2<u32>(~(u_input.a.x >> (var_2.d.x % 32u)), var_1.x) & u_input.a.yy;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_0 = Struct_3(vec3<u32>(2807u, ~_wgslsmith_dot_vec2_u32(func_3(), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(95186u, 32u)], 32u)], 32u)], 32u)])), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(21771u, u_input.a.x)), ~vec2<u32>(u_input.a.x, 0u)), ~(~u_input.b.x))));
    var var_1 = Struct_1(true, _wgslsmith_sub_vec4_u32(u_input.a, min(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)]), var_0.a.x, 19628u), ~u_input.a)), ~0u, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, max(firstTrailingBit(u_input.b), ~vec3<u32>(global0[_wgslsmith_index_u32(57313u, 32u)], var_0.a.x, 4294967295u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(76670u, u_input.b.x, 1u), vec3<u32>(0u, 293u, 0u))), vec3<u32>(~(~var_0.a.x), var_0.a.x, ~41766u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.b)), -451f))) >= _wgslsmith_f_op_f32(-930f + arg_0.b));
    let var_2 = -_wgslsmith_clamp_i32(reverseBits(abs(~arg_0.a.x)), -23832i, arg_0.a.x & 2147483647i);
    return Struct_1(true && (false & (_wgslsmith_f_op_f32(floor(arg_0.b)) == _wgslsmith_f_op_f32(ceil(arg_0.b)))), vec4<u32>(~reverseBits(reverseBits(var_0.a.x)), var_1.b.x, _wgslsmith_add_u32(~var_1.d.x, u_input.a.x) | _wgslsmith_dot_vec4_u32(var_1.b | vec4<u32>(var_1.b.x, 9444u, 55927u, 1u), vec4<u32>(var_1.c, var_1.c, u_input.b.x, 1u)), 58095u), select(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(4294967295u, 0u, 0u, u_input.b.x)))), var_0.a.x, select(any(!vec2<bool>(var_1.a, var_1.e)), !(true || var_1.a), all(select(vec4<bool>(true, false, var_1.a, false), vec4<bool>(var_1.a, var_1.e, var_1.a, var_1.a), vec4<bool>(true, var_1.a, true, var_1.a))))), vec3<u32>(~((0u ^ var_1.c) >> ((var_1.d.x | 0u) % 32u)), 4294967295u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 63283u), vec2<u32>(0u, var_1.b.x)), 1u, abs(61518u))), var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_3) -> vec4<i32> {
    let var_0 = ~u_input.b;
    let var_1 = Struct_2(-(~_wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, 35589i, arg_1)), ~vec3<i32>(23677i, arg_1, 21748i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * 492f))))));
    var var_2 = arg_2.yz;
    var_2 = !select(vec2<bool>(var_2.x, !var_2.x), arg_2.yx, !arg_2.xy);
    return abs(vec4<i32>(15794i, _wgslsmith_dot_vec2_i32(-var_1.a.yy, firstLeadingBit(vec2<i32>(1i, arg_1) >> (vec2<u32>(arg_3.a.x, u_input.b.x) % vec2<u32>(32u)))), countOneBits(arg_1), countOneBits(_wgslsmith_mult_i32(min(arg_1, 19998i), 10744i))));
}

fn func_1() -> vec3<i32> {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(func_4(func_2(Struct_2(vec3<i32>(-2147483647i, 0i, -8666i), -268f)), _wgslsmith_div_i32(-10555i, 62416i), vec3<bool>(true, true, true), Struct_3(vec3<u32>(u_input.a.x, 107666u, 9612u))), -vec4<i32>(2362i, -16161i, 55579i, -22942i)) & abs(1i), -2147483647i);
    let var_1 = vec3<i32>(0i, 2147483647i, _wgslsmith_mult_i32(firstTrailingBit(-1i) << (u_input.b.x % 32u), -2147483647i));
    let var_2 = firstLeadingBit(var_1.xz);
    var var_3 = Struct_3(u_input.b);
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(5025i, 16855i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -28931i, var_2.x), var_1)), var_2.x), var_2);
    return vec3<i32>(var_1.x & ~abs(var_1.x ^ -1i), _wgslsmith_clamp_i32(countOneBits(var_0.x), firstLeadingBit(-6920i) << (~4294967295u % 32u), abs(-var_2.x)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(min(select(func_1(), func_4(func_2(Struct_2(vec3<i32>(1i, 403i, -55308i), -472f)), 1i, vec3<bool>(false, false, false), Struct_3(u_input.a.wzz)).yxx, true), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2243f + 808f) * _wgslsmith_f_op_f32(abs(488f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-736f, -182f))))));
    global0 = array<u32, 32>();
    var var_1 = Struct_1(-239f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), ~u_input.a, ~(~countOneBits(26488u)) << ((58156u ^ u_input.b.x) % 32u), u_input.a.zww, all(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec4<bool>(false, false, true, true)) | any(vec4<bool>(true, false, false, true)))));
    let var_2 = var_1.a;
    global0 = array<u32, 32>();
    let var_3 = select(var_0.a.yz, var_0.a.yx, select(vec2<bool>(false, !all(vec2<bool>(false, false))), vec2<bool>(true, var_1.e), (false & (true | var_1.e)) && true));
    var var_4 = -var_0.a.x;
    var_1 = Struct_1(var_1.a | false, ~(firstLeadingBit(vec4<u32>(67664u, u_input.a.x, 52370u, u_input.b.x)) ^ vec4<u32>(min(global0[_wgslsmith_index_u32(36401u, 32u)], global0[_wgslsmith_index_u32(var_1.c, 32u)]), global0[_wgslsmith_index_u32(1u, 32u)], firstLeadingBit(var_1.d.x), abs(49403u))), 22089u, u_input.a.wxz, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, var_0.a.x, -1i), _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(var_1.c, var_1.c), ~(~var_1.c)), ~abs(_wgslsmith_mult_vec2_u32(u_input.b.xy, var_1.b.yy))), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1333f, 182f, var_0.b))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1002f))), _wgslsmith_f_op_f32(exp2(var_0.b)))));
}

