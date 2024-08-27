struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 4>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    global1 = 4294967295u;
    let var_0 = Struct_1(~global3.e, -25041i, global0.a.b.c);
    global0 = Struct_5(global0.a);
    return vec3<bool>(false, global3.a.x, false);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_4) -> u32 {
    var var_0 = arg_2;
    let var_1 = ~firstTrailingBit(~vec2<i32>(reverseBits(arg_2.e.x), -8646i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1000f, -752f)), global3.b) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.c, global3.c))))) - vec2<f32>(global3.c.x, -1000f));
    global1 = abs(~753u);
    global3 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-global3.c)), _wgslsmith_f_op_f32(228f - _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1222f)))))), arg_2.d & countOneBits(u_input.b), var_1.x);
    return 0u;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(select(!(!global3.a), vec3<bool>(_wgslsmith_f_op_f32(sign(arg_2.c.x)) != arg_2.c.x, all(arg_2.a), all(vec3<bool>(true, true, arg_2.a.x))), any(global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(arg_2.c.x - 1715f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1752f, global3.b))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(global3.c, global3.c, vec2<bool>(arg_2.a.x, global3.a.x)))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.d, 1000f) + arg_2.c))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.c))), arg_2.a.x))), 1u, global2[_wgslsmith_index_u32(~1u, 4u)]);
    global0 = Struct_5(Struct_3(abs(-5956i) ^ -_wgslsmith_mod_i32(1i, arg_2.e), Struct_1(abs(var_0.e ^ 1i), -(global0.a.a >> (arg_2.d % 32u)), global0.a.b.c), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-188f)))));
    var var_1 = -631f;
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1635f * 1271f));
    return Struct_2(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-563f, global3.c.x)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-644f, _wgslsmith_f_op_f32(-612f - arg_2.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -696f), -218f)), abs(20038u), -1i);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = global0.a.b;
    var var_1 = func_4(~_wgslsmith_mod_u32(u_input.b, select(global3.d, global3.d, global3.a.x) | 28120u), -(2147483647i << (_wgslsmith_div_u32(var_0.c.x, 4424u) % 32u)), Struct_2(!func_2(vec2<f32>(1000f, 1339f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)) + -1153f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global3.c))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.c - vec2<f32>(global3.c.x, 771f)))), _wgslsmith_mod_u32(func_3(arg_0, Struct_5(Struct_3(-1i, Struct_1(1i, arg_0.x, vec2<u32>(1u, 23575u)), u_input.b, -544f)), Struct_4(global3.a.zz, global3.a.x, -1i, 4294967295u, vec4<i32>(global3.e, arg_0.x, -34581i, arg_0.x))), 1u), global3.e));
    let var_2 = Struct_5(Struct_3(_wgslsmith_add_i32(~u_input.a, firstTrailingBit(_wgslsmith_add_i32(var_0.b, 1i))), Struct_1(arg_0.x, 1i & (18467i << (u_input.b % 32u)), vec2<u32>(~var_1.d, _wgslsmith_mod_u32(global3.d, 73735u))), u_input.b, global0.a.d));
    var_1 = Struct_2(!vec3<bool>(true, abs(global3.d) > firstLeadingBit(var_0.c.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.d), var_1.c.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3.c, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-658f, -925f))), var_1.a.x)), vec2<f32>(global3.c.x, var_2.a.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.d, var_1.c.x))))))), ~(~(~0u)), -_wgslsmith_dot_vec2_i32(-arg_0.xx, vec2<i32>(~(-2147483647i), var_0.a >> (var_0.c.x % 32u))));
    global3 = Struct_2(!func_4(select(global0.a.c ^ 24348u, _wgslsmith_clamp_u32(global0.a.c, var_2.a.c, 1u), !global3.a.x), var_0.a, Struct_2(vec3<bool>(var_1.a.x, global3.a.x, global3.a.x), _wgslsmith_f_op_f32(global3.b - var_1.b), vec2<f32>(1917f, -1257f), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, var_1.d, global3.d), vec4<u32>(global0.a.b.c.x, var_2.a.b.c.x, var_2.a.c, u_input.b)), 0i)).a, _wgslsmith_f_op_f32(311f - -723f), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-1000f - -610f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.c))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-820f, global3.c.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(586f, global0.a.d)))))))), _wgslsmith_sub_u32(36052u, ~max(30218u, global3.d)), -2147483647i);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1227f;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-111f)), _wgslsmith_f_op_f32(global3.b + -404f), global3.a.x | (global3.a.x || (var_0 < global3.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), global3.a.x)), false | all(vec2<bool>(true, global3.a.x))))));
    let var_2 = vec2<bool>(any(global3.a.zz), !global3.a.x);
    let var_3 = Struct_3(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.b, 4u)]), global0.a.b, _wgslsmith_dot_vec2_u32(select(vec2<u32>(~global3.d, ~19365u), ~(~vec2<u32>(global3.d, global0.a.b.c.x)), global3.a.yz), vec2<u32>(global0.a.b.c.x | func_1(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(global3.d, 4u)], -2147483647i, 41517i)), u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(-global0.a.d)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.d))))) + var_0) > _wgslsmith_f_op_f32(-var_0);
    var var_5 = 52748u;
    let var_6 = -_wgslsmith_add_i32(1i, 0i);
    var var_7 = -45162i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -164f)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 38119i, u_input.a, global3.e), firstLeadingBit(-vec4<i32>(global2[_wgslsmith_index_u32(global3.d, 4u)], -27459i, -10956i, u_input.c.x))), (~global0.a.a ^ (global3.e << (global3.d % 32u))) << (u_input.b % 32u)));
}

