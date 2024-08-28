struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = select(vec4<bool>(!(!(!global1.x)), global1.x, global1.x | global1.x, global1.x), !vec4<bool>(true, (0u ^ u_input.b) >= 1u, true, true), true);
    var_0 = !select(select(select(vec4<bool>(global1.x, global1.x, true, var_0.x), !vec4<bool>(true, global1.x, global1.x, true), true), !vec4<bool>(global1.x, true, var_0.x, false), select(select(vec4<bool>(var_0.x, global1.x, true, global1.x), vec4<bool>(var_0.x, global1.x, false, global1.x), vec4<bool>(false, false, true, global1.x)), select(vec4<bool>(var_0.x, global1.x, false, true), vec4<bool>(global1.x, false, var_0.x, global1.x), vec4<bool>(true, false, true, true)), global1.x & var_0.x)), vec4<bool>((0u >= u_input.b) || true, arg_0.x >= firstLeadingBit(18331i), false, global1.x), !(!select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, true, true, false), vec4<bool>(global1.x, false, var_0.x, var_0.x))));
    global1 = !var_0.zxw;
    var_0 = select(select(select(select(!vec4<bool>(false, global1.x, var_0.x, true), select(vec4<bool>(global1.x, false, var_0.x, global1.x), vec4<bool>(false, false, false, true), var_0.x), true), !(!vec4<bool>(var_0.x, false, global1.x, global1.x)), var_0.x == var_0.x), vec4<bool>(true, var_0.x, !all(vec4<bool>(var_0.x, false, var_0.x, global1.x)), false), all(global1.zx)), vec4<bool>(true, true, (_wgslsmith_sub_i32(-13038i, u_input.a.x) <= (-34614i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)] % 32u))) | all(select(vec4<bool>(global1.x, var_0.x, true, global1.x), vec4<bool>(var_0.x, true, true, false), vec4<bool>(false, true, true, var_0.x))), var_0.x), global1.x);
    global2 = vec4<i32>(1i, global2.x, min(arg_0.x & 0i, ~2147483647i), -arg_0.x);
    return global2.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global2 = -countOneBits(vec4<i32>(func_3(global2.xy) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(69178u, 10u)], 10u)], 10u)] % 32u), _wgslsmith_sub_i32(-global2.x, -6706i), firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -13796i, 32311i), global2.wxz)));
    let var_0 = 1u;
    global0 = array<u32, 10>();
    global1 = vec3<bool>(global1.x, select(global1.x, !arg_0, true), !global1.x);
    global2 = vec4<i32>(-26677i, global2.x, ~u_input.a.x, abs(-global2.x));
    return Struct_1(global1.x, vec2<f32>(1828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1073f - -1537f)))), false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(~(~20233u), 10u)]), 10u)], 10u)], 7340i);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = vec2<bool>(arg_1.x, firstTrailingBit(4294967295u) >= 4294967295u);
    var var_1 = ~arg_3.a;
    var_1 = _wgslsmith_clamp_vec2_u32(arg_3.a, arg_3.a, select(reverseBits(vec2<u32>(var_1.x, 12029u) & arg_3.a), vec2<u32>(1u, 1u), select(!arg_1, !var_0, select(global1.xz, arg_1, global1.yx))) & vec2<u32>(abs(~64483u), arg_0));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(func_2(false).e, func_3(~arg_3.b.yy) & _wgslsmith_clamp_i32(countOneBits(1i), i32(-1i) * -25424i, _wgslsmith_mult_i32(arg_2.e, 12816i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(0i, arg_3.b.x, -2147483647i, arg_3.b.x), ~vec4<i32>(arg_2.e, 2147483647i, -2112i, -2147483647i)), select(~vec4<i32>(arg_2.e, -1i, 10688i, 0i), vec4<i32>(-20158i, arg_2.e, arg_3.b.x, -2147483647i), func_2(arg_2.a).c)), func_2(global1.x).e), abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.e, arg_2.e, global2.x, arg_2.e) & vec4<i32>(14223i, -1i, 1i, arg_3.b.x), firstTrailingBit(vec4<i32>(arg_3.b.x, arg_2.e, global2.x, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-2146f * 646f), -703f, arg_2.b.x))));
    return 1i;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), 924f, _wgslsmith_f_op_f32(abs(arg_0)));
    var var_1 = Struct_2(vec2<u32>(_wgslsmith_clamp_u32(~reverseBits(u_input.b), firstLeadingBit(4294967295u), u_input.b << (abs(25237u) % 32u)), u_input.b), -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(8642i, -14089i), func_3(u_input.a)), arg_1.x, ~global2.x >> (4294967295u % 32u)));
    return Struct_2(arg_2.zz, ~_wgslsmith_mod_vec3_i32(global2.wzz, vec3<i32>(arg_1.x | 37452i, 1i, firstTrailingBit(64781i))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> vec2<u32> {
    var var_0 = func_5(_wgslsmith_div_f32(300f, _wgslsmith_f_op_f32(select(-1136f, -1186f, true))), vec4<i32>(func_4(87779u, !vec2<bool>(global1.x, false), func_2(all(vec4<bool>(true, global1.x, false, true))), Struct_2(vec2<u32>(23666u, arg_0), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12089i, 1i, arg_1.x), arg_1, global2.yxx))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(arg_1, global2.xwx), firstLeadingBit(arg_1)), -arg_1.x << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)] & 4294967295u) % 32u)), 61962i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, u_input.a.x), min(~1i, global2.x))), vec3<u32>(83269u, 1u, ~arg_2));
    global0 = array<u32, 10>();
    let var_1 = (abs(abs(4294967295u) << (_wgslsmith_mod_u32(45760u, var_0.a.x) % 32u)) >= 4294967295u) != all(select(vec2<bool>(select(false, global1.x, false), true), !vec2<bool>(global1.x, global1.x), global1.x));
    let var_2 = !(!vec3<bool>(false, true, var_1));
    global0 = array<u32, 10>();
    return vec2<u32>(~4294967295u, ~(u_input.b << (1u % 32u)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>) -> bool {
    let var_0 = 23979u;
    global0 = array<u32, 10>();
    let var_1 = reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(abs(17418u & _wgslsmith_div_u32(var_0, global0[_wgslsmith_index_u32(u_input.b, 10u)])), 10u)], u_input.b, ~(~(~arg_0.a.x)), _wgslsmith_sub_u32(arg_0.a.x, 1u)));
    let var_2 = ~func_5(-1161f, arg_1, vec3<u32>(8393u, 12863u, arg_0.a.x)).a.x;
    global2 = -firstTrailingBit(max(-min(vec4<i32>(1i, 7046i, arg_1.x, arg_0.b.x), arg_1), _wgslsmith_clamp_vec4_i32(arg_1, _wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.b.x, -1i, 1i), vec4<i32>(arg_1.x, -32335i, global2.x, u_input.a.x)), vec4<i32>(1i, u_input.a.x, 1i, 5834i) | vec4<i32>(u_input.a.x, u_input.a.x, 16253i, u_input.a.x))));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, false, _wgslsmith_sub_u32(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 10u)] | u_input.b), ~6112u) >= u_input.b, any(!vec3<bool>(global1.x, select(false, true, false), global1.x)));
    global2 = select(~vec4<i32>(~_wgslsmith_mod_i32(-2147483647i, global2.x), -36840i, firstLeadingBit(u_input.a.x), i32(-1i) * -22383i), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_clamp_i32(global2.x, 0i, -1i), reverseBits(u_input.a.x)), -_wgslsmith_div_i32(-90744i, 1i), _wgslsmith_add_i32(global2.x, 56235i), u_input.a.x), var_0);
    global1 = vec3<bool>(global1.x, func_6(Struct_2(vec2<u32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)]) << (func_1(0u, vec3<i32>(56598i, 5623i, global2.x), u_input.b) % vec2<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-44450i, global2.x, 0i)), vec4<i32>(~_wgslsmith_div_i32(0i, u_input.a.x), ~global2.x, _wgslsmith_div_i32(global2.x, func_5(-157f, vec4<i32>(u_input.a.x, u_input.a.x, 5023i, 2147483647i), vec3<u32>(u_input.b, u_input.b, u_input.b)).b.x), ~(~global2.x))), global1.x);
    var var_1 = countOneBits(~vec2<u32>(~u_input.b, u_input.b));
    var var_2 = Struct_1(any(select(vec2<bool>(global1.x, func_6(Struct_2(vec2<u32>(35812u, 4294967295u), vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec4<i32>(global2.x, global2.x, u_input.a.x, 2147483647i))), var_0.wz, select(vec2<bool>(true, false), !vec2<bool>(var_0.x, false), var_0.wx))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -1034f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, -258f) - vec2<f32>(889f, 1426f)), vec2<f32>(-590f, -1631f), select(var_0.yy, vec2<bool>(false, global1.x), global1.x))))), false, (global0[_wgslsmith_index_u32(39647u, 10u)] | global0[_wgslsmith_index_u32(~1u, 10u)]) & (71728u ^ select(func_5(-149f, vec4<i32>(-3203i, global2.x, u_input.a.x, 1i), vec3<u32>(u_input.b, 0u, 0u)).a.x, max(global0[_wgslsmith_index_u32(22069u, 10u)], 4294967295u), all(var_0))), global2.x);
    var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u ^ global0[_wgslsmith_index_u32(~(~0u), 10u)], _wgslsmith_add_u32(0u, var_2.d)), _wgslsmith_sub_vec2_u32(~vec2<u32>(28006u, 18196u) & vec2<u32>(var_1.x, var_1.x), vec2<u32>(1u, 4916u)) | ~vec2<u32>(27922u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.b.x, var_2.b.x), vec4<f32>(_wgslsmith_f_op_f32(min(-774f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1276f, 644f))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - var_2.b.x)), var_2.b.x), firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i, -16280i, global2.x, 48488i)), ~vec4<i32>(-2147483647i, global2.x, -1i, -8370i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) + func_2(var_2.c).b.x)) - 1666f), ~countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 10u)], 4294967295u) >> (vec2<u32>(u_input.b, 57808u) % vec2<u32>(32u))) << (vec2<u32>(28232u, 4294967295u) % vec2<u32>(32u)));
}

