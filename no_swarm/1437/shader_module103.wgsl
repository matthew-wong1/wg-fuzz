struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true)), Struct_1(vec2<bool>(false, false), vec3<bool>(true, false, false)), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, true)));

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_sub_i32(u_input.a.x, u_input.a.x);
    var var_2 = select(-u_input.a.xxx, vec3<i32>(reverseBits(u_input.a.x), countOneBits(u_input.a.x | u_input.a.x) >> (~1u % 32u), ~u_input.a.x), !(!arg_1.a.x) | true);
    global2 = array<Struct_1, 16>();
    let var_3 = true;
    return firstLeadingBit(~var_2.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> vec3<i32> {
    global2 = array<Struct_1, 16>();
    let var_0 = reverseBits(_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(46426i, arg_0.x, 39315i, -18481i))), u_input.a & vec4<i32>(1i, firstLeadingBit(-1i), u_input.a.x << (1u % 32u), 1i)));
    var var_1 = abs(_wgslsmith_mod_u32(~(~40292u), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51007u, 4294967295u, 0u, 39456u), vec4<u32>(1u, 9057u, 631u, 1u)), 0u))));
    global2 = array<Struct_1, 16>();
    var var_2 = 1u;
    return vec3<i32>(-_wgslsmith_mod_i32(arg_0.x, 0i) & _wgslsmith_dot_vec2_i32(u_input.a.zy, -vec2<i32>(34729i, arg_0.x)), _wgslsmith_add_i32(arg_0.x, u_input.a.x), _wgslsmith_add_i32(var_0, ~(-1i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    let var_0 = firstTrailingBit(func_4(vec4<i32>(_wgslsmith_mod_i32(~0i, u_input.a.x), -21098i, func_3(Struct_1(arg_2.a, vec3<bool>(false, false, arg_2.a.x)), global2[_wgslsmith_index_u32(1u, 16u)]) & u_input.a.x, arg_0.b), false, global2[_wgslsmith_index_u32(~(~(~115869u)), 16u)]));
    global2 = array<Struct_1, 16>();
    var var_1 = var_0;
    return ~select(_wgslsmith_add_i32(-reverseBits(var_0.x), var_0.x), _wgslsmith_clamp_i32(var_1.x, abs(var_1.x) << (83920u % 32u), _wgslsmith_clamp_i32(select(-2147483647i, -43265i, true), ~(-1i), var_1.x)), arg_2.b.x);
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> u32 {
    global1 = ~(max(1u, 28363u) >> (_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(34768u, 4294967295u, 56763u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)) % 32u));
    global2 = array<Struct_1, 16>();
    let var_0 = vec4<bool>((_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, 10696i, 10944i), 1i) & -firstLeadingBit(u_input.a.x)) < u_input.a.x, !(!arg_0), !all(select(select(vec2<bool>(false, false), vec2<bool>(arg_0, arg_0), true), !vec2<bool>(arg_0, arg_0), !arg_0)), true && !arg_0);
    var var_1 = 2135f;
    let var_2 = u_input.a.yx;
    return firstTrailingBit(max(firstLeadingBit(_wgslsmith_sub_u32(10921u, 0u)), _wgslsmith_mod_u32(firstTrailingBit(1u), min(1u, 4294967295u))) << (~(~select(4294967295u, 0u, false)) % 32u));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) < 1u, arg_0, Struct_2(func_2(Struct_2(u_input.a.x, -2147483647i, vec3<f32>(arg_0, arg_0, 169f)), Struct_2(-2929i, u_input.a.x, vec3<f32>(-685f, arg_0, arg_0)), Struct_1(vec2<bool>(arg_2, arg_2), vec3<bool>(arg_1, false, arg_1))), 2147483647i, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1138f, arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(753f, -659f, arg_0)))))) ^ abs(~countOneBits(25354u));
    var var_1 = true;
    var var_2 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.a.xzw, _wgslsmith_mult_vec3_i32(u_input.a.wxz, _wgslsmith_add_vec3_i32(u_input.a.yyx, vec3<i32>(u_input.a.x, u_input.a.x, 0i)))) ^ 0i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -1i), u_input.a.x), _wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz, vec2<bool>(arg_2, true)), vec2<i32>(0i, -1i))), 0i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, arg_0, arg_0)));
    var var_3 = Struct_2(var_2.a, 2147483647i, vec3<f32>(-1297f, _wgslsmith_f_op_f32(-var_2.c.x), -1000f));
    let var_4 = max(countOneBits(u_input.a.x), ~17892i);
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(var_0) | ~firstTrailingBit(0u), 9449u), 16u)];
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    return Struct_2(u_input.a.x, _wgslsmith_add_i32(min(-38967i, _wgslsmith_sub_i32(~52728i, _wgslsmith_dot_vec3_i32(vec3<i32>(82543i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), countOneBits(max(-u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1749f, 2510f, 361f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, 994f, -1000f)) * vec3<f32>(-1692f, 833f, -721f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, 761f, 868f) - vec3<f32>(278f, 1000f, -510f)))), arg_1.x)));
}

