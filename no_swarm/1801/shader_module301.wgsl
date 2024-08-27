struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: Struct_3;

var<private> global2: array<vec2<i32>, 11>;

var<private> global3: u32;

var<private> global4: f32 = -383f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    var var_0 = Struct_5(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-31743i), abs(u_input.a.x), ~arg_0.c), -vec3<i32>(u_input.a.x, arg_0.c, -41246i), u_input.a.wxw), u_input.a.yxy), countOneBits(~_wgslsmith_add_vec2_u32(select(vec2<u32>(0u, arg_0.a.b.x), vec2<u32>(arg_0.a.b.x, 4294967295u), global0[_wgslsmith_index_u32(arg_0.e.a, 6u)]), vec2<u32>(global1.d.x, 42615u))), vec3<i32>(abs(_wgslsmith_mod_i32(global1.b, global1.b)), _wgslsmith_sub_i32(5274i, ~arg_0.b), u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(1251f + arg_0.a.a), global1.a.a, -1555f));
    global3 = ~(~65203u);
    let var_1 = true;
    let var_2 = var_0.d.x;
    let var_3 = min(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~(~u_input.a.wxz), ~u_input.a.zzy), -var_0.c << (min(select(vec3<u32>(arg_0.a.b.x, 11391u, arg_0.a.b.x), vec3<u32>(4294967295u, arg_0.e.a, var_0.b.x), false), vec3<u32>(global1.e.a, global1.e.a, 70997u)) % vec3<u32>(32u)), abs(vec3<i32>(-2147483647i, arg_0.c, global1.b) & vec3<i32>(2147483647i, 14357i, u_input.a.x))), abs(max(vec3<i32>(arg_0.c, var_0.a.x, arg_0.c), -vec3<i32>(u_input.a.x, arg_0.b, -2903i)) >> (~vec3<u32>(var_0.b.x, 0u, arg_0.e.a) % vec3<u32>(32u))));
    return ~vec4<u32>(4294967295u >> (abs(var_0.b.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.a.b.x, 4294967295u, 0u), ~reverseBits(global1.d.x)), _wgslsmith_sub_u32(87554u, firstLeadingBit(0u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(53954u, 1u, 4294967295u, global1.a.b.x), abs(vec4<u32>(4965u, 0u, 1u, arg_0.a.b.x))), vec4<u32>(global1.e.a, arg_0.a.b.x | arg_0.e.a, var_0.b.x, ~arg_0.d.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>) -> f32 {
    var var_0 = -1i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(-1000f)), ~global1.a.b, !global1.a.c);
    let var_2 = Struct_5(arg_0.a, _wgslsmith_mult_vec2_u32(~global1.d & vec2<u32>(0u, ~23233u), max(var_1.b, vec2<u32>(0u, 0u) << (~vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u)))), u_input.a.wwy, arg_0.d);
    global1 = Struct_3(Struct_2(338f, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.b.x, var_1.b.x), var_1.b)), var_1.c), ~(-17082i), _wgslsmith_sub_i32(-1032i, _wgslsmith_dot_vec4_i32(vec4<i32>(21339i >> (var_2.b.x % 32u), global1.c, -4073i, global1.b), vec4<i32>(-929i, 1i << (0u % 32u), arg_0.c.x, ~2147483647i))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_2.b.x, 8260u), vec2<u32>(14868u, 4294967295u), true), ~vec2<u32>(24715u, 4651u)), select(~vec2<u32>(var_1.b.x, 4294967295u), arg_0.b ^ var_2.b, true)) >> (vec2<u32>(53888u & _wgslsmith_mult_u32(12983u, arg_1.x), ~var_1.b.x << (_wgslsmith_add_u32(arg_1.x, var_2.b.x) % 32u)) % vec2<u32>(32u)), Struct_1(1u));
    var_0 = var_2.a.x;
    return -1794f;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    global2 = array<vec2<i32>, 11>();
    var var_0 = arg_2;
    var_0 = Struct_2(_wgslsmith_f_op_f32(abs(var_0.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(~var_0.b.x, var_0.b.x), vec2<u32>(arg_2.b.x, 49825u)), any(select(select(arg_3.zy, select(vec2<bool>(global1.a.c, var_0.c), arg_3.zy, global0[_wgslsmith_index_u32(var_0.b.x, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.d.x, 0u), 6u)]), global0[_wgslsmith_index_u32(~1u, 6u)], !select(vec2<bool>(arg_2.c, var_0.c), vec2<bool>(var_0.c, false), arg_2.c))));
    let var_1 = firstTrailingBit(u_input.a.yz);
    let var_2 = true;
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_5(vec3<i32>(global1.c, -23342i, 13454i), ~arg_2.b, u_input.a.wwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 121f, arg_0))), func_3(Struct_3(global1.a, var_1.x, global1.c, vec2<u32>(var_0.b.x, 867u), Struct_1(global1.e.a))))), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(arg_2.a * -296f), !(!global1.a.c)))), vec2<u32>(793u, ~(~37036u)), (_wgslsmith_clamp_i32(~u_input.a.x, var_1.x, -var_1.x) == ~(u_input.a.x | u_input.a.x)) && !global1.a.c);
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(abs(global1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) * 1f)), global1.a, vec3<bool>(!(global1.d.x >= 57224u), all(!vec4<bool>(global1.a.c, false, global1.a.c, global1.a.c)), global1.a.c)), _wgslsmith_dot_vec3_i32(min(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 22895i), vec3<i32>(-1285i, 9167i, u_input.a.x)), u_input.a.yyw ^ u_input.a.wzw, -vec3<i32>(global1.b, 1i, u_input.a.x)), vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, 24531i), 1i | global1.b)), firstTrailingBit(vec3<i32>(max(global1.b, u_input.a.x), 27076i, global1.b))), _wgslsmith_sub_i32(abs(2147483647i), abs(global1.c)), vec2<u32>(~select(global1.e.a, 0u, global1.a.c), global1.e.a) ^ reverseBits(vec2<u32>(0u, ~0u)), global1.e);
    global2 = array<vec2<i32>, 11>();
    let var_1 = Struct_4(~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.d.x, global1.d.x), 11u)], select(select(vec3<bool>(var_0.a.c, var_0.b >= 0i, !global1.a.c), !(!vec3<bool>(global1.a.c, false, true)), select(!vec3<bool>(var_0.a.c, false, global1.a.c), !vec3<bool>(global1.a.c, var_0.a.c, var_0.a.c), select(vec3<bool>(global1.a.c, true, global1.a.c), vec3<bool>(global1.a.c, true, false), vec3<bool>(var_0.a.c, true, true)))), select(!select(vec3<bool>(global1.a.c, var_0.a.c, false), vec3<bool>(false, global1.a.c, true), global1.a.c), vec3<bool>(all(vec4<bool>(global1.a.c, var_0.a.c, false, var_0.a.c)), var_0.a.c, var_0.a.c), !(!vec3<bool>(false, var_0.a.c, true))), select(select(vec3<bool>(true, var_0.a.c, false), vec3<bool>(false, global1.a.c, var_0.a.c), true & global1.a.c), !select(vec3<bool>(global1.a.c, global1.a.c, true), vec3<bool>(false, var_0.a.c, var_0.a.c), vec3<bool>(global1.a.c, false, true)), select(vec3<bool>(global1.a.c, true, true), !vec3<bool>(true, false, global1.a.c), var_0.a.c || true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global1.a.c, var_0.a.c), vec3<bool>(false, true, var_0.a.c), vec3<bool>(false, var_0.a.c, global1.a.c)), select(false, global1.a.c, var_0.a.c)), select(!vec3<bool>(global1.a.c, false, false), !vec3<bool>(false, false, global1.a.c), !vec3<bool>(global1.a.c, global1.a.c, false))), !(!vec3<bool>(global1.a.c, true, false)), global1.a.c), ~(~vec3<u32>(1u, 1u, 1u)), vec4<u32>(_wgslsmith_clamp_u32(max(4294967295u, 1u), var_0.a.b.x, 9072u), global1.e.a, 0u, 19923u));
    var var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-var_0.a.a))) != _wgslsmith_f_op_f32(f32(-1f) * -654f));
    var var_3 = ~func_2(_wgslsmith_f_op_f32(trunc(-781f)), global1.a.a, Struct_2(var_0.a.a, var_0.a.b, false), var_1.b).b.x;
    return Struct_5(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1.c, u_input.a.x, 1i), vec3<i32>(u_input.a.x, 34417i, 0i), u_input.a.wxz)), u_input.a.wxw) >> (var_1.e.xwx % vec3<u32>(32u)), select(firstTrailingBit(abs(var_1.d.xz)), _wgslsmith_mod_vec2_u32(~vec2<u32>(global1.e.a, global1.e.a), var_0.a.b), any(select(vec3<bool>(var_0.a.c, global1.a.c, var_1.c.x), !vec3<bool>(true, var_1.b.x, false), var_1.b.x | false))), u_input.a.wzw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1236f, var_0.a.a), -145f, _wgslsmith_f_op_f32(f32(-1f) * -1244f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, 1255f, 496f) * _wgslsmith_div_vec3_f32(vec3<f32>(global1.a.a, var_0.a.a, -758f), vec3<f32>(-162f, var_0.a.a, global1.a.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, -531f, 1000f) * vec3<f32>(global1.a.a, global1.a.a, global1.a.a))))));
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> Struct_3 {
    global1 = Struct_3(global1.a, 8889i, func_1().a.x, vec2<u32>(~(arg_0.b.x >> (arg_0.b.x % 32u)) | ((arg_0.b.x & 4294967295u) << (52707u % 32u)), 59458u), global1.e);
    global0 = array<vec2<bool>, 6>();
    let var_0 = func_1().b;
    var var_1 = Struct_4(-vec2<i32>(func_1().a.x, _wgslsmith_mult_i32(~arg_1, 2147483647i)), !select(select(select(vec3<bool>(global1.a.c, global1.a.c, global1.a.c), vec3<bool>(true, global1.a.c, false), vec3<bool>(global1.a.c, true, global1.a.c)), !vec3<bool>(true, false, global1.a.c), !vec3<bool>(global1.a.c, true, false)), vec3<bool>(false, true, global1.a.c), global1.a.c), vec3<bool>(any(vec2<bool>(global1.a.c, -841f >= arg_0.d.x)), false, select(-2147483647i >= arg_0.a.x, all(!vec4<bool>(false, global1.a.c, global1.a.c, false)), _wgslsmith_f_op_f32(step(503f, global1.a.a)) != global1.a.a)), firstLeadingBit(max(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 4294967295u, 52518u), vec3<u32>(4294967295u, global1.a.b.x, 55700u) ^ vec3<u32>(global1.a.b.x, 18352u, arg_0.b.x)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, global1.a.b.x, var_0.x), vec3<u32>(var_0.x, 6714u, global1.d.x)))), _wgslsmith_mult_vec4_u32((vec4<u32>(4294967295u, arg_0.b.x, 27489u, arg_0.b.x) << (vec4<u32>(var_0.x, 0u, 16582u, 1u) % vec4<u32>(32u))) >> (abs(vec4<u32>(52146u, 1u, 1u, global1.e.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 35966u, 1u, arg_0.b.x) | vec4<u32>(0u, 0u, var_0.x, global1.a.b.x), vec4<u32>(23498u, 0u, global1.e.a, 4294967295u))) << (~(vec4<u32>(1u, 1u, arg_0.b.x, 4187u) >> (reverseBits(vec4<u32>(4294967295u, global1.d.x, arg_0.b.x, 76513u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(4294967295u ^ ~_wgslsmith_mod_u32(var_1.d.x >> (var_1.d.x % 32u), 38983u << (var_0.x % 32u)));
    return Struct_3(func_2(-237f, _wgslsmith_f_op_f32(-arg_0.d.x), func_2(arg_0.d.x, arg_0.d.x, Struct_2(arg_0.d.x, func_3(Struct_3(Struct_2(755f, vec2<u32>(22505u, global1.d.x), true), var_1.a.x, global1.b, vec2<u32>(44214u, 54137u), var_2)).wz, true), var_1.c), !var_1.c), var_1.a.x, _wgslsmith_mod_i32(1i, ~1i), vec2<u32>(func_3(Struct_3(Struct_2(arg_0.d.x, var_0, false), max(u_input.a.x, -674i), _wgslsmith_sub_i32(var_1.a.x, -17583i), ~vec2<u32>(4294967295u, var_2.a), Struct_1(44573u))).x, var_1.e.x), var_2);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    global0 = array<vec2<bool>, 6>();
    global2 = array<vec2<i32>, 11>();
    let var_0 = arg_1.e;
    global4 = global1.a.a;
    global1 = func_5(Struct_5(u_input.a.zxx << (countOneBits(abs(vec3<u32>(global1.a.b.x, var_0.a, 62941u))) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(abs(global1.a.b), arg_2.d.zz) ^ global1.a.b, _wgslsmith_add_vec3_i32(u_input.a.zzz, _wgslsmith_clamp_vec3_i32(u_input.a.yyw, vec3<i32>(global1.b, 2147483647i, u_input.a.x), vec3<i32>(global1.c, -1i, -11564i)) << (vec3<u32>(2314u, arg_2.e.x, 1u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a * -1000f) - _wgslsmith_f_op_f32(min(arg_1.a.a, arg_1.a.a))), -1142f)), i32(-1i) * -2147483647i);
    return Struct_1(_wgslsmith_add_u32(abs(max(0u, _wgslsmith_add_u32(54088u, arg_2.d.x))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, arg_1.d.x, arg_0)) ^ _wgslsmith_add_vec3_u32(arg_2.e.zxw, arg_2.d), firstTrailingBit(select(arg_3.e.xyz, arg_3.d, arg_3.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 6>();
    let var_0 = func_6(39658u, func_5(func_1(), global1.c), Struct_4(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -global1.b), reverseBits(vec2<i32>(global1.c, global1.c)) | u_input.a.zy), !select(select(vec3<bool>(global1.a.c, global1.a.c, false), vec3<bool>(global1.a.c, true, false), false), select(vec3<bool>(false, global1.a.c, global1.a.c), vec3<bool>(global1.a.c, true, false), true), !vec3<bool>(global1.a.c, false, true)), vec3<bool>(global1.a.c, global1.a.c, !(!global1.a.c)), ~vec3<u32>(~global1.a.b.x, func_5(Struct_5(u_input.a.ywz, global1.d, u_input.a.zzx, vec3<f32>(global1.a.a, global1.a.a, global1.a.a)), global1.b).a.b.x, 1u), vec4<u32>((global1.e.a & 1u) & 4294967295u, global1.a.b.x & ~4294967295u, min(global1.a.b.x, global1.a.b.x >> (global1.d.x % 32u)), 1u >> (1u % 32u))), Struct_4(u_input.a.ww, select(select(!vec3<bool>(global1.a.c, false, global1.a.c), vec3<bool>(global1.a.c, true, global1.a.c), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, global1.a.c), vec3<bool>(true, global1.a.c, false), vec3<bool>(global1.a.c, global1.a.c, true)), true), select(vec3<bool>(global1.a.c, global1.a.c, global1.a.c), select(vec3<bool>(global1.a.c, false, true), vec3<bool>(global1.a.c, global1.a.c, global1.a.c), vec3<bool>(true, false, global1.a.c)), true)), vec3<bool>(global1.a.c, true, global1.a.c & true), abs(~select(vec3<u32>(6078u, 1u, 4294967295u), vec3<u32>(global1.e.a, global1.e.a, 55510u), vec3<bool>(global1.a.c, global1.a.c, global1.a.c))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(global1.a.b, vec2<u32>(0u, 4294967295u)), 0u, func_1().b.x, 78724u)));
    var var_1 = func_1();
    global0 = array<vec2<bool>, 6>();
    let var_2 = ~(~var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~u_input.a, vec4<i32>(0i, 2147483647i, -2147483647i, -2147483647i)), ~_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_1.a.x, u_input.a.x, global1.b, u_input.a.x))) << ((select(max(vec4<u32>(45330u, 1u, var_0.a, 4294967295u), vec4<u32>(var_2.x, 49952u, 0u, var_1.b.x)), vec4<u32>(0u, 1u, 0u, var_2.x), vec4<bool>(global1.a.c, global1.a.c, false, global1.a.c)) ^ (reverseBits(vec4<u32>(var_0.a, var_2.x, global1.d.x, 19808u)) >> (vec4<u32>(15324u, var_0.a, 0u, global1.e.a) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.d.x)), _wgslsmith_f_op_f32(1506f + global1.a.a), any(select(select(vec2<bool>(true, false), vec2<bool>(global1.a.c, global1.a.c), global1.a.c), vec2<bool>(global1.a.c, true), !vec2<bool>(global1.a.c, true))))), select(_wgslsmith_clamp_vec2_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.a, var_2.x), 11u)], vec2<i32>(u_input.a.x, u_input.a.x) ^ _wgslsmith_clamp_vec2_i32(var_1.a.xz, global2[_wgslsmith_index_u32(var_2.x, 11u)], vec2<i32>(0i, global1.b)), vec2<i32>(u_input.a.x, var_1.c.x)), u_input.a.yz, select(!vec2<bool>(false, global1.a.c), select(global0[_wgslsmith_index_u32(reverseBits(global1.a.b.x), 6u)], select(global0[_wgslsmith_index_u32(22667u, 6u)], vec2<bool>(false, global1.a.c), false), vec2<bool>(true, false)), true)));
}

