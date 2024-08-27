struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(72265u, 9483u, 1u, 1u, 0u, 56537u);

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<u32, 6>();
    var var_0 = arg_0;
    var var_1 = global1.c;
    let var_2 = Struct_3(vec2<bool>(any(!vec2<bool>(arg_0, arg_0)), all(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0, false), any(vec4<bool>(true, arg_0, true, arg_0))))), ~vec2<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 6u)], 4294967295u), _wgslsmith_add_u32(arg_2.d.b.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(arg_2.d.b.x, 6u)], 0u))));
    let var_3 = (!(!all(vec4<bool>(true, arg_0, var_2.a.x, true))) | false) || (!arg_0 & var_2.a.x);
    return !vec4<bool>(true, var_3 || true, !var_2.a.x, !all(!vec3<bool>(var_3, arg_0, var_2.a.x)));
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<u32, 6>();
    var var_0 = _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(max(global1.a.x, -134f)));
    var var_1 = select(select(vec4<bool>(all(vec3<bool>(false, arg_0.c.a.x, true)) && select(arg_0.c.a.x, false, true), arg_0.c.a.x, (arg_0.c.a.x | arg_0.c.a.x) || arg_0.c.a.x, any(arg_0.c.a)), select(select(!vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, arg_0.c.a.x), select(vec4<bool>(false, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, false, arg_0.c.a.x), arg_0.c.a.x), vec4<bool>(true, false, arg_0.c.a.x, arg_0.c.a.x)), func_3(all(vec4<bool>(false, true, true, arg_0.c.a.x)), 1u, Struct_2(vec4<f32>(global1.a.x, -1061f, 383f, -211f), arg_0.e.a, arg_0.e.d.c.x, arg_0.d.d)), select(func_3(true, 48352u, arg_0.d), select(vec4<bool>(false, true, false, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, true, true, true), arg_0.c.a.x), arg_0.c.a.x)), !(!any(arg_0.c.a))), !vec4<bool>(arg_0.c.a.x, !any(vec4<bool>(true, arg_0.c.a.x, true, false)), any(!vec4<bool>(false, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x)), arg_0.c.a.x), !(!(!select(vec4<bool>(false, arg_0.c.a.x, false, arg_0.c.a.x), vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, false), vec4<bool>(arg_0.c.a.x, true, false, false)))));
    let var_2 = true;
    var var_3 = u_input.c;
    return ~u_input.d;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    global0 = array<u32, 6>();
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_mult_u32(select(abs(u_input.d), func_2(Struct_4(arg_2, Struct_1(global1.a, u_input.a.zx, global1.c, -278f, global1.e), arg_3, Struct_2(global1.a, vec4<f32>(576f, -860f, 483f, 145f), u_input.c, Struct_1(vec4<f32>(1351f, global1.d, global1.a.x, global1.d), u_input.b.zx, vec3<i32>(-1i, -48632i, u_input.c), 1259f, global0[_wgslsmith_index_u32(1u, 6u)])), Struct_2(global1.a, vec4<f32>(1000f, global1.d, global1.d, -1076f), u_input.c, Struct_1(global1.a, arg_3.b, arg_2.wzz, global1.a.x, global1.b.x)))), true), abs(~52448u))), firstLeadingBit(~(~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.b.x, global1.b.x), 6u)])), min(_wgslsmith_add_u32(27592u, ~(47097u << (0u % 32u))), abs(_wgslsmith_mod_u32(0u, u_input.d)) & max(~4294967295u, _wgslsmith_dot_vec2_u32(arg_3.b, u_input.b.zy))), 0u);
    let var_1 = Struct_5(var_0.wz, _wgslsmith_add_i32(-4922i, i32(-1i) * -1i), u_input.a.x >= ~max(2158u, _wgslsmith_add_u32(8309u, global1.e)));
    let var_2 = Struct_4(arg_2, Struct_1(vec4<f32>(global1.d, _wgslsmith_div_f32(global1.d, global1.a.x), _wgslsmith_f_op_f32(global1.a.x + global1.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-599f + global1.d)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(79631u, ~45201u), var_0.zz, _wgslsmith_add_vec2_u32(global1.b, ~u_input.a.yy)), countOneBits(vec3<i32>(u_input.c, countOneBits(-19775i), var_1.b | 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(635f, global1.a.x)))), ~4294967295u), Struct_3(!arg_1.yy, reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, u_input.a.x), vec2<u32>(1u, arg_0))) >> (var_0.xz % vec2<u32>(32u))), Struct_2(vec4<f32>(global1.d, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-933f, global1.a.x))))), vec4<f32>(-1845f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(419f, -1220f)))), global1.a.x, _wgslsmith_f_op_f32(global1.a.x * -923f)), -firstLeadingBit(var_1.b), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(global1.a)), _wgslsmith_f_op_vec4_f32(-global1.a))), countOneBits(arg_3.b), ~global1.c & _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.x, 23398i, arg_2.x), vec3<i32>(var_1.b, -2147483647i, 1i)), _wgslsmith_f_op_f32(trunc(1f)), 10283u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-394f, global1.a.x, -453f, global1.d), global1.a, global1.d <= global1.d))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(step(176f, global1.a.x))), -518f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.d, -1680f)) - _wgslsmith_f_op_f32(min(1000f, 1493f))), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_add_i32(reverseBits(1i), firstTrailingBit(u_input.c) & 0i), Struct_1(vec4<f32>(global1.a.x, -391f, global1.d, global1.a.x), arg_3.b, global1.c, global1.a.x, 81673u)));
    let var_3 = Struct_5(~(vec2<u32>(4294967295u, 36087u) >> (select(vec2<u32>(var_0.x, 24241u), global1.b, false) % vec2<u32>(32u))) & reverseBits(vec2<u32>(4294967295u, 0u)), -global1.c.x, var_2.c.a.x);
    return abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, ~arg_0 | ~var_2.e.d.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, arg_3.b.x), reverseBits(4294967295u))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_i32(-global1.c.yy, global1.c.xx);
    var var_1 = 996f;
    let var_2 = ~func_1(~(~max(38458u, 9319u)), vec3<bool>(min(49782u, global1.e) <= ~66535u, !(2147483647i == u_input.c), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))), ~vec4<i32>(0i, _wgslsmith_mult_i32(global1.c.x, 2147483647i), -global1.c.x, _wgslsmith_add_i32(global1.c.x, 0i)), Struct_3(vec2<bool>(true, true), ~_wgslsmith_add_vec2_u32(global1.b, vec2<u32>(0u, u_input.d))));
    let var_3 = firstTrailingBit(global1.c.xz);
    var var_4 = Struct_1(vec4<f32>(-666f, global1.a.x, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(min(820f, global1.d))))), vec2<u32>(~_wgslsmith_add_u32(var_2, 0u), 4294967295u), global1.c, 554f, ~16735u);
    var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(var_4.a - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.x + 1000f))), var_4.a.x, var_4.a.x, _wgslsmith_f_op_f32(trunc(971f)))), max(~(~(~vec2<u32>(global1.e, var_4.e))), vec2<u32>(~(~var_2), _wgslsmith_div_u32(var_4.b.x, global0[_wgslsmith_index_u32(global1.b.x, 6u)]) | 10779u)), global1.c, var_4.a.x, 4294967295u);
    let var_5 = Struct_1(vec4<f32>(1522f, _wgslsmith_f_op_f32(var_4.a.x * _wgslsmith_f_op_f32(min(-284f, _wgslsmith_f_op_f32(-var_4.a.x)))), var_4.a.x, _wgslsmith_f_op_f32(step(var_4.d, 1f))), u_input.a.zz, global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))))), global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-global1.c, ~(-global1.c), vec3<f32>(_wgslsmith_f_op_f32(trunc(-739f)), _wgslsmith_f_op_f32(sign(global1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.d))))), _wgslsmith_div_u32(~var_2, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, 2810u, u_input.a.x)), firstLeadingBit(vec4<u32>(u_input.b.x, 21231u, var_2, 4631u))), 6u)] << (1u % 32u)));
}

