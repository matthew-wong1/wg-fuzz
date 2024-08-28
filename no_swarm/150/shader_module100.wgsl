struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(59591u, 70720u, 0u, 80377u), vec3<bool>(false, true, true), 29946i, false);

var<private> global1: vec3<u32> = vec3<u32>(0u, 4294967295u, 14097u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    let var_0 = reverseBits(~global0.a.zwy);
    global1 = global0.a.wyz;
    let var_1 = -10948i;
    let var_2 = Struct_2(323f, ~_wgslsmith_dot_vec3_u32(var_0, global0.a.yyy));
    let var_3 = 12931u;
    return true;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global1 = _wgslsmith_div_vec3_u32(global0.a.wwy, vec3<u32>(global1.x, 61171u, global0.a.x)) & vec3<u32>(_wgslsmith_mult_u32(~global0.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, u_input.b, u_input.b), vec3<u32>(global1.x, u_input.b, 4294967295u)), _wgslsmith_clamp_vec3_u32(global0.a.yzy, vec3<u32>(44203u, global1.x, 4294967295u), global0.a.xyx))), ~(~global0.a.x & 4294967295u), ~0u);
    var var_0 = Struct_1(~global0.a, !(!vec3<bool>(global0.b.x, true, !global0.b.x)), firstLeadingBit(0i), global0.b.x);
    global0 = Struct_1(global0.a, vec3<bool>(true == var_0.d, select(var_0.d, false, !var_0.d), true), global0.c, !all(!vec3<bool>(true, false, var_0.d)));
    global0 = Struct_1(min(~(~reverseBits(vec4<u32>(var_0.a.x, 47372u, global0.a.x, u_input.d.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a.x, firstTrailingBit(u_input.b), ~4809u, global0.a.x), ~global0.a, global0.a)), vec3<bool>(var_0.d, all(select(!vec3<bool>(true, global0.b.x, false), global0.b, select(vec3<bool>(true, global0.d, var_0.b.x), var_0.b, false))), true), -1781i, -477f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-230f + _wgslsmith_f_op_f32(-410f * 102f)))));
    let var_1 = countOneBits(vec4<i32>(firstLeadingBit(1i), ~(-1i), 10072i, -6109i));
    return i32(-1i) * -221i;
}

