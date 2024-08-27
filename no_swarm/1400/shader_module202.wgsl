struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = vec2<u32>(firstTrailingBit(u_input.c), _wgslsmith_div_u32(reverseBits(~931u), 1u));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, -353f, 423f, arg_0.x), _wgslsmith_f_op_vec4_f32(ceil(global0.a)), select(arg_1.x, false, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1705f, arg_0.x, global0.a.x, 710f))) - global0.a), _wgslsmith_div_u32(max(firstTrailingBit(~21783u), var_0.x), _wgslsmith_div_u32(abs(global0.b), global0.b)));
    var var_1 = _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, u_input.a), ~vec2<i32>(u_input.a, 2147483647i)) | vec2<i32>(abs(~(-13128i)), _wgslsmith_mod_i32(reverseBits(-2147483647i), ~1i)), firstTrailingBit(vec2<i32>((u_input.b << (4294967295u % 32u)) >> (0u % 32u), -u_input.b << (~global0.b % 32u))));
    let var_2 = arg_0.x;
    var var_3 = !(!(true || (4294967295u >= global0.b)));
    return select(~_wgslsmith_div_u32(abs(33688u), 9043u), ~u_input.c, arg_1.x | !select(arg_1.x, true, all(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -35363i)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, -1i, 0i), vec4<i32>(0i, u_input.b, u_input.b, -2147483647i) << (vec4<u32>(4294967295u, 992u, arg_0.b, 34752u) % vec4<u32>(32u))), firstTrailingBit(1i)), _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-8414i, 2147483647i), vec2<i32>(91605i, 23815i)), abs(vec2<i32>(u_input.a, 1i)))) & vec2<i32>(1i, u_input.b);
    var var_1 = ~(reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b, u_input.c), vec2<u32>(4294967295u, 0u), vec2<u32>(global0.b, 30629u))) << (max(vec2<u32>(arg_0.b, 4294967295u), vec2<u32>(~53697u, countOneBits(5905u))) % vec2<u32>(32u)));
    global0 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(round(1719f));
    let var_3 = max(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(~2147483647i, min(1i, -1i)), var_0.x), var_0.x);
    return Struct_1(arg_0.a, global0.b);
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = func_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_div_f32(1000f, 371f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -263f) - _wgslsmith_f_op_f32(step(2902f, global0.a.x))), global0.a.x), max(max(~arg_0, func_2(vec3<f32>(global0.a.x, 423f, global0.a.x), vec4<bool>(false, true, false, true))), 0u)), Struct_1(_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-149f, global0.a.x, global0.a.x, 969f) * vec4<f32>(global0.a.x, -117f, global0.a.x, global0.a.x)))), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.b), vec2<u32>(u_input.c, arg_0)), 0u)));
    let var_0 = vec3<u32>(u_input.c, _wgslsmith_clamp_u32(~(~11545u), arg_0, 1u), u_input.c);
    global0 = func_3(func_3(Struct_1(vec4<f32>(func_3(Struct_1(global0.a, u_input.c), Struct_1(vec4<f32>(global0.a.x, global0.a.x, 904f, 646f), 25636u)).a.x, global0.a.x, global0.a.x, _wgslsmith_f_op_f32(global0.a.x * 1064f)), 0u), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.a)), vec4<f32>(340f, global0.a.x, global0.a.x, -536f)), var_0.x)), func_3(Struct_1(global0.a, max(var_0.x >> (56008u % 32u), ~var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), 1u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(abs(global0.a.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))));
    let var_2 = select(select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), all(vec3<bool>(true, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(false, true), u_input.c != u_input.c), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false)), vec2<bool>(any(vec3<bool>(false, true, false)), all(vec4<bool>(false, true, false, true))), false), vec2<bool>(true, true)), select(vec2<bool>(false, true), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), true && (false == (var_0.x >= 2902u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-105f, -776f, 986f, 667f), _wgslsmith_f_op_vec4_f32(global0.a * global0.a)))), _wgslsmith_f_op_vec4_f32(round(global0.a)))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-323f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -245f)));
    global0 = func_1(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(vec4<u32>(global0.b, 4294967295u, global0.b, 41034u)), vec4<u32>(u_input.c, ~16521u, ~global0.b, global0.b), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)))), ~vec4<u32>(global0.b, 41461u & u_input.c, _wgslsmith_div_u32(0u, u_input.c), 0u)));
    let var_1 = ~(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 26865u, 0u, global0.b), vec4<u32>(global0.b, 1u, 1u, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b, 0u, 0u, 26950u), vec4<u32>(85075u, 78451u, u_input.c, global0.b)))));
    global0 = func_3(func_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), -120f, -866f, global0.a.x), 6506u), func_3(func_3(func_1(var_1.x), Struct_1(vec4<f32>(285f, global0.a.x, -416f, global0.a.x), 1u)), func_1(_wgslsmith_div_u32(62197u, 96355u)))), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(trunc(global0.a.x)), _wgslsmith_f_op_f32(floor(var_0.x))), countOneBits(u_input.c)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1477f, global0.a.x, -657f, 217f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(f32(-1f) * -1557f), _wgslsmith_f_op_f32(var_0.x - global0.a.x), _wgslsmith_f_op_f32(global0.a.x + global0.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1957f - 970f), _wgslsmith_f_op_f32(step(global0.a.x, var_0.x)), func_3(Struct_1(vec4<f32>(-284f, 1000f, -133f, 1732f), u_input.c), Struct_1(vec4<f32>(-439f, var_0.x, -2731f, 1866f), u_input.c)).a.x, _wgslsmith_f_op_f32(441f - -682f)))), firstTrailingBit(0u));
    let var_3 = _wgslsmith_dot_vec4_u32(var_1, _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, select(u_input.c, 1u & var_1.x, true), (var_1.x << (0u % 32u)) >> (global0.b % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.zx, var_1.yy), global0.b)), ~_wgslsmith_add_vec4_u32(~var_1, max(vec4<u32>(4294967295u, 0u, 9566u, var_2.b), vec4<u32>(var_1.x, 1u, var_2.b, 19811u))), vec4<u32>(~79180u, u_input.c, _wgslsmith_mult_u32(u_input.c, _wgslsmith_add_u32(global0.b, var_1.x)), ~(63395u | var_1.x))));
    let var_4 = var_1.yyw;
    var var_5 = _wgslsmith_sub_vec3_i32(-max(vec3<i32>(min(37133i, 53510i), -18356i, u_input.b), ~vec3<i32>(u_input.a, 1i, 58172i)), ~(~vec3<i32>(_wgslsmith_mod_i32(47221i, 2147483647i), _wgslsmith_add_i32(u_input.b, u_input.a), -27639i)));
    var var_6 = _wgslsmith_mod_u32(~1u, 8148u) >> (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_mult_i32(max(~u_input.b, -30482i), -1i), var_2.a.x, abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_5.x | u_input.a, min(-1i, 1i), u_input.a, var_5.x << (12633u % 32u)), vec4<i32>(6259i, u_input.a, var_5.x, 6484i) << (~var_1 % vec4<u32>(32u)))));
}

