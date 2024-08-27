struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(13709i, -1i, 20002i), true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = countOneBits(_wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c.yz << (u_input.d % vec2<u32>(32u)), abs(u_input.d))), select(_wgslsmith_add_u32(min(56237u, 0u), u_input.d.x), ~max(u_input.d.x, 9351u), any(vec3<bool>(arg_0.a, true, global0.b)))));
    var_0 = u_input.d.x;
    let var_1 = min(1u << ((u_input.c.x >> (~1u % 32u)) % 32u), ~1u);
    global0 = Struct_2(vec3<i32>(-_wgslsmith_sub_i32(-global0.a.x, ~arg_0.c.x), _wgslsmith_dot_vec4_i32(select(arg_0.c, arg_0.c, arg_0.a), countOneBits(select(vec4<i32>(global0.a.x, global0.a.x, u_input.b, global0.a.x), arg_0.c, true))), -global0.a.x), any(vec2<bool>(true, true)));
    var var_2 = ~((~_wgslsmith_add_vec3_i32(arg_0.c.zwz, vec3<i32>(38048i, 2147483647i, 2147483647i)) ^ abs(arg_0.c.ywx ^ arg_0.c.yzz)) & max(vec3<i32>(u_input.b, 27401i, -103676i), vec3<i32>(-24736i, abs(-1i), -21686i)));
    return var_1;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    return select(~firstLeadingBit(vec4<u32>(func_3(Struct_1(global0.b, vec3<f32>(-210f, arg_0, arg_0), vec4<i32>(-43465i, -72247i, 0i, -1i), true, vec3<f32>(arg_0, 1000f, arg_0))), 1u, ~40534u, 45630u)), abs(select(~(vec4<u32>(53148u, u_input.d.x, u_input.c.x, 0u) | vec4<u32>(u_input.c.x, 1u, 16787u, u_input.c.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1554u, u_input.c.x, 0u, u_input.c.x), ~vec4<u32>(19592u, 71698u, 62514u, u_input.c.x)), select(!vec4<bool>(false, global0.b, true, false), vec4<bool>(global0.b, global0.b, true, true), !vec4<bool>(global0.b, global0.b, global0.b, global0.b)))), !any(vec4<bool>(true, false, false, global0.b)) | (global0.b && all(select(vec3<bool>(global0.b, global0.b, true), vec3<bool>(false, global0.b, global0.b), global0.b))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1.a.x;
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -14632i, arg_1.a.x), arg_1.a) | ~vec3<i32>(0i, -1677i, 2147483647i), -vec3<i32>(global0.a.x, 74874i, -15682i)), vec3<i32>(global0.a.x, -(arg_1.a.x ^ u_input.b), reverseBits(_wgslsmith_div_i32(1982i, 1i)))), true);
    var_0 = var_1.a.x;
    let var_2 = -1000f;
    global0 = Struct_2(arg_1.a, !global0.b);
    return Struct_2(~abs(vec3<i32>(2147483647i, u_input.b, global0.a.x) | countOneBits(arg_1.a)), var_1.b);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_4(~func_2(-1496f) | reverseBits(vec4<u32>(u_input.d.x, 20159u, max(u_input.d.x, 0u), _wgslsmith_div_u32(u_input.d.x, u_input.d.x))), Struct_2(reverseBits(min(global0.a, vec3<i32>(global0.a.x, -1i, u_input.b))), true));
    let var_1 = select(select(!vec2<bool>(all(vec3<bool>(global0.b, false, global0.b)), true), vec2<bool>(any(select(vec2<bool>(false, global0.b), vec2<bool>(true, false), false)), all(!vec3<bool>(var_0.b, global0.b, var_0.b))), !(!vec2<bool>(var_0.b, var_0.b))), vec2<bool>(true, false), select(select(vec2<bool>(true, var_0.b != false), !(!vec2<bool>(true, global0.b)), !vec2<bool>(var_0.b, true)), vec2<bool>(!select(true, false, true), global0.b), true && select(all(vec2<bool>(var_0.b, true)), var_0.b != var_0.b, global0.b)));
    let var_2 = vec4<u32>(~_wgslsmith_sub_u32(u_input.d.x, u_input.c.x), ~u_input.d.x, 0u, 31425u ^ ~func_2(_wgslsmith_f_op_f32(trunc(811f))).x);
    var var_3 = !(!var_1);
    global0 = func_4(vec4<u32>(4294967295u, ~u_input.c.x, var_2.x, _wgslsmith_mod_u32(var_2.x, u_input.d.x)), Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, global0.a.x), reverseBits(vec2<i32>(0i, u_input.b))), abs(-var_0.a.x), arg_0), global0.b));
    return ~(~firstLeadingBit(~9428u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 760f;
    let var_1 = select(_wgslsmith_sub_i32(global0.a.x, u_input.a), -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1i, 1i), vec3<i32>(global0.a.x, 31668i, -23275i), vec3<i32>(-40527i, u_input.a, u_input.b)) | -global0.a, _wgslsmith_sub_vec3_i32(select(global0.a, vec3<i32>(global0.a.x, u_input.a, u_input.a), vec3<bool>(true, global0.b, false)), global0.a)), global0.b);
    let var_2 = Struct_1((func_1(1i) <= u_input.d.x) && global0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, -1307f, 1555f)), vec3<f32>(_wgslsmith_f_op_f32(var_0 - -1079f), 1519f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1026f) * _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(var_1, u_input.b, -1i, 1i), vec4<i32>(-25041i, global0.a.x, 0i, var_1)) << (_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 0u, 1u, 4294967295u), vec4<u32>(107545u, 1u, u_input.c.x, u_input.d.x)), vec4<u32>(0u, 8480u, 58762u, u_input.c.x)) % vec4<u32>(32u)), firstTrailingBit(select(vec4<i32>(-59854i, -2147483647i, 33670i, -4563i) & vec4<i32>(u_input.a, -1i, u_input.a, global0.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, 17613i, var_1, 0i), vec4<i32>(-18160i, -2147483647i, -17582i, u_input.b)), false)), ~abs(-vec4<i32>(global0.a.x, -48038i, global0.a.x, var_1))), global0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, 795f, var_0) + vec3<f32>(var_0, -247f, -1201f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0))))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-487f * 1157f), _wgslsmith_f_op_f32(-var_0))) * -982f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)) - _wgslsmith_f_op_f32(round(var_0))), 496f)), var_0);
    let var_4 = select(vec3<bool>(false, false, ~_wgslsmith_div_u32(8844u, 59790u) < u_input.c.x), !(!(!vec3<bool>(false, var_2.d, global0.b))), var_2.d);
    var var_5 = Struct_1(0i >= ~func_4(vec4<u32>(4294967295u, u_input.d.x, 34331u, 0u) & vec4<u32>(19624u, 1u, u_input.c.x, 88294u), Struct_2(global0.a, global0.b)).a.x, vec3<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x - var_2.b.x), _wgslsmith_f_op_f32(-312f - var_2.e.x), all(vec4<bool>(false, global0.b, var_4.x, global0.b))))), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), var_2.c, true & !(all(vec4<bool>(global0.b, true, false, true)) & any(var_4.xz)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1530f, var_3.x), var_3.x, true)) + _wgslsmith_f_op_f32(trunc(2094f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) * -829f)), var_0));
    let var_6 = _wgslsmith_f_op_f32(exp2(var_0));
    global0 = Struct_2(global0.a, !(func_4(vec4<u32>(0u, u_input.d.x, 0u, u_input.c.x), Struct_2(vec3<i32>(-8114i, 2487i, -26424i), true)).b & (true && var_4.x)) && !(_wgslsmith_f_op_f32(-var_3.x) >= _wgslsmith_div_f32(var_6, var_2.b.x)));
    let var_7 = all(vec3<bool>(select(var_2.a, var_5.d, var_4.x), true && !(true && var_2.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 40583u, u_input.c.x, 33503u), vec4<u32>(15651u, u_input.c.x, 0u, 1u) ^ vec4<u32>(4294967295u, 35181u, u_input.c.x, 31178u)) >= max(1u, u_input.c.x | 65754u)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(u_input.c.x, 32009u, ~u_input.c.x)), u_input.c.x, abs(~min(~vec3<u32>(118050u, 4294967295u, u_input.d.x), vec3<u32>(4294967295u, u_input.d.x, u_input.d.x))));
}

