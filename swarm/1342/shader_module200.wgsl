struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(44834u, 1u, 0u), vec3<f32>(-466f, -1352f, -1553f), vec4<bool>(true, true, true, true), 0u, vec4<f32>(1715f, -1262f, -1001f, 2539f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_2(vec3<u32>(~max(4294967295u, ~u_input.a), _wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec3_u32(select(global0.a, global0.a, global0.c.x), max(global0.a, vec3<u32>(global0.a.x, u_input.a, u_input.a)))), global0.a.x), vec3<f32>(global0.e.x, global0.b.x, 683f), select(select(select(select(global0.c, vec4<bool>(global0.c.x, true, true, true), vec4<bool>(false, global0.c.x, global0.c.x, false)), select(vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), global0.c, global0.c.x), vec4<bool>(global0.c.x, false, global0.c.x, true)), global0.c, ~global0.a.x < abs(global0.a.x)), vec4<bool>(all(global0.c.zz), global0.c.x, !(!global0.c.x), false), !vec4<bool>(global0.c.x, false, true, true || global0.c.x)), 19659u, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, -1000f, global0.b.x, 548f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-138f, 1095f, global0.e.x, -1091f), global0.e)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(885f, global0.b.x, global0.e.x, global0.b.x))))))));
    var var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, 10182u, global0.a.x, 52245u), vec4<u32>(u_input.a, u_input.a, 42360u, u_input.a)), u_input.a, select(global0.a.x, 4026u, false)), (global0.a << (global0.a % vec3<u32>(32u))) >> (abs(vec3<u32>(1u, 62350u, u_input.a)) % vec3<u32>(32u))), ~select(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.a.x, u_input.a, 1u), ~global0.a), global0.a, global0.c.x));
    let var_1 = -(~vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(-27271i), 0i), firstTrailingBit(_wgslsmith_div_i32(0i, 1i)), -1i));
    let var_2 = firstLeadingBit(reverseBits(global0.a.yz)) | ~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(global0.d, 21999u)), global0.a.zx), vec2<u32>(~global0.a.x, u_input.a));
    var var_3 = Struct_1(~(max(global0.a, global0.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(32858u, global0.d, 4294967295u), _wgslsmith_add_vec3_u32(global0.a, vec3<u32>(var_2.x, global0.a.x, var_2.x))) % vec3<u32>(32u))), ~global0.a.x, global0.c.x);
    return vec2<u32>(var_2.x ^ 4294967295u, ~(~countOneBits(u_input.a)));
}

