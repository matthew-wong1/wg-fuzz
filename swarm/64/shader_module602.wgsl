struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    let var_0 = vec2<f32>(1f, 1f);
    var var_1 = false;
    return true;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(min(vec3<u32>(~1u, ~u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 37296u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, u_input.a.x))), _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.a.x, u_input.a.x)), ~(~vec3<u32>(2899u, 6439u, 51063u)))), !vec4<bool>(!all(vec2<bool>(true, arg_0)), true, false, (u_input.b.x == -17419i) & !arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(554f - 300f)))) - _wgslsmith_f_op_f32(f32(-1f) * -326f)), ~(~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 28407u))) << (reverseBits(vec4<u32>(u_input.a.x, ~24487u, u_input.a.x, ~u_input.a.x)) % vec4<u32>(32u)));
    let var_1 = Struct_1(4294967295u, vec4<bool>(abs(firstTrailingBit(45959u)) < 1u, all(!var_0.b), !func_3(), !var_0.b.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1234f)))))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.a.x), u_input.a), u_input.a.x & u_input.a.x, u_input.a.x, 31697u));
    var var_2 = Struct_1(var_1.d.x, var_1.b, -1283f, var_0.d);
    var_0 = var_1;
    let var_3 = var_2.c;
    return Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(22075u, firstTrailingBit(var_1.d.x), var_0.d.x), var_2.d.wzx), !(!(!(!var_0.b))), -350f, var_0.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> Struct_1 {
    return func_2(true);
}

fn func_1() -> vec4<f32> {
    var var_0 = ~abs(vec4<u32>(1u, ~u_input.a.x, u_input.a.x, 82896u));
    let var_1 = abs(select(var_0.wyw, firstLeadingBit(var_0.zww), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))) >> (var_0.zzz % vec3<u32>(32u));
    var var_2 = func_4(-25040i, func_2(true), var_0.x == ~func_2(func_2(true).b.x).a, ~select(~u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), -vec3<i32>(2147483647i, -44798i, 1i)), true));
    var_0 = ~max(var_2.d, ~vec4<u32>(24009u, 4294967295u, u_input.a.x, firstTrailingBit(u_input.a.x)));
    var_0 = func_2(2147483647i > u_input.b.x).d;
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-154f, -1489f, _wgslsmith_f_op_f32(525f + _wgslsmith_f_op_f32(step(func_4(u_input.b.x, Struct_1(1u, var_2.b, var_2.c, vec4<u32>(48538u, 76274u, u_input.a.x, u_input.a.x)), true, u_input.b.x).c, -1848f))), _wgslsmith_f_op_f32(func_4(u_input.b.x, Struct_1(1u, var_2.b, var_2.c, vec4<u32>(var_2.d.x, 63430u, 4294967295u, u_input.a.x)), var_2.b.x, u_input.b.x).c * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, var_2.c, true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(vec3<u32>(~reverseBits(41925u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u)), ~4294967295u));
    var var_1 = -1047f;
    let x = u_input.a;
    s_output = StorageBuffer(255f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1())))))), var_0);
}

