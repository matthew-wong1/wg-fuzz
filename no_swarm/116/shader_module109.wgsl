struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: vec2<i32> = vec2<i32>(392i, -4142i);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = false;
    var var_1 = _wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(global2.b.zzw, vec3<i32>(global2.b.x, global2.c, 2147483647i)), ~(-1i), _wgslsmith_mult_i32(arg_0, arg_0)), vec4<i32>(2147483647i, _wgslsmith_sub_i32(arg_0, arg_0), reverseBits(-13765i), global1.x)), vec4<i32>(max(global1.x, _wgslsmith_mod_i32(global2.b.x, arg_0)), global1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2.b.xz, global2.b.wy), ~(-50685i)), arg_0)), ~vec4<i32>(abs(-arg_0), -_wgslsmith_sub_i32(arg_0, -2147483647i), global1.x >> (countOneBits(arg_3.x) % 32u), _wgslsmith_sub_i32(abs(27553i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 44682i, arg_0), global2.b.xxw))));
    let var_2 = _wgslsmith_div_vec3_u32(~(vec3<u32>(arg_3.x, firstTrailingBit(arg_3.x), ~4294967295u) >> ((vec3<u32>(arg_3.x, global2.e, 32164u) | reverseBits(vec3<u32>(arg_3.x, global2.e, 6809u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec3<u32>(21575u, 9490u, 35162u)))), vec3<u32>(0u, reverseBits(1u ^ u_input.a), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, 1u), vec2<u32>(global2.e, 0u)), 1u << (0u % 32u))), _wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global2.e, arg_3.x, 4294967295u)), ~vec3<u32>(4294967295u, global2.e, 1u)) | vec3<u32>(reverseBits(u_input.a), ~4294967295u, _wgslsmith_mult_u32(53991u, 1u))));
    global1 = global2.b.zy;
    let var_3 = _wgslsmith_add_vec3_i32(global2.b.wzx << (var_2 % vec3<u32>(32u)), ~global2.b.yzw);
    return arg_1;
}

fn func_2() -> Struct_1 {
    let var_0 = !global0.x;
    let var_1 = Struct_1(global2.a, select(select(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global1.x, 7370i, global1.x), global2.b ^ global2.b), ~(-vec4<i32>(7180i, 18525i, global1.x, global2.b.x)), vec4<bool>(true, var_0, false, true || global0.x)), global2.b, vec4<bool>(!global0.x, all(func_3(global1.x, vec4<bool>(var_0, true, global2.a, false), 2546f, vec2<u32>(global2.e, 53919u))), all(vec4<bool>(false, var_0, false, false)), ~23539i == global2.c)), _wgslsmith_sub_i32(~global1.x, ~((14678i >> (u_input.a % 32u)) & 19093i)), _wgslsmith_div_vec3_f32(global2.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-global2.d.x)))), 4294967295u);
    let var_2 = _wgslsmith_clamp_vec2_u32(~(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.e), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 12571u)))), vec2<u32>(var_1.e, ~max(_wgslsmith_clamp_u32(u_input.a, 43644u, 0u), 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(75847u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e, global2.e, var_1.e, global2.e), vec4<u32>(0u, 1u, var_1.e, 6073u)), 4294967295u, true)), _wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_1.e, 19550u)), firstLeadingBit(vec2<u32>(40497u, var_1.e)))));
    global0 = vec2<bool>((_wgslsmith_mult_u32(var_2.x, ~u_input.a) >= var_1.e) | (min(var_1.b.x, ~global1.x) >= -2147483647i), false);
    var var_3 = var_1;
    return var_1;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1((global2.c ^ (_wgslsmith_sub_i32(-2147483647i, global1.x) & abs(global1.x))) != global1.x, -arg_1.b ^ ~global2.b, _wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(arg_1.b.x), -1i), -2147483647i) & _wgslsmith_add_i32(13312i, ~(0i & arg_1.b.x)), arg_1.d, _wgslsmith_sub_u32(2056u & (14103u >> (_wgslsmith_add_u32(global2.e, u_input.a) % 32u)), arg_1.e));
    global2 = Struct_1(var_0.a, var_0.b, -_wgslsmith_mult_i32(max(_wgslsmith_mod_i32(var_0.b.x, global1.x), min(var_0.c, global2.c)), -3818i), _wgslsmith_div_vec3_f32(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1059f, 1000f, var_0.d.x), global2.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, 166f, -614f) * vec3<f32>(2347f, arg_1.d.x, -1102f)))))), u_input.a);
    global0 = !vec2<bool>(!global2.a, any(select(func_3(arg_1.b.x, vec4<bool>(global2.a, var_0.a, false, global0.x), global2.d.x, vec2<u32>(u_input.a, 1u)).zzz, vec3<bool>(true, false, false), vec3<bool>(true, true, false))));
    global1 = var_0.b.ww;
    let var_1 = 1u;
    return Struct_1(true, min(vec4<i32>(global1.x, -arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global1.x), vec2<i32>(1i, var_0.b.x)), global2.c), arg_1.b) | global2.b, -min(-_wgslsmith_div_i32(global2.b.x, -13816i), 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(1385f, -785f, var_0.a)), _wgslsmith_f_op_f32(trunc(1537f)), _wgslsmith_f_op_f32(f32(-1f) * -1178f)))) + vec3<f32>(arg_1.d.x, var_0.d.x, arg_1.d.x)), 1u);
}

