struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: array<vec4<u32>, 15>;

var<private> global3: array<vec3<f32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>) -> bool {
    return arg_0.x;
}

fn func_2() -> Struct_1 {
    global0 = -u_input.a;
    global0 = 0i;
    global0 = -1i;
    var var_0 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(-2147483647i, -2147483647i));
    global3 = array<vec3<f32>, 5>();
    return Struct_1(vec4<bool>(true & func_3(vec2<bool>(true, false), ~global2[_wgslsmith_index_u32(4294967295u, 15u)]), false, !all(vec3<bool>(false, true, false)) == true, true), countOneBits(firstLeadingBit(-reverseBits(vec3<i32>(0i, 22707i, 6987i)))), max(countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(3921i, u_input.a, u_input.a, 1i), max(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, -43135i, -41922i)))), -1i), -vec4<i32>(_wgslsmith_sub_i32(u_input.a, -2147483647i) & u_input.a, -u_input.a, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(11182i, -33530i)), _wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i))), true);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(232f - -1601f), _wgslsmith_f_op_f32(-837f * _wgslsmith_f_op_f32(226f + _wgslsmith_f_op_f32(f32(-1f) * -2733f)))));
    global0 = u_input.a;
    var var_1 = !(!(!(!select(vec2<bool>(false, false), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)))));
    var var_2 = func_2();
    let var_3 = var_1.x;
    return Struct_1(func_2().a, _wgslsmith_div_vec3_i32(var_2.b, _wgslsmith_sub_vec3_i32(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -51405i, 52065i), vec3<i32>(u_input.a, 0i, var_2.d.x), var_2.d.wzy), var_2.b), -firstTrailingBit(vec3<i32>(arg_2, 2147483647i, 0i)))), -23852i, _wgslsmith_add_vec4_i32(var_2.d, vec4<i32>(~_wgslsmith_add_i32(u_input.a, 36612i), abs(-u_input.a), u_input.a ^ -1i, 15933i)), !var_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, arg_2.x, _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(arg_2.x, 0u)), ~19615u), vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(27227u, arg_2.x)), arg_1.x, 94468u, 70891u)) >> (vec4<u32>(arg_1.x, arg_1.x, arg_1.x, countOneBits(_wgslsmith_dot_vec2_u32(arg_2.ww, arg_1.yx | arg_2.wy))) % vec4<u32>(32u));
    var var_1 = func_1(any(vec3<bool>(true, !arg_0.e, arg_0.a.x)), ~var_0.yw, 2147483647i);
    global3 = array<vec3<f32>, 5>();
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-arg_0.d, ~(-(~vec4<i32>(-26341i, 2147483647i, u_input.a, 0i)))), firstTrailingBit(min(_wgslsmith_mod_i32(~26435i, _wgslsmith_clamp_i32(var_1.d.x, -15615i, var_1.c)), var_1.c)));
    let var_3 = !var_1.a.wyz;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<bool>(!(true & all(vec4<bool>(false, false, false, true))), true, true, 1f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-301f, -1000f)) * -809f)), _wgslsmith_clamp_vec3_i32(-((vec3<i32>(-2147483647i, u_input.a, 1i) & vec3<i32>(14137i, -1i, u_input.a)) >> (vec3<u32>(1u, 65922u, 0u) % vec3<u32>(32u))), max(vec3<i32>(-12800i, u_input.a, u_input.a) >> (vec3<u32>(43574u, 71144u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.a, u_input.a, 0i) | vec3<i32>(-1i, u_input.a, u_input.a)) << (select(firstTrailingBit(vec3<u32>(13356u, 0u, 29025u)), ~vec3<u32>(4294967295u, 127817u, 52010u), all(vec4<bool>(false, false, true, true))) % vec3<u32>(32u)), -vec3<i32>(-u_input.a, 0i, -u_input.a)), ~(-u_input.a), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, 14216i, -42218i, u_input.a), select(vec4<i32>(0i, u_input.a, 19168i, -2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), u_input.a == u_input.a)), -1i, u_input.a, 2147483647i), func_4(func_1(any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), vec2<u32>(1u, _wgslsmith_add_u32(0u, 46585u)), i32(-1i) * -u_input.a), vec4<u32>(1u, ~(~30836u), 1u, ~_wgslsmith_mult_u32(1u, 1u)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(25521u, 15u)], vec4<u32>(1u, 7216u, 0u, 4294967295u)), 4621u) | max(1u, ~0u), 15u)]));
    global0 = firstLeadingBit(45846i);
    let var_1 = ~vec2<u32>(1u, 1u);
    global2 = array<vec4<u32>, 15>();
    var var_2 = var_0.d.xy;
    var var_3 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2055f * -216f), _wgslsmith_f_op_f32(-828f * 407f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1259f * 707f)))))));
    let var_4 = select(!func_2().a.xy, vec2<bool>(var_0.a.x && var_0.e, false), var_0.a.zx);
    var var_5 = var_2.x;
    let var_6 = -470f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d);
}

