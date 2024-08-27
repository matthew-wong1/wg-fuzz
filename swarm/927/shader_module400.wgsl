struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: f32 = -994f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = all(vec4<bool>(false, true, all(vec2<bool>(true, true)), true));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(486f, -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1396f)), -1153f) + 1402f), -680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(668f - -1263f))))), any(!(!(!vec2<bool>(var_0, var_0)))), select(false, true, false));
    global0 = vec3<i32>(-1i) * -vec3<i32>(0i, ~global0.x | global0.x, _wgslsmith_add_i32(-2147483647i & u_input.a.x, -41618i));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, -991f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1457f, 214f, u_input.b.x != 10528u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.x)) * -1590f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(-var_1.a.x))), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.x, -469f, var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))), all(vec2<bool>(all(vec3<bool>(var_1.c, false, var_1.c)), !var_0)), all(vec2<bool>(var_0 != var_0, false))), select(vec3<i32>(_wgslsmith_mod_i32(46118i, -64443i), _wgslsmith_dot_vec2_i32(vec2<i32>(16324i, global0.x), vec2<i32>(u_input.a.x, -12736i)), i32(-1i) * -1i), vec3<i32>(60929i, reverseBits(global0.x), 2147483647i), !(!var_0)) >> (_wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 37430u, 916u), vec3<u32>(u_input.b.x, 4294967295u, u_input.c.x))), ~vec3<u32>(4294967295u, 4294967295u, u_input.b.x), ~(~vec3<u32>(u_input.c.x, 1u, 4294967295u))) % vec3<u32>(32u)), 90871u, Struct_1(var_1.a, all(select(select(vec3<bool>(true, var_0, var_1.c), vec3<bool>(var_0, true, false), var_1.c), !vec3<bool>(var_1.c, false, true), var_1.b)), !(_wgslsmith_f_op_f32(ceil(var_1.a.x)) == -498f)));
    return reverseBits(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(reverseBits(2147483647i), var_2.c.x | 2147483647i))) | 1i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = (vec4<i32>(func_3(), abs(reverseBits(-60481i)), func_3(), 31091i) ^ ~select(min(vec4<i32>(2147483647i, -2147483647i, -12277i, global0.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, global0.x)), vec4<i32>(16773i, 2147483647i, 31965i, -2147483647i), any(vec2<bool>(false, true)))) ^ vec4<i32>(5563i, i32(-1i) * -(global0.x >> (4294967295u % 32u)), _wgslsmith_mod_i32(~1i, -2147483647i), global0.x);
    var var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~42003u, select(u_input.c.x, u_input.b.x, true)), ~u_input.b);
    var var_2 = select(countOneBits(u_input.a), -min(_wgslsmith_add_vec2_i32(-vec2<i32>(var_0.x, var_0.x), abs(var_0.xy)), -max(vec2<i32>(u_input.a.x, 65698i), var_0.xz)), select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), true), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), false), vec2<bool>(true, true), true), u_input.a.x < -2147483647i));
    var var_3 = u_input.b.x;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(f32(-1f) * -539f)), _wgslsmith_div_f32(465f, -1000f), -1103f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1329f + 491f), _wgslsmith_f_op_f32(f32(-1f) * -1766f))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true)))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec3<bool>(false, false, true))))));
    return Struct_1(var_4.a, select(!(!var_4.b), !all(!vec2<bool>(var_4.b, false)), all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, var_4.c, false, true), vec4<bool>(var_4.b, true, true, var_4.b), var_4.c), select(vec4<bool>(false, var_4.c, true, var_4.b), vec4<bool>(true, var_4.c, false, false), var_4.c)))), var_4.a.x > 257f);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(global0.zz, _wgslsmith_div_vec2_i32(-(~vec2<i32>(u_input.a.x, global0.x)), _wgslsmith_sub_vec2_i32(firstLeadingBit(arg_0), vec2<i32>(global0.x, arg_1)))) & firstTrailingBit(arg_1 ^ _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a), vec2<i32>(1i, global0.x)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_3)))) * _wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(step(-822f, 470f)))))), -200f);
    global1 = -538f;
    let var_1 = true;
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-948f - arg_2.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1045f))) * -781f) - arg_2.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.a.x, 76589i), ~reverseBits(-45766i), func_2(vec3<i32>(-709i, 19541i, ~(-u_input.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(570f))))))));
    let var_0 = ~4294967295u;
    var var_1 = Struct_3(firstTrailingBit(_wgslsmith_mult_vec2_i32(-(global0.xy << (vec2<u32>(4294967295u, arg_1) % vec2<u32>(32u))), firstTrailingBit(-vec2<i32>(29783i, global0.x)))), select(vec4<bool>(select(any(vec4<bool>(false, true, true, true)), u_input.c.x <= 0u, true), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), any(vec3<bool>(true, true, true))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), func_2(vec3<i32>(-59242i, u_input.a.x, 2147483647i)).b), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(all(vec4<bool>(true, false, true, true)), true, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-409f * 2075f), _wgslsmith_f_op_f32(-970f * 614f), true)), _wgslsmith_div_f32(-619f, -621f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1536f)))), true, 0i != (i32(-1i) * -global0.x)));
    global1 = func_2(max(max(firstTrailingBit(vec3<i32>(var_1.a.x, 0i, global0.x) | vec3<i32>(-1i, 0i, -2147483647i)), vec3<i32>(38221i, 1i, -1007i)), vec3<i32>(5644i, global0.x, -5192i))).a.x;
    global0 = ~(-abs(-vec3<i32>(0i, -20895i, -2545i)));
    return ~(~(-firstTrailingBit(vec3<i32>(var_1.a.x, var_1.a.x, u_input.a.x)))) >> (vec3<u32>(1u, 1u, var_0) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(~1i, abs(-2147483647i), _wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(2147483647i), _wgslsmith_div_i32(-50815i, global0.x)), 51000i ^ ~u_input.a.x)) ^ ~countOneBits(abs(func_1(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), 1u)));
    global0 = -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-14558i, u_input.a.x, global0.x) << (vec3<u32>(1u, 18962u, u_input.b.x) % vec3<u32>(32u))) | vec3<i32>(1i, global0.x | -22344i, ~37723i), ~(~vec3<i32>(-1i, -91537i, u_input.a.x)) << (vec3<u32>(u_input.b.x, u_input.c.x, ~20949u) % vec3<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = countOneBits(vec3<i32>(select(-2147483647i, 3555i, false), -global0.x, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i, 31520i))) & _wgslsmith_mod_vec3_i32(vec3<i32>(29859i, 55819i, global0.x) & vec3<i32>(global0.x, 32886i, global0.x), vec3<i32>(2147483647i, global0.x, 1i) & vec3<i32>(global0.x, u_input.a.x, -2147483647i))) | (~vec3<i32>(u_input.a.x, global0.x, 2147483647i) << (~vec3<u32>(~0u, u_input.b.x, 21292u) % vec3<u32>(32u)));
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, -1734f))))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(max(273f, 2526f))), 1505f)), _wgslsmith_dot_vec2_i32(global0.xx, global0.yy), _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.c.x), vec3<u32>(4294967295u, 0u, u_input.c.x))) | 37409u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(-905f, 2021f, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -659f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(170f, -508f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-610f, -1221f))))));
}