fn func_1() -> Struct_1 {
    global2 = func_4(0i, func_2());
    var var_0 = Struct_1(global2.a, select(~(-countOneBits(vec4<i32>(global2.c, 2147483647i, -16416i, -19099i))), vec4<i32>(_wgslsmith_div_i32(max(41575i, global1.x), global2.c >> (34907u % 32u)), -global2.b.x, _wgslsmith_dot_vec3_i32(-global2.b.yyw, countOneBits(global2.b.zyy)), -1i), vec4<bool>(!global0.x, (u_input.a >> (u_input.a % 32u)) >= global2.e, global0.x, false)), 26863i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1052f, _wgslsmith_f_op_f32(196f * _wgslsmith_f_op_f32(global2.d.x - global2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1826f))), vec3<f32>(926f, global2.d.x, global2.d.x), true)), _wgslsmith_mult_u32(select(1u, ~(u_input.a | 1u), !global2.a), ~u_input.a >> (global2.e % 32u)));
    var var_1 = func_4(func_2().c, func_4(var_0.c, func_4(-27533i, Struct_1(false, _wgslsmith_clamp_vec4_i32(global2.b, var_0.b, vec4<i32>(-7707i, var_0.c, -8169i, global2.b.x)), _wgslsmith_div_i32(2771i, global2.b.x), var_0.d, _wgslsmith_mult_u32(12674u, var_0.e)))));
    var var_2 = func_4(reverseBits(-_wgslsmith_mod_i32(2147483647i, -2147483647i) & _wgslsmith_mult_i32(0i, firstTrailingBit(2147483647i))), Struct_1(!(~17430i < global1.x), var_0.b, func_4(~15364i, func_2()).c, var_1.d, countOneBits(var_0.e))).a;
    var var_3 = Struct_1(!var_1.a, vec4<i32>(max(-13127i, global1.x), _wgslsmith_sub_i32(-39871i, global2.c), -2147483647i, global2.c), _wgslsmith_mult_i32(-var_0.c & var_1.b.x, -var_1.b.x) ^ abs(30021i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_0.d))), global2.e);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global0 = vec2<bool>(true, false);
    var var_0 = 1i;
    var var_1 = all(func_3(_wgslsmith_add_i32(global2.c, global1.x), vec4<bool>(true, func_4(global2.b.x, Struct_1(true, vec4<i32>(32757i, global2.c, -2147483647i, -2147483647i), global1.x, vec3<f32>(-1000f, -767f, global2.d.x), global2.e)).b.x != global1.x, true, global0.x), func_4(func_4(-global1.x, Struct_1(global0.x, global2.b, global1.x, global2.d, u_input.a)).c, func_4(i32(-1i) * -1i, Struct_1(global2.a, vec4<i32>(global2.b.x, global1.x, global2.b.x, 1i), global2.c, global2.d, 32440u))).d.x, firstLeadingBit(~reverseBits(vec2<u32>(66120u, u_input.a)))).yyz);
    var_1 = global0.x;
    let var_2 = -countOneBits(37754i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1366f - -1005f)), 0i, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.d + global2.d))))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(42498u, u_input.a), vec2<u32>(1u, global2.e)), vec2<i32>(-1i) * -global2.b.wx);
}