fn func_4(arg_0: i32) -> i32 {
    global1 = global0.a.zyw;
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(1f + 1055f), ~global1.x), firstTrailingBit(0u), !all(select(vec2<bool>(true, true), vec2<bool>(global0.d, global0.b.x), !global0.b.zz)), Struct_1(~select(vec4<u32>(4294967295u, 4294967295u, 0u, 47032u), global0.a, vec4<bool>(global0.d, true, true, true)), !(!select(global0.b, vec3<bool>(true, true, global0.b.x), global0.b)), 1i, true));
    global1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.a.x, global0.a.x), global0.a.xzx) ^ vec3<u32>(36266u, 12642u | global1.x, 6131u), vec3<u32>(4294967295u, 16424u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(112103u, 0u, 16122u, global1.x), var_0.d.a)))), ~(~global0.a.xzx), global0.a.yyz);
    let var_1 = var_0.b;
    var var_2 = global0.b.xy;
    return 0i | _wgslsmith_sub_i32(max(abs(_wgslsmith_mult_i32(u_input.e.x, u_input.c)), global0.c), (i32(-1i) * -u_input.e.x) & -2147483647i);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    global1 = ~(countOneBits(select(arg_1.d.a.wzx, _wgslsmith_sub_vec3_u32(arg_1.d.a.xwy, vec3<u32>(7739u, global0.a.x, 4294967295u)), func_1(vec4<f32>(567f, arg_1.a.a, arg_1.a.a, arg_1.a.a), vec2<f32>(702f, arg_1.a.a), arg_1.a))) ^ global0.a.wxy);
    global1 = arg_1.d.a.wzz >> (~global0.a.wxz % vec3<u32>(32u));
    let var_0 = Struct_3(arg_1.a, 68336u, true, Struct_1(vec4<u32>(global0.a.x, 19761u, ~firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(60705u, arg_1.b)) | ~arg_1.d.a.x), !vec3<bool>(global0.b.x, false, arg_1.d.b.x), arg_0.x, arg_1.c));
    var var_1 = vec3<i32>(func_4(-(func_3(vec2<i32>(var_0.d.c, arg_1.d.c)) & 0i)), select(abs(firstLeadingBit(8575i)) & (1i | _wgslsmith_add_i32(var_0.d.c, -2147483647i)), func_4(-2147483647i), !select(-723f > var_0.a.a, func_1(vec4<f32>(-736f, arg_1.a.a, arg_1.a.a, 719f), vec2<f32>(-1016f, arg_1.a.a), Struct_2(arg_1.a.a, var_0.a.b)), true)), countOneBits(firstLeadingBit(-1i)));
    var_1 = vec3<i32>(firstLeadingBit(-41804i), _wgslsmith_add_i32(select(firstTrailingBit(arg_0.x), ~(u_input.e.x & 1i), false), max(2147483647i, abs(-5015i))), ~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_1.d.c, ~arg_1.d.c, _wgslsmith_mult_i32(-1i, var_1.x)), -(48984i >> (1u % 32u))));
    return true;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(385f - 679f), _wgslsmith_div_f32(554f, 1299f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(507f, -718f))), _wgslsmith_f_op_f32(f32(-1f) * -224f))), all(select(vec3<bool>(global0.b.x, true, false), select(arg_0.b, arg_0.b, arg_0.b), global0.b)))));
    global1 = arg_0.a.zxz;
    global1 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.a.zwx, _wgslsmith_mod_vec3_u32(arg_0.a.yxx, global0.a.xww), ~arg_0.a.wzx) >> (~_wgslsmith_mult_vec3_u32(global0.a.wzx, arg_0.a.zzw) % vec3<u32>(32u)), vec3<u32>(~(~19324u), ~arg_0.a.x | (4294967295u & global1.x), select(~0u, firstTrailingBit(global0.a.x), global0.b.x | global0.b.x))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(365f + -1410f), _wgslsmith_f_op_f32(-var_0.x)), 4294967295u), ~(arg_0.a.x ^ ~global1.x), reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 5699u, 2683u), arg_0.a.zwy)) != global1.x, Struct_1(vec4<u32>(~min(global0.a.x, global1.x), 1u ^ arg_0.a.x, ~u_input.b & 0u, u_input.d.x), select(!global0.b, select(select(global0.b, vec3<bool>(global0.b.x, arg_0.b.x, true), arg_0.b), arg_0.b, vec3<bool>(global0.d, true, global0.d)), arg_0.b), -countOneBits(~u_input.c), !global0.b.x));
    var var_2 = vec2<bool>(false, any(select(arg_0.b, select(global0.b, arg_0.b, any(arg_0.b)), u_input.b <= ~4294967295u)));
    return Struct_3(Struct_2(-1930f, _wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_mod_u32(1u, ~global1.x), ~u_input.d.x | ~53792u)), global0.a.x, any(select(var_1.d.b, select(select(vec3<bool>(global0.d, true, false), vec3<bool>(arg_0.b.x, false, global0.b.x), arg_0.b), vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.d)), arg_0.b)), Struct_1(~firstTrailingBit(vec4<u32>(global0.a.x, 22038u, global0.a.x, global0.a.x) | arg_0.a), vec3<bool>(true, !var_1.d.b.x, true), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f - 567f) - _wgslsmith_f_op_f32(floor(-1012f))) < _wgslsmith_div_f32(-1699f, 904f)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_3) -> StorageBuffer {
    global1 = vec3<u32>(_wgslsmith_clamp_u32(~arg_1.a.x, countOneBits(_wgslsmith_mult_u32(57103u, ~global0.a.x)), 1u), 10902u, 0u);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1177f + -1925f) * _wgslsmith_f_op_f32(floor(965f)))));
    var var_1 = select(!arg_3.d.b, vec3<bool>(arg_1.b.x, (!arg_3.d.b.x && global0.b.x) || arg_1.d, true), global0.d);
    var var_2 = arg_3.a;
    let var_3 = arg_1;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, arg_3.a.a, -543f, arg_3.a.a)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-761f, -1000f)), _wgslsmith_f_op_f32(round(-413f)), var_2.a, _wgslsmith_f_op_f32(abs(205f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 977f, var_2.a, 740f), vec4<f32>(820f, var_2.a, arg_3.a.a, var_2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, var_2.a, arg_3.a.a, arg_3.a.a)), select(vec4<bool>(arg_3.c, var_3.b.x, true, false), vec4<bool>(false, arg_3.c, true, var_3.d), vec4<bool>(true, true, true, true)))))), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(4294967295u, arg_1.a.x, arg_1.a.x, 0u)), func_5(var_3).d.a | vec4<u32>(arg_3.d.a.x, 34250u, var_3.a.x, 11265u)), vec2<u32>(max(var_2.b, global1.x), var_2.b), ~(vec3<i32>(~4407i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 19215i), arg_2.yx), 43422i) >> (global0.a.yzw % vec3<u32>(32u))), ~arg_3.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a.xxy;
    global0 = Struct_1(~abs(firstLeadingBit(vec4<u32>(1u, 1u, global0.a.x, 100797u))), !global0.b, abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(-39049i, -2147483647i, u_input.c), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.a, global0.c) & u_input.e, _wgslsmith_sub_vec3_i32(u_input.e, vec3<i32>(global0.c, -67970i, 0i))))), false & all(vec3<bool>(global0.d, func_1(vec4<f32>(311f, -180f, -514f, 389f), vec2<f32>(408f, 601f), Struct_2(-1207f, global0.a.x)), true)));
    let x = u_input.a;
    s_output = func_6(~(~firstTrailingBit(~global0.a.zzz)), Struct_1(abs(global0.a), vec3<bool>(global0.d | all(vec2<bool>(global0.b.x, global0.b.x)), true, any(!global0.b)), ~(i32(-1i) * -1i), !all(global0.b)), countOneBits(~u_input.e), func_5(Struct_1(vec4<u32>(global1.x, u_input.d.x, 1u, 1u), global0.b, max(_wgslsmith_mod_i32(u_input.c, global0.c), abs(u_input.a)), !func_2(vec4<i32>(global0.c, -2147483647i, 7161i, 0i), Struct_3(Struct_2(-910f, global1.x), 1u, true, Struct_1(global0.a, vec3<bool>(true, true, true), global0.c, global0.b.x))))));
}

