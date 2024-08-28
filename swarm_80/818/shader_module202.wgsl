struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_add_vec2_u32(global1.zy, vec2<u32>(0u, 1u))) << (vec2<u32>(u_input.d.x | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.e, u_input.b)), firstTrailingBit(47584u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(4294967295u, 0u), 1u));
    global1 = ~vec4<u32>(_wgslsmith_div_u32(~(~global1.x), 61u), 0u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 55417u, 1u, u_input.e)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.x, 0u, 30372u) ^ u_input.d, ~vec4<u32>(15478u, 1u, u_input.e, var_0.x))), ~firstLeadingBit(_wgslsmith_sub_u32(global1.x, u_input.e)));
    let var_1 = u_input.a.x;
    var_0 = ~vec2<u32>(~abs(abs(u_input.b)), min(4294967295u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.e), vec2<u32>(u_input.b, 5251u)), global1.x, true)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -128f))), -514f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-803f)))))));
    return _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.b, ~4294967295u), max(59453u, 5612u)), (~4294967295u | global1.x) | max(~(~46374u), (global1.x ^ 84169u) ^ 0u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> vec2<f32> {
    global1 = _wgslsmith_clamp_vec4_u32(u_input.d, select(u_input.d, _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(global1.x, global1.x, 0u, 27749u)), u_input.d), select(!select(vec4<bool>(false, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, true), vec4<bool>(false, arg_2.x, true, true)), !vec4<bool>(false, arg_2.x, true, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, false, true), select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), arg_2.x), !vec4<bool>(true, false, arg_2.x, false)))), vec4<u32>(arg_3, u_input.b, 1u, arg_1) & vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(18699u, arg_3), ~8443u), ~min(arg_1, 4294967295u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(50828u, 1u), global1.zw, vec2<bool>(arg_2.x, true)), global1.wx ^ vec2<u32>(0u, arg_1))));
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-523f, 1189f, arg_0), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(27553u, 19u)]))), _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(countOneBits(global1.x), 19u)], _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(55470u, 19u)] + vec3<f32>(arg_0, arg_0, arg_0)))), arg_2)), u_input.a.yx), -(~(-2147483647i)));
    let var_1 = arg_2.zy;
    let var_2 = _wgslsmith_f_op_f32(round(arg_0));
    let var_3 = Struct_4(var_0.a, ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(reverseBits(-2147483647i), 0i), 31722i));
    return var_3.a.b.yz;
}

