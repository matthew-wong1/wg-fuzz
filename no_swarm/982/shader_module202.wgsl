struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4) -> f32 {
    let var_0 = abs(1242u);
    let var_1 = select(!(!select(select(vec2<bool>(arg_2.b.d, false), vec2<bool>(arg_2.a.d, true), true), vec2<bool>(true, arg_2.b.d), !vec2<bool>(false, arg_2.a.d))), vec2<bool>(true, arg_2.b.d), -2147483647i < (2147483647i | max(1i, arg_1.x)));
    var var_2 = all(select(select(select(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, arg_2.a.d, arg_2.b.d), vec4<bool>(var_1.x, arg_2.b.d, arg_2.a.d, false)), select(vec4<bool>(true, false, true, arg_2.a.d), vec4<bool>(true, true, arg_2.a.d, true), var_1.x), any(vec3<bool>(arg_2.a.d, true, arg_2.a.d))), vec4<bool>(arg_2.c.x >= var_0, !var_1.x, true, arg_2.a.d), !select(vec4<bool>(arg_2.b.d, arg_2.b.d, var_1.x, true), vec4<bool>(true, arg_2.a.d, true, true), vec4<bool>(var_1.x, arg_2.a.d, var_1.x, true))), !select(!vec4<bool>(arg_2.a.d, true, false, false), !vec4<bool>(false, true, arg_2.b.d, var_1.x), all(vec3<bool>(true, true, var_1.x))), vec4<bool>(true, arg_2.a.d, true, true)));
    let var_3 = vec2<i32>(24460i, -32448i);
    var var_4 = Struct_3(Struct_2(true, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -288f) - _wgslsmith_f_op_f32(-1355f + -1015f)) * _wgslsmith_f_op_f32(ceil(881f)))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(~arg_2.b.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, arg_1.x, 0i), u_input.d)), reverseBits(~30830i)), 1i, -arg_2.a.c, any(select(select(vec4<bool>(false, var_1.x, false, arg_2.b.d), vec4<bool>(false, false, false, true), arg_2.b.d), select(vec4<bool>(true, true, var_1.x, arg_2.b.d), vec4<bool>(true, true, false, false), vec4<bool>(var_1.x, var_1.x, false, arg_2.a.d)), select(vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, arg_2.a.d, var_1.x, arg_2.b.d), vec4<bool>(arg_2.a.d, arg_2.b.d, false, var_1.x))))));
    return var_4.a.c;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    var var_0 = ~(~u_input.a.x);
    return -1951f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(false, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(u_input.c, u_input.d.wwz, Struct_4(Struct_1(-2147483647i, u_input.c, u_input.c, false), Struct_1(1i, u_input.d.x, 15691i, false), u_input.a.wyx))), vec4<bool>(true, true, true, true), Struct_3(Struct_2(true, true, -380f), Struct_1(u_input.d.x, u_input.d.x, u_input.c, true))))))));
    var var_1 = false;
    var var_2 = u_input.a.zz;
    var_1 = false;
    let var_3 = true;
    return Struct_1(1i, -1i, u_input.c >> (firstLeadingBit(~(17694u ^ var_2.x)) % 32u), var_0.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = select(arg_1, vec3<bool>(~u_input.c < u_input.c, !all(!arg_1), true), arg_1);
    var var_1 = Struct_1(1i, -4343i, u_input.c, true);
    var_1 = Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.d.wxz << (arg_0 % vec3<u32>(32u)), -vec3<i32>(-24546i, 2147483647i, 2147483647i) | vec3<i32>(var_1.b, var_1.a, u_input.d.x))), var_1.b, ~(-1i), var_1.d);
    var_1 = func_2();
    var var_2 = select(~arg_0.yz << (~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.b, 15251u, 1u, 4428u)), ~1u) % vec2<u32>(32u)), select(_wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.zy), _wgslsmith_div_vec2_u32(~vec2<u32>(25715u, arg_0.x), reverseBits(vec2<u32>(1u, 102862u))), all(select(var_0, var_0, var_0))) ^ (~max(vec2<u32>(1u, u_input.a.x), u_input.a.xz) >> (vec2<u32>(~33455u, ~u_input.b) % vec2<u32>(32u))), select(arg_1.yz, vec2<bool>((arg_2 && arg_1.x) == true, !(arg_1.x || false)), !(!select(var_0.yz, vec2<bool>(false, false), arg_1.zz))));
    return Struct_3(arg_3, Struct_1(var_1.a, _wgslsmith_mod_i32(u_input.d.x, -2147483647i), ~((var_1.a ^ var_1.a) << (16510u % 32u)), !(firstTrailingBit(1i) >= func_2().c)));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(abs(1u), u_input.b);
    let var_1 = !(!all(!(!vec3<bool>(false, true, arg_2.d))));
    let var_2 = vec2<f32>(arg_1.a.a.c, func_1(u_input.a.ywz, !vec3<bool>(func_2().d, all(vec3<bool>(false, true, var_1)), arg_1.a.a.c <= arg_1.c.a.c), func_2().d, Struct_2(false, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1536f - arg_1.a.a.c)))).a.c);
    var var_3 = u_input.a.zz;
    var var_4 = arg_1;
    return Struct_1(1i, -_wgslsmith_mult_i32(reverseBits(_wgslsmith_sub_i32(1i, arg_2.c)), var_4.c.b.b), -14892i, any(vec2<bool>(!var_4.b.x, !any(vec2<bool>(var_1, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(Struct_3(Struct_2(any(vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(537f, -771f)))), func_5(_wgslsmith_f_op_f32(floor(-1383f)) > -1080f, Struct_5(func_1(u_input.a.wzx, vec3<bool>(true, true, false), true, Struct_2(true, false, -1114f)), vec2<bool>(true, true), func_1(u_input.a.xzy, vec3<bool>(false, true, true), true, Struct_2(true, false, -493f)), func_1(u_input.a.yyy, vec3<bool>(false, true, false), false, Struct_2(false, false, 122f)).a), func_1(reverseBits(u_input.a.zwx), vec3<bool>(true, false, false), any(vec2<bool>(true, true)), func_1(vec3<u32>(1u, 36451u, 0u), vec3<bool>(true, true, true), false, Struct_2(false, true, 720f)).a).b)), vec2<bool>(true, true), func_1(_wgslsmith_mod_vec3_u32(u_input.a.zxw, vec3<u32>(34800u, u_input.a.x ^ u_input.b, ~u_input.b)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), !(func_2().d || true), func_1(_wgslsmith_div_vec3_u32(abs(u_input.a.xyw), _wgslsmith_clamp_vec3_u32(u_input.a.yxx, vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(16850u, u_input.a.x, u_input.b))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), true, func_1(abs(vec3<u32>(0u, 4294967295u, 0u)), vec3<bool>(true, false, false), true, func_1(u_input.a.wzz, vec3<bool>(false, false, false), false, Struct_2(false, false, -403f)).a).a).a), Struct_2(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(157f, 2207f))))))));
    var var_1 = Struct_1(-2147483647i, _wgslsmith_sub_i32(50719i, u_input.d.x), _wgslsmith_sub_i32(u_input.d.x, ~(~_wgslsmith_mod_i32(var_0.c.b.b, 27890i))), !(!select(true, false, var_0.d.a)) || !(!(var_0.c.a.c != 479f)));
    var_1 = var_0.c.b;
    let var_2 = Struct_5(func_1(u_input.a.xwy, select(select(vec3<bool>(var_0.d.b, false, var_1.d), vec3<bool>(false, true, false), all(vec3<bool>(var_1.d, false, var_0.a.b.d))), vec3<bool>(true, true, true), var_0.b.x), var_1.d, var_0.d), !select(!var_0.b, !select(var_0.b, var_0.b, var_0.b), var_0.b), var_0.c, var_0.d);
    var_0 = Struct_5(var_0.c, vec2<bool>(func_2().d, var_1.d), var_2.a, func_1(u_input.a.yzy, !vec3<bool>(var_2.a.b.d, var_1.d, select(true, true, false)), true, func_1(~vec3<u32>(u_input.b, 4294967295u, u_input.a.x), select(!vec3<bool>(true, var_2.a.b.d, false), !vec3<bool>(true, var_0.d.a, var_0.d.b), var_2.d.c >= var_0.c.a.c), var_0.b.x | var_2.b.x, func_1(u_input.a.wzz, select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.a.b, false, var_0.b.x), vec3<bool>(false, var_2.b.x, true)), false | var_1.d, Struct_2(var_0.a.b.d, false, 873f)).a).a).a);
    let var_3 = vec2<i32>(~var_0.c.b.c, abs(_wgslsmith_add_i32(1i, -_wgslsmith_div_i32(-40520i, var_1.c))));
    var var_4 = -1748f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.a.xww, u_input.a.wwx))), 4294967295u);
}

