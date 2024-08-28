struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec3<u32>(11568u, 1u, 0u), vec2<f32>(546f, 108f)), Struct_2(vec3<u32>(4294967295u, 1u, 7973u), vec2<f32>(771f, -217f)), Struct_2(vec3<u32>(1u, 37865u, 1u), vec2<f32>(398f, 1166f)), Struct_2(vec3<u32>(1u, 37274u, 56639u), vec2<f32>(-2104f, -1185f)), Struct_2(vec3<u32>(5125u, 9926u, 13997u), vec2<f32>(543f, 1000f)), Struct_2(vec3<u32>(3135u, 6050u, 35273u), vec2<f32>(-1189f, -610f)), Struct_2(vec3<u32>(1u, 20249u, 0u), vec2<f32>(-180f, 468f)), Struct_2(vec3<u32>(4294967295u, 1u, 15860u), vec2<f32>(694f, 650f)), Struct_2(vec3<u32>(40832u, 71254u, 67058u), vec2<f32>(2312f, 1800f)), Struct_2(vec3<u32>(11334u, 59832u, 71280u), vec2<f32>(-789f, 2065f)), Struct_2(vec3<u32>(1135u, 1u, 4294967295u), vec2<f32>(-251f, 769f)), Struct_2(vec3<u32>(22154u, 4294967295u, 29787u), vec2<f32>(-606f, 379f)), Struct_2(vec3<u32>(1u, 33952u, 72343u), vec2<f32>(-1538f, 334f)), Struct_2(vec3<u32>(4294967295u, 8966u, 45288u), vec2<f32>(184f, 1000f)), Struct_2(vec3<u32>(1u, 61867u, 1u), vec2<f32>(745f, -823f)), Struct_2(vec3<u32>(0u, 0u, 18689u), vec2<f32>(514f, -1000f)), Struct_2(vec3<u32>(51392u, 4294967295u, 0u), vec2<f32>(-371f, -170f)), Struct_2(vec3<u32>(1827u, 8894u, 6274u), vec2<f32>(710f, -987f)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    var var_0 = Struct_1(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), vec4<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(true, true, true, true)), false, true))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_3, 2147483647i, ~(-2147483647i)), u_input.b.x | 0i), select(2147483647i, arg_3 >> (arg_2.x % 32u), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e.x, arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.d))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.e.wyz), arg_0.e.wxz))), _wgslsmith_sub_i32(1i, (arg_3 >> (arg_0.b.a.x % 32u)) ^ 1i));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1670f, -666f, arg_0.b.x, 345f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(2215f, -193f, arg_0.b.x, 1138f) + vec4<f32>(-1469f, arg_2.d.x, arg_2.d.x, 1152f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-542f, arg_0.b.x, -201f, arg_2.d.x), vec4<f32>(arg_2.d.x, -481f, arg_0.b.x, arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_2.d.x), vec4<f32>(-719f, 1015f, arg_2.d.x, arg_0.b.x)))))) - vec4<f32>(arg_2.d.x, -1180f, 893f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) + arg_0.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(466f, -505f))))));
    var var_1 = ~u_input.c;
    var var_2 = !select(vec4<bool>(select(false, true, all(vec3<bool>(false, arg_2.a, true))), any(select(vec4<bool>(true, true, arg_2.a, false), vec4<bool>(arg_2.a, arg_2.a, true, true), vec4<bool>(false, arg_2.a, false, true))), arg_2.a, true), !vec4<bool>(true, true, !arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, arg_2.a, false, all(vec4<bool>(arg_2.a, false, arg_2.a, arg_2.a))), vec4<bool>(false, true, true, true), false));
    let var_3 = Struct_4(~arg_1.x, global0[_wgslsmith_index_u32(~1u, 18u)], arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1180f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(853f * arg_0.b.x) + _wgslsmith_f_op_f32(round(arg_0.b.x))), arg_0.b.x))), var_0);
    var var_4 = -1001f;
    return ~u_input.b.x;
}

