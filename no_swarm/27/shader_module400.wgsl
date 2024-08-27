struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-36791i, -20576i), vec2<i32>(-33183i, 0i));

var<private> global1: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(u_input.b.zw, -u_input.b.zz);
    let var_1 = global0.a;
    global0 = var_0;
    global1 = true;
    var var_2 = select(select(select(select(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(true, false, true, arg_0), false), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(false, arg_0, arg_0, true), arg_0), !vec4<bool>(true, arg_0, arg_0, false)), !vec4<bool>(arg_0, true, arg_0, true), !arg_0), !select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, false), false), select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0)), !arg_0), false || all(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0))), select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), select(select(!vec4<bool>(arg_0, false, true, true), !vec4<bool>(true, true, arg_0, arg_0), all(vec2<bool>(false, true))), vec4<bool>(arg_0 & arg_0, all(vec2<bool>(false, arg_0)), false & arg_0, false), true), all(vec3<bool>(true, arg_0 == true, any(vec2<bool>(true, arg_0))))), vec4<bool>((_wgslsmith_f_op_f32(step(1080f, 149f)) < _wgslsmith_f_op_f32(1579f + 324f)) | any(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, true), true)), arg_0, arg_0, any(select(!vec2<bool>(false, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), arg_0), any(vec2<bool>(true, true))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(509f * 1115f))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global1 = false;
    let var_0 = _wgslsmith_f_op_f32(func_3(any(vec3<bool>(!any(vec3<bool>(false, false, true)), true, select(true, true, true)))));
    var var_1 = vec2<bool>(!(!any(vec2<bool>(true, true))), !(1836u < arg_1));
    var_1 = select(!select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), true), vec2<bool>(true, true), select(vec2<bool>(false, var_1.x), vec2<bool>(true, true), var_1.x)), vec2<bool>(!(select(var_1.x, var_1.x, true) & false), true), var_1.x);
    global1 = var_1.x;
    return Struct_1(arg_0.b, select(vec2<i32>(u_input.c >> (u_input.e.x % 32u), ~(-14975i)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, arg_0.a.x), ~vec2<i32>(arg_0.a.x, u_input.a), -vec2<i32>(-19055i, 13565i)), u_input.b.yy, !var_1.x));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = func_2(arg_0, _wgslsmith_add_u32(u_input.d, u_input.e.x));
    var var_0 = vec2<bool>(any(vec3<bool>(true, all(vec3<bool>(true, true, true)), false)) || true, -_wgslsmith_dot_vec3_i32(-u_input.b.xzx, reverseBits(vec3<i32>(-1i, 2147483647i, -9137i))) < _wgslsmith_sub_i32(abs(0i), ~global0.b.x | global0.a.x));
    var var_1 = select(select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(!any(vec2<bool>(false, var_0.x)), true, !var_0.x, all(select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), vec2<bool>(true, false)))), !(!(!vec4<bool>(var_0.x, var_0.x, true, true)))), vec4<bool>(true, select(any(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, var_0.x) != false, false, (_wgslsmith_mult_i32(u_input.c, 2147483647i) < _wgslsmith_sub_i32(12511i, u_input.b.x)) & var_0.x), select(select(!vec4<bool>(false, false, false, var_0.x), vec4<bool>(all(vec2<bool>(true, var_0.x)), true, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x | false, any(vec3<bool>(var_0.x, var_0.x, var_0.x)))), select(!(!vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(true, true, true, true), true), true));
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, select(21006i >> (u_input.e.x % 32u), _wgslsmith_add_i32(1i, -16475i), false | var_0.x)), -firstTrailingBit(func_2(arg_0, 1u).b), -arg_0.a), ~vec2<i32>(firstLeadingBit(-62194i), max(global0.a.x, -34373i)) >> (vec2<u32>(u_input.e.x, u_input.d) % vec2<u32>(32u)));
    let var_2 = abs(vec3<i32>(reverseBits(_wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x)), u_input.b.x, global0.b.x));
    return Struct_1(arg_0.b, vec2<i32>(_wgslsmith_div_i32(17518i, 44552i), -(-2147483647i << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.d), vec3<u32>(u_input.d, u_input.e.x, u_input.e.x)) % 32u))));
}

