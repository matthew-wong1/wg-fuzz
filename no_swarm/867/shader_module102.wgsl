struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global1: vec2<u32>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(25636u, 1u, 0u, 31722u), vec2<bool>(false, false), vec3<bool>(true, true, true), -24710i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = min(u_input.c, abs(vec2<u32>(50111u >> (~u_input.c.x % 32u), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c.x, u_input.a), global1.x))));
    var var_0 = Struct_1(vec4<u32>(~global2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~global2.a.x, 4294967295u, _wgslsmith_mod_u32(0u, global2.a.x)), ~(~vec3<u32>(global1.x, global1.x, 1u))), min(global1.x, _wgslsmith_mult_u32(global1.x & u_input.a, 41823u)), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, countOneBits(global2.a.x), _wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(1u, 0u, u_input.a, 0u)), global1.x), global2.a)), select(!global2.b, vec2<bool>(false, true), !(!global2.c.xx)), global2.c, max(1i ^ global2.d, 0i >> (1u % 32u)));
    let var_1 = Struct_1(~var_0.a, var_0.c.yy, vec3<bool>(false, true, ~(~2035u) >= _wgslsmith_add_u32(1u, min(global2.a.x, global2.a.x))), ~22850i);
    let var_2 = _wgslsmith_mult_vec2_u32(countOneBits(var_1.a.yz), var_0.a.yz);
    let var_3 = var_1;
    return ~vec4<u32>(~(113818u | var_2.x) | countOneBits(51552u), abs(var_2.x), ~(~global1.x), _wgslsmith_add_u32(var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, global1.x, 21635u, 0u), vec4<u32>(var_0.a.x, global1.x, 38853u, 70044u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(countOneBits(_wgslsmith_mult_vec4_u32(~arg_2, max(vec4<u32>(0u, arg_2.x, 0u, global2.a.x), vec4<u32>(28085u, 4294967295u, u_input.a, 35496u)))), arg_1.c.zy, vec3<bool>(false, true, arg_0.b.x), 0i);
    var_0 = arg_1;
    let var_1 = Struct_1(arg_2, select(arg_1.b, arg_1.c.xx, all(!vec4<bool>(var_0.c.x, var_0.c.x, arg_1.c.x, true))), vec3<bool>(any(arg_0.c.xy), var_0.c.x, true || !any(vec4<bool>(false, arg_0.b.x, false, true))), -abs(abs(arg_0.d)));
    let var_2 = Struct_1((func_3() >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24011u, arg_0.a.x, u_input.a, 4294967295u), vec4<u32>(u_input.c.x, 37366u, arg_1.a.x, global1.x)), arg_2) % vec4<u32>(32u))) | select(_wgslsmith_clamp_vec4_u32(firstTrailingBit(global2.a), vec4<u32>(4294967295u, 0u, 4294967295u, arg_2.x), ~vec4<u32>(arg_0.a.x, 4294967295u, arg_2.x, 0u)), min(var_0.a, var_0.a), var_1.b.x), select(select(select(select(arg_0.c.xx, global2.c.zy, vec2<bool>(arg_0.b.x, var_0.c.x)), var_0.b, select(global2.b, vec2<bool>(false, true), var_1.b)), !select(vec2<bool>(false, false), global2.c.yz, var_0.c.x), !(!vec2<bool>(arg_1.b.x, false))), select(select(arg_1.b, var_0.b, 25716u <= global1.x), !var_1.c.xx, true), select(!(!vec2<bool>(var_0.c.x, arg_1.c.x)), arg_0.b, select(vec2<bool>(arg_1.c.x, false), arg_1.b, !vec2<bool>(false, var_1.b.x)))), var_0.c, arg_0.d);
    return arg_3.x;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = global2.a.xy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1006f, _wgslsmith_f_op_f32(func_4(arg_0, Struct_1(func_3(), select(vec2<bool>(false, arg_0.c.x), global2.c.yx, global2.c.x), global2.c, 1i), global2.a & arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(504f, 1062f, 404f), vec3<f32>(-107f, -427f, -1052f))))))));
    var var_2 = ~min(reverseBits(~vec4<i32>(0i, 35204i, global2.d, u_input.b.x)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global0.x, arg_0.d, global0.x, 27493i)) & -vec4<i32>(u_input.b.x, global0.x, -1i, global0.x), abs(max(vec4<i32>(global0.x, u_input.b.x, 42638i, global0.x), vec4<i32>(0i, arg_0.d, -2147483647i, -10575i)))));
    var var_3 = _wgslsmith_f_op_f32(-1000f * 1000f);
    var var_4 = -vec4<i32>(_wgslsmith_div_i32(global2.d, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-18655i, u_input.b.x), var_2.x)), _wgslsmith_div_i32(-u_input.b.x, countOneBits(_wgslsmith_mult_i32(4723i, 68620i))), ~(-2147483647i), var_2.x);
    return reverseBits(_wgslsmith_sub_vec2_i32(var_4.yw, vec2<i32>(reverseBits(global2.d), select(arg_0.d, ~(-29606i), true))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: u32) -> vec3<f32> {
    var var_0 = arg_0.a.wwz;
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, arg_1.x), var_0.xx), u_input.c.x) | ~u_input.c, ~(vec2<u32>(37438u, var_0.x) & vec2<u32>(var_0.x, var_0.x)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, global2.a.x), vec2<u32>(69158u, var_0.x)) % vec2<u32>(32u))), ~(~arg_1.zw), countOneBits(~(~u_input.c)));
    let var_1 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.x, -1i, 2147483647i) ^ vec3<i32>(global0.x, u_input.b.x, global0.x)), -abs(vec3<i32>(global2.d, 2147483647i, -54383i) << (arg_1.xxx % vec3<u32>(32u)))) & -select(~(~vec3<i32>(arg_0.d, global2.d, 1i)), -select(vec3<i32>(global0.x, u_input.b.x, -37648i), vec3<i32>(-66723i, 58511i, -11431i), false), arg_0.c.x);
    let var_2 = reverseBits(max(_wgslsmith_dot_vec2_i32(var_1.yy, func_2(Struct_1(vec4<u32>(0u, 1u, 77665u, 1u), arg_0.b, global2.c, var_1.x))), max(-global2.d, -29821i)));
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(trunc(arg_2.yzx)), global2.c)) * arg_2.yzx)))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)));
    var var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, 16224u, u_input.a, 30839u)), select(~vec4<u32>(global2.a.x, 0u, 40385u, u_input.a), global2.a, !vec4<bool>(global2.c.x, false, global2.b.x, arg_0))), global2.b, global2.c, global2.d);
    let var_2 = Struct_1(~var_1.a, global2.c.yy, var_1.c, _wgslsmith_clamp_i32(global0.x, abs(var_1.d >> (1u % 32u)), 1i) ^ _wgslsmith_clamp_i32(~(~var_1.d), 2147483647i, firstLeadingBit(u_input.b.x)));
    return Struct_1(select(global2.a, ~(~vec4<u32>(global1.x, 50562u, 41041u, 0u)), ~(var_2.a.x ^ var_1.a.x) <= firstTrailingBit(select(4294967295u, 7127u, var_1.b.x))), select(select(select(select(var_2.b, vec2<bool>(true, var_1.c.x), global2.c.x), var_2.c.zx, all(vec4<bool>(false, arg_0, false, var_1.c.x))), select(global2.c.yz, !var_1.c.zx, vec2<bool>(true, arg_0)), var_1.c.x), var_1.c.zy, true), var_2.c, ~1i);
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> i32 {
    return -(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-1i, global2.d, 4601i), vec3<i32>(global2.d, global2.d, 4391i), vec3<bool>(true, global2.c.x, arg_1.b.x)), vec3<i32>(8352i, 62293i, -8016i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 1i, global2.d), vec3<i32>(-1i, 45632i, 2147483647i))) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~global2.a.yy);
    let var_0 = _wgslsmith_mult_i32(-1i, func_6(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, 1000f)))), func_5(false, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(global2.a, global2.c.zy, global2.c, u_input.b.x), vec4<u32>(global1.x, global1.x, global2.a.x, u_input.a), vec4<f32>(-553f, 287f, 1390f, -361f), 100706u))))), _wgslsmith_div_u32(u_input.c.x, global1.x)));
    global0 = (vec2<i32>(var_0, -14882i) >> ((global2.a.xw << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))) << (~(~firstTrailingBit(countOneBits(vec2<u32>(24563u, 0u)))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(176f, -812f, 338f) + vec3<f32>(-240f, 2323f, -722f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(864f, 527f, 960f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -948f, -1518f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1171f, 941f, 1159f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-142f, -284f, -154f) - vec3<f32>(576f, 279f, -887f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-839f, -1146f, 178f) - vec3<f32>(591f, -2583f, -352f))))));
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.c), vec2<u32>(~33738u, _wgslsmith_mod_u32(global2.a.x, global1.x)), firstLeadingBit(vec2<u32>(3074u, global1.x) << (vec2<u32>(90139u, 0u) % vec2<u32>(32u)))) | ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) ^ global2.a.wy, u_input.c), _wgslsmith_mult_vec2_u32(countOneBits(~vec2<u32>(u_input.a, u_input.c.x)), ~vec2<u32>(u_input.c.x, global1.x)) | global2.a.xy, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 2226f));
}

