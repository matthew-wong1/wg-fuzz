struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = arg_3.b;
    var var_1 = ~(~(~global0.x));
    global1 = arg_1;
    var_1 = reverseBits(17978u);
    var_1 = 11619u;
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.xx, global0.xz, vec2<u32>(32106u, arg_0)), ~global0.yz, global0.xx << (global0.zx % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 4294967295u) >> (global0.yx % vec2<u32>(32u)), vec2<u32>(arg_0, arg_0))), ~select(vec2<u32>(global0.x, 4294967295u), global0.xx & global0.xz, select(arg_2.xw, arg_2.yz, false))) << (arg_0 % 32u);
    var_0 = 11854u;
    global0 = vec3<u32>(~(~arg_0), 0u, _wgslsmith_mod_u32(73170u, ~global0.x));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_dot_vec3_u32(((_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 23284u, 18764u), vec3<u32>(7004u, global0.x, 56031u)) >> (~vec3<u32>(27058u, global0.x, 0u) % vec3<u32>(32u))) ^ vec3<u32>(~arg_0, ~4294967295u, 1u)) ^ _wgslsmith_clamp_vec3_u32(~reverseBits(vec3<u32>(89124u, global0.x, 1u)), ~(~vec3<u32>(global0.x, arg_0, 4294967295u)), select(min(vec3<u32>(2647u, global0.x, global0.x), vec3<u32>(global0.x, 67911u, 102632u)), ~vec3<u32>(1u, global0.x, 4294967295u), select(arg_2.wzx, vec3<bool>(false, arg_2.x, false), arg_2.wyz))), ~vec3<u32>(1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(20078u, arg_0, global0.x), vec3<u32>(56568u, arg_0, 31161u))), _wgslsmith_div_u32(~90196u, select(arg_0, arg_0, true))));
    return select(~vec3<u32>(~global0.x, 43196u, arg_0), vec3<u32>(1u, global0.x, arg_0), arg_2.ywz);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(~(~min(abs(34043u), 4294967295u)), global0.x);
    global0 = func_4(global0.x, Struct_3(Struct_2(Struct_1(u_input.b.wx), global1.a.c, Struct_1(_wgslsmith_add_vec2_i32(u_input.b.xy, global1.a.a.a))), global1.b, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-951f, _wgslsmith_f_op_f32(exp2(arg_1.x))))), _wgslsmith_f_op_f32(exp2(arg_1.x))), !vec4<bool>(func_3(vec4<bool>(true, true, true, true), Struct_3(Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x)), global1.b, Struct_1(vec2<i32>(global1.a.c.a.x, -8893i))), global1.a.a, arg_1.yz, global1.d), _wgslsmith_div_f32(global1.c.x, global1.c.x), global1.a), func_3(vec4<bool>(true, false, true, true), Struct_3(global1.a, global1.a.a, global1.c, arg_1.x), global1.c.x, global1.a) && true, false & func_3(vec4<bool>(false, false, true, false), Struct_3(Struct_2(global1.b, global1.a.c, global1.b), Struct_1(vec2<i32>(34619i, 0i)), vec2<f32>(arg_2.x, arg_2.x), arg_3), 614f, global1.a), false));
    global0 = abs(_wgslsmith_mult_vec3_u32(~(_wgslsmith_div_vec3_u32(vec3<u32>(54562u, 18198u, global0.x), vec3<u32>(1u, global0.x, global0.x)) << (max(vec3<u32>(0u, 4294967295u, global0.x), vec3<u32>(31891u, 0u, 36369u)) % vec3<u32>(32u))), vec3<u32>(52750u, global0.x, ~global0.x)));
    let var_1 = global1.a;
    var var_2 = !(any(vec3<bool>(false, false, false)) | any(vec2<bool>(true, true))) & false;
    return Struct_2(var_1.b, Struct_1(min(u_input.b.wz, ~(-u_input.b.xx))), Struct_1(vec2<i32>(3451i, -(u_input.a | 2147483647i))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<i32>) -> bool {
    var var_0 = Struct_5(~max(~arg_3.x, 64621i), Struct_2(global1.a.c, func_2(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-364f, global1.c.x, arg_1.c.x, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-957f, -1000f, -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.c.x, arg_2.x, global1.d))), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(trunc(arg_1.d))).b, func_2(~(~0i), vec4<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(floor(global1.d)), -1422f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + vec3<f32>(-295f, 155f, global1.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.c.x)), arg_2.x, false))).a), global0.x >> (~0u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-552f + global1.c.x), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-1267f * arg_1.d))), _wgslsmith_f_op_f32(f32(-1f) * -456f))));
    global0 = ~(~(~(~min(vec3<u32>(var_0.c, 13617u, 1u), vec3<u32>(36236u, 12753u, 15809u)))));
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = select(vec2<bool>(true, true & (all(vec2<bool>(var_1.x, var_1.x)) || var_1.x)), var_1.xy, vec2<bool>(!(!select(var_1.x, false, true)), var_1.x));
    var var_3 = arg_1.b;
    return true;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> vec3<u32> {
    var var_0 = vec2<f32>(-203f, _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.x + global1.d)))));
    let var_1 = vec3<bool>(!func_5(2147483647i, Struct_3(func_2(1i, vec4<f32>(var_0.x, global1.d, global1.c.x, global1.d), vec3<f32>(106f, 1000f, -262f), -374f), func_2(global1.b.a.x, vec4<f32>(-179f, global1.c.x, -494f, var_0.x), vec3<f32>(global1.c.x, global1.d, 2057f), -1000f).b, global1.c, _wgslsmith_f_op_f32(f32(-1f) * -166f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(var_0.x, arg_3)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 21517i), vec2<i32>(u_input.b.x, arg_0))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(-global1.c.x)), var_0.x)) == _wgslsmith_f_op_f32(step(-169f, _wgslsmith_f_op_f32(f32(-1f) * -1344f))), any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), -537f == arg_3)));
    global0 = reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_sub_u32(global0.x, 0u)), ~(~arg_1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 12028u) | vec3<u32>(global0.x, 4998u, global0.x), abs(vec3<u32>(0u, global0.x, arg_1.x)))), vec3<u32>(4294967295u, abs(4294967295u), ~4294967295u), select(vec3<u32>(25728u, _wgslsmith_add_u32(arg_1.x, 4294967295u), arg_1.x), abs(select(vec3<u32>(global0.x, arg_1.x, 0u), vec3<u32>(5861u, 0u, 34649u), vec3<bool>(false, false, var_1.x))), global0.x != select(arg_1.x, global0.x, false))));
    let var_2 = u_input.b.xyy;
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(~47995u, ~func_4(arg_1.x, Struct_3(global1.a, global1.a.a, vec2<f32>(1076f, var_0.x), -1578f), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, true, true, var_1.x), var_1.x)).x, arg_1.x), firstLeadingBit(~(~(~vec3<u32>(global0.x, 43833u, global0.x)))));
    return firstLeadingBit(select(~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(arg_1.x, 21905u, arg_1.x)), ~(vec3<u32>(4294967295u, arg_1.x, 0u) | vec3<u32>(16700u, arg_1.x, 0u)), vec3<bool>(true, all(var_1.xy), false)) | _wgslsmith_clamp_vec3_u32(~min(vec3<u32>(arg_1.x, 30547u, global0.x), vec3<u32>(35651u, 1u, 5812u)), firstLeadingBit(vec3<u32>(1u, global0.x, arg_1.x)), select(max(vec3<u32>(global0.x, 29814u, arg_1.x), vec3<u32>(global0.x, 9977u, arg_1.x)), ~vec3<u32>(global0.x, 4294967295u, 35762u), vec3<bool>(false, false, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global0.x, max(41540u, 7455u), global0.x) | (~vec3<u32>(global0.x, 4294967295u, 1u) >> (func_1(global1.b.a.x, global0.yz, u_input.b.xzz, 364f) % vec3<u32>(32u)))), ~(~select(vec3<u32>(global0.x, global0.x, 44095u), vec3<u32>(74926u, 32592u, global0.x), true) | vec3<u32>(max(4294967295u, 9083u), global0.x & global0.x, ~0u)), vec3<u32>(~(select(global0.x, global0.x, false) & firstTrailingBit(global0.x)), _wgslsmith_add_u32(func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(10173u, 49451u, 10659u, 32134u), vec4<u32>(global0.x, 0u, 0u, global0.x)), Struct_3(Struct_2(Struct_1(vec2<i32>(0i, u_input.b.x)), global1.b, global1.a.a), Struct_1(global1.b.a), vec2<f32>(global1.c.x, -1780f), -1243f), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false))).x, firstTrailingBit(global0.x)), global0.x));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.d)) - global1.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(572f)))));
    global1 = Struct_3(func_2(1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(522f - 983f), -359f, _wgslsmith_f_op_f32(trunc(-3359f)), _wgslsmith_f_op_f32(round(247f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-1654f * 1853f), _wgslsmith_f_op_f32(ceil(var_0.x)), -1195f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-265f, -1187f, 190f) - _wgslsmith_div_vec3_f32(vec3<f32>(-585f, -1077f, var_0.x), vec3<f32>(100f, var_0.x, 426f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(464f, 581f, 135f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * -384f))), -973f)), func_2(-_wgslsmith_mod_i32(global1.a.a.a.x, global1.b.a.x) ^ ~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(194f, 1684f, 1135f, var_0.x), vec4<f32>(2494f, 254f, global1.d, 967f), false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 326f, var_0.x, -1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), -1234f, global1.d)), var_0.x).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)), _wgslsmith_f_op_f32(round(var_0.x)));
    var var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-2147483647i), abs(~1u), firstTrailingBit(abs(-43852i)), -global1.a.c.a.x >> (global0.x % 32u));
}

