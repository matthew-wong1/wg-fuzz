struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-47020i, i32(-2147483648), -11184i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> i32 {
    global0 = u_input.e;
    let var_0 = ~min(vec4<i32>(u_input.b.x, u_input.b.x, -1i, -18138i), -firstTrailingBit(vec4<i32>(u_input.b.x, 6991i, 0i, global0.x)) << (abs(vec4<u32>(1u, 0u, 1u, u_input.c.x)) % vec4<u32>(32u)));
    global0 = vec3<i32>(_wgslsmith_div_i32(global0.x, i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(~max(vec4<i32>(1i, -78396i, -9338i, u_input.b.x), vec4<i32>(u_input.e.x, 18723i, u_input.e.x, var_0.x)), var_0), _wgslsmith_dot_vec3_i32(select(~var_0.zyz, ~u_input.e, true), var_0.yyz)) << (~u_input.d % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(var_0, abs(~vec4<i32>(1i, 0i, global0.x, 0i))) << (firstTrailingBit(abs(vec4<u32>(1u, 12392u, 0u, 4956u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1018f, 1000f) - 949f)))), ~u_input.d.zx);
    let var_2 = 13378u;
    return _wgslsmith_mult_i32(~(~_wgslsmith_add_i32(i32(-1i) * -4032i, u_input.b.x)), _wgslsmith_sub_i32(-19174i, global0.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<bool> {
    var var_0 = true;
    let var_1 = -1227f;
    var var_2 = vec3<i32>(reverseBits(-1i), global0.x, abs(u_input.b.x));
    let var_3 = Struct_2(Struct_1(~abs(vec4<i32>(-1i, arg_2.a.x, arg_2.a.x, 0i) << (vec4<u32>(arg_1, 34908u, arg_2.c.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-859f * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-329f, 126f), _wgslsmith_f_op_f32(arg_3.x - arg_2.b)))), ~arg_2.c), _wgslsmith_f_op_f32(arg_2.b - arg_3.x), Struct_1(firstLeadingBit(-countOneBits(vec4<i32>(1i, -15801i, -27636i, arg_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(2085f - _wgslsmith_f_op_f32(ceil(var_1)))), _wgslsmith_mult_vec2_u32(max(~vec2<u32>(0u, 0u), vec2<u32>(arg_2.c.x, arg_1)), arg_2.c)), _wgslsmith_mult_u32(arg_1, _wgslsmith_clamp_u32(arg_2.c.x, arg_0.x, ~(~arg_1))));
    global0 = select(-(~(-vec3<i32>(var_3.a.a.x, arg_2.a.x, global0.x))), vec3<i32>(u_input.e.x, i32(-1i) * -(i32(-1i) * -59203i), func_3(any(vec3<bool>(true, false, true)))), true);
    return vec2<bool>(true, !any(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = arg_1.c.a.wzw;
    var var_0 = any(select(func_2(vec3<u32>(arg_1.a.c.x, countOneBits(0u), ~39916u), arg_1.a.c.x, arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.b, 1671f))))), vec2<bool>(false, any(vec2<bool>(false, false))), !vec2<bool>(all(vec4<bool>(false, true, false, false)), true)));
    let var_1 = global0.x;
    let var_2 = arg_1;
    var_0 = true;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(select(u_input.e, u_input.e, vec3<bool>(true, false, true)) | ~vec3<i32>(-30065i, global0.x, 60111i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e.x, u_input.b.x, global0.x), vec3<i32>(global0.x, 14561i, u_input.e.x))) << (select(~vec3<u32>(u_input.d.x, 37687u, u_input.c.x) ^ vec3<u32>(40009u, 76660u, 1u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, 1u, 12490u), u_input.c.wyy), abs(vec3<u32>(33676u, 0u, 1u))), any(vec2<bool>(true, true))) % vec3<u32>(32u)), abs((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.b.x, global0.x, 1i)) ^ (vec3<i32>(0i, 0i, global0.x) | vec3<i32>(2147483647i, -14546i, global0.x))) ^ ~reverseBits(u_input.e)));
    global0 = _wgslsmith_mult_vec3_i32(-(~vec3<i32>(u_input.b.x, func_1(vec4<u32>(1u, u_input.c.x, u_input.d.x, 47256u), Struct_2(Struct_1(vec4<i32>(0i, -17279i, u_input.b.x, -7776i), 1567f, u_input.d.xz), -166f, Struct_1(vec4<i32>(u_input.e.x, global0.x, 25979i, u_input.e.x), 1532f, u_input.d.yz), 1u), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b.x, -2147483647i, u_input.e.x), vec4<i32>(2147483647i, u_input.e.x, u_input.b.x, -1i)))), min(-(vec3<i32>(285i, u_input.e.x, u_input.e.x) << (countOneBits(u_input.d) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(min(_wgslsmith_clamp_vec3_i32(u_input.e, vec3<i32>(-68614i, u_input.b.x, global0.x), vec3<i32>(global0.x, global0.x, 11848i)), max(vec3<i32>(0i, global0.x, -2147483647i), vec3<i32>(u_input.e.x, u_input.e.x, -19886i))), _wgslsmith_sub_vec3_i32(abs(u_input.e), vec3<i32>(-1i, -1i, 27668i)))));
    let var_0 = u_input.e;
    global0 = (u_input.e | ~abs(_wgslsmith_sub_vec3_i32(u_input.e, u_input.e))) >> (_wgslsmith_div_vec3_u32(reverseBits(~min(u_input.c.wwz, vec3<u32>(0u, u_input.d.x, u_input.a))), min(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 4294967295u), u_input.d)), ~u_input.c.zww)) % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_2(Struct_1(firstLeadingBit(-vec4<i32>(u_input.b.x, global0.x, 27269i, 9204i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(917f + 342f))), abs(u_input.c.wx >> (u_input.d.xx % vec2<u32>(32u)))), 308f, Struct_1(vec4<i32>(-2932i, -global0.x, ~18359i, var_0.x << (u_input.d.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-161f)) * _wgslsmith_div_f32(565f, -1592f)), vec2<u32>(u_input.c.x, 67668u)), _wgslsmith_mult_u32(~u_input.d.x ^ ~u_input.a, 1u)), Struct_2(Struct_1(abs(vec4<i32>(-83350i, 0i, global0.x, 1i) & vec4<i32>(576i, -6345i, -3085i, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1358f), u_input.d.yz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(239f + -1171f), 1000f, true)))), Struct_1(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.x, 2147483647i, -29418i, u_input.e.x), vec4<i32>(u_input.b.x, -3869i, global0.x, -4299i)), -vec4<i32>(-18173i, var_0.x, -17177i, 2147483647i), vec4<i32>(-35844i, var_0.x, 28091i, global0.x) >> (u_input.c % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -1134f), min(~u_input.c.zw, u_input.d.xx)), _wgslsmith_div_u32(42207u, ~u_input.a)), true && !(_wgslsmith_f_op_f32(2453f * 2039f) <= _wgslsmith_f_op_f32(sign(-663f))), u_input.d.x, firstLeadingBit(-(~(-1i))));
    var_1 = Struct_3(Struct_2(Struct_1(select(~vec4<i32>(0i, 2147483647i, global0.x, 34325i), vec4<i32>(var_1.e, -2147483647i, u_input.b.x, -2147483647i) | vec4<i32>(u_input.b.x, 7974i, u_input.b.x, global0.x), var_1.c), _wgslsmith_f_op_f32(round(-782f)), reverseBits(~var_1.b.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.b, _wgslsmith_f_op_f32(-var_1.a.c.b))), Struct_1(vec4<i32>(1i, global0.x << (var_1.a.d % 32u), var_0.x, _wgslsmith_sub_i32(1i, 2147483647i)), -784f, ~(~vec2<u32>(4294967295u, var_1.b.a.c.x))), ~_wgslsmith_div_u32(var_1.a.d, countOneBits(u_input.d.x))), Struct_2(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a.b))), var_1.a.c, 12674u), true, ~u_input.a << (reverseBits(firstTrailingBit(_wgslsmith_mod_u32(1u, 86u))) % 32u), 1i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.b.c.b)), _wgslsmith_f_op_f32(f32(-1f) * -234f))), _wgslsmith_f_op_f32(var_1.b.c.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1100f)) * _wgslsmith_f_op_f32(-var_1.a.c.b)))));
    var var_3 = Struct_4(Struct_1(-(-var_1.a.c.a ^ var_1.a.c.a), _wgslsmith_div_f32(var_1.b.a.b, -323f), vec2<u32>(var_1.d, min(6190u, u_input.c.x) >> (~0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, (_wgslsmith_sub_u32(var_1.a.d ^ var_1.a.a.c.x, u_input.a) ^ 0u) & min(74855u, _wgslsmith_sub_u32(var_1.a.d, ~4294967295u)));
}

