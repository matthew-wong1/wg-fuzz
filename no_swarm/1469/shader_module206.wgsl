struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_2.a;
    let var_1 = firstLeadingBit(~(~arg_0.b.yxw));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-904f))));
    var_0 = Struct_1(vec2<i32>(var_1.x, ~2147483647i), vec4<i32>(arg_1.b.a.a.x, arg_2.a.b.x, arg_0.b.x, ~(_wgslsmith_dot_vec2_i32(arg_2.b.b.ww, vec2<i32>(17687i, 1i)) << (35700u % 32u))), select(arg_0.c, !select(var_0.c, select(vec2<bool>(arg_1.b.b.c.x, arg_2.d), arg_0.c, false), select(arg_0.c, arg_2.b.c, arg_3.c.x)), arg_2.a.c));
    var var_3 = Struct_3(1365f, Struct_2(Struct_1(vec2<i32>(i32(-1i) * -31940i, min(u_input.a.x, var_0.a.x)), _wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(arg_3.a.x, -21549i, 1i, 20360i)), vec2<bool>(true, true)), arg_3, 1u, var_0.a.x < -32693i));
    return _wgslsmith_mult_i32(~2147483647i, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(select(u_input.a.x, 0i, true), _wgslsmith_div_i32(arg_3.b.x, -2147483647i)), arg_1.b.a.a.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = 809f;
    let var_1 = Struct_3(var_0, Struct_2(Struct_1(-(~vec2<i32>(arg_1.x, 0i)), arg_0.b.b, arg_0.a.c), Struct_1(u_input.a.zx, vec4<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), -11852i, func_3(Struct_1(vec2<i32>(-1i, arg_1.x), vec4<i32>(arg_0.b.a.x, u_input.a.x, arg_0.b.b.x, arg_0.a.a.x), vec2<bool>(true, arg_0.b.c.x)), Struct_3(var_0, arg_0), arg_0, Struct_1(arg_0.b.b.zx, vec4<i32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x), vec2<bool>(arg_0.b.c.x, true))), _wgslsmith_div_i32(23168i, arg_0.a.a.x)), vec2<bool>(true, true)), ~arg_0.c, select(select(true, false, arg_0.b.c.x), _wgslsmith_f_op_f32(1410f * var_0) <= 1742f, any(!vec3<bool>(arg_0.a.c.x, false, true)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_1.a)), -301f);
    var var_3 = countOneBits(min(_wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(1u), reverseBits(1u)), ~(~vec2<u32>(14963u, 84349u))), ~(~(~vec2<u32>(arg_0.c, arg_0.c)))));
    var var_4 = firstTrailingBit(~(~firstTrailingBit(vec4<u32>(var_1.b.c, 0u, 46664u, 17343u)) ^ abs(vec4<u32>(var_3.x, 1u, 4294967295u, var_1.b.c) << (vec4<u32>(arg_0.c, var_3.x, 80032u, var_1.b.c) % vec4<u32>(32u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_2.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1340f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-2788f, -928f)), 364f, arg_2.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(884f - -1081f) * 1122f), _wgslsmith_f_op_f32(func_2(Struct_2(arg_2, arg_2, arg_3, arg_2.c.x), -arg_2.a)), true)), _wgslsmith_f_op_f32(-702f - _wgslsmith_f_op_f32(-263f - -2567f)))), arg_2.c.x));
    let var_1 = arg_0.yyw;
    let var_2 = true;
    var var_3 = 385f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f)) + 1023f))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(654f, 1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(598f, 466f) + vec2<f32>(564f, -1000f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(199f, 1836f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2344f, -1539f), vec2<f32>(-881f, -376f), arg_2.c.x)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 2326f))))), select(arg_2.c, vec2<bool>(!arg_2.c.x, true), !all(vec2<bool>(true, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(-27333i, 29633i, u_input.a.x, u_input.a.x), u_input.a.x, Struct_1(u_input.a.yy, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec2<bool>(false, true)), 0u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-810f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-353f)), 263f)));
    var var_1 = Struct_2(Struct_1(-vec2<i32>(u_input.a.x, -2147483647i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), max(vec2<i32>(-26677i, -14742i), vec2<i32>(u_input.a.x, u_input.a.x)), max(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xy)), max(-vec4<i32>(0i, 1i, 0i, u_input.a.x), -vec4<i32>(1i, u_input.a.x, u_input.a.x, 0i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(8226i, 55049i, -2147483647i, 0i), vec4<i32>(0i, 1i, 28500i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))), vec2<bool>(any(vec4<bool>(true, true, true, false)), true)), Struct_1(vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 1i), vec4<i32>(-36089i, u_input.a.x, u_input.a.x, -2147483647i)), -29055i), vec4<i32>(u_input.a.x, u_input.a.x, countOneBits(-34659i), abs(47605i)), !(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(67856u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(16410u, 1u), vec2<u32>(1u, 10765u)), ~vec2<u32>(57938u, 0u))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, ~42305u, firstLeadingBit(0u)), vec4<u32>(79734u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(28756u, 1u, 4294967295u), vec3<u32>(4294967295u, 47021u, 37413u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 14825u), vec3<u32>(5420u, 0u, 27157u))))), !(!(true & select(false, false, true))));
    let var_2 = Struct_1(vec2<i32>(u_input.a.x, 2147483647i), ~_wgslsmith_mult_vec4_i32(-max(vec4<i32>(var_1.a.b.x, -9277i, var_1.b.a.x, var_1.b.a.x), vec4<i32>(-1i, var_1.b.a.x, var_1.b.b.x, 1i)), -min(var_1.b.b, vec4<i32>(-35304i, u_input.a.x, var_1.b.b.x, 0i))), !var_1.a.c);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1957f))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a.x), _wgslsmith_clamp_vec2_i32(var_1.b.a, var_2.a, var_2.a)), var_2.b >> (~vec4<u32>(106819u, 4294967295u, var_1.c, 1525u) % vec4<u32>(32u)), select(var_2.c, var_2.c, var_2.c.x)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 0i) << (vec2<u32>(563u, 1u) % vec2<u32>(32u)), var_2.a >> (vec2<u32>(var_1.c, var_1.c) % vec2<u32>(32u))), vec4<i32>(firstLeadingBit(19367i), 1i, var_2.b.x, var_2.b.x), select(vec2<bool>(false, var_2.c.x), var_2.c, var_2.c.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_1.c, var_1.c), min(4294967295u, 21309u)) & var_1.c, true));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1177f)) * _wgslsmith_f_op_f32(ceil(var_0.x))), var_0.x, 489f));
    let var_5 = Struct_2(var_1.a, var_2, var_3.b.c, !var_3.b.a.c.x);
    let var_6 = ~(~1u);
    var var_7 = ~_wgslsmith_dot_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(var_5.a.b.x, var_5.b.b.x, var_3.b.a.a.x, 55877i), var_3.b.a.b)), countOneBits(vec4<i32>(var_5.a.a.x, -30081i >> (var_3.b.c % 32u), var_5.b.a.x << (var_6 % 32u), ~var_3.b.b.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4 * var_4) + var_4))), select(abs(vec4<u32>(var_6, _wgslsmith_dot_vec4_u32(vec4<u32>(var_6, 4294967295u, 20250u, 101458u), vec4<u32>(var_1.c, 4294967295u, 22823u, var_5.c)), _wgslsmith_mult_u32(1398u, 52356u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 26834u, var_3.b.c), vec3<u32>(26458u, 1u, var_5.c)))), vec4<u32>(~var_6 & 1u, 2354u, var_5.c, min(var_3.b.c, var_6)), var_2.c.x));
}

