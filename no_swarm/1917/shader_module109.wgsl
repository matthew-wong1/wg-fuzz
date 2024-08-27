struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_1(abs(_wgslsmith_sub_vec3_u32(countOneBits(reverseBits(vec3<u32>(u_input.e, 41912u, 14881u))), max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.e, 84550u), vec3<u32>(u_input.e, 4294967295u, u_input.e)), ~vec3<u32>(4294967295u, u_input.e, u_input.e)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -274f, 2728f, 2959f) + vec4<f32>(-2364f, -250f, -1092f, 648f)), vec4<f32>(-175f, -216f, -484f, -3196f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, 685f, 413f, -657f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-575f, -458f, -1730f, -1996f), vec4<f32>(-1352f, 1469f, -323f, 452f)) + vec4<f32>(1f, 1f, 1f, 1f)))), select(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), (~2147483647i < ~u_input.b) && (841f <= _wgslsmith_f_op_f32(floor(1068f)))));
    var_0 = Struct_1(var_0.a, var_0.b, all(vec4<bool>(any(select(vec3<bool>(false, true, var_0.c), vec3<bool>(true, var_0.c, false), true)), true, (u_input.e >= 68379u) && all(vec4<bool>(false, var_0.c, true, var_0.c)), (arg_0.x | u_input.a.x) > -2147483647i)));
    var_0 = Struct_1(min(~(~vec3<u32>(12000u, 31340u, 1u)), var_0.a), var_0.b, var_0.c);
    var var_1 = -arg_0;
    let var_2 = vec2<i32>(var_1.x, 2147483647i | _wgslsmith_dot_vec2_i32(select(~var_1.yx, u_input.a.xx, vec2<bool>(var_0.c, false)), abs(u_input.a.ww) ^ vec2<i32>(37107i, u_input.c)));
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_2(all(vec2<bool>(func_3(~vec4<i32>(2147483647i, 1i, 1i, arg_3.x)), true)), countOneBits(46126i), Struct_1(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, u_input.e, 8286u)), vec3<u32>(10384u, 4294967295u, ~arg_0)), vec4<f32>(_wgslsmith_f_op_f32(arg_1 * -1698f), _wgslsmith_f_op_f32(f32(-1f) * -1340f), -1274f, 658f), any(vec2<bool>(true, false))));
    var_0 = Struct_2(~_wgslsmith_dot_vec3_u32(var_0.c.a & var_0.c.a, vec3<u32>(var_0.c.a.x, u_input.e, 122171u)) > arg_0, 54007i, var_0.c);
    var_0 = Struct_2(all(vec2<bool>(false, all(!vec3<bool>(var_0.c.c, var_0.c.c, var_0.a)))), abs(8237i), Struct_1(~vec3<u32>(~0u, ~49727u, ~0u), var_0.c.b, var_0.c.c));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-189f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-819f, arg_2))))) * 1448f), -1553f));
    var_1 = 686f;
    return !(!select(vec2<bool>(var_0.a, all(vec2<bool>(true, false))), select(vec2<bool>(false, var_0.a), select(vec2<bool>(var_0.c.c, var_0.a), vec2<bool>(var_0.c.c, var_0.c.c), vec2<bool>(false, var_0.a)), var_0.a && true), any(!vec3<bool>(var_0.a, var_0.a, var_0.a))));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = u_input.a.xw;
    let var_1 = arg_0.c.a;
    let var_2 = _wgslsmith_div_vec4_i32(reverseBits(-vec4<i32>(~u_input.b, u_input.b, arg_0.b, _wgslsmith_add_i32(-1i, 7816i))), _wgslsmith_div_vec4_i32(~(~(u_input.a >> (vec4<u32>(1u, u_input.e, var_1.x, 30099u) % vec4<u32>(32u)))), firstLeadingBit(u_input.a)));
    let var_3 = Struct_2(all(vec4<bool>(false, u_input.b == 2147483647i, arg_0.a, false & !arg_0.c.c)), var_0.x, Struct_1(var_1, vec4<f32>(772f, 825f, arg_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1327f))), arg_0.c.c));
    let var_4 = _wgslsmith_f_op_f32(2005f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1374f)))) < 1f;
    return vec3<bool>(all(func_2(arg_0.c.a.x, _wgslsmith_f_op_f32(-var_3.c.b.x), _wgslsmith_f_op_f32(-arg_0.c.b.x), var_0)) != all(vec2<bool>(var_4 && arg_0.a, true)), false, !func_2(_wgslsmith_div_u32(reverseBits(u_input.e), var_3.c.a.x), arg_0.c.b.x, -2540f, -(vec2<i32>(arg_0.b, arg_0.b) << (arg_0.c.a.zy % vec2<u32>(32u)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), !func_1(Struct_2(false, u_input.d, Struct_1(vec3<u32>(61949u, u_input.e, 2150u), vec4<f32>(-2279f, 824f, 102f, -349f), false))), all(vec2<bool>(true, true))));
    var_0 = select(!vec3<bool>(!all(vec2<bool>(var_0.x, true)), true, !(!var_0.x)), !vec3<bool>(true, any(vec3<bool>(false, var_0.x, true)), u_input.c < _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-28991i, u_input.d, 1i, -2147483647i))), var_0.x);
    let var_1 = ~u_input.a.ww;
    let var_2 = Struct_2(var_0.x, ~(~(var_1.x & 23068i)) << (4294967295u % 32u), Struct_1(vec3<u32>(u_input.e, u_input.e, _wgslsmith_clamp_u32(max(u_input.e, 0u), u_input.e & 0u, select(u_input.e, u_input.e, var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-220f, -991f, _wgslsmith_div_f32(-1352f, -289f), _wgslsmith_f_op_f32(1238f - 1260f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, -1948f, -874f, 641f))), false)), !var_0.x));
    var var_3 = var_2.c.b.wzy;
    let var_4 = select(firstTrailingBit(4294967295u), ~(~(~u_input.e)), var_1.x <= -2147483647i) ^ u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(firstTrailingBit(reverseBits(~4294967295u)), abs(abs(_wgslsmith_dot_vec3_u32(var_2.c.a, var_2.c.a))), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.c.a.x), vec2<u32>(104129u, 4294967295u)), 1u)));
}

