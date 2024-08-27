struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(709f + _wgslsmith_f_op_f32(-384f - 1537f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1032f)), _wgslsmith_f_op_f32(-1355f + 940f))))))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f) - 1f)), arg_0, arg_0, false, _wgslsmith_div_i32(-_wgslsmith_sub_i32(-29054i, -35609i), -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), reverseBits(4294967295u), vec2<f32>(-2135f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1114f, 136f, arg_1))))));
    var var_1 = ~vec3<u32>(32043u, countOneBits(_wgslsmith_div_u32(min(var_0.d, 19382u), 0u)), ((1u << (u_input.c % 32u)) | (42654u >> (arg_0.b.x % 32u))) & 58596u);
    global0 = vec2<u32>(~arg_0.b.x, ~abs(52099u));
    let var_2 = 452f;
    global0 = _wgslsmith_mult_vec2_u32(~firstTrailingBit(abs(~var_0.b.b.b.xy)), var_1.zz);
    return var_2;
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)))) * _wgslsmith_f_op_f32(-1f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1436f, 448f, global1.x)) * -112f)), Struct_1(!(!vec3<bool>(global1.x, true, global1.x)), vec4<u32>(u_input.c, 26595u, u_input.c, 0u) << (vec4<u32>(global0.x, 4294967295u, global0.x, u_input.b) % vec4<u32>(32u))), Struct_1(!(!vec3<bool>(global1.x, true, global1.x)), select(abs(vec4<u32>(42801u, 6270u, 16207u, global0.x)), vec4<u32>(0u, 1035u, 1u, u_input.b), false)), all(vec3<bool>(false, false, false)) & global1.x, 41328i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1177f, -1081f, 446f, 425f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(420f, 108f, -400f, 563f), vec4<f32>(1000f, 452f, 1653f, 243f), global1.x)))))), u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(963f)), -367f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(1280f, 796f), vec2<f32>(-1000f, -700f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1646f, 1095f)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(func_3(var_0.b.c, 1u < abs(_wgslsmith_dot_vec2_u32(vec2<u32>(51809u, 0u), vec2<u32>(43834u, u_input.b))))), Struct_2(var_0.c.x, Struct_1(!select(var_0.b.b.a, vec3<bool>(var_0.b.b.a.x, true, global1.x), var_0.b.b.a), max(vec4<u32>(var_0.b.c.b.x, 0u, 67180u, u_input.c), var_0.b.c.b) << (~vec4<u32>(0u, 3564u, 42409u, var_0.b.b.b.x) % vec4<u32>(32u))), Struct_1(!vec3<bool>(var_0.b.d, global1.x, false), vec4<u32>(~u_input.c, _wgslsmith_sub_u32(u_input.b, 42448u), ~1u, _wgslsmith_dot_vec4_u32(var_0.b.b.b, var_0.b.b.b))), true, 13237i), var_0.c, _wgslsmith_add_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36448u, var_0.d, 1u, 4294967295u), vec4<u32>(u_input.b, var_0.b.b.b.x, var_0.d, global0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.c, 1u, 24555u), var_0.b.b.b)), reverseBits(u_input.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(837f + 210f), var_0.e.x)));
    let var_2 = min(global0.x, _wgslsmith_mult_u32(var_0.d << (global0.x % 32u), ~(~4294967295u)));
    let var_3 = select(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, -2147483647i), -34351i), _wgslsmith_mult_i32(-46101i, var_0.b.e), u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d.x, u_input.d.x), -61526i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~var_0.b.e, -u_input.a.x), 8131i), ~_wgslsmith_div_i32(select(u_input.a.x, -26713i, false), _wgslsmith_mod_i32(u_input.d.x, var_1.b.e)), -(~(var_0.b.e ^ u_input.a.x)), -_wgslsmith_div_i32(var_1.b.e | var_0.b.e, var_1.b.e)), !(!var_0.b.c.a.x));
    return var_1.c;
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global1 = !(!vec3<bool>(global1.x, all(vec4<bool>(false, false, false, global1.x)), global1.x && true));
    global0 = _wgslsmith_mult_vec2_u32((vec2<u32>(abs(63793u), firstTrailingBit(u_input.b)) | ~firstTrailingBit(vec2<u32>(global0.x, u_input.b))) >> (vec2<u32>(~29571u, 0u) % vec2<u32>(32u)), min(vec2<u32>(u_input.c, u_input.c), ~(~countOneBits(vec2<u32>(u_input.c, 86314u)))));
    global0 = ~(~max(firstTrailingBit(max(vec2<u32>(global0.x, 43178u), vec2<u32>(1u, u_input.b))), ~vec2<u32>(u_input.b, 34600u)));
    let var_0 = ~u_input.a.x;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(1865f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(342f))) * -655f)), Struct_1(!(!select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, false), global1.x)), vec4<u32>(8477u, u_input.b, ~_wgslsmith_mult_u32(u_input.b, 1u), ~1u)), Struct_1(vec3<bool>(true, true, true), select(vec4<u32>(0u, 13473u, _wgslsmith_mult_u32(u_input.c, 0u), ~global0.x), vec4<u32>(global0.x, 22499u, 4294967295u, 0u), !(!vec4<bool>(false, global1.x, global1.x, true)))), false, abs(~max(u_input.a.x, -u_input.d.x)));
    return var_1.b;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1327f, 1143f, -142f, 1781f), vec4<f32>(1178f, 527f, -2212f, -784f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(614f)) * _wgslsmith_f_op_f32(trunc(-779f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(798f + -1000f))), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(false, global1.x, global1.x), vec4<u32>(global0.x, 4294967295u, 0u, u_input.c)), true)), _wgslsmith_div_f32(-750f, _wgslsmith_f_op_f32(floor(1027f)))))));
    let var_1 = Struct_2(_wgslsmith_div_f32(-1045f, -1044f), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 834f, -1188f, -737f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-331f, 401f, 1260f, -1054f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, -410f, -1653f, 1170f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(109f, 338f, 719f, 1662f)))))), Struct_1(!(!select(vec3<bool>(global1.x, var_0.a.x, arg_0), vec3<bool>(global1.x, false, arg_0), false)), reverseBits(firstTrailingBit(vec4<u32>(global0.x, u_input.b, arg_1, 0u)))), arg_0, i32(-1i) * -(_wgslsmith_mult_i32(-2654i, arg_3.x) >> (var_0.b.x % 32u)));
    global1 = var_0.a;
    let var_2 = var_1.a < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1714f, 895f, var_1.a, var_1.a))), select(false || arg_0, var_0.a.x, all(var_0.a)))));
    global1 = var_0.a;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x ^ global0.x, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(97683u, u_input.c), vec2<u32>(0u, 21154u)) | vec2<u32>(43479u, 55339u)), max(vec2<u32>(1u, ~(~global0.x)), vec2<u32>(1u, global0.x)));
    var var_0 = Struct_1(!vec3<bool>(!global1.x, true, global1.x), max(~vec4<u32>(50409u, _wgslsmith_sub_u32(u_input.c, 37182u), func_1(false, global0.x, -36636i, vec2<i32>(12775i, 22098i)), u_input.b), vec4<u32>(abs(global0.x), _wgslsmith_div_u32(max(42594u, 57490u), 4294967295u), global0.x, u_input.c)));
    global1 = var_0.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(-984f)), Struct_1(!select(vec3<bool>(var_0.a.x, true, global1.x), select(vec3<bool>(global1.x, var_0.a.x, false), var_0.a, var_0.a), !var_0.a), vec4<u32>(29960u, abs(~global0.x), 7369u, u_input.c)), Struct_1(vec3<bool>(true, any(var_0.a), global1.x), ~vec4<u32>(global0.x, _wgslsmith_mult_u32(0u, 65783u), 82417u, ~var_0.b.x)), false, -(~u_input.d.x));
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.a, var_1.a, _wgslsmith_f_op_f32(var_1.a + 929f), -2254f))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(38887i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(17947i, 16285i, 1i), u_input.a.wxw), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 1i), u_input.a.zww)), u_input.d.x), ~min(-vec3<i32>(0i, u_input.d.x, -4957i), ~vec3<i32>(u_input.d.x, u_input.a.x, 2147483647i)), !var_1.c.a), select(_wgslsmith_dot_vec2_i32(~countOneBits(u_input.a.xz), _wgslsmith_sub_vec2_i32(u_input.d, ~vec2<i32>(1i, 0i))), var_1.e, false), -(_wgslsmith_mod_i32(~u_input.a.x, u_input.d.x << (var_2.b.x % 32u)) ^ 2147483647i), 1105f);
}

