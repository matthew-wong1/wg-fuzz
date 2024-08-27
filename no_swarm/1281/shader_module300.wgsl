struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1759f, -818f, -1860f), vec3<f32>(565f, 1111f, 1084f), vec3<f32>(1000f, 1202f, 1401f), vec3<f32>(1000f, -912f, 2976f), vec3<f32>(1096f, -965f, -376f), vec3<f32>(-689f, 346f, 751f), vec3<f32>(1000f, -3348f, -958f), vec3<f32>(-452f, -1000f, 459f), vec3<f32>(246f, -823f, 809f), vec3<f32>(-434f, 1369f, 130f), vec3<f32>(-818f, 712f, -969f), vec3<f32>(-2040f, 1091f, -337f), vec3<f32>(-601f, 2321f, 428f), vec3<f32>(-1000f, 178f, -867f), vec3<f32>(653f, 227f, -1527f), vec3<f32>(1521f, 937f, -1292f), vec3<f32>(-1809f, 1026f, -1304f));

var<private> global1: Struct_3 = Struct_3(0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    var var_0 = !arg_0.d.a;
    var var_1 = arg_0.d.c;
    var_0 = true;
    var var_2 = Struct_5(Struct_1(arg_0.d.b.x, arg_0.d.b, vec4<f32>(arg_0.d.d.x, -671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, 1598f, arg_0.d.b.x))), -631f), vec3<f32>(522f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_1.x + -855f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1607f)) - arg_0.d.c.x)), 37302i << (_wgslsmith_dot_vec3_u32(u_input.c, min(vec3<u32>(4294967295u, 0u, 0u), u_input.c)) % 32u)), Struct_2(vec2<bool>(any(select(vec4<bool>(arg_0.d.a, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, false, arg_0.d.b.x, true), true)), _wgslsmith_clamp_u32(1u, 4294967295u, global1.a) < ~6256u), ~firstLeadingBit(arg_0.b << (u_input.c.zy % vec2<u32>(32u))), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(max(arg_0.d.d.x, -797f)) <= var_1.x, !(!arg_0.d.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_0.d.d.x, arg_0.d.d.x, -648f)) - vec4<f32>(var_1.x, arg_0.d.d.x, arg_0.d.c.x, 529f)), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(u_input.a, 17u)])), arg_1.x)), Struct_4(vec4<bool>(_wgslsmith_mod_i32(38163i, arg_0.d.e) >= arg_0.d.e, arg_0.a.x, !arg_0.a.x, _wgslsmith_div_f32(679f, arg_0.d.d.x) < _wgslsmith_f_op_f32(sign(-1000f))), u_input.b.zz));
    global0 = array<vec3<f32>, 17>();
    return _wgslsmith_f_op_f32(max(1000f, 172f));
}

fn func_2() -> u32 {
    var var_0 = Struct_5(Struct_1(!all(vec4<bool>(false, false, true, false)), !vec3<bool>(true, u_input.b.x == 1i, true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1975f, 832f, -444f, -962f))))), _wgslsmith_div_vec3_f32(vec3<f32>(-430f, _wgslsmith_f_op_f32(1276f + -1545f), -2234f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(-309f, 507f)), _wgslsmith_f_op_f32(max(-673f, -170f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-21280i, u_input.b.x), vec2<i32>(17303i, _wgslsmith_div_i32(u_input.b.x, 23315i)))), Struct_2(vec2<bool>(!any(vec3<bool>(false, false, false)), !all(vec2<bool>(false, false))), _wgslsmith_add_vec2_u32(vec2<u32>(abs(14232u), ~global1.a), vec2<u32>(51047u, global1.a) & (u_input.c.yz << (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))), u_input.b.x, Struct_1(select(false, all(vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), _wgslsmith_f_op_f32(-196f * 413f), -264f, _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, false), vec2<u32>(0u, 39027u), 2147483647i, Struct_1(false, vec3<bool>(true, true, false), vec4<f32>(1000f, -1000f, 252f, 1724f), global0[_wgslsmith_index_u32(global1.a, 17u)], u_input.b.x)), u_input.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, -590f, -632f)), _wgslsmith_mult_i32(reverseBits(u_input.b.x), u_input.b.x))), Struct_4(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, false))), u_input.b.yz));
    let var_1 = var_0.c;
    global1 = Struct_3(select(_wgslsmith_sub_u32(~(~50689u), _wgslsmith_clamp_u32(global1.a << (69211u % 32u), abs(64263u), global1.a)), 15094u, var_0.a.b.x));
    let var_2 = Struct_3(var_0.b.b.x);
    let var_3 = _wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(f32(-1f) * -657f));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, u_input.c) & _wgslsmith_add_vec3_u32(u_input.c, u_input.c), u_input.c) & 22774u, ~(~12185u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f * arg_1.x) + _wgslsmith_f_op_f32(-494f * _wgslsmith_f_op_f32(arg_1.x * 774f))))));
    var var_2 = firstTrailingBit(func_2());
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-209f, 958f, var_1, var_1), vec4<f32>(2150f, 671f, arg_1.x, var_1), vec4<bool>(false, false, arg_0.x, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -655f, -595f) - vec4<f32>(var_1, -1000f, 913f, 980f))))));
    global1 = Struct_3(select(u_input.c.x, abs(max(_wgslsmith_clamp_u32(u_input.a, 30542u, u_input.c.x), global1.a)), global1.a > _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.a), vec2<u32>(14642u, 4294967295u))));
    return !(!vec4<bool>(false, arg_0.x, !any(vec2<bool>(arg_0.x, arg_0.x)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, select(15078u, global1.a, false)), ~(~vec3<u32>(11468u, 1u, u_input.d))), 0u, true));
    let var_1 = !(!select(func_1(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), global0[_wgslsmith_index_u32(reverseBits(14700u), 17u)]), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, false)), true, false)));
    var_0 = Struct_3(1436u);
    global0 = array<vec3<f32>, 17>();
    var var_2 = Struct_2(var_1.zw, ~vec2<u32>(9940u, 0u), ~((_wgslsmith_sub_i32(-2147483647i, u_input.b.x) << (global1.a % 32u)) & u_input.b.x), Struct_1(false, var_1.wzy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(709f, -505f, 1227f, -194f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -338f, 1000f, -1000f))), true)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-664f, -191f, 927f, 303f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, -280f, -871f, 2705f))))), vec3<f32>(-1685f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -855f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f + -446f))), countOneBits(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x))));
    let var_3 = Struct_3(~(~30814u));
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_2.d.d.xy);
    let var_5 = select(select(var_1, !func_1(var_1.zzw, _wgslsmith_f_op_vec3_f32(var_2.d.c.xzy + vec3<f32>(var_4.x, var_2.d.c.x, var_4.x))), !vec4<bool>(true, var_1.x | false, true, true)), vec4<bool>(true, 1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.x))), any(!func_1(vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(var_3.a, 17u)]).wx), _wgslsmith_add_i32(-2147483647i << (var_0.a % 32u), 1i) > ~_wgslsmith_clamp_i32(0i, u_input.b.x, -46569i)), false);
    let x = u_input.a;
    s_output = StorageBuffer(563f, abs(-vec4<i32>(reverseBits(u_input.b.x), var_2.c, 0i, ~1i)), var_2.d.c.x, reverseBits(u_input.b) << (vec4<u32>(~select(1u, 27786u, var_5.x), min(~global1.a, var_2.b.x), ~(var_3.a >> (var_2.b.x % 32u)), ~(~69197u)) % vec4<u32>(32u)));
}

