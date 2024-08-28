struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1322f;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: i32 = -21411i;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(1u, 14958u, 50397u, 17101u)), Struct_1(vec4<u32>(25887u, 53388u, 82377u, 1u)), Struct_1(vec4<u32>(2292u, 6136u, 1u, 46799u)), Struct_1(vec4<u32>(4294967295u, 63511u, 99091u, 1u)), Struct_1(vec4<u32>(0u, 1u, 1u, 118122u)), Struct_1(vec4<u32>(4294967295u, 25147u, 1u, 0u)), Struct_1(vec4<u32>(27284u, 18233u, 29792u, 1u)), Struct_1(vec4<u32>(1u, 37853u, 0u, 1u)), Struct_1(vec4<u32>(1u, 0u, 25362u, 0u)), Struct_1(vec4<u32>(1u, 34330u, 0u, 1u)), Struct_1(vec4<u32>(12585u, 57274u, 1u, 3710u)), Struct_1(vec4<u32>(86319u, 0u, 0u, 1u)), Struct_1(vec4<u32>(53322u, 1u, 52536u, 4294967295u)), Struct_1(vec4<u32>(3832u, 42076u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(21047u, 4294967295u, 74738u, 0u)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 59276u)), Struct_1(vec4<u32>(43203u, 10817u, 16483u, 33995u)), Struct_1(vec4<u32>(50293u, 4294967295u, 1u, 29734u)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 68949u)), Struct_1(vec4<u32>(0u, 0u, 0u, 12940u)), Struct_1(vec4<u32>(1u, 23050u, 4294967295u, 1u)), Struct_1(vec4<u32>(17070u, 4294967295u, 29702u, 4294967295u)), Struct_1(vec4<u32>(16787u, 4294967295u, 50998u, 1u)), Struct_1(vec4<u32>(4294967295u, 0u, 25679u, 50362u)), Struct_1(vec4<u32>(1u, 0u, 71504u, 7507u)), Struct_1(vec4<u32>(78673u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 58809u, 2208u, 33460u)), Struct_1(vec4<u32>(69159u, 0u, 1u, 5482u)), Struct_1(vec4<u32>(112220u, 1u, 1u, 16662u)));

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 19673u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, global4.x, 87150u, global4.x), vec4<u32>(u_input.b, 4294967295u, 0u, 51264u))) << (~(~abs(vec4<u32>(global4.x, u_input.b, 49840u, 0u))) % vec4<u32>(32u)));
    global0 = -117f;
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(global4.x, global4.x, global4.x, ~(1u | u_input.b))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -806f)), 1476f) - _wgslsmith_f_op_f32(min(169f, -955f))), 1120f);
    let var_2 = Struct_1(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(0u, global4.x, 1u, 1u), reverseBits(var_1.a)), vec4<u32>(_wgslsmith_dot_vec2_u32(global4.yy, var_0.a.yw), var_0.a.x, var_1.a.x << (var_0.a.x % 32u), _wgslsmith_add_u32(1u, var_0.a.x))));
    return 4294967295u;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(~firstLeadingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(23932i, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<i32>(3161i, _wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, select(u_input.a.x << (1u % 32u), 0i | u_input.a.x, true)), u_input.a.x, 16913i >> (~global4.x % 32u)));
    var var_1 = all(vec4<bool>(~select(var_0.x, -2147483647i, true) == min(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, var_0.x)), !((arg_0.a.x >> (global4.x % 32u)) >= _wgslsmith_mult_u32(43608u, 4722u)), global1.x, false));
    var var_2 = !(!select(true, global1.x, global1.x));
    var var_3 = _wgslsmith_dot_vec3_i32(~(-vec3<i32>(2147483647i, u_input.a.x | -21409i, u_input.a.x)), countOneBits(u_input.a));
    let var_4 = -243f;
    return Struct_1(vec4<u32>(global4.x >> (max(global4.x, u_input.b) % 32u), min(0u, global4.x), 9556u << (arg_0.a.x % 32u), countOneBits(_wgslsmith_mod_u32(global4.x, global4.x))) << (max(arg_0.a, vec4<u32>(arg_0.a.x, firstLeadingBit(global4.x), 17501u, _wgslsmith_dot_vec4_u32(arg_0.a, vec4<u32>(global4.x, 2611u, u_input.b, 76880u)))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    return func_3(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(vec3<i32>(~arg_0.x, select(u_input.a.x, -34804i, false), -2147483647i)), ~u_input.b, 0u & global4.x), 30u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<f32>) -> StorageBuffer {
    global2 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, 46514i, 10284i), _wgslsmith_mod_i32(~u_input.a.x, u_input.a.x));
    var var_0 = u_input.a.yx;
    var var_1 = arg_1.a;
    let var_2 = global3[_wgslsmith_index_u32(1u, 30u)];
    global4 = vec3<u32>(_wgslsmith_add_u32(var_1.x, ~(~(~arg_1.a.x))), 12093u, ~func_2(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(20565i, 14629i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 2408i)))));
    return StorageBuffer(abs(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, 28589i, var_0.x, -1i), abs(vec4<i32>(u_input.a.x, 0i, -3033i, -10872i))), ~select(vec4<i32>(0i, -2147483647i, -4608i, -1i), vec4<i32>(var_0.x, u_input.a.x, var_0.x, var_0.x), vec4<bool>(true, global1.x, true, global1.x)))), -332f, max(var_1.x, ~_wgslsmith_sub_u32(var_1.x >> (18049u % 32u), func_2(vec3<i32>(-17917i, u_input.a.x, u_input.a.x)))), ~_wgslsmith_mod_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(40150i, 1i, -2147483647i, 1i), vec4<i32>(-48388i, var_0.x, 0i, 2147483647i)), vec4<i32>(-22918i, 2147483647i, select(u_input.a.x, -1i, global1.x), _wgslsmith_div_i32(u_input.a.x, 3254i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1829f - 1402f));
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global4.xx, ~global4.zy), 30u)];
    let var_1 = max(~(~u_input.b), ~u_input.b);
    global0 = 547f;
    global2 = _wgslsmith_mod_i32(0i, u_input.a.x);
    let x = u_input.a;
    s_output = func_4(true, func_1(u_input.a.xy), global1.yx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1120f)))), -334f, -876f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(873f * 318f), _wgslsmith_f_op_f32(-1821f * 432f), any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)))))));
}

