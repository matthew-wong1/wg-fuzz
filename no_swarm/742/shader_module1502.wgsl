struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = countOneBits(0u);
    var var_1 = arg_0.d.x | 40691u;
    let var_2 = Struct_1(!vec4<bool>(arg_0.a.x, !(5419i <= u_input.b.x), arg_0.a.x, all(select(arg_1.a.xxy, vec3<bool>(arg_1.c.x, arg_0.a.x, false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f - -584f)))) - arg_0.b), arg_1.c, firstTrailingBit(~(~arg_1.d)), ~firstTrailingBit(arg_1.e));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_div_u32(1u, firstLeadingBit(u_input.a.x));
    return arg_0;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = func_1(Struct_1(arg_2.a, arg_2.b, select(select(arg_2.a.yz, !arg_2.c, arg_2.a.zy), vec2<bool>(select(arg_2.a.x, true, arg_2.c.x), 4294967295u != u_input.a.x), arg_2.c.x), ~vec2<u32>(_wgslsmith_clamp_u32(27470u, 1u, u_input.a.x), 0u), arg_2.e), func_1(Struct_1(!(!vec4<bool>(arg_2.a.x, arg_2.c.x, true, arg_2.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1183f, arg_2.b), _wgslsmith_f_op_f32(arg_2.b - arg_2.b))), select(vec2<bool>(false, arg_2.c.x), !vec2<bool>(arg_2.a.x, arg_2.a.x), !vec2<bool>(true, arg_2.c.x)), arg_2.e.xy << (vec2<u32>(1u, 20228u) % vec2<u32>(32u)), u_input.a), Struct_1(vec4<bool>(true, arg_2.a.x, arg_2.c.x, any(arg_2.a.ywy)), arg_2.b, !select(vec2<bool>(arg_2.c.x, arg_2.a.x), arg_2.a.xx, arg_2.a.zw), ~min(vec2<u32>(arg_2.d.x, arg_2.d.x), vec2<u32>(arg_2.e.x, 25013u)), u_input.a))).c;
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = func_1(Struct_1(vec4<bool>((-1i >> (u_input.a.x % 32u)) > -15824i, !arg_1.c.x, func_3(vec3<i32>(-2147483647i, u_input.b.x, -2147483647i), u_input.b.zy, Struct_1(vec4<bool>(true, false, arg_0.c.x, true), arg_0.b, arg_1.a.xw, arg_0.e.xx, arg_1.e)), _wgslsmith_f_op_f32(floor(arg_2)) >= _wgslsmith_f_op_f32(-arg_0.b)), arg_2, vec2<bool>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) <= u_input.b.x, any(select(arg_0.c, vec2<bool>(false, arg_1.c.x), true))), arg_1.e.yy | max(select(arg_0.d, u_input.a.zx, true), vec2<u32>(1u, 1u)), vec4<u32>(14787u, arg_0.d.x, 0u, u_input.a.x)), func_1(Struct_1(select(arg_0.a, !arg_0.a, any(vec4<bool>(arg_0.c.x, arg_0.a.x, arg_0.a.x, true))), _wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(-arg_2))), vec2<bool>(true, 31730u < arg_0.d.x), arg_1.e.yy, vec4<u32>(~1u, 60052u, u_input.a.x, _wgslsmith_dot_vec2_u32(arg_1.e.zx, arg_1.e.zy))), func_1(arg_0, func_1(func_1(Struct_1(vec4<bool>(true, arg_0.c.x, arg_1.c.x, true), arg_1.b, vec2<bool>(true, arg_0.a.x), arg_1.d, arg_1.e), Struct_1(vec4<bool>(arg_0.c.x, true, true, false), -366f, arg_1.c, vec2<u32>(arg_0.e.x, u_input.a.x), vec4<u32>(u_input.a.x, arg_1.d.x, arg_1.e.x, arg_0.e.x))), Struct_1(arg_1.a, arg_1.b, vec2<bool>(arg_0.c.x, true), u_input.a.zz, arg_0.e))))).a.wx;
    let var_1 = func_1(arg_1, func_1(func_1(Struct_1(select(vec4<bool>(true, arg_1.a.x, true, var_0.x), arg_0.a, arg_0.a), _wgslsmith_f_op_f32(arg_0.b * arg_0.b), !arg_1.c, vec2<u32>(arg_0.e.x, arg_1.d.x) << (u_input.a.xw % vec2<u32>(32u)), countOneBits(vec4<u32>(arg_1.d.x, 4294967295u, u_input.a.x, 1u))), arg_0), arg_1));
    let var_2 = arg_1;
    var var_3 = -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, select(36270i, -10063i, var_0.x), 2147483647i, firstTrailingBit(u_input.b.x)), select(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, -1i, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(15093i, -26898i, u_input.b.x, 5985i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, -2147483647i)), !(!var_2.a.x)));
    var_3 = _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_3.x, var_3.x, var_3.x) << (var_1.e % vec4<u32>(32u)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_3.x)) << (~(vec4<u32>(arg_0.d.x, 4294967295u, 23711u, 0u) << (vec4<u32>(arg_1.e.x, var_1.d.x, arg_0.e.x, arg_1.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, -2147483647i, var_3.x, -71485i), vec4<i32>(var_3.x, 30798i, u_input.b.x, 0i)) >> (~vec4<u32>(arg_1.d.x, var_2.e.x, arg_1.e.x, arg_1.d.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x << (1u % 32u), select(u_input.b.x, 28121i, true), u_input.b.x, max(0i, u_input.b.x))), vec4<i32>(-abs(var_3.x), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 24868i, var_3.x)) << (_wgslsmith_sub_u32(var_2.d.x, var_2.d.x) % 32u), ~reverseBits(u_input.b.x), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, 23973i)), var_3.wx)), select(!(!vec4<bool>(true, false, false, arg_0.c.x)), var_1.a, vec4<bool>(all(arg_1.a.yw), select(arg_0.c.x, true, false), !var_0.x, true))));
    return -675f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = !(!(false || arg_3.c.x));
    var var_1 = _wgslsmith_f_op_f32(func_2(arg_1, func_1(Struct_1(vec4<bool>(true, arg_1.d.x <= 1u, all(vec3<bool>(true, arg_3.a.x, arg_3.a.x)), arg_3.c.x), arg_3.b, func_1(Struct_1(arg_3.a, arg_1.b, arg_1.c, vec2<u32>(arg_3.d.x, 1u), vec4<u32>(8130u, 56037u, 104486u, 0u)), Struct_1(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_3.c.x, false), -2721f, arg_3.a.ww, vec2<u32>(arg_3.e.x, 22251u), vec4<u32>(1u, 42099u, arg_3.e.x, 1u))).c, _wgslsmith_mod_vec2_u32(u_input.a.zw, arg_1.d), firstTrailingBit(u_input.a)), arg_1), _wgslsmith_f_op_f32(1206f + arg_3.b)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2063f));
    let var_2 = _wgslsmith_div_u32(arg_1.d.x, 13678u);
    let var_3 = vec4<i32>(1i, reverseBits(u_input.b.x), ~_wgslsmith_add_i32(47144i, -reverseBits(21017i)), ~firstLeadingBit(1i));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-188f, arg_0)), arg_1.b), arg_1.b, arg_1.b) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-539f)), arg_0)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.b)) - arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(func_1(Struct_1(vec4<bool>(true, false, false, false), -1000f, vec2<bool>(true, true), vec2<u32>(0u, u_input.a.x), vec4<u32>(46462u, 31198u, u_input.a.x, u_input.a.x)), Struct_1(vec4<bool>(false, true, false, true), 1517f, vec2<bool>(false, false), u_input.a.zx, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))), func_1(Struct_1(vec4<bool>(true, true, true, true), -1308f, vec2<bool>(false, true), vec2<u32>(0u, 1u), vec4<u32>(2006u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec4<bool>(false, false, false, false), -250f, vec2<bool>(false, true), u_input.a.zy, u_input.a)), -123f))))), func_1(func_1(func_1(func_1(Struct_1(vec4<bool>(false, false, true, true), -1064f, vec2<bool>(true, true), u_input.a.yz, u_input.a), Struct_1(vec4<bool>(true, true, true, false), 450f, vec2<bool>(true, false), vec2<u32>(u_input.a.x, 9123u), vec4<u32>(u_input.a.x, 4294967295u, 73596u, u_input.a.x))), Struct_1(vec4<bool>(true, true, true, false), 1238f, vec2<bool>(false, true), vec2<u32>(1u, 130136u), u_input.a)), Struct_1(vec4<bool>(false, false, true, true), _wgslsmith_f_op_f32(sign(-268f)), vec2<bool>(true, false), vec2<u32>(1530u, 18016u) ^ u_input.a.xw, reverseBits(vec4<u32>(u_input.a.x, 48052u, 3296u, 4294967295u)))), Struct_1(!func_1(Struct_1(vec4<bool>(false, false, true, true), -1969f, vec2<bool>(true, false), u_input.a.yw, vec4<u32>(12617u, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(vec4<bool>(true, true, false, false), -1137f, vec2<bool>(false, false), u_input.a.yz, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 28921u))).a, 1699f, vec2<bool>(true, false), _wgslsmith_add_vec2_u32(countOneBits(u_input.a.zz), abs(vec2<u32>(4294967295u, u_input.a.x))), ~firstTrailingBit(u_input.a))), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 103083u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<u32>(13341u, u_input.a.x, u_input.a.x))), Struct_1(select(vec4<bool>(true, true, true, true), func_1(Struct_1(vec4<bool>(true, true, true, true), -737f, vec2<bool>(false, true), vec2<u32>(71698u, 19941u), u_input.a), Struct_1(vec4<bool>(true, false, true, false), -2466f, vec2<bool>(true, true), vec2<u32>(u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 105951u, u_input.a.x))).a, !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-220f - _wgslsmith_f_op_f32(f32(-1f) * -958f)))), !vec2<bool>(true, u_input.a.x < u_input.a.x), vec2<u32>(u_input.a.x, ~10854u) | u_input.a.zw, u_input.a)));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(-1681f, var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + -757f), -811f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1433f + -1735f))) * vec4<f32>(550f, -1365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 816f) + -1769f), -340f))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -804f, 1086f, var_0.x))))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2(func_1(Struct_1(vec4<bool>(false, true, true, true), var_0.x, vec2<bool>(false, false), u_input.a.xx, vec4<u32>(u_input.a.x, 4294967295u, 24671u, 122947u)), Struct_1(vec4<bool>(true, false, true, false), -271f, vec2<bool>(false, false), vec2<u32>(u_input.a.x, 100283u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u))), func_1(Struct_1(vec4<bool>(true, false, false, false), -618f, vec2<bool>(true, true), u_input.a.wx, vec4<u32>(7372u, u_input.a.x, 26424u, 0u)), Struct_1(vec4<bool>(false, true, false, true), 698f, vec2<bool>(false, true), u_input.a.zz, vec4<u32>(49865u, 4294967295u, 0u, 37993u))), var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1462f, var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1334f, 182f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -559f) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(var_0.x)))), var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1458f, -1315f, -369f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, -615f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1698f, 1000f, 1015f, -117f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, -772f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(func_4(197f, Struct_1(vec4<bool>(false, false, true, false), 1000f, vec2<bool>(true, false), vec2<u32>(u_input.a.x, 75615u), u_input.a), u_input.a.x, Struct_1(vec4<bool>(true, false, false, false), var_0.x, vec2<bool>(true, false), vec2<u32>(u_input.a.x, 70667u), u_input.a))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_div_f32(-1000f, var_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_0.x, false)) + _wgslsmith_f_op_f32(select(1688f, 278f, false)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(ceil(var_0.xx)), _wgslsmith_sub_u32(43521u, firstTrailingBit(41095u ^ u_input.a.x)) & ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x));
}

