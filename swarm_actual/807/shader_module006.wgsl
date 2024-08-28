struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<u32, 5>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = ~(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(10076u, 5u)], 62096u), vec2<u32>(17499u, 29034u)), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 117677u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 1u))), 1u), 5u)]);
    let var_1 = select(vec4<bool>(any(vec2<bool>(global0.x, global0.x)), global0.x & (-u_input.a >= ~arg_0.x), select(!all(vec4<bool>(global0.x, global0.x, false, global0.x)), true, u_input.a > (u_input.a | 1i)), global0.x), vec4<bool>(all(vec3<bool>(true, true, all(vec2<bool>(true, global0.x)))), true, all(!(!vec4<bool>(false, global0.x, global0.x, false))), global0.x), select(!(!(!vec4<bool>(global0.x, global0.x, false, false))), select(vec4<bool>(true, false, global0.x, global0.x), !(!vec4<bool>(false, global0.x, true, false)), global0.x), all(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true), vec2<bool>(global0.x, global0.x), true))));
    let var_2 = Struct_2(Struct_1(!(!select(var_1, vec4<bool>(true, false, global0.x, var_1.x), var_1)), -575f, _wgslsmith_mult_vec2_i32((arg_0 << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))) ^ ~vec2<i32>(1i, arg_0.x), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.yz, u_input.c.xy), u_input.b.zz)), u_input.b.wyy, !((var_0 & global1[_wgslsmith_index_u32(var_0, 5u)]) > _wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 5u)], 5u)]))));
    var var_3 = Struct_1(!vec4<bool>((true || var_2.a.a.x) || true, false, global0.x, !var_2.a.a.x), _wgslsmith_f_op_f32(-var_2.a.b), min(select(vec2<i32>(-1i) * -var_2.a.d.xx, _wgslsmith_mult_vec2_i32(u_input.b.wx, firstLeadingBit(arg_0)), select(select(vec2<bool>(global0.x, global0.x), var_2.a.a.zw, global0.x), vec2<bool>(false, global0.x), var_1.x)), -reverseBits(vec2<i32>(arg_0.x, -1i) << (vec2<u32>(24018u, var_0) % vec2<u32>(32u)))), var_2.a.d, !(!global0.x));
    global0 = vec2<bool>(var_2.a.e, false);
    return select(u_input.b, u_input.b, vec4<bool>(global0.x, !select(false, true, global0.x) | true, any(select(vec3<bool>(global0.x, false, var_2.a.e), var_1.zyy, !vec3<bool>(true, var_2.a.e, var_1.x))), global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 5u)] >= global1[_wgslsmith_index_u32(max(var_0, var_0), 5u)]));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1.x;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, abs(u_input.a), (-u_input.c.x << (~arg_2 % 32u)) ^ 63661i, ~reverseBits(-16055i)), ~(func_3(u_input.c.zz) ^ -_wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, u_input.c.x, -22029i, 1i), vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.a))));
    var var_2 = Struct_2(Struct_1(!select(select(vec4<bool>(false, true, global0.x, arg_3.x), arg_3, false), vec4<bool>(global0.x, true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(69973i, 13010i), vec2<i32>(-2147483647i, u_input.a)), var_1.zy) | select(_wgslsmith_div_vec2_i32(u_input.b.zx, var_1.wx), -vec2<i32>(-22540i, var_1.x), vec2<bool>(global0.x, arg_3.x)), vec3<i32>(19475i, _wgslsmith_div_i32(~(-13764i), max(-2147483647i, u_input.a)), u_input.c.x), arg_3.x));
    var var_3 = Struct_2(Struct_1(var_2.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1584f, _wgslsmith_f_op_f32(trunc(arg_0.x))))), firstTrailingBit(abs(u_input.c.yy)), _wgslsmith_mult_vec3_i32(~u_input.c, _wgslsmith_sub_vec3_i32(u_input.c, var_1.yww) >> (vec3<u32>(arg_1.x, 4294967295u, arg_2) % vec3<u32>(32u))), all(vec4<bool>(var_2.a.a.x, var_2.a.a.x, true, global0.x))));
    let var_4 = countOneBits(~arg_2) >> ((54188u ^ arg_1.x) % 32u);
    return var_2.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_3 {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -372f)))) < arg_1.b.a.b, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, arg_2, 518f, arg_1.a.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.b, -1349f, arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2, arg_2, arg_1.b.a.b, -859f))))), select(~vec3<u32>(80258u, 78739u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55600u, 5u)], 5u)], 5u)]), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54521u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25784u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14755u, 5u)], 5u)], 5u)], 5u)]), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)])), vec3<u32>(18072u, global1[_wgslsmith_index_u32(61441u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)])), all(select(arg_0.yx, vec2<bool>(global0.x, arg_0.x), arg_1.b.a.e))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(28772u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)]), countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 13579u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], global1[_wgslsmith_index_u32(4294967295u, 5u)]))) | global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16582u, 5u)], 5u)])), vec4<u32>(global1[_wgslsmith_index_u32(21204u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], 1u, global1[_wgslsmith_index_u32(95509u, 5u)])), 5u)], 5u)], arg_1.a.a).a.x);
    let var_1 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 42301u, 5203u), ~vec3<u32>(10033u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(69892u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]))), vec3<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(25902u, 5u)], 0u)), max(vec2<u32>(global1[_wgslsmith_index_u32(48280u, 5u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)], 5u)], 5u)], 4257u))), 5u)], ~22419u, ~(~1u)));
    let var_2 = select(select(arg_0.xx, select(vec2<bool>(func_2(vec4<f32>(arg_1.b.a.b, arg_2, arg_1.a.b, -930f), vec3<u32>(45992u, var_1.x, 1u), 1u, arg_1.a.a).a.x, false), vec2<bool>(arg_1.b.a.a.x, false), select(vec2<bool>(true, false), select(arg_0.yy, arg_0.zz, false), false)), all(select(arg_1.a.a.xzz, func_2(vec4<f32>(-147f, -205f, 2620f, arg_1.a.b), vec3<u32>(var_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33098u, 5u)], 5u)], global1[_wgslsmith_index_u32(var_1.x, 5u)]), var_1.x, arg_1.b.a.a).a.xyx, all(vec2<bool>(true, true))))), func_2(vec4<f32>(_wgslsmith_f_op_f32(-160f + _wgslsmith_div_f32(892f, arg_2)), -1703f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 * arg_2))), _wgslsmith_div_f32(-458f, arg_1.b.a.b)), var_1, 1u ^ _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~var_1.x, 5u)], var_1.x), arg_1.b.a.a).a.zx, !(!(!arg_1.a.a.wx)));
    var var_3 = arg_1;
    var var_4 = !select(var_3.b.a.a, !select(var_3.a.a, arg_1.b.a.a, global0.x), arg_1.b.a.e);
    return Struct_3(var_3.b.a, Struct_2(Struct_1(vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(arg_0.x, arg_1.a.a.x)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), var_3.b.a.d.zy, min(func_3(u_input.c.yz).wwy, u_input.c), false)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    let var_0 = func_4(!(!select(!vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, false), any(vec3<bool>(global0.x, false, global0.x)))), Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2310f, -1032f, 1000f, -453f)), vec3<u32>(1u, arg_0, arg_0) >> (~vec3<u32>(4294967295u, arg_0, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(arg_0, 5u)]) | _wgslsmith_mod_u32(0u, global1[_wgslsmith_index_u32(4294967295u, 5u)]), !select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, true, global0.x, true), vec4<bool>(false, global0.x, false, true))), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, 641f, -324f, -935f)), ~vec3<u32>(global1[_wgslsmith_index_u32(arg_0, 5u)], arg_0, 33433u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 5u)] & 1u, 5u)], func_2(vec4<f32>(-1179f, 729f, 386f, -1056f), vec3<u32>(arg_0, 1u, 4294967295u), arg_0, vec4<bool>(global0.x, global0.x, true, global0.x)).a))), -310f);
    var var_1 = _wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(19830u, ~4294967295u >> (1u % 32u), arg_0)), vec3<u32>(global1[_wgslsmith_index_u32(1u ^ max(153846u, 14073u ^ global1[_wgslsmith_index_u32(0u, 5u)]), 5u)], abs(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, global1[_wgslsmith_index_u32(arg_0, 5u)]), vec2<u32>(arg_0, 65170u), vec2<u32>(8604u, 1u)), ~vec2<u32>(arg_0, 1u))), 1u));
    let var_2 = var_0.b.a.a.zxz;
    var_1 = ~vec3<u32>(~select(~var_1.x, 60677u, var_0.a.e), arg_0, ~max(~0u, _wgslsmith_mod_u32(arg_0, 1u)));
    global0 = var_2.zy;
    return ~vec2<u32>(~4294967295u, max(29721u, 74504u)) & _wgslsmith_mult_vec2_u32(select(~var_1.xz, ~var_1.xy, !func_2(vec4<f32>(var_0.b.a.b, var_0.b.a.b, 1466f, 1768f), vec3<u32>(arg_0, var_1.x, global1[_wgslsmith_index_u32(var_1.x, 5u)]), 15249u, vec4<bool>(global0.x, var_0.b.a.a.x, false, var_0.a.e)).a.x), var_1.zx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53483u, 5u)], 5u)], 5u)]), func_1(global1[_wgslsmith_index_u32(4294967295u, 5u)])), ~reverseBits(global1[_wgslsmith_index_u32(3005u, 5u)])));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f)))));
    var var_2 = -u_input.b.yz;
    var_2 = u_input.c.zz;
    let var_3 = vec3<bool>(false, false, all(!vec4<bool>(global0.x, true, select(true, false, false), !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, global1[_wgslsmith_index_u32(0u, 5u)])), firstTrailingBit(vec4<u32>(27694u, var_0.x, 4294967295u, 1u)), ~vec4<u32>(var_0.x, global1[_wgslsmith_index_u32(59170u, 5u)], var_0.x, global1[_wgslsmith_index_u32(1u, 5u)]))), firstTrailingBit(u_input.b.x), 14586u);
}