fn func_2() -> vec3<u32> {
    var var_0 = countOneBits(_wgslsmith_mult_vec2_u32(countOneBits(select(func_3(), vec2<u32>(global0.a.x, 4294967295u) ^ global0.a.zx, select(global0.c.yx, vec2<bool>(true, global0.c.x), true))), global0.a.yx));
    let var_1 = vec4<bool>(!global0.c.x, global0.c.x, global0.c.x, true);
    var var_2 = vec3<i32>(6045i, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -7093i), vec2<i32>(2147483647i, 10364i))), ~1i);
    global0 = Struct_2(~(~(~global0.a)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.e.x, -904f, global0.e.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.e.yxw, global0.e.xwx, var_1.x)) + vec3<f32>(global0.b.x, global0.b.x, -1117f)))))), vec4<bool>(all(vec4<bool>(!var_1.x, all(var_1), true, true)), var_1.x, var_0.x <= 16626u, !all(select(vec4<bool>(true, global0.c.x, global0.c.x, false), global0.c, global0.c.x))), 0u, global0.e);
    let var_3 = Struct_2(vec3<u32>(~(~4294967295u), global0.a.x & var_0.x, 1u), _wgslsmith_f_op_vec3_f32(abs(global0.b)), var_1, min(_wgslsmith_div_u32((global0.a.x >> (4294967295u % 32u)) | ~1u, global0.a.x << ((global0.a.x | 1u) % 32u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4564u, 17069u), vec3<u32>(var_0.x, 1u, u_input.a)))), global0.e);
    return ~vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(var_3.d), var_3.a.x), countOneBits(var_3.d) >> (~global0.d % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d, var_3.d), vec2<u32>(4294967295u, var_3.d)), select(global0.a.yx, vec2<u32>(4294967295u, 9546u), var_3.c.zy))) & firstTrailingBit(~var_3.a);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    global0 = Struct_2(~func_2() << ((vec3<u32>(1u, _wgslsmith_add_u32(global0.a.x, arg_3.d), ~arg_3.d) & ~(~global0.a)) % vec3<u32>(32u)), arg_3.b, vec4<bool>(arg_0, global0.c.x | true, global0.c.x || arg_3.c.x, !(!arg_0) & global0.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a, arg_3.d, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(arg_3.a.x, 1u, 0u, 44154u) >> (vec4<u32>(arg_3.d, 1u, arg_3.a.x, arg_3.a.x) % vec4<u32>(32u)), vec4<u32>(26336u, 43734u, u_input.a, arg_3.a.x))), ~(~vec4<u32>(1u, u_input.a, arg_3.d, global0.d) >> (select(vec4<u32>(4294967295u, arg_3.a.x, global0.d, 0u), vec4<u32>(u_input.a, arg_3.a.x, arg_3.d, global0.a.x), global0.c.x) % vec4<u32>(32u)))), arg_3.e);
    var var_0 = firstTrailingBit(arg_1.x | -4788i);
    var_0 = -(arg_1.x & abs(-18317i));
    let var_1 = Struct_2(~global0.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-801f, arg_2, true))), _wgslsmith_f_op_f32(f32(-1f) * -2362f)))), select(global0.c, vec4<bool>(!arg_0 && true, any(arg_3.c.xyx), any(select(global0.c.yw, global0.c.zy, arg_3.c.xw)), !(!arg_0)), !vec4<bool>(true, all(global0.c), false, 366f >= arg_2)), 4637u ^ _wgslsmith_mod_u32(global0.a.x, ~_wgslsmith_add_u32(53980u, arg_3.d)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 358f, arg_2, 1000f) + vec4<f32>(311f, 391f, -454f, global0.b.x)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-749f, arg_3.e.x, 1527f, arg_3.e.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.e.x, arg_3.b.x, global0.b.x, global0.b.x) - vec4<f32>(-1361f, 2120f, 346f, global0.b.x)))))));
    let var_2 = -_wgslsmith_div_vec4_i32(arg_1 ^ vec4<i32>(-1i, 2147483647i ^ arg_1.x, 0i, 1i), arg_1);
    return _wgslsmith_mult_vec2_u32(global0.a.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.d, var_1.a.x << (11756u % 32u)) ^ var_1.a.xy, countOneBits(vec2<u32>(var_1.d, u_input.a)) & _wgslsmith_div_vec2_u32(vec2<u32>(76178u, 21000u), arg_3.a.xz & vec2<u32>(var_1.d, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(abs(_wgslsmith_mult_vec2_u32(global0.a.zx, ~func_1(global0.c.x, vec4<i32>(0i, 9049i, 2147483647i, 49045i), global0.e.x, Struct_2(global0.a, vec3<f32>(global0.e.x, global0.e.x, 2205f), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), u_input.a, vec4<f32>(global0.e.x, global0.b.x, -326f, 736f))))), firstTrailingBit(vec2<u32>(global0.d, ~(~global0.a.x))));
    var var_1 = reverseBits(abs(firstLeadingBit(vec3<i32>(1i, 1i, 2147483647i)) & select(vec3<i32>(1i, -23692i, 0i), vec3<i32>(-2147483647i, 1i, 219i), vec3<bool>(global0.c.x, global0.c.x, false)))) | vec3<i32>(select(24653i, 1i, true), reverseBits(1i), max(1i, 0i));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(282f, global0.e.x, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.x - 1366f))), _wgslsmith_f_op_f32(max(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1464f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(-global0.e))));
    global0 = Struct_2(vec3<u32>(var_0.x >> (_wgslsmith_clamp_u32(min(global0.a.x, var_0.x), global0.a.x, 54079u) % 32u), 49838u, _wgslsmith_mod_u32(global0.a.x, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global0.e.ywy, global0.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-225f, 830f, var_2.x), global0.e.xzx), true)))), global0.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 28537u), ~min(_wgslsmith_div_vec2_u32(global0.a.zy, vec2<u32>(u_input.a, 778u)), firstTrailingBit(global0.a.xx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-990f, var_2.x, var_2.x, var_2.x) + global0.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, var_2.x, -565f) - vec4<f32>(var_2.x, global0.e.x, 715f, var_2.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(481f, 445f, -300f, 909f), global0.e, false))))));
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(global0.a, global0.a) << (~vec3<u32>(4294967295u, 45192u, _wgslsmith_div_u32(global0.a.x, 7275u)) % vec3<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(func_2().x), max(select(var_0.x, global0.d, global0.c.x), 1u), 4294967295u, _wgslsmith_add_u32(firstTrailingBit(0u), 0u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u), vec4<u32>(global0.d, global0.a.x, global0.a.x, var_0.x), global0.c.x), vec4<u32>(global0.d, 34063u, var_0.x, 34474u) & vec4<u32>(11502u, 4294967295u, u_input.a, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(63689u, 83360u, 95953u, 33391u), vec4<u32>(global0.a.x, 26937u, var_0.x, 0u))) << (_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 3844u, 22270u, 21525u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_0.x, u_input.a, 1u), vec4<u32>(u_input.a, 9037u, global0.a.x, 1u))) % vec4<u32>(32u))), false);
    global0 = Struct_2(vec3<u32>(1u >> (~min(4294967295u, var_3.b) % 32u), ~_wgslsmith_div_u32(abs(var_0.x), var_0.x & 12706u), ~4888u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, global0.e.x, global0.b.x), vec3<f32>(-1587f, -1121f, global0.e.x))), _wgslsmith_f_op_vec3_f32(floor(global0.e.zzx)))) + global0.e.yxz), select(vec4<bool>(true, all(select(vec4<bool>(global0.c.x, true, false, false), global0.c, var_3.c)), true, false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(global0.c.x, var_3.c, true, true), global0.e.x == 832f), global0.c, true), !all(select(global0.c.xz, vec2<bool>(var_3.c, true), vec2<bool>(true, false)))), abs((_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), global0.a.zx) >> (~4294967295u % 32u)) | firstLeadingBit(var_0.x)), vec4<f32>(-1496f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) - _wgslsmith_f_op_f32(var_2.x * global0.b.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1000f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1096f - 676f), _wgslsmith_f_op_f32(ceil(global0.b.x))))));
    var var_4 = var_1.yx ^ vec2<i32>(~(-2147483647i | var_1.x) | -(~var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yz, global0.b.xx, vec3<u32>(_wgslsmith_div_u32(global0.d, var_3.b), global0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.a.zx, vec2<u32>(42133u, 1u)), firstTrailingBit(vec2<u32>(u_input.a, 1u))) | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, 4294967295u, var_3.b, 4294967295u)), select(vec4<u32>(u_input.a, var_3.a.x, global0.d, global0.d), vec4<u32>(var_0.x, 9086u, var_3.a.x, u_input.a), var_3.c))));
}