fn func_5(arg_0: Struct_1) -> i32 {
    var var_0 = -586f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(396f * 404f) - _wgslsmith_f_op_f32(-802f + 2138f)) + _wgslsmith_f_op_f32(min(-1775f, -1143f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2878f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-415f * 1083f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-266f, -182f) * -1000f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1568f * 1245f))))));
    var var_1 = vec3<bool>(true, false, !(!(u_input.a > -1i)));
    var var_2 = arg_0;
    return -(~1i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = -1000f;
    var var_1 = countOneBits(vec4<i32>(min(1i, global0.b.x), firstTrailingBit(~_wgslsmith_div_i32(arg_3, global0.a.x)), ~1i, 39400i));
    var var_2 = Struct_1(select(-(-arg_0.b | u_input.b.zx), max(-(~global0.b), abs(var_1.yw)), vec2<bool>(arg_1.x, true)), -vec2<i32>(arg_0.b.x, arg_0.a.x));
    var var_3 = ~(-22728i);
    var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21764i, global0.b.x, u_input.b.x, -1i), vec4<i32>(-1i, arg_0.a.x, 21666i, u_input.a)), global0.a.x, 74551i, global0.b.x)), ~_wgslsmith_div_vec4_i32(abs(u_input.b), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(global0.a.x, 0i, arg_3, arg_0.a.x), u_input.b)) << (firstLeadingBit(~(~vec4<u32>(u_input.e.x, 4294967295u, u_input.d, 10732u))) % vec4<u32>(32u)));
    return func_5(func_4(func_2(arg_0, 8736u))) >> (~u_input.d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(-vec2<i32>(func_1(Struct_1(global0.b, vec2<i32>(6020i, global0.a.x)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, 392f, 140f, 388f)), _wgslsmith_dot_vec3_i32(u_input.b.xwz, vec3<i32>(50323i, 1i, global0.a.x))), -u_input.b.x), global0.b);
    var var_0 = func_4(Struct_1(u_input.b.zy, (-u_input.b.wx ^ u_input.b.zx) >> (((vec2<u32>(u_input.e.x, u_input.d) | vec2<u32>(15168u, u_input.e.x)) | u_input.e) % vec2<u32>(32u))));
    global1 = any(!vec2<bool>(true, func_4(Struct_1(global0.b, vec2<i32>(u_input.c, -11461i))).b.x == var_0.b.x));
    var var_1 = 0i;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1017f + -1051f), 830f);
    var var_3 = func_2(func_4(func_2(Struct_1(var_0.a << (vec2<u32>(26366u, u_input.e.x) % vec2<u32>(32u)), reverseBits(u_input.b.wx)), u_input.e.x)), 31881u);
    global0 = func_4(func_4(func_2(Struct_1(var_3.b >> (vec2<u32>(5590u, 36895u) % vec2<u32>(32u)), ~global0.b), ~4294967295u)));
    var var_4 = func_2(func_2(Struct_1(~abs(vec2<i32>(var_3.a.x, u_input.b.x)), var_3.b), 2944u), _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(1u, 4294967295u), select(u_input.d, u_input.e.x, false), _wgslsmith_div_u32(u_input.e.x, u_input.d)), vec3<u32>(_wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(64537u, 17867u, u_input.d), vec3<u32>(u_input.d, 4294967295u, 1u))), ~countOneBits(u_input.e.x), 6349u)));
    var_3 = func_2(func_2(func_4(Struct_1(vec2<i32>(-1i, -30488i), func_2(Struct_1(var_0.b, var_4.a), 28589u).b)), 4294967295u), max(_wgslsmith_add_u32(~25364u, 19279u & u_input.d) >> (u_input.d % 32u), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.zx + vec2<f32>(var_2.x, -677f)))))))), _wgslsmith_f_op_f32(round(780f)), max(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.d, 4294967295u) & vec3<u32>(u_input.d, 1u, 37349u), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.e.x, u_input.d, u_input.e.x)), ~vec3<u32>(u_input.e.x, u_input.d, u_input.d))), min(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.e.x, 59270u), vec3<u32>(51638u, 10812u, 40749u)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, u_input.d, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(40878u, 1u, 1u), vec3<u32>(u_input.d, u_input.d, u_input.d))))));
}

