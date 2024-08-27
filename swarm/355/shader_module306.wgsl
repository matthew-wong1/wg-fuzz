struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: i32 = -13339i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = ~global0.a;
    let var_1 = arg_0.zy;
    let var_2 = vec2<i32>(-abs(-u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(-35853i, ~u_input.a.x, -44461i, _wgslsmith_add_i32(1i, 26503i)), ~vec4<i32>(u_input.a.x, u_input.a.x, -28127i, -1352i)), _wgslsmith_clamp_i32(max(u_input.a.x, max(-u_input.a.x, -u_input.a.x)), firstTrailingBit(reverseBits(10394i)), -1i));
    let var_3 = Struct_3(~_wgslsmith_dot_vec3_i32(select(max(u_input.a, vec3<i32>(-23349i, u_input.a.x, u_input.a.x)), -u_input.a, true), reverseBits(max(u_input.a, u_input.a))), -1948f, any(vec3<bool>(any(!vec3<bool>(global1.x, false, true)), !(-178f <= arg_0.x), all(!vec2<bool>(true, global1.x)))));
    global1 = !vec2<bool>(var_3.c, var_3.c);
    return select(!(!select(!vec2<bool>(var_3.c, false), !vec2<bool>(var_3.c, global1.x), !vec2<bool>(var_3.c, var_3.c))), vec2<bool>(var_3.c, !any(vec3<bool>(global1.x, var_3.c, true))), select(vec2<bool>(var_3.b == var_1.x, true), select(select(vec2<bool>(global1.x, true), select(vec2<bool>(false, false), vec2<bool>(global1.x, var_3.c), vec2<bool>(true, true)), !vec2<bool>(var_3.c, false)), !(!vec2<bool>(false, var_3.c)), global1.x), !select(!vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), select(vec2<bool>(var_3.c, var_3.c), vec2<bool>(var_3.c, global1.x), global1.x))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = select(global0.a, 0u, any(arg_1.c.d)) << (~(~global0.a) % 32u);
    global0 = arg_1.d;
    var var_1 = arg_0;
    return Struct_1(1i, 1i, arg_2.c, func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-994f, arg_0.b, 293f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = max(~4294967295u, ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, global0.a, 1u, arg_0.x)), vec4<u32>(52313u, min(global0.a, 1u), 1u, arg_0.x)));
    var var_2 = u_input.a;
    global2 = 15338i;
    let var_3 = -1788f;
    return reverseBits(~vec4<i32>(u_input.a.x >> (global0.a % 32u), abs(arg_1.b), 10227i, 1i) << ((reverseBits(vec4<u32>(47918u, 94202u, 11190u, 0u)) << (max(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, global0.a, arg_0.x, 6591u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), vec4<u32>(0u, 4294967295u, 1u, arg_0.x) & vec4<u32>(global0.a, 31341u, 12292u, 102023u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: bool) -> Struct_2 {
    global2 = 1i;
    let var_0 = true;
    global1 = !(!select(!select(vec2<bool>(arg_2, global1.x), vec2<bool>(arg_2, arg_2), vec2<bool>(false, var_0)), vec2<bool>(true, var_0), vec2<bool>(false, global1.x)));
    let var_1 = u_input.a;
    global0 = Struct_2(firstTrailingBit(1u));
    return Struct_2(1u);
}

fn func_1() -> StorageBuffer {
    global0 = func_5(firstTrailingBit(-func_4(vec3<u32>(1u, 0u, 4294967295u), func_2(Struct_3(-1i, 882f, global1.x), Struct_4(vec2<bool>(true, global1.x), vec3<i32>(u_input.a.x, 1i, 60107i), Struct_1(-7148i, u_input.a.x, vec3<bool>(false, global1.x, true), vec2<bool>(true, false)), Struct_2(global0.a), vec2<bool>(global1.x, true)), Struct_1(u_input.a.x, u_input.a.x, vec3<bool>(true, global1.x, false), vec2<bool>(global1.x, false)), false))), vec4<f32>(1579f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1241f + _wgslsmith_f_op_f32(f32(-1f) * -1679f)), 803f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 250f)) - -1624f), 1415f), true);
    let var_0 = 1627f;
    global0 = func_5(_wgslsmith_add_vec4_i32(vec4<i32>(~0i, ~_wgslsmith_mod_i32(36902i, u_input.a.x), _wgslsmith_clamp_i32(countOneBits(10158i), _wgslsmith_div_i32(-2147483647i, -34051i), -2147483647i), u_input.a.x), -abs(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, 610f, -583f, var_0), vec4<f32>(479f, var_0, var_0, -458f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, 230f, -176f) - vec4<f32>(var_0, 464f, var_0, -177f)))), vec4<f32>(var_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(1446f - var_0), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) + _wgslsmith_f_op_f32(1000f * var_0)), _wgslsmith_f_op_f32(-var_0)), all(func_2(Struct_3(0i, var_0, true), Struct_4(vec2<bool>(global1.x, global1.x), vec3<i32>(u_input.a.x, 89387i, -1i), Struct_1(-2147483647i, u_input.a.x, vec3<bool>(global1.x, false, true), vec2<bool>(global1.x, false)), Struct_2(global0.a), vec2<bool>(false, true)), func_2(Struct_3(5950i, var_0, true), Struct_4(vec2<bool>(true, false), vec3<i32>(2147483647i, u_input.a.x, 1i), Struct_1(u_input.a.x, u_input.a.x, vec3<bool>(global1.x, global1.x, global1.x), vec2<bool>(false, false)), Struct_2(global0.a), vec2<bool>(false, false)), Struct_1(-18638i, u_input.a.x, vec3<bool>(true, global1.x, global1.x), vec2<bool>(global1.x, false)), global1.x), global1.x).c))), (any(vec3<bool>(true, true, true)) | any(vec4<bool>(true, false, true, false))) || !(!(907f > var_0)));
    var var_1 = ~(-(~func_4(vec3<u32>(0u, global0.a, global0.a), Struct_1(u_input.a.x, u_input.a.x, vec3<bool>(true, global1.x, true), vec2<bool>(global1.x, global1.x))).yxx)) | vec3<i32>(min(_wgslsmith_clamp_i32(i32(-1i) * -30742i, u_input.a.x, ~u_input.a.x), u_input.a.x ^ min(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.x), u_input.a.x);
    global1 = !func_2(Struct_3(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)), firstTrailingBit(global0.a) < 4294967295u), Struct_4(vec2<bool>(false, false), ~(-u_input.a), func_2(Struct_3(var_1.x, 2270f, true), Struct_4(vec2<bool>(false, true), vec3<i32>(2147483647i, -1i, -6508i), Struct_1(-1i, 48223i, vec3<bool>(global1.x, global1.x, false), vec2<bool>(global1.x, global1.x)), Struct_2(4294967295u), vec2<bool>(false, true)), func_2(Struct_3(u_input.a.x, var_0, global1.x), Struct_4(vec2<bool>(true, false), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), Struct_1(var_1.x, -9395i, vec3<bool>(true, true, true), vec2<bool>(global1.x, false)), Struct_2(global0.a), vec2<bool>(true, global1.x)), Struct_1(-2147483647i, var_1.x, vec3<bool>(false, false, false), vec2<bool>(global1.x, true)), global1.x), global0.a != 2210u), func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, 1i, -1i), vec4<i32>(var_1.x, u_input.a.x, 1i, u_input.a.x)), vec4<f32>(-1711f, -1000f, -663f, var_0), !global1.x), vec2<bool>(true, true)), func_2(Struct_3(var_1.x, -1354f, !global1.x), Struct_4(func_3(vec3<f32>(var_0, -771f, var_0)), -u_input.a, func_2(Struct_3(var_1.x, var_0, global1.x), Struct_4(vec2<bool>(global1.x, false), u_input.a, Struct_1(6324i, 0i, vec3<bool>(true, global1.x, global1.x), vec2<bool>(global1.x, true)), Struct_2(global0.a), vec2<bool>(global1.x, false)), Struct_1(var_1.x, u_input.a.x, vec3<bool>(global1.x, false, true), vec2<bool>(true, false)), true), Struct_2(global0.a), !vec2<bool>(global1.x, global1.x)), Struct_1(u_input.a.x, _wgslsmith_mod_i32(var_1.x, -30374i), vec3<bool>(true, false, true), vec2<bool>(global1.x, global1.x)), all(vec2<bool>(true, global1.x))), true).d;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 137f, 989f)) * vec4<f32>(var_0, -3383f, -578f, var_0))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-492f, var_0, var_0, 509f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 1233f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(330f, 1083f, var_0, var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1188f, 724f) + vec4<f32>(var_0, var_0, -235f, var_0)))))))), 2147483647i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1064f, -139f, var_0, _wgslsmith_div_f32(-125f, 244f)))), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 568u;
    var var_1 = !vec4<bool>(true, true, !(global1.x & true), global1.x);
    let x = u_input.a;
    s_output = func_1();
}