fn func_2() -> vec3<f32> {
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(791f, ~firstTrailingBit(func_3()), !vec3<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), global1.x));
    var var_2 = 882f;
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global0[_wgslsmith_index_u32(global1.x, 19u)])), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) - vec3<f32>(339f, 737f, -394f)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.e, 19u)] * global0[_wgslsmith_index_u32(48532u, 19u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1670f, var_1.x, var_1.x)), vec3<bool>(true, true, any(vec2<bool>(false, true))))))));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-310f, -710f))), _wgslsmith_f_op_vec3_f32(func_2()), u_input.a.yx);
    var var_1 = Struct_3(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_div_u32(u_input.e, 16297u), 69591u, 1u, abs(~6007u))), select(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(global1.zzz), u_input.d.yxx), 37881u & global1.x), ~vec2<u32>(~u_input.d.x, 4294967295u), true), vec3<bool>(any(vec4<bool>(false, true, false, true)) && (func_3() >= 24996u), _wgslsmith_f_op_f32(-var_0.a) < -574f, true), Struct_2(select(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(163419u, global1.x, global1.x, global1.x)), u_input.d, true), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, global1.x)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 5663u), global1.zy) >> (select(vec2<u32>(global1.x, u_input.d.x), vec2<u32>(global1.x, 4294967295u), false) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.x, var_0.b.x, 368f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2047f, var_0.b.x, var_0.b.x))))));
    let var_2 = Struct_2(~vec4<u32>(0u, _wgslsmith_dot_vec4_u32(var_1.a | var_1.d.a, vec4<u32>(u_input.b, 36428u, var_1.d.a.x, var_1.d.b.x)), u_input.e, _wgslsmith_mod_u32(abs(1u), _wgslsmith_div_u32(1u, 1u))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, var_1.a.x)) >> (vec2<u32>(_wgslsmith_clamp_u32(10046u, 0u, 43116u), global1.x) % vec2<u32>(32u)), var_1.a.zw), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-636f, var_0.b.x, var_0.a), vec3<f32>(1269f, -1039f, var_1.d.c.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(273f, -182f, var_1.d.c.x), vec3<f32>(-723f, var_1.d.c.x, var_1.d.c.x)))))))));
    let var_3 = all(select(!vec4<bool>(true, var_1.c.x, var_1.c.x, any(vec4<bool>(true, false, var_1.c.x, var_1.c.x))), select(select(select(vec4<bool>(var_1.c.x, true, var_1.c.x, true), vec4<bool>(var_1.c.x, false, true, var_1.c.x), vec4<bool>(var_1.c.x, true, true, var_1.c.x)), select(vec4<bool>(false, true, var_1.c.x, true), vec4<bool>(var_1.c.x, true, true, true), false), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x)), select(!vec4<bool>(true, var_1.c.x, var_1.c.x, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), !vec4<bool>(var_1.c.x, var_1.c.x, var_1.c.x, true)), vec4<bool>(true, var_1.c.x, false, true)), vec4<bool>(true, !all(var_1.c.xx), true, any(vec3<bool>(false, false, true)))));
    let var_4 = Struct_2(vec4<u32>(_wgslsmith_clamp_u32(global1.x, var_2.b.x, 72693u), ~_wgslsmith_mult_u32(68493u, _wgslsmith_add_u32(var_1.a.x, 31572u)), ~(~0u) << (_wgslsmith_mult_u32(reverseBits(7177u), _wgslsmith_div_u32(var_1.a.x, var_2.a.x)) % 32u), abs(_wgslsmith_mod_u32(u_input.b, global1.x)) ^ _wgslsmith_mod_u32(~var_1.b.x, ~4294967295u)), ~_wgslsmith_div_vec2_u32(var_2.b >> (vec2<u32>(39449u, u_input.e) % vec2<u32>(32u)), global1.yz) | var_2.a.wy, var_0.b);
    return Struct_3(_wgslsmith_sub_vec4_u32(~var_1.a, ~(~(~u_input.d))), u_input.d.zw >> ((vec2<u32>(56775u, ~global1.x) << (~var_4.a.wy % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.c, var_2);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = u_input.a.wxw;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.d.c.x, -1626f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1080f)), 964f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(759f, arg_2.d.c.x, arg_2.d.c.x), global0[_wgslsmith_index_u32(1u, 19u)])), _wgslsmith_f_op_vec3_f32(arg_2.d.c + arg_2.d.c)))) * _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~global1.x, 19u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(global1.x, arg_2.b.x, 58800u), vec3<u32>(0u, 0u, arg_2.b.x)), ~u_input.d.wwz), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(60245u, global1.x, global1.x)), vec3<u32>(4294967295u, global1.x, global1.x) ^ arg_2.d.a.ywx)), 19u)]));
    let var_2 = firstLeadingBit(countOneBits(~(vec2<i32>(-1i) * -vec2<i32>(arg_3, arg_3))));
    let var_3 = func_1().d;
    let var_4 = _wgslsmith_f_op_f32(arg_2.d.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f))) < _wgslsmith_f_op_f32(f32(-1f) * -150f);
    return Struct_3(u_input.d, vec2<u32>(41470u & firstTrailingBit(0u | arg_2.a.x), 75523u), select(!func_1().c, func_1().c, arg_2.c.x && arg_0.x), arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(vec2<bool>(true, any(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), !vec2<bool>(true, u_input.a.x >= u_input.c)), vec3<bool>(any(vec2<bool>(true, false)), !any(vec4<bool>(true, true, false, false)), !any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false))), func_1(), abs(~(~u_input.c)));
    var var_1 = firstLeadingBit(countOneBits(vec4<i32>(0i, 1i, u_input.a.x, 1i) | -u_input.a)) | u_input.a;
    global1 = _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d.x | 0u, var_0.b.x, global1.x >> (u_input.e % 32u), global1.x), vec4<u32>(_wgslsmith_mult_u32(44511u, global1.x), _wgslsmith_dot_vec2_u32(global1.wx, vec2<u32>(var_0.a.x, 0u)), u_input.e, var_0.a.x), select(vec4<bool>(var_0.c.x, var_0.c.x, false, false), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), vec4<bool>(true, var_0.c.x, true, true), vec4<bool>(true, true, var_0.c.x, true)))) & ~(~func_5(var_0.c.xy, vec3<bool>(var_0.c.x, var_0.c.x, false), var_0, -1i).a), ~var_0.d.a);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(883f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1908f + var_0.d.c.x)) * 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1633f, var_0.d.c.x) + _wgslsmith_f_op_f32(var_0.d.c.x + -381f)), var_0.d.c.x), -893f), ~abs(-(~vec2<i32>(42519i, -1i))));
    var_1 = reverseBits((u_input.a | firstTrailingBit(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(var_1.x, -47182i, u_input.a.x, u_input.c)))) >> (abs(abs(func_1().a)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-((firstLeadingBit(vec2<i32>(u_input.c, -7483i)) ^ vec2<i32>(var_2.c.x, var_2.c.x)) >> (min(_wgslsmith_add_vec2_u32(global1.wx, global1.xy), reverseBits(global1.wz)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-850f)))))), firstLeadingBit(vec4<i32>(reverseBits(~var_2.c.x), i32(-1i) * -49142i, u_input.a.x, u_input.a.x)));
}

