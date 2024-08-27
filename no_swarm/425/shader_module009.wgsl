struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.a, arg_3.c)) * arg_3.a) * _wgslsmith_f_op_f32(1000f + 1f)), ~_wgslsmith_sub_vec2_u32(~arg_3.b, firstTrailingBit(vec2<u32>(36115u, arg_3.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1307f - _wgslsmith_f_op_f32(trunc(arg_3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-289f, arg_3.d.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.d)), arg_3.d, select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)))), -892f, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.a)), _wgslsmith_f_op_f32(arg_3.c - arg_3.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1026f)), arg_3.b, arg_3.c, arg_3.d), arg_3);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.a)), -1000f, _wgslsmith_f_op_f32(arg_3.c + -234f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(ceil(336f))), 1005f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c))), vec3<bool>(true, true, !all(vec4<bool>(false, false, false, true))))));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(abs(select(-vec2<i32>(-1552i, 2147483647i), vec2<i32>(arg_0, 4120i), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)))), -(~(-vec2<i32>(arg_2, -11089i)))), 1i);
    var var_4 = ~abs(var_1.d.b.x);
    return var_0.a.a;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = 1i;
    global0 = arg_0;
    var var_0 = -769f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(681f - 219f))))), u_input.a | u_input.a, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -890f))), true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f + 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_f_op_f32(-178f - _wgslsmith_f_op_f32(select(1738f, -1101f, true))))), 1734f, Struct_1(_wgslsmith_f_op_f32(func_3(~42023i, -min(-42032i, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0) & vec2<i32>(arg_0, 6303i), -vec2<i32>(u_input.b, arg_0)), Struct_1(_wgslsmith_f_op_f32(max(-190f, -851f)), min(vec2<u32>(u_input.a.x, 4294967295u), u_input.a), 1328f, vec2<f32>(1291f, -423f)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1961f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1680f)) * 242f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1183f, -560f)))))), Struct_1(_wgslsmith_f_op_f32(-1155f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1005f, 554f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec2_u32(u_input.a, u_input.a), firstTrailingBit(~vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_div_f32(1262f, -246f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1582f, 966f) * vec2<f32>(868f, -1675f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1567f, 893f))))))));
    var var_2 = var_1.c;
    return var_1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global0 = reverseBits(max(i32(-1i) * -2147483647i, -2147483647i));
    var var_0 = !(!vec3<bool>(true, true, any(vec2<bool>(true, true))));
    var var_1 = ~_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.b, ~u_input.b)) | (select(vec3<i32>(0i, countOneBits(u_input.b), 12667i), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(2147483647i, -4874i, 4709i)), true) & vec3<i32>(_wgslsmith_sub_i32(1i, firstTrailingBit(u_input.b)), ~11536i, u_input.b));
    let var_2 = true;
    var_1 = vec3<i32>(u_input.b, var_1.x, -abs(u_input.b << (56164u % 32u)) << (27940u % 32u));
    return func_2(-26735i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    global0 = -34275i | u_input.b;
    let var_0 = arg_0;
    global0 = max(-2147483647i, u_input.b);
    global0 = ~_wgslsmith_clamp_i32(-(-1i << (arg_2.b.x % 32u)), ~_wgslsmith_mult_i32(u_input.b, u_input.b), -(1i | u_input.b)) >> (u_input.a.x % 32u);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(-56270i, u_input.b, u_input.b, -10939i))), _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, 2147483647i, 0i, u_input.b), vec4<i32>(-10513i, u_input.b, 2147483647i, u_input.b))), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, -1i, 1i), -vec4<i32>(20839i, 34938i, u_input.b, -1i), vec4<bool>(true, true, true, true)), countOneBits(select(vec4<i32>(-29802i, 1i, 0i, -2147483647i), vec4<i32>(-34223i, u_input.b, u_input.b, -2147483647i), vec4<bool>(false, true, true, true))), -vec4<i32>(-1i, 16163i, -31883i, 0i) << (reverseBits(vec4<u32>(29355u, arg_3.d.b.x, 61678u, 29608u)) % vec4<u32>(32u)))), abs(u_input.b), u_input.b ^ -2147483647i);
    return ~arg_3.c.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = u_input.a.x;
    global0 = abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(14720i, 2416i), vec2<i32>(u_input.b, 0i)), ~(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, 0i)) >> (vec2<u32>(arg_0.a.b.x, u_input.a.x) % vec2<u32>(32u)))));
    var var_1 = arg_0.d;
    var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -804f), func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 201f)), arg_0.a.b, 428f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b, -624f) * vec2<f32>(var_1.c, -1130f)))), arg_3, func_4(all(vec2<bool>(true, true)), func_2(u_input.b), arg_3), Struct_2(arg_0.d, _wgslsmith_f_op_f32(-1000f - -635f), arg_3.d, func_4(any(vec2<bool>(true, true)), arg_3.c, arg_3))), var_1.a, _wgslsmith_f_op_vec2_f32(arg_3.d.d * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-307f, var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, arg_2.x))), vec2<bool>(all(vec2<bool>(true, false)), true)))));
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1477f))))), -754f), min(~(~firstLeadingBit(arg_0.a.b)), firstLeadingBit(select(func_4(true, Struct_1(arg_3.d.a, vec2<u32>(20230u, 20235u), 168f, var_1.d), Struct_2(Struct_1(arg_1.x, vec2<u32>(var_1.b.x, u_input.a.x), arg_1.x, vec2<f32>(972f, -440f)), -135f, Struct_1(var_1.d.x, u_input.a, arg_2.x, vec2<f32>(arg_2.x, 366f)), Struct_1(arg_2.x, arg_3.a.b, -1000f, arg_1))).b, u_input.a << (vec2<u32>(arg_3.c.b.x, arg_0.d.b.x) % vec2<u32>(32u)), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_3.c.d.x, arg_1.x)), var_1.a)) - 1170f), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d.c, _wgslsmith_div_f32(-636f, var_1.d.x)), arg_1) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -1573f)) - vec2<f32>(arg_3.a.a, -185f)))));
    return arg_0.a;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> vec4<bool> {
    let var_0 = 4294967295u;
    let var_1 = arg_1;
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -660f));
    var var_4 = _wgslsmith_f_op_f32(-var_3);
    return vec4<bool>(var_2, arg_0.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, true, true), func_6(vec4<bool>(true, true, true, true), func_1(Struct_2(Struct_1(519f, vec2<u32>(77666u, u_input.a.x), 753f, vec2<f32>(567f, -752f)), 331f, Struct_1(692f, u_input.a, -148f, vec2<f32>(1950f, -121f)), Struct_1(1564f, u_input.a, 1170f, vec2<f32>(-482f, -510f))), vec2<f32>(-365f, -2428f), vec3<f32>(-172f, -145f, 304f), Struct_2(Struct_1(-277f, u_input.a, 1451f, vec2<f32>(-1000f, -936f)), -703f, Struct_1(-113f, vec2<u32>(u_input.a.x, 17549u), 1001f, vec2<f32>(426f, 215f)), Struct_1(366f, vec2<u32>(u_input.a.x, u_input.a.x), 1000f, vec2<f32>(-1806f, -831f)))), vec4<bool>(false, true, false, false), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -19368i, u_input.b, -2709i), vec4<i32>(-6369i, u_input.b, 1i, 15360i))), false), !vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), (u_input.b & u_input.b) == u_input.b, !any(vec3<bool>(true, false, false)), ~u_input.b > _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)), select(func_6(vec4<bool>(true, true, true, true), Struct_1(619f, max(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1117f), vec2<f32>(-1527f, 976f)), !func_6(vec4<bool>(true, false, true, true), Struct_1(1375f, u_input.a, 504f, vec2<f32>(1047f, -983f)), vec4<bool>(true, true, true, false), vec4<i32>(u_input.b, 0i, -2147483647i, u_input.b)), vec4<i32>(u_input.b, -u_input.b, 1i, ~(-2269i))), !vec4<bool>(true, true, -2147483647i <= u_input.b, false), vec4<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true)), true, true)));
    var var_1 = 1042f;
    var_0 = func_6(select(!select(!vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x || var_0.x, false, func_6(vec4<bool>(false, true, false, false), Struct_1(-413f, u_input.a, 486f, vec2<f32>(202f, 1169f)), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)).x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x))), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f))), ~(~u_input.a), _wgslsmith_f_op_f32(-194f * _wgslsmith_f_op_f32(step(-1047f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(535f, -201f), vec2<f32>(-496f, 1000f))) + vec2<f32>(1f, 1f))), vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -701f)) * _wgslsmith_f_op_f32(f32(-1f) * -713f)) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(u_input.b, u_input.b, -2147483647i, Struct_1(-581f, vec2<u32>(u_input.a.x, u_input.a.x), -325f, vec2<f32>(-1067f, -1697f)))))), true, u_input.b > (i32(-1i) * -u_input.b)), firstTrailingBit(select(min(vec4<i32>(-25062i, u_input.b, 14845i, u_input.b), vec4<i32>(50974i, u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 9144i, 1i, u_input.b)), select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.x, false, var_0.x, false), false)) & _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, 7762i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 7002i))));
    let var_2 = countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-36221i, 17441i, u_input.b) | (vec3<i32>(0i, -3148i, 2147483647i) >> (vec3<u32>(u_input.a.x, 2417u, 7507u) % vec3<u32>(32u))), ~(vec3<i32>(-2147483647i, u_input.b, -3891i) << (vec3<u32>(u_input.a.x, 29407u, 1u) % vec3<u32>(32u))), vec3<i32>(-u_input.b, u_input.b, reverseBits(2147483647i))) ^ vec3<i32>(22243i >> (firstTrailingBit(7254u) % 32u), u_input.b, _wgslsmith_add_i32(firstLeadingBit(u_input.b), u_input.b >> (1186u % 32u))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, Struct_1(381f, u_input.a, -1722f, vec2<f32>(-1232f, 1025f)), Struct_2(Struct_1(105f, vec2<u32>(4294967295u, 0u), -128f, vec2<f32>(271f, -1000f)), 1066f, Struct_1(554f, u_input.a, 532f, vec2<f32>(388f, 520f)), Struct_1(445f, vec2<u32>(u_input.a.x, 32058u), -670f, vec2<f32>(-2068f, 950f)))).c - _wgslsmith_f_op_f32(abs(-556f))) * 1031f), true)), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-581f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 1i, var_2.x, var_2.x), vec4<i32>(2147483647i, -40634i, var_2.x, 40138i)), -var_2.x, -27849i >> (u_input.a.x % 32u), Struct_1(126f, u_input.a, -300f, vec2<f32>(541f, -689f)))))), vec2<f32>(1281f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(343f, -141f)) * _wgslsmith_f_op_f32(f32(-1f) * -2984f))));
    var_0 = vec4<bool>(any(select(vec2<bool>(true, true), select(!var_0.wx, vec2<bool>(false, var_0.x), false), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1925f)))) < func_2(firstLeadingBit(_wgslsmith_mult_i32(19336i, 1i))).d.x, !(!(!(!var_0.x))), true);
    let x = u_input.a;
    s_output = StorageBuffer(24158u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1080f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.d.x)))), var_3.b.x);
}

