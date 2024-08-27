struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(11120u, Struct_1(vec4<i32>(12981i, 12288i, 22032i, -620i), vec3<i32>(-3617i, 45094i, 46768i), 0u, true, 203f), -1000f, vec2<f32>(-1000f, 739f)), i32(-2147483648), 2147483647i, Struct_1(vec4<i32>(-14919i, 162i, i32(-2147483648), 33225i), vec3<i32>(1i, 7370i, -1i), 26392u, false, -369f));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: f32) -> vec2<f32> {
    global0 = Struct_3(Struct_2(u_input.a, Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(u_input.b, global0.d.a)), -_wgslsmith_add_vec3_i32(u_input.b.xyy, u_input.b.zzx), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_1, 1u, 30575u)), ~vec4<u32>(5893u, 1u, global0.d.c, arg_1)), true, arg_2), _wgslsmith_f_op_f32(-1480f + _wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(global0.a.d.x, 179f), arg_2)))), abs(_wgslsmith_dot_vec2_i32(~(global0.d.a.wx << (vec2<u32>(arg_1, u_input.a) % vec2<u32>(32u))), -(u_input.b.yy & vec2<i32>(-2147483647i, global0.c)))), reverseBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, 11689i, -1i) ^ vec3<i32>(-16161i, u_input.b.x, u_input.b.x)), u_input.b.xyz)), Struct_1(reverseBits(-u_input.b ^ u_input.b), ~(global0.d.a.xxz << (max(vec3<u32>(u_input.a, 1u, global0.a.a), vec3<u32>(arg_1, 0u, 12386u)) % vec3<u32>(32u))), 68529u, global1.x, arg_2));
    var var_0 = Struct_2(arg_1, global0.d, -1096f, _wgslsmith_f_op_vec2_f32(-global0.a.d));
    let var_1 = -(~_wgslsmith_dot_vec4_i32(~(-vec4<i32>(global0.a.b.b.x, 1i, var_0.b.a.x, u_input.b.x)), (vec4<i32>(global0.a.b.a.x, var_0.b.a.x, 1i, u_input.b.x) | vec4<i32>(var_0.b.b.x, 1i, 1i, var_0.b.a.x)) | vec4<i32>(-2147483647i, 0i, global0.b, u_input.b.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-431f)), var_0.d.x, _wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) * -1326f)));
    var var_3 = _wgslsmith_div_u32(~8852u, 72123u);
    return var_0.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_4(u_input.a, global0.a.b, Struct_3(Struct_2(~_wgslsmith_div_u32(25009u, u_input.a), global0.d, -1000f, _wgslsmith_f_op_vec2_f32(global0.a.d - global0.a.d)), _wgslsmith_mult_i32(1i, -reverseBits(-1753i)), 0i, global0.d), Struct_2(_wgslsmith_mod_u32(arg_0.x, global0.a.b.c), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -8128i, u_input.b.x), vec3<i32>(62325i, u_input.b.x, u_input.b.x)), _wgslsmith_add_i32(global0.d.b.x, u_input.b.x), _wgslsmith_dot_vec2_i32(global0.d.b.yx, u_input.b.yw), u_input.b.x), vec3<i32>(~16761i, _wgslsmith_add_i32(global0.d.a.x, 13948i), u_input.b.x), u_input.a, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1165f + arg_1))), 2021f, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(global1.x, 55147u, _wgslsmith_f_op_f32(-324f * 666f))), global0.a.d, true))));
    let var_1 = Struct_1(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, reverseBits(_wgslsmith_dot_vec2_i32(global0.d.a.xw, vec2<i32>(2147483647i, var_0.c.b)))) & global0.a.b.a.zyx, firstTrailingBit(58487u), _wgslsmith_add_i32(var_0.d.b.b.x, _wgslsmith_clamp_i32(global0.b, 2147483647i, abs(global0.d.b.x))) != _wgslsmith_sub_i32(_wgslsmith_mult_i32(~2147483647i, u_input.b.x ^ -2364i), 1i), _wgslsmith_f_op_f32(var_0.c.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1586f)))));
    var var_2 = vec2<i32>(-1i, 4101i);
    global1 = !(!vec3<bool>(var_1.d, true, var_0.c.d.d));
    let var_3 = firstLeadingBit(arg_0.zzy);
    return var_0;
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = func_2(reverseBits(~((vec4<u32>(u_input.a, 1u, 1u, u_input.a) ^ vec4<u32>(global0.d.c, u_input.a, u_input.a, 31435u)) & ~vec4<u32>(global0.a.a, u_input.a, global0.d.c, 53788u))), global0.a.d.x, _wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(exp2(global0.a.c))));
    global0 = var_0.c;
    var var_1 = func_2(_wgslsmith_clamp_vec4_u32(max(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 53319u, u_input.a, 60653u), vec4<u32>(35728u, 33467u, 261u, 39738u))), vec4<u32>(u_input.a << (var_0.d.a % 32u), 0u, firstTrailingBit(11071u), _wgslsmith_dot_vec3_u32(vec3<u32>(893u, var_0.d.a, 4294967295u), vec3<u32>(1u, var_0.d.a, u_input.a)))), reverseBits(~vec4<u32>(1u, u_input.a, 10970u, u_input.a)) ^ vec4<u32>(1u, ~26846u, var_0.a, countOneBits(4294967295u)), ~(~select(vec4<u32>(u_input.a, 1u, global0.d.c, global0.a.a), vec4<u32>(61743u, u_input.a, 0u, u_input.a), var_0.c.a.b.d))), var_0.b.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-379f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d.e, global0.a.b.e, global0.a.b.d))))))).c;
    var var_2 = global1.x;
    let var_3 = ~vec4<u32>(~(~4294967295u), 23405u, 27733u, countOneBits(15614u)) << (select(firstTrailingBit(firstLeadingBit(vec4<u32>(global0.d.c, u_input.a, global0.a.a, 0u))), vec4<u32>(_wgslsmith_add_u32(countOneBits(u_input.a), 96971u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(30427u, u_input.a, var_1.a.b.c), 4294967295u), var_1.a.a, firstLeadingBit(reverseBits(1u))), !vec4<bool>(false, !var_0.d.b.d, global0.d.d, !var_0.d.b.d)) % vec4<u32>(32u));
    return var_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = true;
    global1 = !(!(!select(!vec3<bool>(true, false, arg_3.a.b.d), !vec3<bool>(true, arg_1.b.d, true), !vec3<bool>(true, true, global0.d.d))));
    let var_1 = !(!vec3<bool>(!(!arg_1.d.b.d), arg_3.a.b.d, arg_1.b.d));
    let var_2 = vec3<i32>(16252i, countOneBits(-2147483647i), i32(-1i) * -_wgslsmith_dot_vec3_i32(global0.a.b.b << (vec3<u32>(0u, 11451u, 81949u) % vec3<u32>(32u)), arg_3.a.b.a.xzx));
    global0 = arg_3;
    return !vec3<bool>(_wgslsmith_f_op_f32(select(845f, -2759f, global1.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-730f - arg_2.x)), true, all(!var_1));
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = vec3<u32>(abs(u_input.a | (u_input.a & ~43526u)), global0.d.c, func_1((_wgslsmith_mult_i32(u_input.b.x, 14250i) << (~u_input.a % 32u)) ^ 1i).c.d.c);
    global1 = arg_0;
    var var_1 = min(u_input.b.xy << (~vec2<u32>(var_0.x, _wgslsmith_dot_vec2_u32(var_0.zz, vec2<u32>(u_input.a, 24534u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(global0.a.b.b.yy, vec2<i32>(-min(-44941i, -2147483647i), firstTrailingBit(-1i))));
    var_1 = u_input.b.xw;
    let var_2 = -(-global0.a.b.b.yy & abs(-(u_input.b.zy << (var_0.xy % vec2<u32>(32u)))));
    return func_1(u_input.b.x << (func_1(15812i).a % 32u)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(global0.a.b.a & ((global0.d.a << (vec4<u32>(u_input.a, 11819u, global0.d.c, 17993u) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<u32>(0u, global0.d.c, 29878u, u_input.a)) % vec4<u32>(32u))), func_1(global0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.d * global0.a.d)), func_2(~vec4<u32>(43351u, global0.a.a, 40928u, 85659u), -1000f, global0.d.e).c));
    global0 = func_2(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(31312u, 0u, 59539u, global0.a.a), vec4<u32>(0u, u_input.a, 75359u, global0.d.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(256f, 784f, _wgslsmith_f_op_f32(-648f * global0.a.c) <= _wgslsmith_f_op_f32(-global0.a.d.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2957f + 300f) + global0.d.e)), -1000f).c;
    global0 = func_2(~(~reverseBits(countOneBits(vec4<u32>(4294967295u, global0.d.c, u_input.a, global0.a.a)))), 169f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.e), _wgslsmith_f_op_f32(f32(-1f) * -2077f))).c;
    var var_0 = _wgslsmith_add_i32(u_input.b.x, firstTrailingBit(select(_wgslsmith_sub_i32(-2147483647i, global0.a.b.b.x), u_input.b.x, global0.a.b.d))) >> (~abs(1u) % 32u);
    var var_1 = min(~select(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a, 66891u)), vec2<u32>(~62112u, global0.a.b.c), global1.x), vec2<u32>((~global0.a.a << (reverseBits(4294967295u) % 32u)) >> (~u_input.a % 32u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.b.c, u_input.a), vec2<u32>(u_input.a, global0.d.c))));
    global0 = func_1(global0.a.b.b.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.a.c)), -2164f, true)))), global0.d.a.xz, u_input.b.x, ~firstTrailingBit(vec2<u32>(1u, global0.d.c | 4294967295u)), vec4<i32>(global0.b, 11207i, ~_wgslsmith_mod_i32(16824i, u_input.b.x) ^ ~_wgslsmith_sub_i32(u_input.b.x, 1i), 23124i));
}

