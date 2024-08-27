struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(133112u, 39811u, 1u)), firstTrailingBit(vec3<u32>(0u, 4294967295u, u_input.d)) | select(vec3<u32>(u_input.d, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.d, u_input.d), false))), ~(~4294967295u));
    var_0 = ~1u;
    var var_1 = 1f;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1070f))), _wgslsmith_f_op_f32(sign(-634f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(min(274f, -760f)), !all(vec4<bool>(false, true, false, true)))))));
    return _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), abs(vec2<i32>(~u_input.a ^ abs(u_input.c.x), u_input.c.x)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec2<i32> {
    return ~u_input.c ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(func_3(), arg_0));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: u32) -> bool {
    let var_0 = Struct_4(max(arg_1, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-1401i, -15168i)), ~arg_1, -u_input.c), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(arg_1.x, 1i)), -vec2<i32>(arg_1.x, arg_1.x), abs(vec2<i32>(-38195i, -3837i))), -func_2(1i, vec3<bool>(arg_0, true, false)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<u32>(101057u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, 4294967295u, 836u), firstTrailingBit(vec3<u32>(58638u, arg_3, 30687u))), arg_3, u_input.d) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_3, arg_3, arg_3, u_input.b) | vec4<u32>(5766u, arg_3, u_input.b, 1u), vec4<u32>(u_input.d & 8268u, _wgslsmith_mod_u32(25234u, arg_3), _wgslsmith_dot_vec4_u32(vec4<u32>(62435u, 3371u, 1u, 44808u), vec4<u32>(arg_3, arg_3, arg_3, 4294967295u)), select(19439u, 90001u, arg_0))) % vec4<u32>(32u)), vec4<u32>(3643u, 67823u, arg_3, _wgslsmith_mult_u32(~4294967295u, reverseBits(arg_3 & 1u))), 1577f);
    let var_1 = !vec2<bool>(!(!(arg_0 & arg_0)), arg_0);
    let var_2 = Struct_1(u_input.d, arg_0);
    let var_3 = var_2.b;
    let var_4 = true;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(557f, _wgslsmith_f_op_f32(1025f + 1000f), _wgslsmith_f_op_f32(max(-500f, -183f)))))));
    var var_1 = false;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1335f) - vec3<f32>(956f, -657f, var_0.x))))))));
    let var_2 = Struct_3(Struct_1(~(~(~u_input.d)), !select(true, true, any(vec2<bool>(true, true)))), -961f, func_1(48366u != ~u_input.b, u_input.c, var_0.zx, ~_wgslsmith_div_u32(~29006u, min(u_input.b, 37866u))), Struct_2(_wgslsmith_mod_vec3_u32((vec3<u32>(1u, u_input.b, 0u) ^ vec3<u32>(u_input.d, u_input.b, 4294967295u)) << ((vec3<u32>(u_input.d, 13893u, 0u) | vec3<u32>(0u, 4294967295u, u_input.d)) % vec3<u32>(32u)), reverseBits(firstTrailingBit(vec3<u32>(u_input.d, u_input.d, u_input.b)))), !((1i << (u_input.b % 32u)) < func_2(2147483647i, vec3<bool>(false, false, true)).x), any(vec4<bool>(true, true, true, true)), !(!all(vec2<bool>(true, false))), Struct_1(min(u_input.b, u_input.d), false)), Struct_2(max(vec3<u32>(u_input.d, u_input.d, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.d) & vec3<u32>(u_input.b, 0u, u_input.b)) >> (vec3<u32>(69392u ^ u_input.b, max(u_input.d, 4294967295u), countOneBits(u_input.d)) % vec3<u32>(32u)), true, true, all(vec2<bool>(var_0.x <= var_0.x, any(vec2<bool>(false, true)))), Struct_1(max(reverseBits(u_input.b), 42196u), true)));
    var var_3 = u_input.a & u_input.a;
    var var_4 = Struct_2(~(~var_2.e.a), !var_2.e.d, any(!(!vec2<bool>(true, var_2.e.d))), ((-u_input.c.x | u_input.a) != select(func_3(), ~73072i, true)) && !select(var_0.x == 282f, true, !var_2.d.d), Struct_1(1u, false));
    var_1 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.d.a.zz, vec2<u32>(var_4.a.x, abs(123752u))), vec2<u32>(~_wgslsmith_clamp_u32(127363u, 20920u, var_2.e.a.x), ~(~50454u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 851f) * 870f) - 531f)), abs(-2147483647i | u_input.c.x), 833f);
}

