struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_3 = Struct_3(1510f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = vec4<bool>(true, countOneBits(u_input.b.x) != u_input.d.x, all(!vec4<bool>(!arg_1.b.x, any(vec4<bool>(arg_1.b.x, arg_1.b.x, true, false)), arg_1.b.x, arg_1.b.x)), !select(arg_1.b.x | (global0.x != 4891i), !any(vec3<bool>(false, arg_1.b.x, arg_1.b.x)), all(!vec3<bool>(true, arg_1.b.x, arg_1.b.x))));
    let var_1 = arg_0.a;
    var_0 = select(!(!select(!vec4<bool>(true, arg_1.b.x, false, arg_1.b.x), vec4<bool>(true, arg_1.b.x, true, var_0.x), any(vec4<bool>(false, var_0.x, true, arg_1.b.x)))), vec4<bool>(var_0.x, true, select(any(!vec4<bool>(arg_1.b.x, false, true, false)), any(vec2<bool>(var_0.x, false)) && var_0.x, true), u_input.b.x > 16342u), vec4<bool>(true, false, countOneBits(~4294967295u) >= u_input.d.x, var_0.x));
    let var_2 = var_0.x && var_0.x;
    var var_3 = min(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(global0.zwy, countOneBits(vec3<i32>(global0.x, -9696i, u_input.c.x))), (vec3<i32>(-1i) * -vec3<i32>(27472i, -23348i, -34989i)) & (abs(vec3<i32>(-2147483647i, global0.x, global0.x)) & vec3<i32>(global0.x, 44074i, global0.x))), vec3<i32>(-42261i, i32(-1i) * -1i, max(1i, -1i)));
    return countOneBits(max(vec4<i32>(i32(-1i) * -867i, _wgslsmith_clamp_i32(global0.x, -30167i, 2147483647i), u_input.c.x << (55622u % 32u), var_3.x), ~select(vec4<i32>(global0.x, -56078i, -33158i, -25962i), vec4<i32>(-65738i, 0i, var_3.x, var_3.x), vec4<bool>(true, var_0.x, var_2, arg_1.b.x))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.d.x, _wgslsmith_div_u32(u_input.e.x, 34467u), _wgslsmith_add_u32(u_input.e.x, 1u), 1u), u_input.e, u_input.b) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = -(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, global0.x, u_input.c.x)) | ~firstLeadingBit(func_3(Struct_3(-1744f), Struct_1(arg_0.a, vec2<bool>(arg_0.b.x, arg_0.b.x))));
    let var_0 = Struct_2(u_input.e, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-575f, 854f, true))) * _wgslsmith_f_op_f32(-arg_0.a)), select(!vec2<bool>(arg_0.b.x, true), !arg_0.b, true)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), select(!arg_0.b, arg_0.b, vec2<bool>(false, u_input.a <= u_input.c.x))));
    var var_1 = var_0.b;
    var_1 = arg_0;
    let var_2 = -42349i;
    return var_0.a.x <= ~var_0.a.x;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.a, global1.a))))) + _wgslsmith_f_op_f32(step(-689f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1911f), 1395f)))), vec2<bool>(true, (i32(-1i) * -20908i) < u_input.c.x));
    let var_1 = (~vec3<u32>(~u_input.b.x, _wgslsmith_sub_u32(u_input.d.x, u_input.e.x), 35168u) << (~(~(~u_input.e.zzy)) % vec3<u32>(32u))) << (u_input.b.yzy % vec3<u32>(32u));
    global1 = Struct_3(arg_0);
    let var_2 = Struct_3(1702f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f - _wgslsmith_f_op_f32(-var_0.a))));
    return countOneBits(_wgslsmith_sub_vec4_i32((vec4<i32>(global0.x, -1i, 8536i, -72506i) ^ vec4<i32>(62486i, 1i, arg_2, arg_2)) & (vec4<i32>(2147483647i, global0.x, 2147483647i, arg_2) ^ vec4<i32>(arg_2, global0.x, 20908i, arg_2)), min(vec4<i32>(global0.x, 0i, 56711i, -1i), vec4<i32>(-6193i, 1i, arg_2, global0.x)) ^ vec4<i32>(-2147483647i, 0i, 1i, arg_2)) | vec4<i32>(~1i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, -17146i, 20348i), vec4<i32>(-33746i, arg_2, arg_2, -2147483647i))), 25784i, 1i));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_4) -> f32 {
    global0 = select(~func_4(arg_1.x, func_2(Struct_1(arg_1.x, vec2<bool>(false, true))), _wgslsmith_sub_i32(0i, arg_2.c)), _wgslsmith_add_vec4_i32(vec4<i32>(func_4(-1406f, true, global0.x).x, _wgslsmith_div_i32(arg_0, arg_0), global0.x, u_input.a & arg_0), -reverseBits(vec4<i32>(-45725i, -32233i, 1i, global0.x))), true || func_2(Struct_1(global1.a, vec2<bool>(false, false)))) | (-(~(-vec4<i32>(u_input.c.x, -13689i, global0.x, -50870i))) << (u_input.b % vec4<u32>(32u)));
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(31437i, global0.x, arg_0, -1i), func_4(arg_1.x, false, 1i), func_2(Struct_1(222f, vec2<bool>(true, false)))), abs(-vec4<i32>(u_input.c.x, 27200i, 1i, -69187i))) << (~(~25483u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, u_input.e.x, 4294967295u), u_input.e)) % 32u), u_input.a & 0i, abs(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 19274i, -59072i, arg_0), vec4<i32>(-23298i, 2147483647i, arg_0, -54312i))), -1579i)));
    global0 = vec4<i32>(u_input.a, _wgslsmith_mod_i32(1441i, var_0), 1i, var_0 & 15135i);
    return 617f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(-412f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(13902i, vec2<f32>(global1.a, global1.a), Struct_4(Struct_3(global1.a), global1.a, 2147483647i))), _wgslsmith_f_op_f32(global1.a + 976f))), _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * 362f))));
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a, global0.x, global0.x, 1i), vec4<i32>(u_input.a, u_input.a, 2279i, -34605i)) ^ _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, 0i, 2147483647i, u_input.c.x), vec4<i32>(global0.x, 48919i, 0i, 41987i) ^ vec4<i32>(u_input.a, global0.x, global0.x, u_input.a)), vec4<i32>(global0.x, -u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -25634i), _wgslsmith_div_i32(7215i, -1i)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(49572u, 8483u, u_input.b.x, 1u)) % vec4<u32>(32u))), vec4<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.x, -9193i, 50508i), vec4<i32>(u_input.c.x, 0i, u_input.a, -32646i)), vec4<i32>(1i, global0.x, global0.x, u_input.a) << (vec4<u32>(u_input.b.x, u_input.d.x, 42350u, 25727u) % vec4<u32>(32u))), min(global0.x, 1i), _wgslsmith_div_i32(u_input.c.x & ~0i, u_input.a | -44822i), abs(u_input.c.x)));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a * 485f), 295f, true)))));
    let var_1 = Struct_1(1000f, !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), false));
    var var_2 = vec3<bool>(true, func_2(var_1), var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-744f, abs(~(u_input.e & vec4<u32>(u_input.e.x, 4294967295u, u_input.d.x, 0u))));
}

