struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(17442i, 29197i), vec2<i32>(57925i, 919i), vec2<i32>(i32(-2147483648), -43834i), vec2<i32>(-31520i, -17436i), vec2<i32>(3724i, -8653i), vec2<i32>(0i, 34606i), vec2<i32>(24146i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(-43156i, 1i), vec2<i32>(-1i, -84087i), vec2<i32>(20814i, 4850i), vec2<i32>(-20493i, 1i), vec2<i32>(-81360i, 42398i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 8421i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(36043i, -31588i), vec2<i32>(-12423i, 88i), vec2<i32>(i32(-2147483648), -3906i), vec2<i32>(-20735i, -29329i), vec2<i32>(0i, -1i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(20177i, 1i), vec2<i32>(47226i, -1i), vec2<i32>(9564i, -1i), vec2<i32>(2147483647i, 4356i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, 0i));

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    let var_0 = vec4<bool>(true, any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), u_input.b > ~1u, (_wgslsmith_sub_u32(u_input.b >> (arg_1 % 32u), arg_1) > ~(~1u)) | any(vec3<bool>(true, true, true)));
    global0 = array<vec2<i32>, 30>();
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_3) -> u32 {
    global2 = arg_3.b;
    let var_0 = arg_3;
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(step(396f, global2.a.a.x))), 371f) + var_0.b.a.b.yy), 22016u, Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global1.a.b.yx, vec2<f32>(arg_3.d, 703f)))) * arg_3.b.a.b.zy), global1.a, vec4<i32>(~(-var_0.b.a.c.x), -1i, _wgslsmith_div_i32(42551i, u_input.a.x) & global2.a.c.x, 55044i << (reverseBits(arg_3.a) % 32u))), arg_3.b);
    var var_2 = arg_3.b;
    global2 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_3.b.a.b.yz))), arg_1.x, func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -643f) + var_2.a.a.xy))), 52434u, Struct_4(vec2<f32>(global2.a.b.x, global1.a.a.x), Struct_1(arg_3.b.a.a, vec3<f32>(672f, global1.a.b.x, var_2.a.b.x), vec3<i32>(var_2.a.c.x, u_input.a.x, -11029i)), ~vec4<i32>(7692i, -2147483647i, 0i, arg_3.b.a.c.x)), Struct_2(var_1.b)), arg_3.b).b);
    return ~0u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, ~29681u), vec3<u32>(0u, ~(~arg_1.x), u_input.c)) % 32u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a.a), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-824f, -1054f, 1436f), global2.a.b, vec3<bool>(false, false, true))) * _wgslsmith_div_vec3_f32(arg_0.zxz, vec3<f32>(global1.a.a.x, global2.a.a.x, 1000f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-836f, 474f, global1.a.a.x) - global2.a.b), arg_0.wxz)))), global2.a.c));
    global1 = Struct_2(global1.a);
    global1 = Struct_2(global1.a);
    let var_0 = Struct_4(vec2<f32>(-472f, arg_1.a.x), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_1.a.yz), _wgslsmith_f_op_vec2_f32(sign(arg_0.zz)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.b.x, -205f), vec2<f32>(1737f, arg_1.a.x)))), u_input.b, func_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.a.b.x, global2.a.a.x))), u_input.b, Struct_4(_wgslsmith_f_op_vec2_f32(select(arg_1.b.xy, vec2<f32>(1667f, global1.a.b.x), arg_2)), Struct_1(vec4<f32>(arg_0.x, 1354f, global1.a.a.x, -193f), vec3<f32>(global2.a.a.x, -823f, -514f), global2.a.c), u_input.a | vec4<i32>(-31841i, global2.a.c.x, arg_1.c.x, -8353i)), Struct_2(global2.a)), Struct_2(func_2(arg_0.zy, ~56649u, func_2(vec2<f32>(1000f, arg_0.x), u_input.b, Struct_4(vec2<f32>(arg_1.b.x, global2.a.b.x), arg_1, vec4<i32>(36277i, arg_1.c.x, -14853i, 64922i)), Struct_2(global1.a)), Struct_2(global2.a)).b)).b, u_input.a);
    var var_1 = var_0.b.c.zy;
    return StorageBuffer(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let x = u_input.a;
    s_output = func_3(_wgslsmith_f_op_vec4_f32(max(global1.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(min(global1.a.b.x, global1.a.b.x)), -382f)))), global2.a, _wgslsmith_sub_u32(func_1(_wgslsmith_f_op_f32(-var_0.a.x), vec2<u32>(4294967295u, u_input.b), all(vec2<bool>(true, false)), Struct_3(u_input.c, Struct_2(global2.a), global2.a.b.x, 3256f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 645u, u_input.c, 79081u), vec4<u32>(109352u, 1u, u_input.c, u_input.c)) >> (u_input.b % 32u)) != min(~(~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 4294967295u), select(vec2<u32>(29545u, 32u), vec2<u32>(84668u, 11411u), false))));
}

