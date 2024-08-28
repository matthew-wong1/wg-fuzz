struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = select(select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(true, false, false, false)), !any(vec3<bool>(true, true, true))), true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true), false), vec2<bool>(false, true));
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~(~func_3(u_input.c, u_input.b.x, Struct_3(arg_0), Struct_3(2147483647i))), abs(5376u), _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.a.zz, vec2<u32>(1u, 0u), vec2<u32>(u_input.c, 0u)), ~vec2<u32>(u_input.a.x, 0u)))), vec3<bool>(all(vec2<bool>(true, any(vec2<bool>(false, var_0.x)))), true, any(select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, false), true), vec3<bool>(var_1, var_0.x, var_1), var_1))), _wgslsmith_add_vec4_u32(u_input.a, ~u_input.a), u_input.b.x << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u));
    let var_3 = u_input.a.x;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(803f, 102f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, -334f)))), vec2<f32>(1f, 1f))), Struct_1(~select(0u << (u_input.c % 32u), _wgslsmith_dot_vec4_u32(u_input.b, var_2.c), false), select(vec3<bool>(!var_0.x, true, !var_0.x), vec3<bool>(var_1, arg_0 > arg_1.a, true), var_1), select(~var_2.c, vec4<u32>(var_2.c.x, 276u, 103500u, u_input.a.x), vec4<bool>(false, true, var_1, var_0.x)) ^ var_2.c, abs(var_2.c.x)), !all(!(!vec4<bool>(false, var_1, var_0.x, var_1))));
    return Struct_1(u_input.b.x, vec3<bool>(any(vec2<bool>(!var_0.x, !var_0.x)), false, !var_0.x), ~firstTrailingBit(abs(~vec4<u32>(var_4.b.c.x, 54859u, var_4.b.d, var_2.c.x))), 6108u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    var var_0 = ~firstLeadingBit(~(-1i));
    var_0 = 0i;
    var_0 = 2147483647i & -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-40080i, -2147483647i), reverseBits(vec2<i32>(36393i, 34536i))), -abs(46100i));
    return Struct_3(1i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    var var_0 = func_4(arg_1, arg_1.b, -531f);
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1651f, _wgslsmith_f_op_f32(f32(-1f) * -192f)), vec2<f32>(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x), _wgslsmith_f_op_f32(trunc(464f))))), arg_1.b, all(vec4<bool>(all(vec3<bool>(false, arg_1.b.b.x, false)), 499f > arg_1.a.x, !arg_1.c, true))), func_2(-12845i, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a)), arg_1.b, false), func_2(abs(arg_0.a), func_4(arg_1, Struct_1(u_input.b.x, vec3<bool>(true, arg_1.b.b.x, true), arg_1.b.c, 0u), arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.a.x))))))));
    var var_1 = -54582i;
    var var_2 = arg_1;
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(arg_1.a, _wgslsmith_f_op_vec2_f32(var_2.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, 195f) + vec2<f32>(-111f, 331f)))))), Struct_1(4294967295u, select(vec3<bool>(all(arg_1.b.b.xz), arg_1.b.d <= u_input.c, true), !(!vec3<bool>(var_2.c, arg_1.b.b.x, true)), ~4294967295u > max(u_input.b.x, u_input.c)), vec4<u32>(_wgslsmith_div_u32(func_2(38344i, arg_0).a, u_input.c), 4294967295u, 29879u, _wgslsmith_div_u32(62475u, var_2.b.d)), func_3(func_2(var_0.a, Struct_3(15844i)).c.x | arg_1.b.a, ~u_input.b.x | (var_2.b.d >> (arg_1.b.c.x % 32u)), arg_0, func_4(arg_1, Struct_1(16165u, vec3<bool>(false, var_2.c, false), var_2.b.c, 0u), var_2.a.x))), any(var_2.b.b.yx));
    return arg_0;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-arg_0.wx), func_2(47541i, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(748f, arg_0.x))), func_2(-2147483647i, arg_3), false), func_2(27748i ^ arg_1.a, arg_3), 243f)), func_2(~arg_1.a, func_4(Struct_2(vec2<f32>(-381f, arg_0.x), Struct_1(u_input.c, vec3<bool>(false, true, true), u_input.a, 1u), false), func_2(1i, arg_1), 1678f)).a >= func_3(89494u, firstTrailingBit(u_input.a.x | 35841u), arg_3, Struct_3(arg_1.a)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) - var_0.a))), func_2(firstLeadingBit(0i), arg_3), false);
    var_0 = Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(select(var_0.a.x, -1332f, true))), var_0.b, true);
    var var_1 = u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(min(arg_0.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) + var_0.a))))), func_2(-arg_3.a, arg_1), !var_0.b.b.x || true);
    return func_2(reverseBits(arg_1.a << (firstTrailingBit(~10718u) % 32u)), arg_3);
}

fn func_1() -> Struct_1 {
    return func_6(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 378f, false)) * -1010f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(227f - 1864f) * 183f), 866f))), func_5(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, -152f) * vec2<f32>(-209f, 473f)), func_2(2147483647i, Struct_3(0i)), u_input.c == u_input.c), func_2(~0i, Struct_3(-13738i)), -1000f), Struct_2(vec2<f32>(1f, 1f), Struct_1(min(u_input.a.x, u_input.b.x), vec3<bool>(true, true, true), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, 47058u, u_input.a.x), vec4<u32>(8756u, u_input.b.x, 55463u, 1u)), ~u_input.a.x), false)), ~(~u_input.a), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(115f, 634f)), func_2(1i, func_4(Struct_2(vec2<f32>(887f, -1493f), Struct_1(2129u, vec3<bool>(true, false, false), u_input.a, 47611u), false), Struct_1(u_input.c, vec3<bool>(true, false, true), u_input.b, u_input.a.x), 638f)), func_2(-14430i, func_5(Struct_3(2147483647i), Struct_2(vec2<f32>(-511f, -517f), Struct_1(u_input.a.x, vec3<bool>(true, false, false), u_input.a, 63287u), false))).b.x), Struct_1(max(1u, 60506u), vec3<bool>(true, true, true), u_input.b, u_input.c), -1341f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(25883i, -37721i, 32784i, -20910i), vec4<i32>(2147483647i, 1i, 0i, -16682i)) >> (15943u % 32u), i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 14875i), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -21073i, 2147483647i, -1i), vec4<i32>(-26811i, -6083i, 11982i, 0i)), -1i << (1u % 32u))), min(-39626i, -(i32(-1i) * -25326i))), abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(-15494i, -2147483647i, -55451i, 11313i))))), ~2147483647i);
}

