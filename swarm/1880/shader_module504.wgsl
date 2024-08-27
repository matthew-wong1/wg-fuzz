struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(4294967295u, var_0.a.a.x) | (u_input.d.xx << (vec2<u32>(arg_1.d.a.x, 4294967295u) % vec2<u32>(32u)))), firstLeadingBit(arg_0.a)), vec2<u32>(firstLeadingBit(countOneBits(abs(var_0.a.a.x))), u_input.a));
    let var_3 = ~var_1.a.x;
    let var_4 = u_input.b.xy;
    return ~(i32(-1i) * -29790i);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = vec3<i32>(u_input.c, func_3(Struct_1(~u_input.d.xx), Struct_2(Struct_1(u_input.d.yz), true, arg_0 ^ u_input.b.x, Struct_1(u_input.d.yz), u_input.b.x), u_input.c) | -2147483647i, _wgslsmith_div_i32(0i, u_input.c));
    let var_1 = Struct_1(vec2<u32>(u_input.a, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(69186u, 22707u, u_input.d.x), vec3<u32>(6738u, u_input.d.x, 0u)), abs(u_input.d.x) ^ ~57543u)));
    let var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    var var_4 = _wgslsmith_clamp_vec2_u32(u_input.d.yx, vec2<u32>(var_1.a.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.a.x, 0u, 4294967295u), vec4<u32>(u_input.a, var_1.a.x, 2402u, u_input.d.x)), vec4<u32>(4294967295u, 17421u, u_input.d.x, 36041u))), u_input.d.yy);
    return Struct_2(Struct_1(var_1.a), true, min(var_0.x, u_input.c), var_1, 2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = func_2((i32(-1i) * -18955i) | (~u_input.c >> ((select(u_input.d.x, 1u, false) & u_input.a) % 32u)));
    return func_2(var_0).d;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = func_2(u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(103f)))));
    var var_2 = any(!vec2<bool>(var_0.b, 2883f > _wgslsmith_f_op_f32(round(952f))));
    let var_3 = u_input.d.x;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -902f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    var_0 = Struct_2(Struct_1(min(~u_input.d.xz, ~(~vec2<u32>(u_input.a, var_0.d.a.x)))), !select((u_input.d.x < 1u) | func_4(var_0.d).b, true, var_0.b), var_0.e, var_0.a, var_0.e);
    var_0 = Struct_2(var_0.a, var_0.b, ~1i, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3500u, var_0.a.a.x, u_input.d.x), vec4<u32>(u_input.d.x, var_0.a.a.x, 0u, var_0.a.a.x))), ~max(u_input.d.zx, var_0.a.a))), reverseBits(-u_input.b.x) & abs(u_input.b.x));
    var var_1 = var_0.b;
    let var_2 = !vec4<bool>(false, var_0.b, false, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(625f, 1822f, 722f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1086f, 111f, -768f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, 1473f, 1000f) - vec3<f32>(-1480f, 289f, -1302f)), false))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(step(-1000f, -629f)), -1645f) * _wgslsmith_div_vec3_f32(vec3<f32>(-259f, 568f, -459f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, -1000f, 801f))))), -(-vec4<i32>(1i, var_0.e, var_0.c, var_0.c) >> (_wgslsmith_add_vec4_u32(vec4<u32>(47068u, 93651u, var_0.d.a.x, 15495u), vec4<u32>(u_input.a, 2886u, u_input.a, var_0.a.a.x)) % vec4<u32>(32u))) & abs(vec4<i32>(30769i, func_2(u_input.b.x).c, var_0.c, 1i)), 7380u);
}

