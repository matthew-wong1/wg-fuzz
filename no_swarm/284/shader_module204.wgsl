struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 19> = array<f32, 19>(2118f, 398f, 2098f, -356f, 2090f, 1280f, 174f, 358f, 913f, 804f, 1357f, 388f, 1354f, -1556f, 665f, -367f, 866f, 484f, -689f);

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 1130u, 4294967295u);

var<private> global3: Struct_5;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 4294967295u) | global2.yz, global3.c.a | global2.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.x, arg_0.x)))), 1241f, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, u_input.b), ~global3.c.d)), vec2<i32>(abs(global3.c.d), u_input.a)), ~(~select(select(global3.c.a, vec2<u32>(global2.x, global3.c.a.x), vec2<bool>(global3.a, global3.a)), vec2<u32>(0u, global2.x), select(global3.a, false, false))), Struct_1(~global2.xz, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1744f, _wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(global2.x, 19u)])), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~4294967295u, 19u)], -450f)) - arg_0.x));
    return abs(~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 58862i, global3.c.d) & vec3<i32>(u_input.a, u_input.c, var_0.a.a.d), abs(vec3<i32>(-2147483647i, -1i, var_0.c.d)))));
}

fn func_2() -> bool {
    let var_0 = Struct_3(global3.c);
    var var_1 = vec4<bool>(true, !(true && any(vec4<bool>(true, true, true, true))), true, !(global3.a || global3.a));
    var var_2 = func_3(global3.c.b);
    global2 = max(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.a.a.x, global2.x, 4294967295u), vec3<u32>(1u, 27069u, global2.x), false), _wgslsmith_mult_vec3_u32(vec3<u32>(46977u, global3.c.a.x, 3155u), vec3<u32>(global3.c.a.x, 4294967295u, 10739u))), vec3<u32>(var_0.a.a.x, var_0.a.a.x, ~var_0.a.a.x)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2.x, max(var_0.a.a.x, 0u)), ~firstLeadingBit(vec3<u32>(global2.x, 4294967295u, global2.x))), select(~_wgslsmith_sub_vec3_u32(vec3<u32>(51956u, global2.x, 31752u), vec3<u32>(1u, 4294967295u, var_0.a.a.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(77442u, global3.c.a.x, 0u), ~vec3<u32>(8976u, global3.c.a.x, 77716u)), !select(vec3<bool>(true, true, false), var_1.xwz, vec3<bool>(true, true, global3.a)))));
    global0 = var_0.a.a.x;
    return var_1.x;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global1 = array<f32, 19>();
    var var_0 = Struct_5(func_2(), global1[_wgslsmith_index_u32(29548u, 19u)], Struct_1(global2.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.c.b))), global3.b, min(u_input.b, global3.c.d)));
    let var_1 = Struct_4(Struct_2(Struct_1(~firstTrailingBit(var_0.c.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c.b * var_0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1689f)) - _wgslsmith_f_op_f32(694f - -167f)), 1i), ~(-arg_0 >> ((vec2<u32>(global3.c.a.x, 1753u) << (vec2<u32>(global2.x, 43910u) % vec2<u32>(32u))) % vec2<u32>(32u)))), global2.zy, global3.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(var_0.b + -665f)))))));
    global0 = ~var_0.c.a.x | firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global2.x, 42383u, global2.x) >> (firstLeadingBit(vec4<u32>(11297u, 63837u, 4294967295u, 77445u)) % vec4<u32>(32u)), abs(abs(vec4<u32>(4294967295u, global3.c.a.x, 1u, 4294967295u)))));
    var_0 = Struct_5(true, -519f, var_0.c);
    return Struct_3(Struct_1(~vec2<u32>(global3.c.a.x, 11166u), vec2<f32>(-308f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.x + global3.c.c) * global1[_wgslsmith_index_u32(var_0.c.a.x, 19u)])), -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> i32 {
    let var_0 = 0i;
    global0 = countOneBits(abs(9190u));
    var var_1 = Struct_5(!(!any(!vec3<bool>(false, true, global3.a))), 510f, arg_0.a);
    global0 = ~abs(_wgslsmith_mod_u32(firstTrailingBit(0u) ^ _wgslsmith_clamp_u32(1u, 4294967295u, 0u), var_1.c.a.x));
    let var_2 = _wgslsmith_clamp_vec3_u32(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(20854u, 0u, global2.x) & vec3<u32>(0u, 0u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(global2.x, global3.c.a.x, arg_0.a.a.x), vec3<u32>(var_1.c.a.x, var_1.c.a.x, global2.x)))), ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.c.a.x, 5778u, 0u), vec3<u32>(global3.c.a.x, 95407u, 36834u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 63183u, 0u), vec3<u32>(global2.x, 4294967295u, 52974u)))), _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(1u, global2.x, 0u))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(21843u, var_1.c.a.x, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global2.x, global2.x), vec3<u32>(12137u, global2.x, arg_0.a.a.x))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1i & _wgslsmith_sub_i32(-1i, func_4(func_1(vec2<i32>(14207i, 48699i)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global3.c.a.x, 19u)] + -685f), ~global3.c.d)), (1u & global2.x) >> (~global3.c.a.x % 32u), global3.c.b, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global3.c.a.x, 19u)])));
}

