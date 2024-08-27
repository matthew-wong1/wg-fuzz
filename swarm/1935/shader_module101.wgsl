struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 15892u), 0u, vec4<bool>(true, false, true, false), -1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<bool>(!arg_0.c.x | any(global0.c.yx), false, arg_0.c.x, all(select(global0.c.zxw, vec3<bool>(all(arg_0.c.wyy), !global0.c.x, true), !global0.c.wzx)));
    var var_1 = _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 4294967295u), ~arg_0.a) ^ (_wgslsmith_mult_u32(global0.b, u_input.a.x) << (arg_0.a.x % 32u)), ~(~16530u)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(586f * _wgslsmith_f_op_f32(1974f - global0.d)), arg_0.d, _wgslsmith_f_op_f32(-global0.d)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1208f, _wgslsmith_f_op_f32(ceil(-751f)), 873f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.d, 304f, arg_0.d), vec3<f32>(global0.d, global0.d, arg_0.d))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(808f, global0.d, global0.d), vec3<f32>(-462f, 550f, arg_0.d)))), arg_0.c.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-670f, -1631f, -686f))) - vec3<f32>(1000f, arg_0.d, 623f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(274f, 248f, 1186f))))))));
    let var_3 = _wgslsmith_sub_i32(-8329i, countOneBits(_wgslsmith_mult_i32(u_input.c.x << (arg_0.a.x % 32u), -2147483647i) << (u_input.a.x % 32u)));
    var var_4 = vec4<bool>(any(arg_0.c) && true, any(select(global0.c.wx, !vec2<bool>(var_0.x, true), !vec2<bool>(global0.c.x, true))), var_0.x, !(_wgslsmith_clamp_i32(6922i, 54494i, 2147483647i) <= -50640i) && any(select(!vec2<bool>(true, arg_0.c.x), vec2<bool>(arg_0.c.x, global0.c.x), select(global0.c.ww, vec2<bool>(var_0.x, arg_0.c.x), vec2<bool>(true, var_0.x)))));
    return 27012u;
}

fn func_2() -> Struct_1 {
    var var_0 = func_3(Struct_1(_wgslsmith_add_vec2_u32(u_input.a.xx ^ (vec2<u32>(global0.b, u_input.a.x) >> (u_input.a.xx % vec2<u32>(32u))), ~global0.a), global0.b, global0.c, global0.d));
    global0 = Struct_1(~(~_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, global0.a.x), global0.c.yx), u_input.a.yy)), firstTrailingBit(44733u), vec4<bool>(!(!any(vec4<bool>(true, global0.c.x, global0.c.x, true))), true, max(countOneBits(-10761i), u_input.b) <= (1i << (_wgslsmith_mod_u32(4294967295u, global0.a.x) % 32u)), global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - global0.d)));
    return Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(17053u, 84902u), global0.c.xy), ~vec2<u32>(0u, global0.a.x)), reverseBits(vec2<u32>(~u_input.a.x, global0.a.x))), ~u_input.a.x, select(vec4<bool>(all(select(global0.c.wwy, vec3<bool>(global0.c.x, true, false), false)), true, false, global0.c.x), !global0.c, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-620f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d + global0.d), global0.d)), true | !global0.c.x)) * _wgslsmith_f_op_f32(min(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d - 219f))))));
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~u_input.a.yy, min(~(~(global0.b & u_input.a.x)), 4294967295u), !global0.c, _wgslsmith_div_f32(370f, -2724f));
    var var_0 = func_2();
    let var_1 = Struct_1(var_0.a, var_0.a.x, !vec4<bool>(any(select(global0.c, global0.c, global0.c)), !(global0.c.x && true), global0.c.x, true), 726f);
    let var_2 = _wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 24458u)) >> (~(~(~vec2<u32>(u_input.a.x, 1u))) % vec2<u32>(32u)), var_1.a);
    var_0 = var_1;
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global0 = Struct_1(abs(~arg_2.a), 1u, vec4<bool>(!(!arg_1.c.x), arg_2.a.x == (34936u << (1u % 32u)), arg_2.c.x, func_2().c.x), _wgslsmith_f_op_f32(f32(-1f) * -660f));
    var var_0 = Struct_1(firstLeadingBit(u_input.a.xz), 0u, select(func_2().c, vec4<bool>(!any(arg_3.c.yz), true, true && all(global0.c.xy), true), arg_2.c), _wgslsmith_div_f32(568f, arg_2.d));
    var_0 = Struct_1(u_input.a.xx & vec2<u32>(~1u, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u), var_0.a), firstLeadingBit(vec2<u32>(var_0.a.x, 64291u))), ~var_0.a ^ var_0.a), ~(vec2<u32>(arg_2.a.x, var_0.a.x) | u_input.a.xz) & ~arg_1.a), vec4<bool>(true, all(select(!var_0.c.wyz, !arg_2.c.zyy, global0.c.yxy)), all(arg_1.c) & false, !(true && (-316f <= var_0.d))), 994f);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.d, 327f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-arg_3.d), -912f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_3.d)))), func_1().d)));
    let var_2 = arg_3.a;
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b) ^ -38874i;
    var_0 = 2147483647i >> (select(_wgslsmith_mult_u32(128u & (global0.a.x | u_input.a.x), ~(~15055u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), abs(vec3<u32>(49210u, 47034u, 6049u))), global0.c.x) % 32u);
    var var_1 = ~abs(~vec2<u32>(27628u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.a.x), vec2<u32>(20816u, u_input.a.x))));
    var var_2 = Struct_1(global0.a | global0.a, global0.b, !vec4<bool>(true, global0.c.x, var_1.x < 42898u, !global0.c.x), _wgslsmith_f_op_f32(func_4(all(select(vec4<bool>(global0.c.x, true, true, false), vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true))) || !global0.c.x, Struct_1(vec2<u32>(var_1.x, 20318u) << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 41203u), vec2<u32>(var_1.x, 1u)) % vec2<u32>(32u)), global0.b, select(global0.c, select(global0.c, global0.c, global0.c.x), !global0.c), -587f), func_1(), Struct_1(u_input.a.yx, 1u >> (_wgslsmith_mult_u32(1u, 0u) % 32u), global0.c, global0.d))));
    var var_3 = func_1();
    var var_4 = vec4<i32>(min(u_input.c.x, (u_input.c.x << (31314u % 32u)) | ~2147483647i) & _wgslsmith_mult_i32((i32(-1i) * -1i) >> (1u % 32u), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(-41880i, -17679i), -u_input.c.x)), _wgslsmith_clamp_i32(~(2147483647i >> (func_1().a.x % 32u)), _wgslsmith_mult_i32(u_input.b, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(-20033i), u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, -1i, -2147483647i), vec4<i32>(u_input.b, u_input.b, 17991i, 12887i))), -reverseBits(vec3<i32>(u_input.b, -54036i, -2147483647i)))), u_input.c.x, u_input.b);
    var var_5 = _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, -17701i) >> (func_3(func_1()) % 32u), var_4.x);
    var var_6 = func_2();
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.d - 281f))), var_2.d)), -u_input.c, min(vec2<u32>(firstLeadingBit(u_input.a.x), 15807u), ~(min(vec2<u32>(20701u, var_6.a.x), var_6.a) & vec2<u32>(10954u, var_6.a.x))));
}

