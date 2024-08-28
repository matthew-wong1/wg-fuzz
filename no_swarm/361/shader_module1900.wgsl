struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<f32> {
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.a))))), firstTrailingBit(reverseBits(-vec4<i32>(u_input.b, u_input.b, arg_0.b.x, arg_0.b.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, -798f, -228f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(861f, arg_0.a, -1286f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.a, var_1.a, 949f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1179f, arg_0.a, arg_0.a) + vec3<f32>(arg_0.a, arg_0.a, -718f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, -1379f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, 179f, var_1.a))), !(!vec3<bool>(true, var_0, var_0))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1467f, 617f, -1017f), vec3<f32>(303f, arg_0.a, arg_0.a), arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a, arg_0.a, arg_0.a), vec3<f32>(-1146f, arg_0.a, 1789f)))), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_0.a, arg_0.b), u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(500f, arg_0.a, arg_0.a), vec3<f32>(arg_0.a, arg_0.a, -960f)))))))), _wgslsmith_clamp_u32(u_input.d.x, abs(31742u), 71717u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(113f, _wgslsmith_f_op_f32(arg_0.a - -521f)))), Struct_1(arg_0.a, ~(max(vec4<i32>(u_input.b, u_input.b, 27774i, arg_0.b.x), arg_0.b) >> (~vec4<u32>(49588u, 39719u, 63820u, 0u) % vec4<u32>(32u)))));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_0.a;
    var var_1 = arg_0.b;
    return var_0.x;
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(-769f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - -1778f)), _wgslsmith_f_op_f32(round(-891f)), _wgslsmith_f_op_f32(func_4(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2927f), vec4<i32>(2147483647i, -51259i, u_input.b, -29358i)), vec3<bool>(false, all(vec2<bool>(true, true)), u_input.b >= u_input.b)), vec3<i32>(-1i) * -(vec3<i32>(u_input.b, u_input.b, u_input.b) & vec3<i32>(-23477i, 2147483647i, 59630i)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -702f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.xxw, vec3<f32>(-1366f, var_0.x, var_0.x))) * var_0.ywx))), 19092u & (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 41401u) >> (vec3<u32>(u_input.c, u_input.c, 11712u) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, 1u, u_input.a)) & ~_wgslsmith_div_u32(u_input.c, u_input.a)), -678f, Struct_1(149f, vec4<i32>(u_input.b & ~u_input.b, 0i, 0i, func_2(func_2(Struct_1(962f, vec4<i32>(u_input.b, u_input.b, u_input.b, -30591i)), vec3<bool>(false, false, true)).d, vec3<bool>(true, true, true)).d.b.x)));
    var var_2 = vec4<f32>(931f, _wgslsmith_f_op_f32(trunc(var_1.a.x)), 262f, -1000f);
    var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(var_1.d.a + _wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-317f, var_0.x, false)), _wgslsmith_f_op_vec3_f32(func_3(var_1.d, 4294967295u)).x))), var_0.x, _wgslsmith_f_op_vec3_f32(func_3(func_2(var_1.d, vec3<bool>(true, false, false)).d, ~1u)).x)));
    var var_3 = _wgslsmith_sub_vec4_i32(max((vec4<i32>(-1i) * -var_1.d.b) >> (vec4<u32>(1u, u_input.c | var_1.b, 0u, var_1.b) % vec4<u32>(32u)), -firstTrailingBit(countOneBits(var_1.d.b))), vec4<i32>(_wgslsmith_add_i32(u_input.b << (0u % 32u), ~1i | -var_1.d.b.x), var_1.d.b.x ^ firstLeadingBit(max(u_input.b, var_1.d.b.x)), _wgslsmith_mult_i32(func_2(Struct_1(var_1.c, var_1.d.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))).d.b.x, func_2(var_1.d, vec3<bool>(false, true, true)).d.b.x), var_1.d.b.x << (u_input.a % 32u)));
    return 0u;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = Struct_1(1000f, ~(-_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.x, 1i, u_input.b, -31042i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(arg_1.x, u_input.a, 94619u, arg_1.x) % vec4<u32>(32u)), -vec4<i32>(u_input.b, 2885i, 20842i, 1i))));
    let var_1 = func_2(func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec4<i32>(1i, -2147483647i, u_input.b, var_0.b.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))).d, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true), vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, false)), arg_0.x > arg_0.x), select(true, true, true))).d, vec3<bool>(true, true, !all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))))).d;
    return abs(vec4<u32>(36547u, ~(~(~u_input.c)), _wgslsmith_sub_u32(35088u, reverseBits(arg_1.x)), _wgslsmith_mod_u32(4294967295u, 43681u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(select(u_input.b | u_input.b, firstLeadingBit(-48257i), true), -u_input.b >> (func_1() % 32u), u_input.b), u_input.d) >> (vec4<u32>(9736u, ~(u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(63752u, u_input.c, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) % 32u)), select(reverseBits(_wgslsmith_div_u32(u_input.d.x, 30832u)), 15856u, true), u_input.a) % vec4<u32>(32u));
    var_0 = min(vec4<u32>(~14090u & u_input.d.x, 4663u, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, u_input.d.x)), vec3<u32>(u_input.c, 5049u, u_input.c)), _wgslsmith_div_u32(max(28344u, u_input.d.x), u_input.c)) & vec4<u32>(func_1(), 0u, u_input.c, func_2(Struct_1(-452f, vec4<i32>(u_input.b, -8584i, u_input.b, -2147483647i)), vec3<bool>(true, true, true)).b), ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(4964u, 1u, u_input.d.x, u_input.a), vec4<u32>(u_input.d.x, 51050u, 49588u, 1u), vec4<bool>(true, false, false, true)), vec4<u32>(var_0.x, 46174u, 69631u, u_input.d.x) << (vec4<u32>(var_0.x, 28837u, var_0.x, var_0.x) % vec4<u32>(32u))) >> ((vec4<u32>(firstTrailingBit(u_input.d.x), ~var_0.x, u_input.a, ~22960u) << (~(~vec4<u32>(56933u, 0u, u_input.c, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-839f - 1963f), -662f))), -vec4<i32>(-46957i, 51246i, u_input.b, 35483i) >> ((~vec4<u32>(0u, u_input.c, var_0.x, 4294967295u) & abs(vec4<u32>(var_0.x, 59961u, u_input.a, var_0.x))) % vec4<u32>(32u))), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var_0 = vec4<u32>(var_1.b, var_1.b, 0u ^ _wgslsmith_add_u32(1766u >> (u_input.d.x % 32u), ~_wgslsmith_add_u32(var_1.b, 6486u)), countOneBits(28613u));
    var var_2 = func_2(func_2(Struct_1(var_1.a.x, vec4<i32>(_wgslsmith_add_i32(var_1.d.b.x, u_input.b), 28317i, _wgslsmith_clamp_i32(1i, 23380i, -2147483647i), 183i)), vec3<bool>(false, true, false)).d, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, true, false))));
    let var_3 = !vec2<bool>(!(true & all(vec3<bool>(true, false, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.a.xy))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.a.x)))), vec3<u32>(18797u, u_input.d.x, 49425u));
}

