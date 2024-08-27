struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(1u, 4294967295u), vec3<i32>(50240i, i32(-2147483648), -86308i), vec2<i32>(2147483647i, 75509i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_3(global0.a);
    var var_0 = arg_2;
    let var_1 = Struct_3(-1i);
    global0 = Struct_3(_wgslsmith_mod_i32(-15555i, 8305i));
    var var_2 = _wgslsmith_div_i32(global0.a, 35588i);
    return Struct_1(u_input.a.zx, ~global1.b, global1.c);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    let var_0 = ~vec2<u32>(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5132u, 4294967295u, 88379u, arg_2.x), vec4<u32>(global1.a.x, arg_2.x, 73641u, u_input.c)), ~16439u)), global1.a.x);
    let var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x | -2147483647i, -28470i, select(arg_0.c.x, -1i, any(vec2<bool>(true, true)))), vec3<i32>(abs(~26871i), -global0.a, min(arg_0.b.x, -global1.b.x)));
    global1 = Struct_1(abs(~(_wgslsmith_sub_vec2_u32(vec2<u32>(37915u, 3483u), global1.a) | vec2<u32>(4294967295u, 1u))), arg_0.b, _wgslsmith_div_vec2_i32(global1.b.zy, arg_0.c) & vec2<i32>(i32(-1i) * -2147483647i, -1i));
    var var_2 = func_2(vec4<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true))), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, -20077i, -2147483647i, 35054i), vec4<i32>(18283i, 2147483647i, -44143i, arg_0.c.x)) != ~32105i, select(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, false, true))), any(vec2<bool>(all(vec2<bool>(false, false)), false))), 177i, -816f, Struct_2(vec4<bool>(true, true, true, true), arg_2.xxw));
    var var_3 = firstTrailingBit(~(~vec4<u32>(var_0.x | 0u, reverseBits(3719u), 16398u, ~arg_2.x)));
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = Struct_1(global1.a, global1.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, global1.c.x), global0.a) & _wgslsmith_div_i32(abs(global0.a), max(global0.a, global0.a)), global1.b.x));
    let var_0 = -11629i;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(vec4<bool>(true, true, true, false), var_0, 239f, Struct_2(vec4<bool>(true, false, true, true), u_input.a.yxx)), _wgslsmith_f_op_f32(f32(-1f) * -1782f), select(vec4<u32>(16613u, u_input.c, arg_0, global1.a.x), vec4<u32>(27392u, 4294967295u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, true)))) + 1f)))));
    return Struct_3(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, var_0), vec2<i32>(-1i, var_0)), reverseBits(-vec2<i32>(global0.a, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.a.x);
    global1 = Struct_1(vec2<u32>(~u_input.c, ~(~78642u)), global1.b, _wgslsmith_clamp_vec2_i32(global1.c, -vec2<i32>(_wgslsmith_add_i32(var_0.a, 1i), -3334i), (global1.c << (~global1.a % vec2<u32>(32u))) ^ abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-25037i, var_0.a), global1.b.yz))));
    global0 = Struct_3(1i);
    global0 = Struct_3(abs(-countOneBits(global1.c.x) & global0.a));
    let var_1 = min(~(~global1.a.x), 1u);
    let var_2 = _wgslsmith_mod_vec2_i32(~(vec2<i32>(2147483647i, 1i) | global1.c), -(reverseBits(vec2<i32>(global1.b.x, global0.a)) & vec2<i32>(0i, -2147483647i)) & min(abs(vec2<i32>(-18519i, global0.a)), vec2<i32>(2147483647i, -29957i) ^ ~vec2<i32>(global1.c.x, 1i)));
    let var_3 = i32(-1i) * -(i32(-1i) * -1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(-(-vec3<i32>(var_2.x, var_0.a, var_2.x) & vec3<i32>(2147483647i, global1.b.x, var_2.x)), min(global1.b, global1.b >> (u_input.b % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(abs(global1.c), -vec2<i32>(var_0.a, 2147483647i)), -var_3), _wgslsmith_clamp_i32(~2147483647i, 2147483647i, -6015i));
}

