struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: vec3<i32> = vec3<i32>(13931i, 31733i, 0i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<f32> {
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(~1i, global1.x << (_wgslsmith_mult_u32(~u_input.b, 0u) % 32u), 30871i & min(u_input.a, ~arg_0.x)), arg_0);
    global1 = vec3<i32>(max(arg_0.x, u_input.a) >> (countOneBits(_wgslsmith_add_u32(u_input.c.x, u_input.c.x)) % 32u), 2147483647i, min(~arg_0.x, -1i));
    global1 = vec3<i32>(u_input.a, -63630i, arg_0.x >> (4294967295u % 32u)) ^ vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(abs(0i), arg_0.x, global1.x), global1.x), arg_0.x, 1i << (u_input.b % 32u));
    global0 = array<Struct_3, 19>();
    global1 = vec3<i32>(~abs(1i), _wgslsmith_sub_i32(firstTrailingBit(global1.x ^ global1.x), reverseBits(-global1.x >> (u_input.b % 32u))), -1i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -1474f) + vec2<f32>(129f, 238f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-418f, -1381f))), vec2<f32>(1f, 1f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(620f, -488f) * vec2<f32>(-272f, 1584f))) - vec2<f32>(-330f, _wgslsmith_f_op_f32(step(491f, 706f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-863f, 211f), vec2<f32>(645f, -1497f))), vec2<f32>(-1277f, 1496f)))))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, -1180f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-763f, -352f))) + _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(u_input.a, 2147483647i, -58521i))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1048f, 1000f), vec2<f32>(554f, -2157f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1280f, -198f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1177f, 1039f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1443f, 937f) - vec2<f32>(1000f, -631f)))))));
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let var_1 = (3903i | _wgslsmith_add_i32(_wgslsmith_div_i32(global1.x & u_input.a, global1.x), global1.x)) >= 20867i;
    let var_2 = Struct_2(Struct_1(1f, countOneBits(vec2<u32>(u_input.c.x, u_input.b)), !(!select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_1, false), var_1))), vec3<bool>(false, !(!var_1) & true, select(all(vec2<bool>(true, true)), !(true && var_1), true)));
    return global0[_wgslsmith_index_u32(var_2.a.b.x, 19u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = func_2();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-arg_1.a.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(362f)))), _wgslsmith_mod_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(65253u, arg_0.b.x), vec2<u32>(arg_1.a.b.x, u_input.c.x), vec2<u32>(var_1.b.x, arg_1.a.b.x)), vec2<u32>(7870u, 4294967295u), !arg_2.c.yy), ~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, arg_2.b.x))), select(!var_0.a.c, !vec3<bool>(false, arg_2.c.x, arg_0.c.x), arg_2.c)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-114f, var_1.c.x, arg_0.c.x)))), _wgslsmith_f_op_f32(-arg_0.a)), true);
    var_1 = func_2();
    var var_3 = 23298i;
    return !vec2<bool>((_wgslsmith_f_op_f32(var_1.c.x * -1849f) >= 532f) && !all(var_2.b.c.yx), true);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_vec2_f32(func_3(vec3<i32>(86910i, 86233i, -22414i))).x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(255f, -2540f) + arg_2) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 729f) * arg_2))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(286f * -1000f), _wgslsmith_f_op_f32(-276f * arg_2.x)) - arg_2)));
    let var_1 = arg_3;
    let var_2 = -(u_input.a & firstLeadingBit(~arg_1));
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))), -384f)))));
    global1 = min(vec3<i32>(_wgslsmith_div_i32(~arg_1, 70387i), countOneBits(global1.x), -var_2 ^ (-global1.x << (u_input.b % 32u))), vec3<i32>(-arg_0.x, _wgslsmith_div_i32(-var_2, -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, var_2, var_2), vec4<i32>(-14128i, global1.x, 64393i, 39666i))), -arg_0.x));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.x << (u_input.c.x % 32u);
    global0 = array<Struct_3, 19>();
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(func_4(min(global1.yz, vec2<i32>(0i, u_input.a)), global1.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-561f, 326f), vec2<f32>(-1910f, -1084f), func_1(Struct_1(-1524f, vec2<u32>(u_input.c.x, u_input.b), vec3<bool>(false, false, true)), Struct_2(Struct_1(-606f, u_input.c, vec3<bool>(true, false, true)), vec3<bool>(false, false, true)), Struct_1(-554f, vec2<u32>(11929u, 0u), vec3<bool>(true, false, true)), u_input.a))), true), true), !func_1(Struct_1(_wgslsmith_f_op_f32(max(-1033f, 1709f)), _wgslsmith_clamp_vec2_u32(u_input.c, vec2<u32>(76159u, 0u), vec2<u32>(0u, 4294967295u)), vec3<bool>(true, false, false)), Struct_2(Struct_1(-2352f, u_input.c, vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), Struct_1(_wgslsmith_f_op_f32(1000f - -1392f), u_input.c >> (vec2<u32>(u_input.c.x, u_input.b) % vec2<u32>(32u)), vec3<bool>(false, false, false)), _wgslsmith_mult_i32(3760i, _wgslsmith_div_i32(global1.x, -4956i))).x);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * 218f))), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.b, 57195u))), !select(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, var_1.x), false), vec3<bool>(true, true, true), var_1.x & var_1.x)), select(select(!vec3<bool>(false, var_1.x, true), vec3<bool>(all(vec4<bool>(var_1.x, false, var_1.x, false)), u_input.a <= -1i, !var_1.x), true), !(!vec3<bool>(true, false, var_1.x)), !select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x))));
    let var_3 = ~(vec3<i32>(abs(u_input.a), 2200i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), global1.yy) >> (4294967295u % 32u)) << (_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(4294967295u, u_input.c.x, 4294967295u)), ~vec3<u32>(39748u, 4294967295u, 4294967295u) >> (~vec3<u32>(94008u, 0u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global0 = array<Struct_3, 19>();
    let var_4 = global0[_wgslsmith_index_u32(28857u, 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(vec3<u32>(abs(61691u), var_2.a.b.x, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(56382u, 0u)))), _wgslsmith_f_op_f32(ceil(var_4.c.x)), ~abs(~reverseBits(vec4<u32>(u_input.c.x, 74395u, u_input.c.x, 6708u))), var_2.a.a, ~reverseBits(-vec4<i32>(-7987i, global1.x, -3466i, -1i)) ^ ~select(-vec4<i32>(0i, global1.x, 1i, -1i), vec4<i32>(u_input.a, var_3.x, -20900i, 2147483647i), !var_2.a.c.x));
}

