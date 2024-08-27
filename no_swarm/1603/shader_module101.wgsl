struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(94239i, 0i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: vec4<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    return _wgslsmith_mod_i32(1i, -1i);
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = -(vec4<i32>(-global0.x, ~(-23011i), reverseBits(1i) ^ global1.b, _wgslsmith_div_i32(64175i, arg_1) & global2.b) | vec4<i32>(firstTrailingBit(-29948i), 1i, global1.b, func_3()));
    var var_1 = Struct_2(vec3<i32>(-1i) * -firstTrailingBit(select(vec3<i32>(1i, arg_0, 38713i), var_0.wyw, global1.a.x)), Struct_1(global2.a, arg_1, -((global2.c & -1i) >> (7695u % 32u)), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.a, global2.d)), ~(~vec2<u32>(4294967295u, 0u)))), Struct_1(!vec2<bool>(true, all(global3.zxz)), -max(5815i | arg_0, -21738i), (~global2.c << (select(u_input.a, global1.d, true) % 32u)) | 30355i, ~_wgslsmith_mod_u32(~global2.d, ~4294967295u)), false, Struct_1(select(global1.a, !global2.a, global3.x), var_0.x, max(arg_1, 0i), _wgslsmith_sub_u32(7346u, _wgslsmith_sub_u32(~1u, ~u_input.a))));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2356f - _wgslsmith_f_op_f32(-293f + _wgslsmith_f_op_f32(-196f - 1322f))) - -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-194f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1532f, -155f, global1.a.x)))))));
    global0 = var_1.a;
    return Struct_1(select(vec2<bool>(global0.x == countOneBits(-31270i), true), vec2<bool>(global1.a.x, false), !(_wgslsmith_sub_u32(54558u, global1.d) == (global2.d >> (var_1.e.d % 32u)))), global1.b, -(arg_1 >> (1u % 32u)), ~(95169u << (_wgslsmith_dot_vec3_u32(min(vec3<u32>(global1.d, u_input.a, var_1.e.d), vec3<u32>(0u, u_input.a, 123364u)), vec3<u32>(4294967295u, 4294967295u, 0u)) % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = true;
    global1 = arg_0;
    let var_1 = Struct_3(Struct_1(vec2<bool>(true, true), -1i, -35660i, _wgslsmith_div_u32(abs(4633u), ~_wgslsmith_add_u32(global1.d, 4294967295u))), Struct_2(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b, global0.x, global1.b), vec3<i32>(global0.x, 1i, arg_0.b))), arg_0, arg_0, true, func_2(-2147483647i, firstTrailingBit(-arg_0.c))));
    var_0 = any(vec3<bool>(global3.x, all(vec3<bool>(all(vec4<bool>(true, true, false, global3.x)), false, true)), !(arg_1.x == _wgslsmith_f_op_f32(ceil(arg_1.x)))));
    global3 = vec4<bool>(!(!all(!vec2<bool>(true, global3.x))), true, global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(-799f - arg_1.x))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -366f))));
    return func_2(_wgslsmith_mod_i32(i32(-1i) * -29087i, 1i), ~(~(_wgslsmith_dot_vec2_i32(var_1.b.a.xz, vec2<i32>(-15239i, -10835i)) << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global0.x << (global1.d % 32u), global2.b, global2.c ^ 1i), i32(-1i) * -1i, arg_0.c, arg_0.c), ~(-vec4<i32>(1i, -1i, 1i, global1.b))), -vec4<i32>(1i, select(_wgslsmith_sub_i32(global0.x, -20756i), arg_0.b | global2.b, global1.b <= -49693i), firstLeadingBit(global2.b), -1i));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(285f + -188f)));
    var var_3 = 6006i;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(462f, 377f, -1189f, 610f), vec4<f32>(-290f, -297f, -1499f, -213f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, 1000f, -923f, -265f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f + 2072f)), -1296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1623f - -191f) * _wgslsmith_div_f32(1031f, 918f)), -262f)));
    return Struct_1(func_2(1i, 1i).a, _wgslsmith_sub_i32(var_1.c, global1.b), _wgslsmith_div_i32(-(~22217i), -arg_1.b << (~(~arg_0.d) % 32u)), u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(arg_2, ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2, vec3<i32>(global2.b, -2147483647i, 2147483647i)), vec3<i32>(global0.x, -27018i, global2.c) | vec3<i32>(48041i, -41291i, 2147483647i))), Struct_1(global2.a, -70993i, i32(-1i) * -1i, 4294967295u), func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, -2677i), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-76175i, -5316i))), ~min(_wgslsmith_add_i32(-2147483647i, 2903i), abs(global2.c))), true, func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(global1.c), arg_2.x << (u_input.a % 32u), abs(global0.x)), arg_0.b.a), arg_2.x ^ _wgslsmith_add_i32(~25331i, global2.b)));
    global3 = vec4<bool>(68257u < (_wgslsmith_div_u32(reverseBits(global1.d), u_input.a) << (arg_0.b.c.d % 32u)), false, false, !global2.a.x);
    global3 = vec4<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(step(580f, 985f)) < -1000f, arg_0.b.b.d >= 4786u)), all(!(!(!vec4<bool>(false, false, global2.a.x, global1.a.x)))), true, arg_0.a.a.x);
    let var_1 = Struct_3(var_0.b, arg_0.b);
    var var_2 = var_1;
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(Struct_3(func_4(func_1(Struct_1(global3.wz, 16970i, -1i, 1u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, 370f, -1119f) * vec3<f32>(356f, 1858f, 382f))), func_2(~6473i, global1.c)), Struct_2(vec3<i32>(~(-74787i), ~global2.b, global0.x), func_2(select(global1.b, 39677i, global2.a.x), global0.x), func_1(Struct_1(vec2<bool>(global2.a.x, false), -17301i, 0i, 19131u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-141f, 1275f, -647f)))), global1.a.x, Struct_1(select(vec2<bool>(false, global2.a.x), vec2<bool>(true, global1.a.x), global3.yx), _wgslsmith_add_i32(global1.b, global2.b), global1.c, 19503u))), global1.a.x, vec3<i32>(min(~global1.c, -global0.x), ~(-1i), _wgslsmith_mult_i32(global1.c, global1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(vec3<i32>(-global0.x, _wgslsmith_clamp_i32(global0.x, global1.c, global1.c), countOneBits(1i)), vec3<i32>(global1.c | global2.b, _wgslsmith_clamp_i32(global1.c, global0.x, -2147483647i), -global1.c), !(!vec3<bool>(false, global1.a.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1237f, -460f)), -545f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -240f, _wgslsmith_f_op_f32(440f * 888f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(675f, 721f, 223f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1091f, -1000f, -355f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(179f, -1945f, -539f, 956f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(501f)), _wgslsmith_div_f32(1215f, 1435f), _wgslsmith_f_op_f32(428f * 1182f), _wgslsmith_f_op_f32(max(1333f, -1446f))))), true)), abs(0i));
}

