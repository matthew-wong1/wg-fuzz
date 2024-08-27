struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = true;
    let var_1 = Struct_4(Struct_2(Struct_1(var_0, ~_wgslsmith_mult_vec4_u32(vec4<u32>(13547u, 1u, u_input.a.x, 8320u), vec4<u32>(u_input.a.x, u_input.a.x, 78067u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-463f, 1201f, 2025f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(3195f, -1624f, -1055f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1529f, 362f, 2242f), vec3<f32>(222f, 2692f, -149f)))))), select(vec3<i32>(-arg_0, (global0.x & 35896i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, arg_0, global0.x), vec3<i32>(0i, 47932i, global0.x)), -global0.x), ~_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -29093i, arg_0), vec3<i32>(arg_0, -2147483647i, -31354i)) | vec3<i32>(abs(global0.x), 21344i, min(-1i, 28110i)), u_input.a.x != _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), abs(u_input.a.x), 27320u)), true, vec2<u32>(1u, _wgslsmith_add_u32(select(38472u, 63263u, var_0) << (58416u % 32u), 4294967295u)));
    let var_2 = firstLeadingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, var_1.d.x, 1u), ~var_1.a.a.b) >> (35775u % 32u));
    let var_3 = !(!vec4<bool>(all(vec4<bool>(false, var_0, var_1.a.a.a, var_0)), var_0, false, var_1.c));
    global0 = var_1.b;
    return _wgslsmith_sub_i32(~(-(~global0.x)) | reverseBits(-52893i), -1i);
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(Struct_1(!any(!vec2<bool>(true, arg_0.a)), vec4<u32>(u_input.a.x, ~(~1u), ~1u, arg_0.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-390f - 2106f), -1390f) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(round(arg_0.c.x)), arg_0.c.x))));
    var var_1 = 60027u;
    var var_2 = arg_0;
    var var_3 = Struct_1(false, firstTrailingBit(vec4<u32>(var_2.b.x, ~0u, ~abs(u_input.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.b.wzw, vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u)), ~vec3<u32>(4294967295u, 0u, arg_0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.a.c))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.c.x, arg_0.c.x, 310f), vec3<f32>(arg_0.c.x, var_0.a.c.x, var_2.c.x)))))));
    let var_4 = ~(~(~var_3.b.wx));
    return _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(1i), global0.x, -20679i), -(~vec3<i32>(-8461i, global0.x, -2147483647i) >> (~vec3<u32>(26992u, 1u, var_0.a.b.x) % vec3<u32>(32u))), (-vec3<i32>(global0.x, global0.x, global0.x) << ((vec3<u32>(var_3.b.x, u_input.a.x, 0u) ^ vec3<u32>(4294967295u, 8078u, var_2.b.x)) % vec3<u32>(32u))) << ((_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.b.x, arg_0.b.x, 12594u), var_0.a.b.yzz) | (vec3<u32>(4294967295u, var_0.a.b.x, arg_0.b.x) ^ arg_0.b.zyz)) % vec3<u32>(32u))), vec3<i32>(global0.x | (-1i & global0.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-6326i, -1i, -652i, -1i), vec4<i32>(global0.x, 1i, global0.x, 2147483647i), var_3.a) & ~vec4<i32>(-1i, 2147483647i, global0.x, -2147483647i), _wgslsmith_sub_vec4_i32(~vec4<i32>(global0.x, 2147483647i, 1i, global0.x), vec4<i32>(11944i, 5730i, 9451i, 16917i))), func_3(global0.x)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = vec3<bool>(arg_0 && any(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), !select(arg_0, !any(vec2<bool>(arg_0, arg_0)), false | arg_0), ~4294967295u > u_input.a.x);
    global0 = abs(func_2(Struct_1(true || arg_0, ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32902u), vec3<f32>(-2380f, -961f, -1000f)))) & vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(1i), global0.x), abs(-16241i), -2147483647i);
    global0 = func_2(Struct_1(arg_0, reverseBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 66295u)) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-908f, 2544f, 206f), vec3<f32>(448f, 1658f, 320f), var_0))))) << (abs(select(max(max(vec3<u32>(u_input.a.x, 65079u, u_input.a.x), vec3<u32>(28986u, u_input.a.x, u_input.a.x)), vec3<u32>(1u, 0u, 24275u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), u_input.a ^ u_input.a), arg_0)) % vec3<u32>(32u));
    var var_1 = Struct_4(Struct_2(Struct_1(all(select(var_0.yz, vec2<bool>(true, true), true)), max(vec4<u32>(42948u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(2665u, 1u, 4294967295u, 4294967295u) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 13071u) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(select(-329f, -1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2411f), -389f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1099f)), _wgslsmith_f_op_f32(-1447f + -1051f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f - -209f)))), ~(-(vec3<i32>(11240i, global0.x, -46221i) >> (u_input.a % vec3<u32>(32u)))), any(var_0), vec2<u32>(min(1u, 0u), ~countOneBits(u_input.a.x) >> (~5668u % 32u)));
    var_1 = Struct_4(var_1.a, select(vec3<i32>(1i, var_1.b.x, -12399i), vec3<i32>(var_1.b.x, 15960i, var_1.b.x) & _wgslsmith_add_vec3_i32(-var_1.b, -var_1.b), var_0.x), false, select(vec2<u32>(~35682u, 56391u), countOneBits(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(21899u, var_1.a.a.b.x), vec2<u32>(u_input.a.x, u_input.a.x), var_1.a.a.b.zx), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yx))), var_0.zy));
    return Struct_3(var_1.a.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<i32> {
    global0 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, 0i, global0.x), vec3<i32>(-5899i, 2147483647i, -1015i)), abs(vec3<i32>(-2147483647i, global0.x, arg_2.x))), _wgslsmith_sub_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, 0i, global0.x), vec3<i32>(arg_2.x, 1i, global0.x)) | vec3<i32>(global0.x, ~(-1i), 1i), max(reverseBits(vec3<i32>(global0.x, arg_2.x, arg_2.x)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.x, -2147483647i), vec3<i32>(global0.x, arg_2.x, global0.x))) | (vec3<i32>(-1i) * -vec3<i32>(arg_2.x, 2147483647i, arg_2.x))), abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(-22239i, arg_2.x, arg_2.x), vec3<i32>(arg_2.x, -71813i, -22948i))) | -vec3<i32>(1i, reverseBits(-22311i), global0.x));
    let var_0 = ~(_wgslsmith_mod_vec4_u32(arg_0.a.b, ~reverseBits(arg_0.a.b)) >> ((func_1(false).a.b & vec4<u32>(func_1(arg_0.a.a).a.b.x, 1u, arg_0.a.b.x, arg_0.a.b.x)) % vec4<u32>(32u)));
    var var_1 = var_0.yxw;
    global0 = firstTrailingBit(~_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_2.x, global0.x, global0.x), ~vec3<i32>(1i, -41800i, global0.x)));
    var var_2 = ~arg_0.a.b.x;
    return countOneBits(-(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_2.x, 0i, arg_2.x), vec3<i32>(arg_2.x, -72452i, arg_2.x), min(vec3<i32>(arg_2.x, 2147483647i, 31556i), vec3<i32>(global0.x, -24447i, arg_2.x))) << (u_input.a % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = (vec3<i32>(~1i, 27679i, global0.x) | ~func_4(func_1(true), vec4<bool>(true, true, true, true), vec2<i32>(global0.x, 1i))) ^ vec3<i32>(global0.x, -1i, global0.x);
    global0 = abs(~(select(vec3<i32>(26457i, global0.x, global0.x), vec3<i32>(-16125i, global0.x, 30009i), vec3<bool>(true, false, false)) ^ vec3<i32>(global0.x, global0.x, global0.x))) | vec3<i32>(firstTrailingBit(2147483647i), global0.x, i32(-1i) * -25337i);
    global0 = vec3<i32>(-firstTrailingBit(global0.x), -1i, -(~_wgslsmith_clamp_i32(-47505i, 42940i, global0.x) << (select(~u_input.a.x, u_input.a.x ^ u_input.a.x, true) % 32u)));
    global0 = _wgslsmith_add_vec3_i32(select(-abs(vec3<i32>(global0.x, global0.x, -1037i)), vec3<i32>(global0.x | -28704i, global0.x, global0.x), (~6094u << (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u)) >= ~0u), vec3<i32>(1288i << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(58710u, u_input.a.x, 1u)), u_input.a.x) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 0i) << (vec3<u32>(u_input.a.x, 33930u, u_input.a.x) % vec3<u32>(32u)), -vec3<i32>(0i, global0.x, -2147483647i) << (_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u))), global0.x));
    global0 = func_2(Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.x, global0.x, global0.x, 0i), vec4<i32>(2147483647i, 1i, 0i, -22615i)), vec4<i32>(global0.x, 1i, global0.x, -21698i)) > _wgslsmith_mod_i32(global0.x, max(20706i, global0.x)), abs(vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(0u, 24091u), 21578u, u_input.a.x & u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(909f, 439f, -195f) - vec3<f32>(359f, -190f, 1384f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(299f, -1354f, 1312f) + vec3<f32>(1229f, -1475f, -477f))))));
    global0 = ~(-(~vec3<i32>(_wgslsmith_mult_i32(2147483647i, global0.x), i32(-1i) * -2147483647i, global0.x & -2147483647i)));
    var var_0 = Struct_2(Struct_1(!(!(52733u > u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, ~u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u), vec4<u32>(14877u, u_input.a.x, 1u, 27297u), vec4<bool>(false, false, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-705f, -298f, 554f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, 1037f, 377f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(933f, -206f, -1162f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, 351f, 1961f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(131f - -551f), _wgslsmith_f_op_f32(1537f - -1743f), _wgslsmith_f_op_f32(-996f + -516f)))));
    global0 = vec3<i32>(-1i, global0.x, 38950i);
    var var_1 = 1049f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, global0.x);
}

