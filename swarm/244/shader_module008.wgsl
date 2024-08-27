struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<f32>) -> u32 {
    return 0u;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    global0 = true;
    let var_0 = Struct_2(arg_1);
    var var_1 = Struct_2(var_0.a);
    var var_2 = !vec3<bool>(var_0.a.b, true & (true & !var_1.a.b), false);
    let var_3 = 2147483647i;
    return 0u;
}

fn func_3() -> vec4<u32> {
    let var_0 = any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)));
    global0 = any(vec4<bool>(var_0, true, any(!(!vec2<bool>(var_0, var_0))), var_0));
    var var_1 = ~vec2<i32>(1i, 26127i);
    var_1 = abs(vec2<i32>(var_1.x << (_wgslsmith_dot_vec2_u32(min(vec2<u32>(4294967295u, 49604u), vec2<u32>(95210u, 16399u)), vec2<u32>(47455u, 0u)) % 32u), -1i));
    return abs(select(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(countOneBits(vec4<u32>(7704u, 1u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(var_0, true, true, false), vec4<bool>(true, var_0, true, var_0), true)), vec4<u32>(~1u, ~19575u, 22216u, select(16964u, 0u, var_0))), vec4<u32>(1u, 1u, firstTrailingBit(~4294967295u), _wgslsmith_sub_u32(firstTrailingBit(9664u), reverseBits(4294967295u))), !select(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(false, true, true, false), false), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, false, false), var_0), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(countOneBits(firstTrailingBit(select(u_input.c, vec4<i32>(-10194i, -9151i, -12315i, u_input.a), vec4<bool>(true, true, false, false)))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, u_input.c), _wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), -firstTrailingBit(-1i), reverseBits(u_input.c.x) & _wgslsmith_mult_i32(u_input.b.x, u_input.a), i32(-1i) * -u_input.b.x)));
    let var_1 = ~select(vec4<u32>(func_1(max(vec3<i32>(40095i, 1i, var_0.x), var_0.zww), min(u_input.c.zxx, var_0.wxw), _wgslsmith_f_op_vec2_f32(vec2<f32>(-468f, -482f) - vec2<f32>(995f, -701f))), 4680u, _wgslsmith_clamp_u32(1u, 4294967295u, func_2(true, Struct_1(0u, false, vec2<u32>(4294967295u, 194070u)))), _wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_div_u32(44476u, 1u))), reverseBits(func_3()), true);
    var var_2 = Struct_2(Struct_1(~firstTrailingBit(34644u), true, firstTrailingBit(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(var_1.x, 69600u)))));
    let var_3 = vec3<u32>(~1u, ~_wgslsmith_sub_u32(59213u, select(42625u, var_2.a.a, false)), 9898u) >> ((~(~_wgslsmith_add_vec3_u32(var_1.wxx, vec3<u32>(87434u, var_2.a.c.x, var_1.x))) << (var_1.xxz % vec3<u32>(32u))) % vec3<u32>(32u));
    var_2 = Struct_2(Struct_1(4294967295u, true, vec2<u32>(1u, 1u)));
    let var_4 = _wgslsmith_mod_i32(~var_0.x | _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, 1i), _wgslsmith_mult_i32(u_input.b.x, u_input.c.x)), _wgslsmith_mult_i32(-u_input.b.x, 174i)), min(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(i32(-1i) * -2147483647i, u_input.a >> (var_2.a.c.x % 32u), u_input.c.x, -16075i)), firstLeadingBit(~reverseBits(var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~1i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(303f - 2231f), -768f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -234f, -234f), vec3<f32>(-550f, 1000f, -306f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 338f, 1402f) - vec3<f32>(-165f, -1548f, -299f)))))), var_1.yzy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(476f, 1216f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1382f, 186f) - vec2<f32>(517f, -1565f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-221f, -591f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1727f, _wgslsmith_f_op_f32(-1453f + 378f)))))));
}

