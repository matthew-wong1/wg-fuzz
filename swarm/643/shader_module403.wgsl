struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 22>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(18191i);
    var_1 = Struct_1(_wgslsmith_mult_i32(u_input.a, ~(~var_1.a)));
    var var_2 = arg_1.x;
    var var_3 = Struct_2(~u_input.a, Struct_1(_wgslsmith_mod_i32(var_1.a, u_input.a) & var_0), 1671f, arg_0.x);
    return Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(-vec3<i32>(u_input.a, var_1.a, -7633i)), vec3<i32>(0i, 21705i, var_3.b.a) & (vec3<i32>(1i, -6010i, var_3.a) << (vec3<u32>(39028u, 19262u, 15805u) % vec3<u32>(32u)))), ~_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(var_1.a, u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0, 1i), vec3<i32>(u_input.a, var_1.a, var_3.a)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4) -> vec3<i32> {
    global0 = array<vec2<bool>, 22>();
    var var_0 = firstLeadingBit(vec2<u32>(30161u, 1u));
    let var_1 = -754f;
    return vec3<i32>(-21300i, -1i, _wgslsmith_add_i32(~1i, 1i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * -2483f), -916f);
    var var_1 = (~(i32(-1i) * -42797i) >> (_wgslsmith_add_u32(~select(u_input.b, 4294967295u, true), ~_wgslsmith_add_u32(1u, arg_1.b.d)) % 32u)) | min(_wgslsmith_mult_i32(arg_1.c.a | 1i, arg_3.x), u_input.a);
    var var_2 = !vec4<bool>(true, (-810f > _wgslsmith_f_op_f32(arg_1.b.c - arg_1.a)) | !any(vec4<bool>(false, false, true, true)), !any(vec3<bool>(true, true, true)), true);
    var var_3 = Struct_4(func_2(_wgslsmith_div_vec2_u32(~select(vec2<u32>(u_input.b, 28209u), vec2<u32>(51740u, 95931u), false), ~reverseBits(vec2<u32>(u_input.b, u_input.b))), select(!(!var_2.wxz), select(var_2.zwx, var_2.ywz, select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(false, var_2.x, true))), true)));
    var_2 = select(select(select(vec4<bool>(false, var_2.x, true, 22005u != arg_1.b.d), vec4<bool>(true, var_2.x, false, true), !(!vec4<bool>(var_2.x, var_2.x, true, var_2.x))), select(select(vec4<bool>(true, true, true, var_2.x), !vec4<bool>(true, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<bool>(select(false, false, false), true, false, any(var_2.xz)), select(vec4<bool>(false, true, true, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), var_2.x)), select(!vec4<bool>(true, false, true, var_2.x), select(!vec4<bool>(true, var_2.x, true, true), select(vec4<bool>(false, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), !select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true)))), vec4<bool>(arg_1.b.d != 1u, (_wgslsmith_mult_i32(-1i, arg_0.x) ^ arg_1.c.a) != arg_0.x, any(vec2<bool>(false, !var_2.x)), var_2.x), select(vec4<bool>(true, true, !var_2.x, !select(false, var_2.x, var_2.x)), !select(vec4<bool>(var_2.x, true, var_2.x, true), !vec4<bool>(true, var_2.x, false, false), !vec4<bool>(false, var_2.x, false, true)), vec4<bool>(var_2.x, false, true, !(true | var_2.x))));
    return arg_1.b.d;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = u_input.b;
    var var_1 = 31870u;
    let var_2 = vec3<u32>(1u, func_4(func_3(Struct_4(func_2(vec2<u32>(u_input.b, u_input.b), vec3<bool>(false, false, false))), Struct_4(Struct_1(u_input.a)), Struct_4(Struct_1(u_input.a))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c, arg_0.c)), Struct_2(arg_0.b.a, Struct_1(2147483647i), arg_0.c, var_0), Struct_1(1i ^ u_input.a)), ~4294967295u, vec2<i32>(u_input.a, -13251i)), countOneBits(abs(1u)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-arg_0.c), Struct_2(-2147483647i, Struct_1(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-15077i, 28457i, 5963i), vec3<i32>(1i, -2147483647i, arg_0.a)), _wgslsmith_div_i32(u_input.a, arg_0.a))), -1405f, 0u), func_2(var_2.xy, vec3<bool>(true, true, true)));
    let var_4 = -(~(_wgslsmith_mult_i32(func_3(Struct_4(arg_0.b), Struct_4(Struct_1(var_3.b.b.a)), Struct_4(Struct_1(arg_0.b.a))).x, 1i) ^ u_input.a));
    return _wgslsmith_f_op_f32(round(var_3.b.c));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: i32) -> StorageBuffer {
    let var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 13805u)), 4294967295u, u_input.b), vec3<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b), vec4<u32>(0u, 4294967295u, u_input.b, u_input.b)))));
    global0 = array<vec2<bool>, 22>();
    let var_1 = all(!vec3<bool>(arg_1.x, true, arg_1.x));
    let var_2 = Struct_1(u_input.a);
    var var_3 = Struct_2(u_input.a, var_2, 1849f, _wgslsmith_div_u32(4294967295u, u_input.b));
    return StorageBuffer(~(-(-vec3<i32>(50640i, u_input.a, arg_2) & (vec3<i32>(arg_2, u_input.a, u_input.a) >> (var_0 % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 22>();
    let var_0 = Struct_1(-u_input.a);
    let x = u_input.a;
    s_output = func_5(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), 1176f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(var_0.a, Struct_1(var_0.a), 358f, 4294967295u))))), -1007f), vec3<bool>(true, all(!select(global0[_wgslsmith_index_u32(30491u, 22u)], vec2<bool>(true, false), vec2<bool>(true, true))), all(vec3<bool>(false, true, false))), var_0.a);
}

