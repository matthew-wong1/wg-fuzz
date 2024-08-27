struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-278f, -330f, 732f), vec3<f32>(-362f, -1447f, 1452f), 4294967295u, 22012u);

var<private> global3: i32 = 18778i;

var<private> global4: vec4<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(global2.b, vec3<f32>(664f, -2049f, 379f), global4.x || global4.x)), _wgslsmith_f_op_vec3_f32(-global2.a), 0u >= max(global2.d, arg_0.c))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), vec3<f32>(arg_2, -1553f, arg_0.b.x)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1231f, -1323f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a.x, arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), countOneBits(~arg_0.d), ~1u);
    let var_1 = Struct_1(global2.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2.a, arg_0.b, true)), vec3<f32>(-987f, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, global2.b.x, 1241f))), 30334i > u_input.b)), global2.b, global4.x)), global2.c, u_input.a);
    global3 = i32(-1i) * -1i;
    let var_2 = global4.x;
    var var_3 = !select(true, global4.x, true);
    return global2.b;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_2, -firstLeadingBit(-2147483647i), arg_2.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_2, 8839i, arg_0)).x, _wgslsmith_f_op_f32(abs(257f)), _wgslsmith_f_op_f32(arg_0 * -1000f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -126f, arg_2.b.x)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(global2.b, global2.a)))))), 75690u | global2.c, _wgslsmith_add_u32(arg_2.c, 2995u));
    global4 = select(vec4<bool>(arg_3, false, false, true), !(!(!vec4<bool>(global1.x, true, false, global1.x))), global1.x);
    let var_0 = -1292f;
    var var_1 = ~(~(~vec3<u32>(u_input.a, 0u, ~u_input.a)));
    let var_2 = ~4294967295u;
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    return vec4<u32>(global2.c, ~(~(29539u << (func_2(426f, vec3<i32>(-2147483647i, global0.x, global0.x), arg_2, false).d % 32u))), 14539u, 80558u);
}

fn func_1() -> Struct_1 {
    var var_0 = select(_wgslsmith_div_vec4_u32(~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global2.c, 4294967295u, 95994u), vec4<u32>(u_input.a, 21979u, global2.c, u_input.a))), vec4<u32>(~1u, ~firstLeadingBit(u_input.a), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global2.c, 50139u, 12716u), _wgslsmith_mult_u32(32521u, 0u)), 4294967295u)), _wgslsmith_add_vec4_u32(func_4(1782f, 1u, func_2(-504f, vec3<i32>(-8530i, u_input.b, u_input.b), Struct_1(vec3<f32>(1000f, global2.b.x, global2.b.x), global2.a, u_input.a, 58600u), true), vec2<u32>(global2.c, global2.c) & vec2<u32>(8452u, u_input.a)) & select(~vec4<u32>(global2.d, 34347u, 28406u, global2.d), min(vec4<u32>(global2.d, 16961u, 31444u, global2.d), vec4<u32>(1u, 19671u, 1u, 0u)), !global1.x), vec4<u32>(u_input.a, 44915u, firstLeadingBit(~global2.d), 28203u)), select(select(!(!vec4<bool>(global1.x, global1.x, false, true)), select(!vec4<bool>(global1.x, false, global1.x, true), select(vec4<bool>(false, true, false, global4.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x)), all(vec3<bool>(true, global4.x, true))), true), !(!select(vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(global1.x, global4.x, global4.x, false), vec4<bool>(true, true, global1.x, global4.x))), any(!(!vec4<bool>(false, global1.x, true, global4.x)))));
    var var_1 = true;
    var var_2 = ~1u;
    var var_3 = func_2(1000f, vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-12527i, -2147483647i, -13239i), vec3<i32>(-15590i, 38978i, 1i)), -(u_input.b ^ global0.x), 20583i) & -max(~vec3<i32>(u_input.b, 25648i, u_input.b), vec3<i32>(3303i, 7832i, 0i)), func_2(global2.b.x, vec3<i32>(-u_input.b, u_input.b, -(~(-20296i))), func_2(_wgslsmith_f_op_f32(1366f - _wgslsmith_f_op_f32(select(global2.a.x, global2.b.x, true))), ~vec3<i32>(global0.x, 1i, 53449i) << (max(var_0.wxw, var_0.yzz) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.b), _wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(-1536f, -829f, -629f)), countOneBits(49020u), 1u), false), global1.x), global1.x);
    let var_4 = ~vec4<u32>(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(global2.a.x, global2.b.x, global2.a.x), vec3<f32>(-1000f, global2.b.x, 278f), global2.d, var_3.d), -1i ^ u_input.b, _wgslsmith_f_op_f32(floor(var_3.b.x)))).x, global2.c, func_2(global2.b.x, max(vec3<i32>(23400i, u_input.b, -2147483647i), vec3<i32>(global0.x, -1i, global0.x)), Struct_1(var_3.b, global2.b, global2.d, 4294967295u), any(global4.wxz)), ~_wgslsmith_add_vec2_u32(vec2<u32>(34921u, 40175u), var_0.zw)).x, var_0.x, var_3.d, ~(~firstTrailingBit(55903u)));
    return func_2(-1000f, reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.x, global0.x, global0.x), -vec3<i32>(12483i, u_input.b, -53924i))), func_2(_wgslsmith_f_op_f32(round(var_3.b.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, global0.x, -58698i), -select(vec3<i32>(-4786i, u_input.b, u_input.b), vec3<i32>(global0.x, u_input.b, 6665i), vec3<bool>(true, true, global4.x))), func_2(493f, vec3<i32>(-2147483647i, 1i, global0.x) >> (_wgslsmith_sub_vec3_u32(var_0.zxy, var_0.xwz) % vec3<u32>(32u)), Struct_1(vec3<f32>(1520f, global2.b.x, global2.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-384f, -209f, -1165f) * vec3<f32>(global2.a.x, var_3.a.x, var_3.b.x)), var_3.c, u_input.a), !any(vec3<bool>(global4.x, true, true))), global4.x), select(true, all(select(!vec2<bool>(global1.x, false), vec2<bool>(true, false), vec2<bool>(global1.x, true))), 4294967295u > _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) >> (var_4.wx % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(6275u, 30907u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(1u, global2.d);
    let var_1 = u_input.b;
    global2 = func_1();
    global0 = vec2<i32>(firstTrailingBit(1i) >> (max(18104u, 0u) % 32u), min(-11892i, u_input.b));
    let var_2 = ~(global0.x & 51696i);
    global0 = -max(vec2<i32>(var_2, ~0i), vec2<i32>(-(var_2 ^ var_1), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.zx)), -max(_wgslsmith_sub_vec2_i32(-vec2<i32>(12150i, global0.x), ~vec2<i32>(1i, var_2)), vec2<i32>(_wgslsmith_clamp_i32(-39861i, var_2, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(-27076i, -17122i)))), reverseBits(u_input.a), 6297i);
}

