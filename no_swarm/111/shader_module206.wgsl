struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32371i;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_5(arg_0, global1.d.yw & ~_wgslsmith_clamp_vec2_u32(firstLeadingBit(global1.d.zy), reverseBits(vec2<u32>(global1.d.x, 11528u)), min(vec2<u32>(1u, global1.d.x), global1.d.yw)), arg_0.a, vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true));
    global1 = Struct_2(global1.e, vec2<f32>(_wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(390f)))))), ~u_input.a.xw, global1.d & vec4<u32>(var_0.b.x, 12264u, ~(~46651u), global1.d.x), global1.e);
    var var_1 = 18012i;
    global0 = firstLeadingBit(arg_0.a.x);
    global0 = 10555i;
    return _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_0.a.x, -27393i), ~vec2<i32>(-2147483647i, global1.e.a.x) & reverseBits(vec2<i32>(global1.a.a.x, arg_0.a.x)), _wgslsmith_mult_vec2_i32(var_0.c, global1.a.a)), abs(-select(arg_0.a, global1.a.a, -2147483647i <= arg_0.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(select(~_wgslsmith_clamp_vec2_i32(-u_input.a.zw, -u_input.a.xz, ~vec2<i32>(u_input.a.x, u_input.c.x)), select(global1.a.a, func_3(global1.a), true), false & (_wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)) >= _wgslsmith_f_op_f32(337f - global1.b.x))));
    let var_1 = Struct_4(Struct_1(~(min(global1.a.a, u_input.c) | select(vec2<i32>(u_input.a.x, var_0.a.x), u_input.a.yz, vec2<bool>(false, true)))), u_input.a.xwy);
    global0 = firstLeadingBit(~u_input.c.x);
    var var_2 = -47178i;
    let var_3 = _wgslsmith_f_op_f32(select(-732f, global1.b.x, all(vec3<bool>(true, true, false & (u_input.c.x == -2147483647i)))));
    return Struct_2(Struct_1(var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * global1.b.x))), var_0.a, vec4<u32>(_wgslsmith_div_u32(11621u, global1.d.x), global1.d.x, global1.d.x, ~abs(global1.d.x) >> (~31006u % 32u)), Struct_1(vec2<i32>(countOneBits(var_1.a.a.x), _wgslsmith_clamp_i32(abs(2147483647i), 1i, -23454i))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = 273f;
    var var_1 = arg_0;
    let var_2 = vec2<u32>(countOneBits(59647u), _wgslsmith_sub_u32(1u ^ ~max(arg_0.c.d.x, arg_0.c.d.x), 1u));
    global1 = func_2();
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(182f, var_1.a.x), vec2<f32>(arg_0.c.b.x, var_1.c.b.x))))), _wgslsmith_f_op_f32(1f - 248f), Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, var_0)))), ~reverseBits(arg_0.c.c ^ vec2<i32>(var_1.c.e.a.x, 2147483647i)), ~vec4<u32>(~global1.d.x, max(0u, var_1.c.d.x), _wgslsmith_dot_vec2_u32(var_1.c.d.yx, vec2<u32>(14949u, var_2.x)), arg_0.c.d.x), Struct_1(_wgslsmith_clamp_vec2_i32(-u_input.a.xy, vec2<i32>(13708i, -1i), vec2<i32>(u_input.c.x, global1.a.a.x) & vec2<i32>(global1.e.a.x, arg_0.c.a.a.x)))));
    return var_1.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5) -> vec3<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(arg_1.b.x - global1.b.x))))), global1.b.x, _wgslsmith_f_op_f32(sign(113f)), -711f);
    var var_1 = _wgslsmith_clamp_u32(~global1.d.x, ~arg_2.b.x, 116371u);
    var_1 = firstLeadingBit(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(arg_1.d.x, 0u)), vec2<u32>(27183u, arg_2.b.x)), global1.d.yx));
    let var_2 = Struct_4(func_2().a, vec3<i32>(func_1(Struct_3(_wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(var_0.x, -921f)), var_0.x, arg_1)).a.a.x, firstLeadingBit(-(-16975i ^ global1.a.a.x)), ~u_input.a.x));
    var_1 = arg_2.b.x;
    return var_0.xyx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(abs(vec2<i32>(_wgslsmith_add_i32(select(17711i, 61025i, false), 2147483647i | u_input.b), u_input.a.x)));
    let var_1 = ~vec3<u32>(global1.d.x, ~select(~global1.d.x, _wgslsmith_dot_vec2_u32(global1.d.zw, global1.d.wz), select(true, false, true)), _wgslsmith_add_u32(global1.d.x, global1.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(any(vec2<bool>(true, true)), func_1(Struct_3(vec2<f32>(-1000f, global1.b.x), -1550f, Struct_2(var_0, vec2<f32>(-317f, global1.b.x), global1.a.a, global1.d, var_0))), Struct_5(Struct_1(_wgslsmith_sub_vec2_i32(global1.c, global1.e.a)), var_1.xx, _wgslsmith_clamp_vec2_i32(func_2().e.a, _wgslsmith_clamp_vec2_i32(u_input.c, var_0.a, vec2<i32>(27425i, 42058i)), -vec2<i32>(-2147483647i, 0i)), vec3<bool>(true, all(vec3<bool>(true, true, false)), any(vec4<bool>(true, true, false, false)))))));
}

