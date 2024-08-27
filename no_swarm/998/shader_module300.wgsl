struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-8114i, -15380i);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: array<u32, 5> = array<u32, 5>(40082u, 4294967295u, 24748u, 37023u, 59735u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_1(select(!select(vec4<bool>(arg_0, global1.x, arg_0, arg_0), vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(arg_0, true, global1.x, global1.x)), select(!vec4<bool>(false, arg_0, arg_0, arg_0), !select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, false, true, global1.x), true), any(vec4<bool>(false, global1.x, false, true))), true), ~select(4294967295u, global2[_wgslsmith_index_u32(~16113u, 5u)], false), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, u_input.a, 0u) & vec3<u32>(26791u, _wgslsmith_sub_u32(4294967295u, 41033u), 4294967295u), ~(~vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 5u)], u_input.a))));
    var var_1 = var_0.c.xy;
    global1 = var_0.a.zyy;
    var_1 = _wgslsmith_mult_vec2_u32(var_0.c.xz, ~_wgslsmith_mult_vec2_u32(~var_0.c.yz, ~vec2<u32>(global2[_wgslsmith_index_u32(49275u, 5u)], global2[_wgslsmith_index_u32(var_0.c.x, 5u)])) << (abs(var_0.c.xx | abs(var_0.c.zx)) % vec2<u32>(32u)));
    var var_2 = min(select((_wgslsmith_sub_i32(global0.x, 1i) | _wgslsmith_add_i32(1i, u_input.c)) ^ u_input.b, (i32(-1i) * -global0.x) & ~(global0.x | 8720i), true), 2147483647i);
    return var_0.a.zy;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(~7118i, Struct_1(select(vec4<bool>(any(vec4<bool>(global1.x, false, global1.x, global1.x)), global1.x, true, !global1.x), vec4<bool>(any(global1.zx), global1.x && global1.x, true, global1.x), vec4<bool>(!global1.x, all(global1.xy), true, true)), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(11930u, u_input.a)), select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(1u, 5u)])), ~vec2<u32>(43915u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), func_3(true, 1i, 1424f))), vec3<u32>(1u, 1u, 1u)), any(vec3<bool>(true, global1.x, any(func_3(true, u_input.b, 1130f)))), Struct_1(vec4<bool>(true, true, true, true), ~u_input.a, abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(1u, 5u)]), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)], 94555u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], u_input.a, u_input.a), vec3<u32>(1u, u_input.a, 57712u))))));
    global1 = select(select(vec3<bool>(global0.x <= abs(u_input.b), all(vec2<bool>(var_0.b.a.x, false)) || true, var_0.c), vec3<bool>(false, false, all(select(vec2<bool>(var_0.c, false), global1.zz, global1.x))), vec3<bool>(all(var_0.b.a), var_0.d.a.x, !var_0.c | all(vec3<bool>(false, false, false)))), select(var_0.d.a.yzy, var_0.d.a.www, var_0.d.a.x), !all(select(!var_0.d.a.xwx, var_0.b.a.zxw, !var_0.b.a.zzx)));
    let var_1 = abs(_wgslsmith_sub_vec3_u32((var_0.b.c ^ vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a, u_input.a)) | _wgslsmith_mod_vec3_u32(var_0.b.c, vec3<u32>(21090u, 90283u, u_input.a)), ~var_0.d.c)) & _wgslsmith_div_vec3_u32(select(min(~var_0.d.c, var_0.d.c >> (var_0.b.c % vec3<u32>(32u))), vec3<u32>(~global2[_wgslsmith_index_u32(17835u, 5u)], ~global2[_wgslsmith_index_u32(27139u, 5u)], 19584u), vec3<bool>(true, var_0.b.a.x, true)), var_0.d.c);
    var var_2 = var_0.a;
    var_2 = 1i;
    return vec4<bool>(!(global1.x & true), !any(var_0.d.a), false, !(!all(var_0.b.a.yzx)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_5(vec4<u32>(global2[_wgslsmith_index_u32(arg_1.b, 5u)], _wgslsmith_mult_u32(~abs(u_input.a), reverseBits(~1u)), 16345u, u_input.a));
    global0 = vec2<i32>(_wgslsmith_add_i32(global0.x, -(_wgslsmith_mult_i32(2147483647i, u_input.c) << (u_input.a % 32u))), max(-2147483647i, ~(~u_input.c)));
    let var_1 = false;
    global1 = !arg_1.a.yyz;
    global0 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global0.x), _wgslsmith_mult_vec2_i32(-vec2<i32>(29879i, global0.x) << (var_0.a.yy % vec2<u32>(32u)), ~(-vec2<i32>(48465i, -11348i)))));
    return var_1;
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<u32> {
    global0 = ~(~_wgslsmith_div_vec2_i32(~(-vec2<i32>(u_input.c, 3198i)), vec2<i32>(min(30913i, 0i), ~2147483647i)));
    var var_0 = _wgslsmith_div_f32(arg_0, -1097f);
    var var_1 = Struct_5(vec4<u32>(global2[_wgslsmith_index_u32(~(~countOneBits(global2[_wgslsmith_index_u32(6851u, 5u)])), 5u)], u_input.a, ~47306u, 1u));
    var var_2 = arg_0;
    let var_3 = !(!func_4(-22258i > u_input.b, Struct_1(func_2(), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), abs(var_1.a.yyx))));
    return ~(~select(min(vec2<u32>(0u, var_1.a.x) >> (var_1.a.xx % vec2<u32>(32u)), vec2<u32>(18065u, var_1.a.x) | vec2<u32>(18269u, var_1.a.x)), vec2<u32>(firstTrailingBit(arg_1), ~3808u), vec2<bool>(var_3, var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -_wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(global0.x, 15758i), 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(global0.x, u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(85656i, 37811i), vec2<i32>(u_input.b, 8199i))), select(~vec2<i32>(global0.x, 1i), abs(vec2<i32>(2263i, global0.x)), select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x), true))));
    global2 = array<u32, 5>();
    let var_0 = u_input.c | -2147483647i;
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(floor(781f)), 1f), !global1.x, _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~func_1(100f, global2[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<u32>(71591u >> (u_input.a % 32u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)])), ~(~abs(vec2<u32>(50673u, u_input.a)))), select(true, (firstTrailingBit(22437i) > (i32(-1i) * -6879i)) | global1.x, global1.x));
    var var_2 = Struct_2(~27584i, Struct_1(vec4<bool>(!global1.x, true, var_1.b, !all(global1.zy)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, ~global2[_wgslsmith_index_u32(var_1.c.x, 5u)]), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(5041u, var_1.c.x, 12265u), vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(4294967295u, 5u)], 113524u), vec3<u32>(4294967295u, 1u, var_1.c.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 98624u, 73578u) >> (vec3<u32>(var_1.c.x, 4294967295u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, var_1.c.x, u_input.a))), func_4(true, Struct_1(!select(vec4<bool>(var_1.d, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, var_1.d, var_1.d)), _wgslsmith_mult_u32(0u, global2[_wgslsmith_index_u32(~u_input.a, 5u)]), ~abs(vec3<u32>(global2[_wgslsmith_index_u32(var_1.c.x, 5u)], 201u, 9499u)))), Struct_1(!vec4<bool>(var_1.b | true, false, global1.x || var_1.d, any(vec4<bool>(true, true, global1.x, global1.x))), ~_wgslsmith_sub_u32(select(37033u, 1u, global1.x), _wgslsmith_div_u32(u_input.a, 28675u)), max(vec3<u32>(_wgslsmith_sub_u32(var_1.c.x, global2[_wgslsmith_index_u32(16149u, 5u)]), min(12392u, u_input.a), u_input.a), vec3<u32>(17397u, global2[_wgslsmith_index_u32(0u, 5u)], var_1.c.x) | (vec3<u32>(30618u, global2[_wgslsmith_index_u32(141065u, 5u)], 0u) | vec3<u32>(75472u, var_1.c.x, var_1.c.x)))));
    let var_3 = Struct_3(Struct_1(func_2(), 4294967295u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(26904u, 5u)], 1u, var_2.d.b), select(var_2.b.c, var_2.b.c, vec3<bool>(true, true, false)))), abs(vec2<i32>(2147483647i, ~31504i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x) - vec3<f32>(var_1.a.x, var_1.a.x, -220f)), _wgslsmith_div_vec3_f32(vec3<f32>(-156f, -231f, -1000f), vec3<f32>(-591f, var_1.a.x, var_1.a.x)))))), Struct_2(i32(-1i) * -global0.x, var_2.d, select(any(!vec4<bool>(var_1.b, var_2.d.a.x, false, global1.x)), false, true), var_2.d), ~(~min(~var_2.b.c.yy, vec2<u32>(0u, 10826u) << (vec2<u32>(35045u, u_input.a) % vec2<u32>(32u)))));
    var var_4 = var_3.d;
    let var_5 = !(!vec2<bool>(any(vec2<bool>(false, false)), !select(true, var_4.b.a.x, var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_f_op_f32(-var_1.a.x), var_3.b, var_1.c.x);
}

