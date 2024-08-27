struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = true;
    var_0 = true | all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true), select(false, true, true)));
    var_0 = any(select(!vec4<bool>(true, any(vec2<bool>(false, false)), any(vec2<bool>(false, true)), true), select(vec4<bool>(true, false, true, any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, false, false)), vec4<bool>(any(vec3<bool>(true, false, true)), true, u_input.b <= 12421i, true), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(select(!vec3<bool>(true, 12528i != arg_0.x, u_input.b <= arg_0.x), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), Struct_2(vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10158u), vec2<u32>(1u, 0u))), countOneBits(_wgslsmith_add_u32(1u, 10026u)), 0u, abs(17106u) << ((1u >> (1u % 32u)) % 32u)), Struct_1(vec3<u32>(firstTrailingBit(4294967295u), ~1u, ~137893u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), false))), Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 20359u), vec3<u32>(20029u, 1u, 13032u))), vec3<bool>(select(true, any(vec2<bool>(true, true)), true), true, select(select(true, true, true), true, true))));
    var var_2 = -34128i;
    return true;
}

fn func_2() -> vec3<bool> {
    var var_0 = 1u;
    var var_1 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)));
    var_0 = 1u;
    var_0 = 35726u;
    var var_2 = ~select(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 0u, 59390u), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, false)), vec3<u32>(~38431u, 2549u, firstLeadingBit(10323u)), vec3<u32>(1u, ~1u, 1u)), (1850f != _wgslsmith_f_op_f32(round(793f))) || !any(vec3<bool>(false, true, false)));
    return select(select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec2<bool>(true, true)), all(vec3<bool>(false, false, false))), !vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), !(!vec3<bool>(true, func_3(vec2<i32>(14944i, u_input.b)), true)), false);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> f32 {
    var var_0 = ~u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-722f, _wgslsmith_f_op_f32(select(-932f, 465f, false)))))))) + 362f);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = -324f;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(786f, -1589f))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(-864f * -1083f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, _wgslsmith_f_op_f32(410f * -1967f))), !(!(!vec2<bool>(arg_1.a.x, arg_1.b.b.b.x)))))));
    var_0 = _wgslsmith_f_op_f32(func_4(arg_0.b.a.x, Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b, _wgslsmith_div_i32(u_input.b, -1i), 9242i, u_input.b)), func_2(), u_input.a.x)));
    var_0 = var_1.x;
    var_0 = var_1.x;
    return _wgslsmith_f_op_f32(-var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~select(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(20803u, 75298u, 0u)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), false)), select(vec3<bool>(true, _wgslsmith_f_op_f32(func_1(Struct_2(vec4<u32>(1u, 21792u, 1u, 102671u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 9812u), vec3<bool>(false, false, true))), Struct_3(vec3<bool>(true, false, false), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 100155u), Struct_1(vec3<u32>(191315u, 17474u, 5899u), vec3<bool>(false, true, false))), Struct_1(vec3<u32>(1u, 79172u, 26769u), vec3<bool>(false, false, false))), Struct_2(vec4<u32>(4294967295u, 4294967295u, 41633u, 38217u), Struct_1(vec3<u32>(45233u, 0u, 7508u), vec3<bool>(true, false, false))))) >= _wgslsmith_div_f32(1691f, 219f), true), vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), any(vec2<bool>(true, true)), !func_3(vec2<i32>(-2147483647i, 2147483647i))), true));
    let var_1 = ~(~vec2<u32>(var_0.a.x & 71458u, ~firstLeadingBit(0u)));
    var var_2 = countOneBits(32174u);
    var var_3 = Struct_1(_wgslsmith_sub_vec3_u32(var_0.a ^ var_0.a, countOneBits(abs(~var_0.a))), var_0.b);
    var_0 = Struct_1(var_3.a, vec3<bool>(!(_wgslsmith_clamp_u32(16794u, var_3.a.x, var_1.x) == ~var_1.x), var_0.b.x, func_3(-u_input.a.zx)));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-763f, 227f, 967f) * vec3<f32>(895f, 515f, 220f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1862f, 140f, 1001f), vec3<f32>(220f, 259f, 690f), vec3<bool>(false, var_3.b.x, true))))))))));
    var_0 = Struct_1(vec3<u32>(72483u & ~var_3.a.x, ~(var_0.a.x >> (var_0.a.x % 32u)), var_1.x) << (_wgslsmith_sub_vec3_u32(var_0.a, var_0.a) % vec3<u32>(32u)), func_2());
    var_0 = Struct_1(var_3.a, !(!vec3<bool>(any(var_0.b), true, true)));
    let var_5 = countOneBits(~_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(7425u, 0u, 0u)), max(var_3.a >> (vec3<u32>(var_3.a.x, var_0.a.x, 15021u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(var_0.a, vec3<u32>(var_0.a.x, var_3.a.x, var_3.a.x))), abs(~var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x);
}

