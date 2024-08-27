struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = Struct_1(min(_wgslsmith_mult_u32(select(44806u, 1u, false) ^ u_input.a.x, ~u_input.a.x & reverseBits(6219u)), ~select(u_input.a.x, u_input.a.x | u_input.a.x, false)), -(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -60507i, u_input.b) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), select(vec4<i32>(u_input.b, 3298i, u_input.b, 1i), vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), true), ~vec4<i32>(13200i, 0i, -1i, 0i)) << (vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_div_u32(28188u, 1u), u_input.a.x, 1u) % vec4<u32>(32u))), u_input.b);
    var var_1 = var_0;
    global0 = vec4<bool>(global0.x, false, global0.x, true);
    return reverseBits(select(10710u, ~(~var_1.a), global0.x)) >= 68943u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global0 = !(!vec4<bool>(true != all(arg_1), select(!global0.x, global0.x, arg_0.x >= arg_0.x), !global0.x, any(select(vec4<bool>(true, false, global0.x, true), arg_1, arg_1))));
    let var_0 = abs(-1i);
    let var_1 = arg_0.x;
    var var_2 = arg_2.a;
    var_2 = arg_2.a;
    return arg_1.x;
}

fn func_2() -> bool {
    global0 = select(vec4<bool>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1563f, 222f, -697f, 313f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1281f, 652f, 104f, -1000f))), vec4<bool>(global0.x, global0.x && global0.x, func_3(), global0.x), Struct_1(min(u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(-5587i, -39356i, u_input.b, u_input.b)), u_input.b ^ 35509i)), false, !func_4(vec4<f32>(-995f, 644f, -538f, -495f), vec4<bool>(global0.x, global0.x, global0.x, false), Struct_1(u_input.a.x, vec4<i32>(-1i, u_input.b, u_input.b, 11756i), u_input.b)) | true, false), !vec4<bool>(all(global0.wz), all(vec4<bool>(true, global0.x, true, global0.x)), !(u_input.b > 1i), true & global0.x), vec4<bool>(global0.x, global0.x, all(global0.xz), true));
    global0 = vec4<bool>(false, !(u_input.b <= ~max(0i, -67221i)), global0.x, global0.x);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(597f * _wgslsmith_div_f32(-1364f, 1554f)), 1f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(460f - -1174f), _wgslsmith_div_f32(-749f, -2407f), all(global0.zy)))))));
    let var_1 = vec3<u32>(u_input.a.x, 0u ^ _wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, u_input.a.x), _wgslsmith_div_u32(abs(u_input.a.x), 1u)), _wgslsmith_add_u32(u_input.a.x, 4294967295u));
    global0 = vec4<bool>(~abs(u_input.a.x >> (var_1.x % 32u)) < (var_1.x >> (~_wgslsmith_clamp_u32(u_input.a.x, var_1.x, 4294967295u) % 32u)), global0.x, true, true);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, u_input.b), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, u_input.b))), countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, u_input.b)), max(vec2<i32>(32897i, 1i), vec2<i32>(u_input.b, 2147483647i))))) != ~26986i;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = any(vec2<bool>(all(global0.zy), func_2()));
    global0 = !vec4<bool>(var_0, !var_0, 5918u == ((u_input.a.x ^ 1u) >> ((1u & u_input.a.x) % 32u)), false);
    global0 = !(!(!(!(!vec4<bool>(false, global0.x, true, global0.x)))));
    global0 = select(vec4<bool>(global0.x && arg_0.x, -u_input.b <= 26764i, true, u_input.b > 1i), select(!(!select(vec4<bool>(false, false, true, var_0), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(arg_0.x, true, global0.x, global0.x))), !vec4<bool>(false, 0i > u_input.b, u_input.a.x >= 35265u, arg_0.x || global0.x), select(select(!vec4<bool>(var_0, global0.x, false, false), !vec4<bool>(true, true, var_0, arg_0.x), select(vec4<bool>(false, false, false, var_0), vec4<bool>(var_0, arg_0.x, arg_0.x, true), var_0)), vec4<bool>(true, true, !arg_0.x, false), arg_0.x)), select(select(!select(vec4<bool>(true, global0.x, true, false), vec4<bool>(false, true, true, false), global0.x), vec4<bool>(global0.x, true, true, false | arg_0.x), vec4<bool>(arg_0.x, true, all(vec3<bool>(false, false, true)), u_input.b < 0i)), select(!select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(true, var_0, arg_0.x, arg_0.x), vec4<bool>(global0.x, false, var_0, false)), vec4<bool>(true, all(global0.wxz), !arg_0.x, all(vec4<bool>(true, global0.x, var_0, true))), select(vec4<bool>(global0.x, false, true, true), vec4<bool>(true, global0.x, arg_0.x, true), true)), vec4<bool>(true, true, var_0, arg_0.x)));
    let var_1 = Struct_1(~_wgslsmith_div_u32(firstLeadingBit(u_input.a.x) >> (_wgslsmith_clamp_u32(26853u, u_input.a.x, u_input.a.x) % 32u), 4294967295u), select((vec4<i32>(26951i, u_input.b, -2147483647i, -2147483647i) & (vec4<i32>(u_input.b, 43787i, 17i, u_input.b) | vec4<i32>(u_input.b, u_input.b, -3736i, 1i))) >> (select(vec4<u32>(69987u, 94699u, 46128u, u_input.a.x), vec4<u32>(28403u, u_input.a.x, 1u, u_input.a.x) >> (vec4<u32>(61599u, u_input.a.x, 76568u, u_input.a.x) % vec4<u32>(32u)), true) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1831i, u_input.b, -7571i, u_input.b)) ^ vec4<i32>(21767i, -54620i, u_input.b, 28251i), countOneBits(vec4<i32>(-2147483647i, -17479i, u_input.b, u_input.b))), var_0), -firstTrailingBit(25472i));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = 23337u >> (abs(_wgslsmith_sub_u32(_wgslsmith_sub_u32(9829u & arg_1.a, arg_1.a), select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 22457u, arg_0.a), vec3<u32>(arg_1.a, arg_1.a, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.a.x, 124551u, u_input.a.x), vec4<u32>(u_input.a.x, arg_1.a, 0u, 54486u)), func_3()))) % 32u);
    var var_1 = max(firstLeadingBit(arg_0.a), ~47865u);
    let var_2 = u_input.b;
    var_1 = 0u;
    var_1 = 4294967295u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec2<bool>(global0.x, global0.x)), func_1(select(vec2<bool>(global0.x, global0.x), !(!vec2<bool>(global0.x, global0.x)), global0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -22850i, u_input.b), -_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(39437i, -11416i), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(-1i, u_input.b))));
    var var_1 = func_5(func_5(var_0, var_0, vec2<i32>(-u_input.b, u_input.b)), Struct_1(17365u, var_0.b, _wgslsmith_clamp_i32(var_0.b.x, _wgslsmith_sub_i32(var_0.c, 0i), var_0.b.x)), vec2<i32>(-1i) * -vec2<i32>(1i, 1i)).b.wxw ^ (~var_0.b.zxw << (select(~(~vec3<u32>(u_input.a.x, 71140u, 9487u)), ~(~vec3<u32>(u_input.a.x, 4294967295u, var_0.a)), u_input.b >= var_0.b.x) % vec3<u32>(32u)));
    var var_2 = vec4<i32>(~0i, 37415i, _wgslsmith_dot_vec4_i32(~var_0.b, var_0.b), -2147483647i);
    var_1 = _wgslsmith_div_vec3_i32(min(_wgslsmith_mod_vec3_i32(var_2.wzx, _wgslsmith_sub_vec3_i32(var_0.b.yxx, vec3<i32>(var_0.b.x, -2147483647i, var_1.x))) & vec3<i32>(u_input.b, -18840i, var_2.x), _wgslsmith_div_vec3_i32(-var_0.b.wxy, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 2147483647i, u_input.b), vec3<i32>(0i, var_1.x, var_0.b.x))) >> (~(vec3<u32>(u_input.a.x, var_0.a, 80503u) ^ vec3<u32>(15501u, 6371u, 72470u)) % vec3<u32>(32u))), max(~select(var_2.yzw | var_0.b.yww, vec3<i32>(2147483647i, -11139i, 1i), true), var_0.b.zxy));
    var_1 = ~_wgslsmith_mult_vec3_i32(select(~vec3<i32>(u_input.b, var_1.x, 1i), vec3<i32>(u_input.b, 0i, u_input.b) >> (vec3<u32>(23396u, u_input.a.x, 64278u) % vec3<u32>(32u)), global0.x), -var_0.b.yww);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(294f + -1948f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1396f) - _wgslsmith_f_op_f32(-371f + 248f))), -524f, _wgslsmith_f_op_f32(max(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -569f)))), _wgslsmith_f_op_f32(abs(-670f))), select(-u_input.b, -_wgslsmith_dot_vec4_i32(var_0.b, var_0.b), !(!all(vec4<bool>(global0.x, true, global0.x, true)))), vec2<u32>(select(0u, ~(1u >> (var_0.a % 32u)), global0.x), reverseBits(firstLeadingBit(1u))));
}