fn func_2() -> vec3<f32> {
    let var_0 = reverseBits(vec3<i32>(func_4(Struct_2(firstTrailingBit(vec3<u32>(26135u, 1u, 11003u)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(287f, 1507f), vec2<f32>(-684f, 1000f)))), select(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.c, 392u), vec4<u32>(52099u, 1u, 47833u, 36557u)), select(true, true, false)), Struct_1(true, func_3(Struct_4(84066u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 19894u, -949f, vec4<f32>(-1000f, -517f, -116f, -813f)), 13780i, vec3<u32>(0u, u_input.c, u_input.c), u_input.a.x), ~1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1517f, 1118f)), u_input.a.x & -3172i)), countOneBits(_wgslsmith_div_i32(u_input.d.x, firstLeadingBit(u_input.d.x))), u_input.d.x));
    var var_1 = Struct_3(1394f, Struct_1(-27667i > _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.x, 0i)), max(var_0.zy, var_0.xz)), u_input.a.x, -2147483647i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1514f, -2063f, -1000f))))), -_wgslsmith_add_i32(1i, u_input.d.x) >> (4294967295u % 32u)), select(!vec4<bool>(false, 83571u >= u_input.c, u_input.c > 1804u, select(false, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(false, 0u >= u_input.c, true, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))), vec2<u32>(~u_input.c, ~_wgslsmith_sub_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1483u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 31118u)))));
    let var_2 = var_0.x >> (~66976u % 32u);
    var var_3 = Struct_4(24165u, global0[_wgslsmith_index_u32(u_input.c, 18u)], var_1.d.x << ((~u_input.c ^ ~40829u) % 32u), _wgslsmith_f_op_f32(select(var_1.b.d.x, 254f, var_1.c.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(652f, 155f, var_1.b.d.x, var_1.b.d.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(841f, var_1.a, var_1.b.d.x, var_1.a)))))));
    global0 = array<Struct_2, 18>();
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a))), var_1.a, -1640f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.b.b.x, -2047f, _wgslsmith_f_op_f32(-var_1.a))))))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_2, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x + -383f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1249f * 1f)), _wgslsmith_f_op_f32(-arg_1.x))));
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, 0i) << (countOneBits(71817u) % 32u), 1i), _wgslsmith_div_vec2_i32(u_input.b.zy << (vec2<u32>(~u_input.c, 1u) % vec2<u32>(32u)), vec2<i32>(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), 18u)], vec4<u32>(46703u, 65971u, 4294967295u, u_input.c) >> (vec4<u32>(u_input.c, 17393u, 1u, 11015u) % vec4<u32>(32u)), Struct_1(true, u_input.a.x, 17163i, var_0, -38191i)), 2147483647i)));
    return select(!(!vec3<bool>(any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, false, false, true)))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), vec3<bool>(any(vec2<bool>(true, true)), true, true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
    var_0 = -2283f;
    var var_1 = ~(~select(select(vec3<u32>(43454u, 1u, 41016u), vec3<u32>(u_input.c, u_input.c, u_input.c), false), ~vec3<u32>(37771u, u_input.c, u_input.c), func_1(-19457i, vec2<f32>(-1372f, 2509f)))) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 28544u), vec2<u32>(44845u, u_input.c)) % 32u), ~(~u_input.c), max(u_input.c, _wgslsmith_mod_u32(4852u, 17819u))), vec3<u32>(_wgslsmith_clamp_u32(64915u, 1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 11794u, 37977u), vec3<u32>(34718u, u_input.c, u_input.c)) >> (71190u % 32u), u_input.c)) % vec3<u32>(32u));
    var var_2 = Struct_1(true, min(countOneBits(2147483647i), -18077i), -_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.b.x), -2147483647i, -2147483647i)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(408f, 428f, true)), _wgslsmith_f_op_f32(abs(-728f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f), _wgslsmith_f_op_f32(step(364f, -193f)))), -1748f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -471f), 628f)), 1029f))), _wgslsmith_mult_i32(-9620i, 0i));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1185f))), 324f))), Struct_1(!any(!vec3<bool>(true, var_2.a, var_2.a)), reverseBits(-1i), 16684i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.d, var_2.d, true)))), firstTrailingBit(-1i)), vec4<bool>(any(!(!vec3<bool>(false, var_2.a, var_2.a))), true, false, any(!vec3<bool>(var_2.a, var_2.a, false)) | all(select(vec2<bool>(var_2.a, false), vec2<bool>(true, true), var_2.a))), ~(~vec2<u32>(~var_1.x, 0u)));
    var_3 = Struct_3(_wgslsmith_f_op_f32(var_3.a + var_3.a), var_3.b, !vec4<bool>(!var_2.a, true, _wgslsmith_clamp_u32(4294967295u, var_3.d.x, var_3.d.x) <= (u_input.c | 2985u), true), vec2<u32>(select(var_3.d.x, 27672u, func_1(u_input.a.x, vec2<f32>(1620f, -1346f)).x) >> (~26616u % 32u), 95754u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(21600u, ~1u) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 120165u), vec2<u32>(26830u, 0u), abs(var_3.d)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(34849u, ~u_input.c)), ~_wgslsmith_div_vec2_u32(var_3.d, select(var_3.d, var_1.zx, true))), var_2.d.x, abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 30755u, var_1.x), vec3<u32>(1u, var_1.x, 0u)), abs(vec3<u32>(2990u, 0u, var_1.x))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, var_1.x, var_3.d.x)), vec3<u32>(var_1.x, var_3.d.x, u_input.c), ~vec3<u32>(2618u, 24036u, var_3.d.x)))));
}