fn func_7(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    let var_0 = ~(~(~(~(~30674u))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-509f + arg_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.c.x)))));
    let var_2 = vec4<f32>(403f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-833f)), _wgslsmith_f_op_f32(select(-1125f, arg_2.c.x, arg_3))), arg_2.c.x, _wgslsmith_f_op_f32(-arg_2.c.x));
    var var_3 = vec4<i32>(func_3(Struct_1(vec2<bool>(select(arg_3, arg_3, arg_3), !arg_3), !vec3<bool>(true, arg_1.x, true)), func_1(arg_2.c.x, true, true)), _wgslsmith_mult_i32(-2147483647i, 1i), u_input.a.x, 1i);
    global2 = array<Struct_1, 16>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2), vec4<f32>(_wgslsmith_f_op_f32(round(133f)), _wgslsmith_f_op_f32(min(1316f, 345f)), arg_2.c.x, _wgslsmith_f_op_f32(var_2.x - 299f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, -1440f, -1037f, 976f)))))))) * var_2);
}

fn func_8(arg_0: vec4<f32>, arg_1: u32, arg_2: f32, arg_3: vec4<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-1408f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(2079f, -1002f)))));
    var var_1 = Struct_2(abs(u_input.a.x), -1i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1708i, u_input.a.x), firstTrailingBit(u_input.a.wzy)), func_2(func_6(Struct_1(vec2<bool>(false, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x)), arg_3), func_6(Struct_1(arg_3.wz, arg_3.yxx), arg_3), func_1(arg_0.x, true, arg_3.x))), _wgslsmith_f_op_vec3_f32(arg_0.wxz - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2, -181f, -449f), arg_0.xww) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 248f, arg_2) + vec3<f32>(arg_2, -1922f, 1000f))))));
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1.b), 20724i, ~abs(func_3(Struct_1(arg_3.zw, arg_3.yww), Struct_1(arg_3.wy, arg_3.wyy))));
    var var_3 = vec4<bool>(false, arg_3.x, arg_3.x != (select(arg_3.x, any(vec2<bool>(false, arg_3.x)), true) && (var_2.x > -2147483647i)), true || arg_3.x);
    global0 = array<Struct_1, 31>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_0))), var_1.c.x, var_1.c.xy, reverseBits(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, all(vec3<bool>(true, true, 729f != _wgslsmith_f_op_f32(step(-357f, 1019f)))));
    let x = u_input.a;
    s_output = func_8(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_7(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f) + _wgslsmith_f_op_f32(677f * 260f)), !vec2<bool>(var_0.x, false), func_6(func_1(-528f, true, true), !vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x))), _wgslsmith_mod_u32(1u, ~1u), -1742f, !select(select(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(true, false, true, var_0.x)), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), var_0.x), !vec4<bool>(true, false, var_0.x, var_0.x), !var_0.x), var_0.x));
}

