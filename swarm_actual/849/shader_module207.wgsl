struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(39352i, vec4<i32>(0i, i32(-2147483648), -35225i, 2147483647i), false, vec2<f32>(1111f, -2257f)), Struct_1(-43690i, vec4<i32>(1i, 1602i, -85725i, 17122i), true, vec2<f32>(504f, 1511f)));

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: u32 = 6104u;

var<private> global3: vec4<f32> = vec4<f32>(-252f, -936f, 1000f, -366f);

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> i32 {
    let var_0 = select(select(!select(vec4<bool>(false, global0.a.c, global0.b.c, true), select(vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(global4.x, true, global4.x, true), false), !global0.b.c), select(vec4<bool>(true, global0.a.c, global0.a.c, arg_0.x), !(!vec4<bool>(false, arg_0.x, global4.x, true)), global0.a.c), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.b.c, true, true, true), vec4<bool>(global0.a.c, false, false, true), false), false), vec4<bool>(arg_0.x && global0.b.c, true, true && global4.x, !arg_0.x))), !select(select(!vec4<bool>(global0.b.c, global0.b.c, true, global4.x), !vec4<bool>(true, arg_0.x, true, true), vec4<bool>(true, false, global4.x, false)), vec4<bool>(arg_0.x, u_input.a > 2147483647i, true, true), !select(vec4<bool>(true, global0.b.c, false, true), vec4<bool>(global0.b.c, global4.x, arg_0.x, global4.x), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1911f, arg_1.x))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - arg_1.x))) + -292f));
    var var_1 = Struct_4(~(~countOneBits(vec4<u32>(1u, 1u, 1u, 1u))), min(31023i, 1i), Struct_3(~u_input.b, Struct_2(global0.b, Struct_1(_wgslsmith_add_i32(-23421i, 2147483647i), global0.a.b, true, _wgslsmith_f_op_vec2_f32(arg_1.xy * arg_1.yx)))), vec4<f32>(global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -610f)))), _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = var_1.c.b;
    var var_2 = Struct_2(Struct_1(abs(global0.b.b.x), global0.b.b, false, global0.a.d), global0.a);
    let var_3 = var_1.c;
    return -29152i;
}

