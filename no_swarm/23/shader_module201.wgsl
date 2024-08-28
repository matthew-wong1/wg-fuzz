struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    let var_0 = Struct_2(1i, Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true))), true), u_input.c, Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(true, true), false)))));
    var var_1 = select(_wgslsmith_clamp_vec3_i32(arg_1, var_0.c.wyw, vec3<i32>(-2147483647i, ~(-1i), ~1i)) << (~min(vec3<u32>(arg_3.x, arg_3.x, 0u) | vec3<u32>(arg_3.x, u_input.e, u_input.e), arg_3 << (vec3<u32>(arg_3.x, 27724u, arg_3.x) % vec3<u32>(32u))) % vec3<u32>(32u)), var_0.c.yzx, true);
    var var_2 = Struct_1(vec3<bool>(var_0.d.a.x, select(var_0.d.a.x, select(var_0.b.a.x, true, var_0.d.b), var_0.d.b), ~var_1.x <= u_input.b), true);
    let var_3 = _wgslsmith_add_i32(~(878i ^ (arg_2 >> (~u_input.e % 32u))), _wgslsmith_mod_i32(-1i & (var_1.x & (4997i >> (u_input.e % 32u))), ~(i32(-1i) * -2969i)));
    var var_4 = Struct_1(!select(vec3<bool>(!var_0.b.b, any(var_0.b.a), var_0.d.a.x), select(select(vec3<bool>(var_2.b, true, var_0.d.a.x), vec3<bool>(false, false, true), var_0.d.a), var_0.d.a, 9074u <= arg_3.x), var_0.d.a.x), !(!any(var_2.a)));
    return _wgslsmith_clamp_i32(-23111i, _wgslsmith_dot_vec4_i32(~min(min(var_0.c, vec4<i32>(-32340i, 7696i, var_0.c.x, 5020i)), var_0.c | var_0.c), var_0.c), -_wgslsmith_sub_i32(arg_1.x, var_3));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1530f, -853f) * vec2<f32>(1860f, -1867f))), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(514i, 47830i, -69641i), vec3<i32>(u_input.c.x, u_input.d, 1i))), abs(firstTrailingBit(u_input.c.x)), vec3<u32>(1u, u_input.e, u_input.e) ^ vec3<u32>(u_input.e, arg_0.x, arg_0.x)), u_input.d), Struct_1(vec3<bool>(true, true, true), true), _wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(max(u_input.d, u_input.d), -u_input.b, u_input.c.x, 2147483647i)) << (~(~(~arg_0)) % vec4<u32>(32u)), Struct_1(vec3<bool>(false | any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false)), select(true, true, u_input.c.x != -2147483647i)), true));
    let var_1 = !var_0.d.a;
    var var_2 = false;
    var var_3 = ~_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(72u, u_input.e, arg_0.x, 1u)), abs(arg_0));
    var var_4 = ~(~_wgslsmith_mod_vec4_i32(reverseBits(u_input.c), vec4<i32>(u_input.b, u_input.a, i32(-1i) * -1i, 0i)));
    return Struct_1(select(!(!vec3<bool>(var_1.x, var_1.x, var_0.d.b)), var_0.b.a, !any(select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(false, var_0.d.b, var_0.b.a.x, false), vec4<bool>(var_0.b.b, var_1.x, var_0.d.a.x, false)))), true);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> vec4<bool> {
    let var_0 = 199f;
    let var_1 = Struct_2(_wgslsmith_mult_i32(arg_2, reverseBits(-15143i)), Struct_1(!vec3<bool>(arg_1.x, arg_3 > -54195i, arg_1.x), arg_1.x), -(u_input.c >> (select(~vec4<u32>(1u, 47536u, u_input.e, u_input.e), vec4<u32>(1u, 0u, u_input.e, 2746u), arg_2 < u_input.d) % vec4<u32>(32u))), func_2(~select(~vec4<u32>(50379u, 0u, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.e, 0u), false)));
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_4 = var_2.d;
    return vec4<bool>(all(vec2<bool>(true, true)), select(var_1.c.x, _wgslsmith_mult_i32(var_1.c.x, -9890i) | 0i, _wgslsmith_mult_i32(arg_2, u_input.a) != arg_2) >= _wgslsmith_mult_i32(-var_2.a, min(_wgslsmith_sub_i32(var_1.c.x, -2147483647i), -1i)), var_4.b, func_2(~countOneBits(vec4<u32>(19069u, u_input.e, 97957u, 1u) & vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-123f, _wgslsmith_f_op_f32(-1680f * 317f), _wgslsmith_f_op_f32(881f * 593f), _wgslsmith_f_op_f32(f32(-1f) * -2075f)), vec4<f32>(_wgslsmith_f_op_f32(-137f + -124f), -521f, _wgslsmith_div_f32(1000f, -1091f), _wgslsmith_f_op_f32(trunc(524f))))))));
    let var_1 = !select(select(func_1(u_input.c.zwy >> (vec3<u32>(10006u, 0u, u_input.e) % vec3<u32>(32u)), vec2<bool>(true, true), u_input.d, u_input.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), true), false), vec4<bool>(true, true, true, true), true);
    let var_2 = !func_2(~min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 26625u, 70226u, u_input.e), vec4<u32>(4294967295u, u_input.e, 6549u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(29495u, 43868u, 6493u, u_input.e), vec4<u32>(1u, 30822u, u_input.e, u_input.e)))).a;
    var var_3 = ~(-_wgslsmith_mod_vec4_i32(reverseBits(~u_input.c), u_input.c));
    var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b >> (countOneBits(select(u_input.e, 39009u, var_1.x)) % 32u), u_input.c.x | var_3.x, -(~min(2147483647i, u_input.c.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_3.yz, u_input.c.zz), _wgslsmith_sub_vec2_i32(u_input.c.yw & vec2<i32>(-17643i, -2147483647i), var_3.yw))), -vec4<i32>(abs(u_input.d << (0u % 32u)), 15165i, max(~(-2147483647i), ~0i), 2147483647i), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, _wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0, var_0), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(701f, -1684f, var_0.x, 766f))))))));
}

