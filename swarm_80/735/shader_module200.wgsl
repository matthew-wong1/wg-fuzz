struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

var<private> global0: vec4<i32> = vec4<i32>(34909i, -1i, 2800i, 1i);

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(0u, 1u), vec2<u32>(100308u, 20526u), vec2<u32>(32696u, 26585u), vec2<u32>(1u, 34226u), vec2<u32>(43844u, 4294967295u), vec2<u32>(1u, 46330u), vec2<u32>(0u, 1u), vec2<u32>(97609u, 4294967295u), vec2<u32>(4294967295u, 25557u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(21613u, 4294967295u), vec2<u32>(0u, 14526u), vec2<u32>(4294967295u, 81244u), vec2<u32>(1u, 17577u), vec2<u32>(4294967295u, 62593u), vec2<u32>(28522u, 40117u), vec2<u32>(54539u, 42489u), vec2<u32>(1u, 21266u), vec2<u32>(73322u, 61938u), vec2<u32>(26246u, 53274u), vec2<u32>(138624u, 4294967295u), vec2<u32>(58444u, 12588u), vec2<u32>(0u, 10502u), vec2<u32>(30951u, 1u), vec2<u32>(1u, 51185u), vec2<u32>(11977u, 4294967295u), vec2<u32>(34453u, 9193u), vec2<u32>(0u, 13301u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    var var_0 = vec3<i32>(0i, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.yz >> (vec2<u32>(29762u, arg_0) % vec2<u32>(32u)), abs(vec2<i32>(u_input.b, global0.x)), global0.ww), vec2<i32>(firstTrailingBit(u_input.b), u_input.b)) & global0.x);
    let var_1 = 626f;
    let var_2 = -562f;
    let var_3 = vec2<u32>(u_input.a | ~_wgslsmith_mult_u32(1u, arg_0), ~u_input.a);
    var var_4 = vec4<u32>(4294967295u, 15248u, (max(abs(69813u), 1u << (0u % 32u)) | _wgslsmith_sub_u32(~28248u, arg_0 << (66887u % 32u))) ^ u_input.a, _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a, 1u, arg_0, var_3.x))), select(~vec4<u32>(var_3.x, 6696u, 4294967295u, 6827u), select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 1u), vec4<u32>(1u, 1u, 13261u, var_3.x)), select(vec4<u32>(33402u, u_input.a, 32798u, arg_0), vec4<u32>(54560u, var_3.x, 32881u, var_3.x), false), false), vec4<bool>(false, true, true, true))));
    return var_4.x;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<u32>) -> vec3<bool> {
    global1 = false;
    var var_0 = vec3<u32>(1u, _wgslsmith_div_u32(abs(arg_3.x), 36932u), ~1u);
    let var_1 = _wgslsmith_add_u32(arg_3.x, ~arg_3.x | countOneBits(0u));
    var var_2 = Struct_2(Struct_1(true, 2147483647i, _wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec3_u32(reverseBits(arg_3.wyz), vec3<u32>(0u, u_input.a, var_1))), vec4<u32>(firstLeadingBit(~0u), ~25877u, u_input.a, 0u), global2[_wgslsmith_index_u32(func_3(arg_3.x, vec3<f32>(_wgslsmith_f_op_f32(1555f * 978f), _wgslsmith_f_op_f32(814f + 328f), _wgslsmith_f_op_f32(f32(-1f) * -697f))), 31u)]), vec4<bool>(true, true, false, all(vec4<bool>(all(vec4<bool>(false, false, true, true)), true, false, all(vec2<bool>(true, true))))), Struct_1(true, i32(-1i) * -1i, ~0u, vec4<u32>(~arg_0 ^ _wgslsmith_dot_vec4_u32(arg_3, arg_3), _wgslsmith_clamp_u32(26925u << (arg_3.x % 32u), 1u >> (0u % 32u), firstLeadingBit(106963u)), abs(~1u), _wgslsmith_div_u32(_wgslsmith_mult_u32(20214u, var_1), var_0.x)), ~((var_0.xx << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) << (vec2<u32>(71242u, u_input.a) % vec2<u32>(32u)))), select(vec2<bool>(_wgslsmith_div_u32(u_input.a, 4189u) >= ~var_1, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !all(vec3<bool>(true, false, false))), 1509f);
    let var_3 = true;
    return vec3<bool>(-_wgslsmith_mult_i32(0i, 23269i) != arg_1.b.x, var_3, any(var_2.b.xw));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.e)), arg_2.e));
    var var_1 = vec3<bool>(arg_3.a, arg_2.a.a && any(func_2(~4294967295u, Struct_3(31973i, global0.wy), Struct_3(16885i, arg_1), arg_2.a.d)), arg_3.a);
    let var_2 = arg_2;
    return 840f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1164f - 547f), _wgslsmith_f_op_f32(754f + -1350f))))), _wgslsmith_f_op_f32(209f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-226f, _wgslsmith_f_op_f32(func_1(20912i, vec2<i32>(2147483647i, global0.x), Struct_2(Struct_1(true, 55013i, u_input.a, vec4<u32>(1u, u_input.a, u_input.a, 11646u), vec2<u32>(56160u, u_input.a)), vec4<bool>(true, true, true, false), Struct_1(false, 2147483647i, 10208u, vec4<u32>(u_input.a, u_input.a, 30815u, 0u), global2[_wgslsmith_index_u32(17876u, 31u)]), vec2<bool>(false, false), 175f), Struct_1(false, global0.x, 28245u, vec4<u32>(1u, u_input.a, u_input.a, 39717u), global2[_wgslsmith_index_u32(u_input.a, 31u)]))))))), -274f);
    global1 = any(vec4<bool>(select(true, true, _wgslsmith_f_op_f32(var_0.x - -1524f) != -711f), true, all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)), all(vec3<bool>(true, true, true))));
    global1 = select(true, any(vec2<bool>(true, true)), select(!(global0.x >= -36557i), false, any(vec2<bool>(false, true)) | true)) || !(_wgslsmith_add_i32(-global0.x, select(-30032i, 26172i, true)) <= global0.x);
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, ~6447u), 44249u);
    global2 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(var_1.x, u_input.a, _wgslsmith_mod_u32(var_1.x, var_1.x), 0u), _wgslsmith_sub_vec4_u32(abs(~vec4<u32>(13081u, var_1.x, 37004u, 4294967295u)), vec4<u32>(0u, max(var_1.x, 16773u), firstLeadingBit(5062u), ~1u)), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, var_1.x > 6746u, true), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), u_input.b > global0.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1689f))), vec2<i32>(_wgslsmith_dot_vec3_i32(-(global0.yzz & vec3<i32>(21963i, 42847i, -2147483647i)), _wgslsmith_mult_vec3_i32(global0.wxx, vec3<i32>(global0.x, u_input.b, -2147483647i)) | vec3<i32>(-1i, 14009i, 0i)), u_input.b), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 12344u, u_input.a), vec3<u32>(u_input.a, 19111u, var_1.x)), firstLeadingBit(vec3<u32>(var_1.x, u_input.a, 4171u))), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, u_input.a, var_1.x), vec3<u32>(74762u, 10501u, u_input.a)) & abs(~vec3<u32>(var_1.x, u_input.a, 68074u))));
}