fn func_2() -> vec3<bool> {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, _wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(1192f + global3.x), _wgslsmith_f_op_f32(max(global3.x, 1000f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, global3.x, -301f, global0.a.d.x))))));
    var var_0 = select(~(select(-vec3<i32>(23375i, global0.b.a, global0.a.a), -global0.b.b.zyx, !vec3<bool>(global4.x, global4.x, true)) | vec3<i32>(min(-13597i, -71971i), ~u_input.b, _wgslsmith_sub_i32(1i, -30791i))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(-55790i), u_input.b, ~abs(-3995i)), _wgslsmith_add_vec3_i32(vec3<i32>(-21358i, u_input.a, global0.b.b.x >> (0u % 32u)), global0.b.b.yzz | vec3<i32>(u_input.b, global0.b.a, u_input.b))), !(!(!select(vec3<bool>(global4.x, global0.b.c, global0.a.c), vec3<bool>(true, false, global0.a.c), vec3<bool>(true, global0.a.c, global0.a.c)))));
    let var_1 = !vec2<bool>(false || all(vec2<bool>(global0.b.c, true)), !(!(global4.x != global4.x)));
    let var_2 = Struct_3(985i ^ select(var_0.x << (~1u % 32u), _wgslsmith_clamp_i32(-38254i, ~(-2147483647i), ~(-1i)), !global4.x | true), Struct_2(Struct_1(-(~8893i), global0.a.b, !global4.x, global0.a.d), Struct_1(13807i, countOneBits(~global0.a.b), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yy)))));
    var var_3 = global0.b;
    return vec3<bool>((i32(-1i) * -_wgslsmith_add_i32(var_2.b.b.a, var_3.b.x)) < ~func_3(!var_1, global3.ywz), !(_wgslsmith_f_op_f32(min(-1819f, _wgslsmith_f_op_f32(trunc(var_3.d.x)))) < _wgslsmith_f_op_f32(-global3.x)), all(var_1));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global4 = select(!func_2(), !(!vec3<bool>(all(vec2<bool>(true, global4.x)), any(vec4<bool>(global4.x, true, global0.a.c, true)), any(vec2<bool>(false, true)))), select(!vec3<bool>(false, global0.a.c && global4.x, true), func_2(), !select(!vec3<bool>(global0.a.c, global4.x, global0.b.c), !vec3<bool>(false, global4.x, global0.a.c), vec3<bool>(false, global4.x, false))));
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.d.x, _wgslsmith_f_op_f32(ceil(-714f)))) + _wgslsmith_f_op_f32(-global0.b.d.x)), -938f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(711f, 372f)), _wgslsmith_f_op_f32(ceil(-339f)))));
    var var_1 = Struct_3(~_wgslsmith_mult_i32(select(min(0i, u_input.a), u_input.b, global4.x), -2147483647i), Struct_2(Struct_1(_wgslsmith_add_i32(arg_0, _wgslsmith_add_i32(-15997i, 20735i)), max(_wgslsmith_sub_vec4_i32(global0.b.b, vec4<i32>(global0.a.b.x, global0.b.b.x, 8526i, 0i)), global0.a.b), true, global0.b.d), Struct_1(u_input.b, vec4<i32>(min(-16597i, arg_0), -20022i, u_input.b & 62564i, abs(arg_0)), true, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b.d))))));
    let var_2 = ~(34139u >> (firstTrailingBit(~(~1u)) % 32u));
    var var_3 = func_2();
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-func_1(1i).b.d.x), -1000f);
    global1 = array<vec2<bool>, 5>();
    global0 = arg_0.b;
    let var_1 = vec3<bool>(global4.x & global0.a.c, true, func_1(1i).a.c);
    let var_2 = u_input.b & ((i32(-1i) * -select(arg_0.a, -30443i, global4.x)) ^ _wgslsmith_sub_i32(-(~global0.a.a), _wgslsmith_add_i32(arg_0.b.a.b.x, 1i >> (0u % 32u))));
    return abs(vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(~arg_1, arg_1 & arg_1) | 4294967295u));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32) -> StorageBuffer {
    let var_0 = select(!(!select(!vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(true, global4.x, true, true), !vec4<bool>(global4.x, global0.a.c, global0.b.c, false))), select(select(select(!vec4<bool>(global0.b.c, true, true, true), vec4<bool>(true, false, false, true), !vec4<bool>(true, false, true, global4.x)), !(!vec4<bool>(false, global0.b.c, global0.a.c, global4.x)), any(select(vec4<bool>(false, global0.b.c, false, global4.x), vec4<bool>(true, false, false, false), vec4<bool>(global0.b.c, false, false, false)))), !(!(!vec4<bool>(global0.b.c, global0.a.c, global0.b.c, true))), select(!(!vec4<bool>(false, global4.x, global0.b.c, false)), !select(vec4<bool>(global0.a.c, true, global0.a.c, false), vec4<bool>(false, global0.a.c, false, true), false), select(vec4<bool>(global0.a.c, global4.x, global0.b.c, global0.a.c), select(vec4<bool>(global0.b.c, true, true, true), vec4<bool>(true, false, true, global4.x), vec4<bool>(false, global4.x, true, global4.x)), false))), all(!func_2()));
    global2 = ~func_4(Struct_3(-2147483647i, Struct_2(func_1(-30878i).b, global0.a)), ~select(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 14280u, arg_1), vec3<u32>(arg_1, arg_0.x, arg_1)), _wgslsmith_mult_vec3_u32(vec3<u32>(24685u, arg_0.x, 1373u), vec3<u32>(1u, arg_1, arg_1)), var_0.wzz)).x;
    var var_1 = true;
    var_1 = !(!all(var_0));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(~u_input.b, _wgslsmith_add_i32(global0.b.a << (arg_0.x % 32u), global0.a.a)), -firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global0.b.a, global0.a.a, -1708i), vec4<i32>(10948i, global0.b.b.x, -1i, global0.a.b.x))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xz))), global0.a);
    return StorageBuffer(~(~vec4<u32>(0u, 0u, 55178u, 4294967295u)) | abs((vec4<u32>(arg_0.x, arg_0.x, arg_1, 8679u) << (vec4<u32>(4294967295u, arg_0.x, 1u, 90754u) % vec4<u32>(32u))) & ~vec4<u32>(78942u, arg_1, arg_0.x, arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x + var_2.b.d.x), _wgslsmith_f_op_f32(trunc(1446f)), _wgslsmith_f_op_f32(select(2537f, var_2.b.d.x, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 5>();
    let var_0 = vec3<bool>(any(!select(!vec4<bool>(global4.x, global4.x, global4.x, true), select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global0.a.c, true, global4.x, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(global4.x, false, false, true), vec4<bool>(true, true, false, true)))), global0.b.c, global4.x);
    var var_1 = false;
    global3 = vec4<f32>(_wgslsmith_div_f32(-165f, -272f), global3.x, global0.a.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
    global4 = var_0;
    let var_2 = global3.x;
    global4 = var_0;
    let x = u_input.a;
    s_output = func_5(func_4(Struct_3(_wgslsmith_add_i32(u_input.a, max(u_input.a, global0.b.a)), func_1(global0.a.b.x)), ~(~(~vec3<u32>(4294967295u, 44077u, 60634u)))), ((~7442u & firstTrailingBit(1u)) & (_wgslsmith_div_u32(53427u, 20983u) << (1u % 32u))) ^ _wgslsmith_mult_u32(~countOneBits(4294967295u), 1u));
}

