struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> bool {
    var var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(arg_0.zy, vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(global0.a, 0u))), reverseBits((vec2<u32>(45610u, 5500u) & arg_0.xy) & vec2<u32>(0u, 4294967295u)));
    let var_1 = Struct_2(Struct_1(countOneBits(0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b * global0.b), _wgslsmith_f_op_vec4_f32(step(global0.b, vec4<f32>(749f, arg_1, -992f, arg_1))), true))), 51376i), vec4<i32>(global0.c, 63604i, global0.c, -15203i) & -_wgslsmith_add_vec4_i32(vec4<i32>(5738i, u_input.b, -12125i, global0.c) | vec4<i32>(global0.c, global0.c, u_input.b, 15877i), _wgslsmith_add_vec4_i32(arg_2.a, arg_2.a)));
    global0 = var_1.a;
    let var_2 = firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(~var_1.a.a, 68252u >> (u_input.a % 32u)), var_0.x) << (arg_0.wx % vec2<u32>(32u)));
    var var_3 = var_1;
    return all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, any(vec4<bool>(false, true, true, false))), true), vec4<bool>(true, select(true, true, true), true, any(vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = !select(vec4<bool>(func_3(vec4<u32>(u_input.a, arg_0.a, u_input.a, 43301u), -843f, Struct_3(vec4<i32>(arg_0.c, 30231i, arg_0.c, arg_2.a.c))) != all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), any(vec2<bool>(true, false)), !all(vec4<bool>(true, false, false, true))), vec4<bool>(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)), 1112f < _wgslsmith_f_op_f32(-arg_1.x), true, true), select(vec4<bool>(true, true, false, all(vec2<bool>(true, false))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, arg_0.b.x >= arg_1.x, true)));
    var_0 = !vec4<bool>(global0.b.x > _wgslsmith_f_op_f32(floor(-262f)), !(!(!var_0.x)), (_wgslsmith_f_op_f32(f32(-1f) * -1373f) < arg_1.x) && (arg_1.x >= _wgslsmith_f_op_f32(arg_2.a.b.x - -239f)), var_0.x);
    let var_1 = ~_wgslsmith_mult_i32(i32(-1i) * -1i, -1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.b + global0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, arg_1.x, -479f, -105f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_0.b.x, 573f, -799f) - global0.b), !var_0.x))))), ((reverseBits(0u) >> (~u_input.a % 32u)) != firstTrailingBit(min(63282u, arg_2.a.a))) != var_0.x));
    var var_3 = 2147483647i;
    return global0.b;
}

fn func_1() -> f32 {
    global0 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_1(1u, vec4<f32>(global0.b.x, global0.b.x, -828f, global0.b.x), 50849i), global0.b.xx, Struct_2(Struct_1(59012u, global0.b, global0.c), vec4<i32>(global0.c, u_input.b, 12719i, u_input.b))))))), ~(~(global0.c >> (72331u % 32u))));
    let var_0 = false;
    let var_1 = _wgslsmith_mod_u32(reverseBits(firstTrailingBit(max(u_input.a, u_input.a))) | global0.a, u_input.a);
    let var_2 = Struct_1(_wgslsmith_add_u32(u_input.a, 15392u | max(u_input.a, ~1690u)), _wgslsmith_f_op_vec4_f32(abs(global0.b)), firstLeadingBit(_wgslsmith_add_i32(global0.c, i32(-1i) * -33304i) & -_wgslsmith_div_i32(u_input.b, -21505i)));
    let var_3 = -vec4<i32>(u_input.b << (abs(var_2.a) % 32u), firstTrailingBit(u_input.b), -483i, _wgslsmith_mod_i32(-2147483647i, -2147483647i));
    return -1401f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1596f, -730f, global0.b.x, -1830f) * vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 640f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1320f, -220f, 485f, -896f)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, 613f, global0.b.x), vec4<f32>(449f, global0.b.x, global0.b.x, global0.b.x)))))), ~u_input.b);
    global0 = Struct_1(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x, 789f), u_input.b);
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~(u_input.a >> (4294967295u % 32u)), global0.a), vec2<u32>(u_input.a, u_input.a)), vec4<f32>(-518f, 1000f, global0.b.x, -878f), u_input.b);
    global0 = Struct_1(0u & (_wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(53066u, u_input.a)) >> (((27495u << (0u % 32u)) | global0.a) % 32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), _wgslsmith_f_op_f32(1f * 184f), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), _wgslsmith_f_op_f32(abs(global0.b.x))))), _wgslsmith_clamp_i32(-(~_wgslsmith_add_i32(1037i, global0.c)), firstTrailingBit(~(-50287i)), ~(-1i)));
    global0 = Struct_1(_wgslsmith_clamp_u32(u_input.a, min(4294967295u, 1u), u_input.a) >> (~(_wgslsmith_mod_u32(29416u, 50870u) << (global0.a % 32u)) % 32u), global0.b, _wgslsmith_sub_i32(~(-5529i), countOneBits(~global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_add_vec4_u32(select(firstTrailingBit(vec4<u32>(1u, 4294967295u, u_input.a, global0.a)), countOneBits(vec4<u32>(1864u, 16516u, 0u, 1u)), true), _wgslsmith_mult_vec4_u32(vec4<u32>(7022u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(global0.a, global0.a, 7753u, 118794u))), abs(select(vec4<u32>(u_input.a, u_input.a, 73419u, 69658u), vec4<u32>(27700u, 2620u, u_input.a, u_input.a), false)) >> (~(~vec4<u32>(u_input.a, u_input.a, global0.a, 4294967295u)) % vec4<u32>(32u))), abs(_wgslsmith_sub_u32(countOneBits(58958u), u_input.a)), vec2<i32>(abs(-(~(-2147483647i))), select(abs(global0.c), u_input.b, false)), firstTrailingBit(~(u_input.a | global0.a) & ~u_input.a), _wgslsmith_div_u32(u_input.a ^ 121014u, global0.a));
}

