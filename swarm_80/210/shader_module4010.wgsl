struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(147f, -612f, 575f, -2029f), 11996i, vec2<i32>(-33090i, 50059i), -1000f, vec4<bool>(true, false, false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_2(!select(select(vec3<bool>(true, global0.e.x, global0.e.x), !vec3<bool>(global0.e.x, global0.e.x, global0.e.x), any(global0.e.yx)), vec3<bool>(global0.e.x, any(vec3<bool>(global0.e.x, true, false)), true), global0.e.xxx), global0.e.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(480f, -175f, global0.a.x, _wgslsmith_f_op_f32(trunc(global0.d)))), arg_1, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, -119f)) - _wgslsmith_div_f32(256f, global0.d)) + _wgslsmith_f_op_f32(-global0.a.x)), global0.e), u_input.c << (u_input.c % vec4<u32>(32u)), global0.e.wy);
    var var_1 = vec2<bool>(arg_1 != _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, 0i, 44270i, arg_2.x), u_input.b), arg_0 ^ u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, arg_1, u_input.e.x), vec4<i32>(arg_0.x, global0.b, -2147483647i, 70368i))), !all(var_0.c.e));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.d * 582f)))), global0.a.x, _wgslsmith_f_op_f32(var_0.c.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-207f)) + 1354f)), -1186f), 9041i << (~var_0.d.x % 32u), abs(arg_0.wz), _wgslsmith_f_op_f32(global0.d - var_0.c.d), select(select(global0.e, vec4<bool>(global0.e.x, all(global0.e.wx), false, true), vec4<bool>(all(var_0.c.e.wyy), false, var_1.x, arg_1 < -14460i)), select(global0.e, !(!global0.e), !select(vec4<bool>(var_0.a.x, true, global0.e.x, true), vec4<bool>(false, true, var_1.x, true), true)), select(select(select(vec4<bool>(var_1.x, global0.e.x, var_1.x, true), vec4<bool>(false, var_1.x, true, var_0.a.x), vec4<bool>(false, var_0.a.x, true, var_1.x)), select(var_0.c.e, vec4<bool>(global0.e.x, false, var_1.x, var_0.b), global0.e), select(vec4<bool>(var_1.x, var_0.e.x, var_1.x, false), vec4<bool>(var_0.b, var_1.x, false, var_0.a.x), global0.e.x)), select(vec4<bool>(true, false, var_0.e.x, var_0.c.e.x), !global0.e, false), !(!global0.e))));
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_2.a), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(select(var_2.d, var_2.d, !all(var_2.e.xwy))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d), global0.a.x, var_1.x))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(arg_0, 1i, -(~(-arg_3.c.c)))), u_input.b.x, vec2<i32>(global0.c.x >> (~74121u % 32u), ~0i) << (u_input.c.xx % vec2<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3.c.d, arg_1.c.a.x), _wgslsmith_f_op_f32(-arg_3.c.d))))))), arg_3.c.e);
    global0 = arg_3.c;
    let var_0 = arg_1.c;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d))))), arg_1.c.d, arg_2.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.c.a.x - arg_3.c.a.x), global0.d, any(var_0.e)))))), countOneBits(reverseBits(10354i)), vec2<i32>(_wgslsmith_mult_i32(arg_3.c.b, ~var_0.c.x), ~(-1i)) | max(firstTrailingBit(vec2<i32>(arg_0.x, arg_1.c.b)) << (vec2<u32>(u_input.d, u_input.d) % vec2<u32>(32u)), vec2<i32>(-1i, 1i)), _wgslsmith_f_op_f32(-206f + 645f), select(arg_1.c.e, arg_2.e, true | all(global0.e)));
    global0 = var_0;
    return _wgslsmith_f_op_f32(2273f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_div_f32(1231f, -269f)));
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(vec4<f32>(2367f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -1124f))), 1f, _wgslsmith_f_op_f32(abs(global0.d))), -2147483647i, u_input.e.wz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.d, -566f, _wgslsmith_div_i32(global0.c.x, global0.c.x) == ~(-20483i))), global0.d), global0.e);
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(417f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2192f, global0.d) * _wgslsmith_f_op_f32(round(global0.a.x))))), _wgslsmith_f_op_f32(min(global0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(924f * 1482f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.e.x, -1i, 1i, 1i), Struct_2(global0.e.wzy, global0.e.x, Struct_1(global0.a, 66939i, u_input.e.zy, 540f, vec4<bool>(global0.e.x, global0.e.x, true, false)), vec4<u32>(u_input.d, u_input.c.x, 0u, 0u), vec2<bool>(false, true)), Struct_1(vec4<f32>(1000f, -459f, -282f, global0.a.x), u_input.a, vec2<i32>(u_input.a, u_input.b.x), 710f, global0.e), Struct_2(vec3<bool>(global0.e.x, global0.e.x, false), global0.e.x, Struct_1(vec4<f32>(global0.d, global0.d, 256f, 1013f), 1i, global0.c, 1000f, global0.e), u_input.c, global0.e.zz)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(u_input.e, global0.c.x, vec2<i32>(global0.c.x, -49385i))).x))))), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -14406i), global0.c)) ^ -2147483647i, _wgslsmith_mod_vec2_i32(u_input.b.zx, u_input.b.zw), _wgslsmith_f_op_f32(-global0.a.x), !vec4<bool>(global0.e.x, global0.e.x, all(global0.e.wy), true));
    let var_1 = false;
    global0 = var_0;
    let var_2 = ~select(firstLeadingBit(20088u), u_input.d, any(select(var_0.e.ww, vec2<bool>(true, true), !vec2<bool>(global0.e.x, var_1))));
    return vec2<bool>(true, select(any(!vec2<bool>(true, var_1)), !any(select(global0.e, global0.e, var_0.e)), var_0.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global0.e.x, true, all(!vec2<bool>(global0.e.x, global0.e.x)) | true, (u_input.c.x << (u_input.d % 32u)) != u_input.c.x), global0.e, vec4<bool>(all(func_1()), global0.e.x, true, !global0.e.x));
    var var_1 = 1u;
    var_0 = select(vec4<bool>(true, global0.b >= 2147483647i, !global0.e.x, false), global0.e, vec4<bool>(!global0.e.x, all(global0.e.xw), true, true));
    let var_2 = _wgslsmith_sub_vec2_u32(abs(firstTrailingBit(u_input.c.zw >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))) | u_input.c.zy), vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, u_input.d)), ~u_input.d), 1u));
    let var_3 = Struct_2(!(!(!global0.e.ywy)), true, Struct_1(global0.a, 0i, vec2<i32>(i32(-1i) * -2147483647i, -_wgslsmith_add_i32(45125i, u_input.e.x)), _wgslsmith_f_op_f32(-global0.a.x), select(select(global0.e, !global0.e, true | global0.e.x), global0.e, global0.e)), ~reverseBits(u_input.c), !vec2<bool>(true, all(select(vec4<bool>(true, false, global0.e.x, global0.e.x), vec4<bool>(false, false, var_0.x, global0.e.x), false))));
    var_1 = ~(u_input.c.x >> (min(var_2.x, ~(u_input.d << (0u % 32u))) % 32u));
    let var_4 = _wgslsmith_mod_u32(1u, u_input.c.x);
    var var_5 = Struct_2(vec3<bool>(global0.e.x, any(select(!vec4<bool>(true, var_3.a.x, var_3.a.x, var_3.a.x), global0.e, all(var_3.c.e))), !(!all(vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(global0.d - _wgslsmith_div_f32(-2126f, _wgslsmith_f_op_f32(step(var_3.c.d, global0.a.x)))) >= var_3.c.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.a.x, -282f, -838f, 1758f), _wgslsmith_f_op_vec4_f32(-global0.a)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.c.d, global0.a.x, 1970f, var_3.c.a.x)))), -u_input.a, firstTrailingBit(~vec2<i32>(33424i, var_3.c.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global0.d) * -602f)), select(vec4<bool>(global0.e.x, true, func_1().x, var_4 <= 12035u), var_3.c.e, true)), vec4<u32>(var_3.d.x, var_4, _wgslsmith_mult_u32(var_3.d.x, ~25179u) ^ _wgslsmith_div_u32(47168u, u_input.c.x), _wgslsmith_mod_u32(0u, select(var_4, _wgslsmith_div_u32(1u, var_2.x), true))), select(select(!(!var_3.c.e.xw), !global0.e.yw, vec2<bool>(true, var_3.e.x || global0.e.x)), !(!vec2<bool>(var_0.x, global0.e.x)), -(~(-15308i)) != var_3.c.c.x));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.xxw, abs(~min(vec3<u32>(16371u, 0u, 0u), vec3<u32>(4294967295u, var_2.x, 1u))) & _wgslsmith_mult_vec3_u32(~var_5.d.zwz, abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, var_5.d.x, var_2.x), var_3.d.zzz))), _wgslsmith_clamp_vec2_u32(var_3.d.zx, ~_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 0u), firstLeadingBit(vec2<u32>(var_3.d.x, var_4))), ~min(select(u_input.c.ww, vec2<u32>(u_input.c.x, 22017u), var_0.yx), vec2<u32>(var_3.d.x, 0u))), vec2<u32>(var_2.x, 5254u), firstLeadingBit(var_5.d));
}

