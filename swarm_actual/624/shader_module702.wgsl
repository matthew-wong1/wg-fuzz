struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<bool>,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec2<f32>) -> i32 {
    return max(1i << (arg_2.x % 32u), -15952i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = arg_2.b.a != -15917i;
    let var_2 = vec4<bool>(any(!(!(!vec4<bool>(false, var_1, var_1, false)))), var_1, arg_1.a, false);
    var_0 = vec4<i32>(_wgslsmith_div_i32(arg_2.b.a, u_input.d.x), min(arg_1.b.x, var_0.x), arg_0.x, -65332i);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(-268f, 1120f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.b, _wgslsmith_f_op_f32(arg_2.b.b - 1108f)) * arg_2.a.b))));
    return select(select(select(var_2.yw, vec2<bool>(!var_1, !arg_1.a), false), vec2<bool>((var_2.x | false) & (u_input.c.x >= var_0.x), !all(var_2)), select(vec2<bool>(all(var_2), false), vec2<bool>(any(var_2.wyz), true), true)), select(vec2<bool>(func_3(var_0.yzz, Struct_4(arg_3.x, var_2.xx, Struct_3(true, vec2<i32>(1i, var_0.x), vec3<u32>(0u, 4294967295u, arg_3.x)), vec2<bool>(arg_1.a, arg_1.a)), vec2<u32>(0u, u_input.b), vec2<f32>(-226f, arg_2.b.b)) != 6747i, ~arg_3.x < ~57513u), vec2<bool>(true, false), vec2<bool>(true, true)), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_3(true, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -arg_2.wz, ~_wgslsmith_clamp_vec2_i32(arg_2.ww, vec2<i32>(-2147483647i, arg_2.x), vec2<i32>(-25136i, arg_1))), vec3<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, u_input.b), ~16981u), ~vec2<u32>(u_input.b, u_input.a.x)), 12501u));
    let var_1 = var_0;
    var var_2 = select(u_input.c, var_1.b, vec2<bool>(false, var_1.a));
    var var_3 = Struct_4(_wgslsmith_clamp_u32(~(~reverseBits(28729u)), var_1.c.x, u_input.a.x), func_4(abs(vec4<i32>(-2147483647i, -48909i, var_2.x, 2147483647i)), var_1, Struct_2(Struct_1(var_2.x, arg_0.x), Struct_1(func_3(vec3<i32>(var_0.b.x, 21798i, var_0.b.x), Struct_4(u_input.b, vec2<bool>(var_1.a, var_1.a), var_1, vec2<bool>(var_1.a, true)), u_input.a, arg_0.xy), _wgslsmith_f_op_f32(ceil(-3118f)))), countOneBits(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.c.x, 1u, 64605u), vec4<u32>(87335u, 25260u, 17642u, u_input.b))))), Struct_3(!var_0.a, -firstLeadingBit(-vec2<i32>(var_1.b.x, -5655i)), ~firstLeadingBit(vec3<u32>(var_1.c.x, u_input.a.x, 8750u))), select(vec2<bool>(var_1.a, true), vec2<bool>(!all(vec4<bool>(true, false, var_1.a, var_0.a)), all(!vec3<bool>(false, var_0.a, var_0.a))), !var_1.a));
    let var_4 = Struct_2(Struct_1(-34851i, 2166f), Struct_1(42435i, -1245f));
    return 803f;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_1(u_input.d.x, _wgslsmith_f_op_f32(1589f * -1296f));
    var_1 = Struct_1(u_input.d.x, var_1.b);
    var_1 = Struct_1(_wgslsmith_div_i32(~_wgslsmith_div_i32(u_input.c.x, var_1.a), _wgslsmith_div_i32(2147483647i, var_1.a)) & (-2147483647i ^ var_1.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, 655f, var_1.b), vec3<f32>(var_1.b, var_1.b, -330f))), 54875i, vec4<i32>(-2147483647i, _wgslsmith_div_i32(1i, -45227i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.d), -1i))))));
    var_1 = Struct_1(_wgslsmith_sub_i32(select(0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, var_1.a, -5238i, 1i), -vec4<i32>(25544i, var_1.a, u_input.d.x, -18299i)), var_0.x), 1621i >> (~u_input.a.x % 32u)), var_1.b);
    return Struct_1(-(~u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b)))) + _wgslsmith_f_op_f32(trunc(610f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2144f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, select(false, true, true))), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(false, true, true)), 0u != u_input.a.x, true)), vec3<bool>(false, max(reverseBits(-27337i), var_0.a) >= (i32(-1i) * -1i), any(vec4<bool>(select(false, true, false), true, false, true))));
    let var_2 = ~(~3558i);
    var_0 = func_1();
    let var_3 = Struct_3(!(_wgslsmith_mult_i32(var_0.a ^ var_2, abs(var_2)) == var_2), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12489i | u_input.d.x, -1i, 1i), vec3<i32>(1i, -1i, _wgslsmith_mod_i32(-1i, u_input.d.x))), u_input.d.x), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 84806u), vec3<u32>(u_input.a.x, 52313u, u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), firstTrailingBit(max(vec3<u32>(u_input.a.x, u_input.b, u_input.b), vec3<u32>(u_input.a.x, 28005u, 68130u))), vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 65973u), _wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 1u, u_input.b), vec4<u32>(27137u, u_input.a.x, u_input.b, 4294967295u))))));
    var_0 = Struct_1(reverseBits(i32(-1i) * -1i), 283f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.b, _wgslsmith_f_op_f32(floor(-928f)));
}

