struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>) -> vec4<f32> {
    var var_0 = Struct_4(Struct_2(!(!select(arg_0, vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), (vec2<u32>(u_input.c, 1u) << (~vec2<u32>(1u, u_input.c) % vec2<u32>(32u))) | ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 38592u), vec2<u32>(66223u, 4294967295u)), -2147483647i, _wgslsmith_f_op_f32(-1000f - -1350f), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1896u, u_input.a, 125271u), vec4<u32>(4817u, u_input.c, u_input.a, 24940u))), arg_0.x, select(!select(arg_0.yx, arg_0.xw, !arg_0.yw), vec2<bool>(any(arg_0.xzw), _wgslsmith_f_op_f32(floor(414f)) <= _wgslsmith_f_op_f32(-291f + 2111f)), arg_0.yy), -max(~firstLeadingBit(vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x)), u_input.d.xzz), _wgslsmith_sub_i32(-(~_wgslsmith_div_i32(u_input.b.x, -2147483647i)), -u_input.b.x));
    var var_1 = min(u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), var_0.a.b, ~vec2<u32>(0u, 2707u)), vec2<u32>(u_input.a, var_0.a.e))) << (55173u % 32u);
    global0 = array<Struct_1, 5>();
    let var_2 = Struct_4(var_0.a, var_0.a.a.x, arg_0.zw, u_input.b.ywy, 13368i);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.d, var_2.a.d, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1089f, 504f))), _wgslsmith_f_op_f32(ceil(var_2.a.d)), -1272f)));
    return _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_3.x, 183f, -770f, -939f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.a.d, var_3.x, -1000f, var_0.a.d))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(302f, 1469f, var_0.a.d, 1946f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, -1000f, var_2.a.d, var_3.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.d, var_3.x, -631f, -1232f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.d, -731f, -318f, 564f) - vec4<f32>(var_2.a.d, 897f, -1780f, -2745f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1146f, -1000f, var_3.x, 1147f))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.d, -165f, var_2.a.d, var_2.a.d))))), any(select(select(vec4<bool>(var_2.a.a.x, arg_0.x, false, false), var_0.a.a, vec4<bool>(arg_0.x, var_2.c.x, true, true)), vec4<bool>(false, false, false, true), true))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4) -> vec3<u32> {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(arg_0.d.x)));
    global0 = array<Struct_1, 5>();
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-546f + _wgslsmith_f_op_f32(f32(-1f) * -830f)), arg_2.a.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.d, arg_0.d.x, arg_2.a.d, -261f), vec4<f32>(arg_1.a, 1000f, arg_2.a.d, -1965f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(arg_0.b.a))))))));
    var var_2 = arg_0.a.d;
    return arg_0.c;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = arg_1 << (~(~4294967295u) % 32u);
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(10835u, arg_0, 64136u), abs(select(~vec3<u32>(0u, u_input.c, u_input.c) & func_2(Struct_3(Struct_2(vec4<bool>(true, arg_2, false, arg_2), vec2<u32>(u_input.a, 1u), 34852i, -1000f, 77618u), Struct_2(vec4<bool>(arg_2, arg_2, arg_2, false), vec2<u32>(arg_1, var_0), -13857i, arg_3.x, 48930u), vec3<u32>(u_input.a, arg_1, var_0), vec3<f32>(-585f, arg_3.x, arg_3.x), vec2<i32>(u_input.e.x, 2147483647i)), Struct_1(arg_3.x), Struct_4(Struct_2(vec4<bool>(false, arg_2, arg_2, arg_2), vec2<u32>(arg_0, 4294967295u), -2147483647i, arg_3.x, 4294967295u), arg_2, vec2<bool>(true, arg_2), u_input.b.xyw, 1i)), firstLeadingBit(vec3<u32>(arg_0, arg_0, 45575u)) >> (~vec3<u32>(arg_0, arg_0, 1u) % vec3<u32>(32u)), true)));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_2 = reverseBits(firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0, 4294967295u, 0u), vec4<u32>(0u, 32044u, var_0, var_1.x), vec4<u32>(0u, 1u, 1u, 29882u)) ^ vec4<u32>(22812u, arg_1, 4294967295u, 23086u))));
    return arg_2 | arg_2;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(632f)) - _wgslsmith_f_op_f32(ceil(-1273f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1052f)))))), _wgslsmith_f_op_f32(1279f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))).x)), true))));
    var var_1 = Struct_3(Struct_2(!vec4<bool>(true, true, arg_2.x < 30551i, arg_1.x), arg_0, u_input.e.x, 2697f, u_input.c), Struct_2(vec4<bool>(any(!vec3<bool>(true, arg_1.x, arg_1.x)), true, arg_1.x, select(true || arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), !arg_1.x)), arg_0, _wgslsmith_div_i32(arg_2.x, u_input.e.x), 813f, ~(firstLeadingBit(11669u) >> (_wgslsmith_sub_u32(arg_0.x, arg_0.x) % 32u))), select(vec3<u32>(~firstLeadingBit(0u), 69u & arg_0.x, ~26958u), _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_0.x, arg_0.x), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(37267u, 4294967295u, 4294967295u))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(18824u, 0u)), u_input.c)), arg_1), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, 900f, -1280f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, -165f, 645f))))), vec2<i32>(arg_2.x, i32(-1i) * -2147483647i));
    var var_2 = var_1.a.a.wx;
    global0 = array<Struct_1, 5>();
    var var_3 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)) == 798f, any(select(select(vec2<bool>(false, false), var_1.a.a.zz, var_1.a.a.wz), var_1.b.a.yx, var_1.b.a.xy)), func_1(~u_input.c, _wgslsmith_mod_u32(38251u, firstTrailingBit(37907u)), var_2.x, vec2<f32>(391f, var_1.a.d)), true), vec2<u32>(~(~66147u), _wgslsmith_mod_u32(func_2(Struct_3(Struct_2(var_1.a.a, var_1.c.xx, u_input.e.x, var_1.b.d, u_input.a), var_1.a, var_1.c, var_1.d, vec2<i32>(arg_2.x, -14135i)), Struct_1(1000f), Struct_4(Struct_2(var_1.b.a, var_1.c.yy, 1i, -242f, var_1.a.e), var_2.x, arg_1.zx, u_input.d.yyz, 24501i)).x, arg_0.x)), firstLeadingBit(~_wgslsmith_add_i32(-41294i, 1i)), -746f, _wgslsmith_mod_u32(var_1.a.b.x, 14387u));
    return Struct_3(Struct_2(!(!select(var_1.a.a, var_1.a.a, vec4<bool>(arg_1.x, true, false, false))), countOneBits(select(select(var_3.b, vec2<u32>(u_input.c, var_3.b.x), false), ~vec2<u32>(var_1.a.b.x, u_input.a), vec2<bool>(var_3.a.x, var_2.x))), _wgslsmith_mult_i32(0i, -firstTrailingBit(u_input.d.x)), _wgslsmith_f_op_f32(-var_1.b.d), arg_0.x), Struct_2(!select(select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(var_2.x, false, true, true), false), select(vec4<bool>(arg_1.x, true, false, var_1.b.a.x), var_3.a, arg_1.x), true), arg_0, 1i, -981f, _wgslsmith_dot_vec3_u32(abs(var_1.c), ~_wgslsmith_sub_vec3_u32(var_1.c, var_1.c))), abs(max(vec3<u32>(_wgslsmith_mult_u32(126448u, arg_0.x), _wgslsmith_sub_u32(1u, arg_0.x), _wgslsmith_dot_vec2_u32(var_1.b.b, vec2<u32>(u_input.a, 50310u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_3.b.x, var_1.a.b.x) | vec3<u32>(var_1.b.e, u_input.c, arg_0.x), ~var_1.c))), _wgslsmith_f_op_vec3_f32(floor(var_1.d)), vec2<i32>(var_3.c, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    let var_2 = func_4(vec2<u32>(1u, ~10053u), vec3<bool>(all(vec2<bool>(u_input.c <= 28241u, func_1(u_input.a, 30732u, true, vec2<f32>(var_1.a, 402f)))), _wgslsmith_sub_i32(-var_0.x, _wgslsmith_sub_i32(var_0.x, var_0.x)) > var_0.x, !(!all(vec4<bool>(false, false, true, true)))), vec2<i32>(countOneBits(-2147483647i), -2147483647i));
    let var_3 = var_2.e;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(var_2.a.d)));
    var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(-291f)));
    let var_5 = Struct_4(var_2.b, var_1.a > var_2.a.d, !select(!(!vec2<bool>(var_2.a.a.x, true)), !select(var_2.b.a.zw, vec2<bool>(false, true), false), var_2.a.a.x), vec3<i32>(firstLeadingBit(max(0i, _wgslsmith_mult_i32(var_2.b.c, 30870i))), _wgslsmith_add_i32(firstLeadingBit(-25412i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, var_2.c.x)) % 32u), var_3.x), u_input.e.x), max(~(~firstTrailingBit(-32182i)), -1i));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.zy, _wgslsmith_add_u32(_wgslsmith_div_u32(63508u, firstLeadingBit(u_input.c)), u_input.a) & ~39027u);
}

