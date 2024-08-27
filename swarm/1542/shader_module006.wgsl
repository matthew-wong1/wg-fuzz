struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.c, -806f, arg_1.b.c, arg_1.b.c)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.c, -151f, arg_1.b.c, arg_1.b.c) * vec4<f32>(2585f, arg_1.b.c, 760f, -226f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1323f, -366f, arg_1.b.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-685f, 679f, arg_1.b.a.x, 152f) * vec4<f32>(102f, arg_1.b.c, arg_1.b.c, 1304f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b.a.x, arg_1.b.c, arg_1.b.a.x, -224f), vec4<f32>(arg_1.b.c, -265f, arg_1.b.a.x, 611f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, arg_1.b.a.x, -600f, arg_1.b.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-790f, arg_1.b.c, arg_1.b.a.x, arg_1.b.c) * vec4<f32>(2152f, 292f, 1665f, 191f))))));
    let var_1 = ~reverseBits(countOneBits(u_input.e));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -877f))) * -311f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1301f)), _wgslsmith_f_op_f32(-var_0.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(firstLeadingBit(vec4<i32>(-1i) * -(~vec4<i32>(u_input.c.x, u_input.b.x, u_input.c.x, u_input.c.x))), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, -69068i), true);
    let var_1 = true;
    var var_2 = !select(!(!(!vec3<bool>(false, false, var_1))), vec3<bool>(var_1, var_1, all(vec2<bool>(true, var_1))), true);
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 4294967295u, 41698u, 1u) ^ vec4<u32>(u_input.a, u_input.d, u_input.e, 5913u), ~vec4<u32>(u_input.e, 1u, 53532u, u_input.e), any(var_2.zy)) << (vec4<u32>(~u_input.a, 0u, 1u, ~u_input.e) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(782u, 1u, select(15636u, 4294967295u, false), 18730u ^ u_input.a))), 5u)], Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-392f, 1443f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2027f) * vec2<f32>(191f, 996f))))), _wgslsmith_dot_vec2_i32(select(var_0.ww & u_input.b, -u_input.b, vec2<bool>(var_2.x, var_2.x)), var_0.xw >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(func_3(false, Struct_3(Struct_1(var_0.x, var_0.x, u_input.e), Struct_2(vec2<f32>(1439f, -253f), var_0.x, 998f)), !select(vec2<bool>(true, true), vec2<bool>(var_1, true), var_1)))));
    var_0 = -vec4<i32>(var_3.a.b, _wgslsmith_dot_vec3_i32(min(vec3<i32>(1i, 2147483647i, 2147483647i), ~var_0.xzw), vec3<i32>(u_input.c.x, -u_input.b.x, _wgslsmith_sub_i32(50368i, -1658i))), abs(-1i), i32(-1i) * -2147483647i);
    return var_3.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_5) -> vec2<u32> {
    let var_0 = func_2();
    let var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1468f, 1000f))))));
    let var_3 = func_2();
    var var_4 = vec3<bool>(true, !(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !(all(vec2<bool>(true, true)) || any(vec3<bool>(true, true, true))));
    return ~(abs(max(vec2<u32>(1u, 40189u), vec2<u32>(0u, var_3.c))) | arg_0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = u_input.c;
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.d, 52642u)), _wgslsmith_sub_vec2_u32(func_1(vec3<u32>(16261u, u_input.a, u_input.a), Struct_5(vec2<u32>(1u, 16511u))), ~vec2<u32>(26343u, u_input.a))), _wgslsmith_clamp_vec2_u32(select(countOneBits(vec2<u32>(4294967295u, u_input.d)), func_1(vec3<u32>(u_input.a, u_input.d, u_input.a), Struct_5(vec2<u32>(u_input.d, u_input.d))), true), vec2<u32>(12871u & u_input.d, func_2().c), vec2<u32>(7268u, _wgslsmith_mod_u32(u_input.d, 4294967295u))));
    let var_2 = Struct_3(Struct_1(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.x, ~45189i, 1i, -13784i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, -1i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, var_0.x, -1629i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -13845i, 2147483647i, -25152i), vec4<i32>(var_0.x, u_input.b.x, -2147483647i, var_0.x), vec4<i32>(-39365i, 18059i, -1i, u_input.b.x)))), var_1), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(337f, -666f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2062f, -1247f)))), 1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), -623f))));
    var var_3 = vec2<u32>(var_2.a.c, u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1694f, var_2.b.c, 306f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, -1862f, var_2.b.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.a.x, -316f, 207f))))), ~select(vec4<i32>(_wgslsmith_mult_i32(var_0.x, -2147483647i), 2147483647i, u_input.b.x, -u_input.b.x), vec4<i32>(~var_2.a.a, -var_0.x, -12801i, abs(var_2.a.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), ~1i, vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_2.a.b, u_input.b.x, u_input.b.x)), vec3<i32>(19573i, 30257i, 1i))), func_2().a, var_2.b.b));
}

