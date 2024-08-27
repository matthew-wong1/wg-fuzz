struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(-14363i, 2147483647i, 2147483647i);

var<private> global2: array<vec2<i32>, 20>;

var<private> global3: u32 = 0u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<i32> {
    let var_0 = true;
    var var_1 = !vec4<bool>(arg_1, arg_1 || false, var_0, true);
    var var_2 = arg_0.b;
    var_1 = vec4<bool>(all(vec4<bool>(all(vec4<bool>(var_1.x, var_0, var_1.x, var_0)) && var_1.x, !select(var_0, false, false), var_1.x && true, var_0 | !arg_1)), var_0, false, _wgslsmith_mult_u32(4294967295u, (arg_0.b.d << (80744u % 32u)) ^ ~4294967295u) >= ~min(4294967295u, global0.d << (0u % 32u)));
    let var_3 = Struct_2(firstTrailingBit(firstTrailingBit(u_input.c.yz ^ vec2<i32>(-1i, arg_0.b.b.x)) << (vec2<u32>(arg_0.b.d, 43562u) % vec2<u32>(32u))), Struct_1(global0.a, vec3<i32>(global1.x, _wgslsmith_mod_i32(arg_0.b.b.x, u_input.c.x), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(var_2.c.yz, vec2<i32>(var_2.c.x, global0.c.x)))), ~(vec3<i32>(-1i) * -u_input.c), ~(~(~53603u)), var_2.a.zz), _wgslsmith_f_op_f32(-arg_0.c));
    return var_3.b.c;
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<i32>, 20>();
    var var_0 = Struct_2(global1.yz, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.e.x)), -332f, global0.a.x, _wgslsmith_div_f32(global0.a.x, 2077f)))), u_input.c, -min(func_3(Struct_2(global1.zy, Struct_1(vec4<f32>(global0.e.x, 1119f, 717f, global0.a.x), vec3<i32>(-2147483647i, u_input.b, u_input.a), vec3<i32>(0i, -10372i, global0.c.x), global0.d, vec2<f32>(global0.e.x, -291f)), 1293f), true), vec3<i32>(43841i, global0.c.x, u_input.b)), global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a.x, global0.e.x))) - global0.e) * vec2<f32>(973f, 1745f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a.x)))));
    var var_1 = ~abs(_wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(45185u), _wgslsmith_div_u32(57121u, var_0.b.d)), vec2<u32>(global0.d, ~global0.d)));
    let var_2 = Struct_2(-vec2<i32>(select(18176i, var_0.b.b.x, all(vec2<bool>(true, true))), _wgslsmith_mod_i32(-21168i, countOneBits(-2147483647i))), var_0.b, -162f);
    var_0 = var_2;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - _wgslsmith_f_op_vec4_f32(round(global0.a)))), firstLeadingBit(-vec3<i32>(~global1.x, _wgslsmith_clamp_i32(var_2.a.x, 1i, u_input.a), global1.x << (global0.d % 32u))), abs(global0.b), ~6729u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(abs(var_2.b.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = arg_1;
    global0 = var_0.b;
    var var_1 = 2147483647i;
    global3 = 4294967295u;
    let var_2 = _wgslsmith_add_u32(1u, 1u);
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(arg_1.b.a, func_3(func_4(arg_1.b, Struct_2(max(arg_1.b.b.yz, vec2<i32>(-25025i, -1i)), Struct_1(vec4<f32>(arg_1.c, global0.e.x, 744f, arg_1.c), vec3<i32>(45951i, global0.c.x, u_input.c.x), vec3<i32>(arg_1.a.x, 37985i, u_input.b), arg_1.b.d, vec2<f32>(-436f, -421f)), -1163f), min(min(arg_1.b.d, arg_1.b.d), global0.d), select(-17780i, -33687i, arg_0) >> (arg_1.b.d % 32u)), global0.a.x < _wgslsmith_f_op_f32(1577f + -1000f)), vec3<i32>(_wgslsmith_sub_i32(global0.c.x, ~(-2147483647i)), min(arg_1.a.x, i32(-1i) * -1i), i32(-1i) * -2147483647i) << (vec3<u32>(~23548u, countOneBits(~38536u), _wgslsmith_add_u32(16911u, global0.d >> (arg_1.b.d % 32u))) % vec3<u32>(32u)), global0.d, global0.e);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), 2337f))) + global0.e.x);
    let var_1 = Struct_2(vec2<i32>(-2147483647i, ~u_input.b), func_5(!all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))), func_4(func_2(), Struct_2(vec2<i32>(-13940i, global1.x) << (vec2<u32>(40901u, global0.d) % vec2<u32>(32u)), func_2(), _wgslsmith_div_f32(433f, -103f)), ~global0.d, global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(300f, 1120f) + -206f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), ~(vec3<i32>(global0.b.x | global0.b.x, ~2147483647i, firstLeadingBit(0i)) & firstTrailingBit(~vec3<i32>(61679i, 2147483647i, global1.x))), var_1.b.b, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.b.d, var_1.b.d, var_1.b.d, 4294967295u), vec4<u32>(max(global0.d, var_1.b.d), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, global0.d, var_1.b.d, global0.d), vec4<u32>(1u, global0.d, 4294967295u, var_1.b.d)), countOneBits(36059u), ~var_1.b.d)), _wgslsmith_f_op_vec2_f32(-var_1.b.a.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -1000f;
    let var_2 = var_0;
    global1 = vec3<i32>(var_0.b.x, -19478i, i32(-1i) * -56356i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 1u, 58396u), ~vec3<u32>(32381u, global0.d, var_0.d)), ~(vec3<u32>(1u, global0.d, global0.d) << (vec3<u32>(var_2.d, 20553u, global0.d) % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(global0.c.x), firstTrailingBit(4323i), _wgslsmith_sub_i32(-2147483647i, global1.x), -global1.x) | reverseBits(vec4<i32>(var_0.c.x, global1.x, -55324i, -5416i)), ~select(~vec4<i32>(16416i, -11073i, var_2.b.x, var_2.b.x), -vec4<i32>(-23447i, 54886i, u_input.c.x, 1i), vec4<bool>(true, true, true, true)), vec4<i32>(var_0.c.x, u_input.c.x, var_2.c.x, max(-10288i, ~(-1i)))), max(_wgslsmith_div_i32(abs(func_2().c.x), ~(i32(-1i) * -1i)), _wgslsmith_mult_i32(var_2.b.x, var_0.b.x)), abs(vec2<u32>(4294967295u, ~global0.d) & (max(vec2<u32>(global0.d, 1u), vec2<u32>(1u, 18373u)) & ~vec2<u32>(var_0.d, var_2.d))), -var_0.c.x);
}

