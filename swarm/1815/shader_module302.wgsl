struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
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

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_1(1f, abs(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.yx), vec2<i32>(global0.x, u_input.e.x) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u))) >> (_wgslsmith_mult_u32(51245u, arg_1.x) % 32u)), arg_1.x);
    global0 = vec4<i32>(1i, _wgslsmith_sub_i32(reverseBits(var_0.b), 2147483647i >> (arg_0 % 32u)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, var_0.b, -3425i, var_0.b), vec4<i32>(u_input.a, -1i, 2147483647i, global0.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b, -2147483647i), -1i)), var_0.b) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, abs(u_input.d)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, arg_1.x, var_0.c, 0u) >> (u_input.d % vec4<u32>(32u)), vec4<u32>(var_0.c, 10047u, arg_1.x, arg_0), vec4<u32>(u_input.d.x, 5322u, arg_0, u_input.b.x))) % vec4<u32>(32u));
    let var_1 = firstLeadingBit(42973u);
    global0 = vec4<i32>(-var_0.b, var_0.b, -_wgslsmith_clamp_i32(global0.x, abs(i32(-1i) * -2147483647i), -1i), ~(-2147483647i));
    var var_2 = any(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true)), vec2<bool>(true | all(vec4<bool>(true, true, true, true)), true), true));
    return ~46379u;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.c);
    var var_1 = u_input.d.x | ~(~1u);
    global0 = ~(~(~(vec4<i32>(66169i, 81418i, -21341i, -1i) & vec4<i32>(arg_1, 1i, global0.x, -41292i))));
    let var_2 = -605f;
    var var_3 = _wgslsmith_mod_i32(global0.x, -2147483647i) != 0i;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(114f, -228f, _wgslsmith_mult_u32(u_input.c, u_input.b.x) > (4294967295u | u_input.c)))), global0.x, ~(~func_3(1u, u_input.d.zx | vec2<u32>(25629u, u_input.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    global0 = ~(~min(~(vec4<i32>(0i, 2147483647i, arg_1.b, u_input.e.x) | vec4<i32>(2147483647i, global0.x, 5345i, u_input.a)), vec4<i32>(1i << (u_input.c % 32u), -841i, global0.x, ~40046i)));
    global0 = vec4<i32>(abs(1i), ~min(0i, abs(arg_1.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-20818i, _wgslsmith_mod_i32(u_input.e.x, 46070i)), 11328i, _wgslsmith_clamp_i32(firstLeadingBit(0i), ~arg_0.b, -1i)), countOneBits(global0.wzx >> (u_input.d.xwy % vec3<u32>(32u))) << (vec3<u32>(arg_0.c | 89614u, ~arg_0.c, ~arg_1.c) % vec3<u32>(32u))), arg_1.b << (~21384u % 32u));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(-_wgslsmith_clamp_i32(u_input.e.x, arg_1.b, arg_1.b)), min(_wgslsmith_mod_u32(max(min(u_input.b.x, arg_0.c), arg_0.c), _wgslsmith_dot_vec3_u32(u_input.d.zyx, u_input.d.xxy)), _wgslsmith_sub_u32(func_3(arg_1.c, u_input.b), u_input.c)));
    let var_1 = !select(vec2<bool>(~108856u >= ~u_input.c, any(vec3<bool>(true, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), false), vec2<bool>(true, true));
    let var_2 = ((_wgslsmith_div_vec4_u32(vec4<u32>(11504u, arg_0.c, var_0.c, 138973u), firstTrailingBit(vec4<u32>(arg_0.c, arg_1.c, u_input.d.x, u_input.c))) ^ u_input.d) & vec4<u32>(1u, _wgslsmith_dot_vec4_u32(select(u_input.d, u_input.d, var_1.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.c, arg_0.c, var_0.c, 1u), u_input.d, vec4<u32>(u_input.c, u_input.d.x, arg_0.c, var_0.c))), ~var_0.c, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(~(~20376u), ~(~1u), 12571u, 4294967295u), ~(~u_input.d));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-208f - 1858f), arg_0.a)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = reverseBits(max(vec4<i32>(-abs(9164i), -arg_0.b, 1i, -11857i), ~(firstLeadingBit(vec4<i32>(arg_3.b, 29433i, 1i, -1372i)) ^ -vec4<i32>(u_input.e.x, global0.x, 3608i, global0.x))));
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(356f, -1400f), _wgslsmith_f_op_f32(abs(arg_3.a)))), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-775f - 406f), -43859i << (arg_3.c % 32u), 0u), func_2(vec3<bool>(true, arg_1.x, arg_1.x), abs(-16056i)))))));
    global0 = vec4<i32>(u_input.a, func_2(vec3<bool>(any(!vec4<bool>(false, true, arg_1.x, false)), all(arg_1.yx), arg_1.x), var_0.b).b, countOneBits(-_wgslsmith_sub_i32(countOneBits(0i), arg_3.b)), arg_0.b);
    let var_2 = vec2<i32>(global0.x, 1i);
    return arg_3;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = firstTrailingBit(firstTrailingBit(vec4<i32>(1i | u_input.e.x, 46039i, i32(-1i) * -1i, arg_1.b) | reverseBits(abs(vec4<i32>(8336i, -30583i, -10039i, -1897i)))));
    let var_0 = vec4<i32>(-arg_1.b, func_1(Struct_1(_wgslsmith_f_op_f32(arg_1.a * arg_1.a), global0.x, 3816u & arg_2), vec3<bool>(true, !arg_0.x, arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(sign(-1844f)), -495f, 462f), arg_1).b, global0.x, u_input.e.x) & -vec4<i32>(9745i >> (1u % 32u), 1i, -select(-1i, 11702i, arg_0.x), global0.x ^ 1i);
    global0 = ~var_0;
    var var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(arg_1.a * 739f), -21463i, 0u), vec3<bool>(true, !all(vec4<bool>(arg_0.x, false, arg_0.x, false)), !arg_0.x && !arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(min(arg_1.a, -1406f)), arg_1.a)), arg_1), select(!vec3<bool>(arg_0.x, arg_0.x, select(false, true, arg_0.x)), vec3<bool>((arg_0.x | false) || (arg_2 >= arg_1.c), false, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) & select(arg_0.x, false, arg_0.x)), select(vec3<bool>(!arg_0.x, true, true), !vec3<bool>(arg_0.x, false, true), false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_1.a))), arg_1.a, -286f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, arg_1.a))), global0.x, 29394u));
    var var_2 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1409f))), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, u_input.c), u_input.d.xz) << (~52739u % 32u)), select(!vec3<bool>(false, false, arg_0.x), vec3<bool>(all(arg_0), arg_0.x & true, any(arg_0)), any(select(vec2<bool>(arg_0.x, false), arg_0.zy, arg_0.yy))), vec3<f32>(-1160f, arg_1.a, _wgslsmith_f_op_f32(373f * arg_1.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), 0i, 1u)), arg_0.xww, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, 802f, -825f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1184f, 745f, -1122f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -504f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -951f, 1000f))))), arg_1);
    return 13729u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_5(!vec4<bool>(any(vec3<bool>(false, false, true)), true, all(vec3<bool>(true, false, false)), global0.x <= 1i), func_1(Struct_1(_wgslsmith_f_op_f32(128f - -434f), ~(-2147483647i), u_input.c), vec3<bool>(select(true, true, true), true, true), vec3<f32>(-149f, _wgslsmith_f_op_f32(f32(-1f) * -1284f), -261f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -230f), firstLeadingBit(global0.x), 1u << (u_input.d.x % 32u))), 23821u), 0u);
    let var_1 = -1000f;
    global0 = vec4<i32>(u_input.e.x, global0.x, firstLeadingBit(-((i32(-1i) * -16000i) >> (0u % 32u))), -1670i);
    let var_2 = var_0;
    global0 = -_wgslsmith_add_vec4_i32(vec4<i32>(~u_input.e.x, -u_input.e.x, global0.x, 0i), vec4<i32>(reverseBits(2147483647i), 1i, 1i, -8665i));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-func_1(Struct_1(var_1, ~u_input.a, _wgslsmith_clamp_u32(var_0.x, u_input.d.x, 38002u)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -318f, var_1) * vec3<f32>(-1489f, -379f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2467f, -144f)), false)), Struct_1(var_1, -57773i, 12487u)).a), ~global0.x & _wgslsmith_dot_vec2_i32(u_input.e, select(~vec2<i32>(global0.x, u_input.a), ~u_input.e, vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(~min(var_0, var_2), select(vec2<u32>(u_input.c, var_2.x), vec2<u32>(4294967295u, var_0.x), vec2<bool>(true, true)) << (_wgslsmith_sub_vec2_u32(u_input.d.zz, vec2<u32>(var_0.x, 1u)) % vec2<u32>(32u))));
    var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-489f)))), ~(-1i), var_0.x);
    global0 = (-_wgslsmith_clamp_vec4_i32(~vec4<i32>(13919i, var_3.b, 10367i, global0.x), ~vec4<i32>(global0.x, 17163i, var_3.b, global0.x), abs(vec4<i32>(global0.x, u_input.a, 2147483647i, 0i))) << (_wgslsmith_div_vec4_u32(~select(vec4<u32>(1u, var_2.x, var_2.x, var_0.x), u_input.d, vec4<bool>(false, true, true, false)), ~u_input.d << (max(vec4<u32>(var_0.x, u_input.d.x, 0u, 25149u), vec4<u32>(5193u, 4294967295u, var_0.x, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (u_input.d % vec4<u32>(32u));
    var_3 = func_1(func_1(func_1(func_1(Struct_1(541f, 2147483647i, var_2.x), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<f32>(-1000f, -789f, var_1), Struct_1(var_3.a, -26655i, var_2.x)), vec3<bool>(false, true, true), vec3<f32>(-216f, _wgslsmith_f_op_f32(-var_1), var_3.a), func_1(Struct_1(332f, 2147483647i, 42177u), vec3<bool>(false, true, true), vec3<f32>(-1296f, var_3.a, 1302f), func_2(vec3<bool>(false, false, true), 1i))), vec3<bool>(true, true, true), vec3<f32>(447f, _wgslsmith_f_op_f32(round(224f)), _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(round(var_3.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(894f))), -2147483647i, var_3.c)), !vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1053f, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-943f, -2105f, -438f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, var_3.a)))), Struct_1(869f, _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(19354i, var_3.b)), var_3.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_3.c, var_3.c, (var_0.x ^ _wgslsmith_mod_u32(var_0.x, 4294967295u)) | ~(~u_input.d.x)));
}

