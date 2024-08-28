struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-56524i, 1i, 29690i);

var<private> global1: vec4<bool>;

var<private> global2: f32 = 1300f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = reverseBits(~(-((u_input.a << (vec2<u32>(1u, 0u) % vec2<u32>(32u))) | global0.zz)));
    let var_1 = ~vec2<u32>(1u, 1u);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0), arg_0);
    var var_3 = !select(!(!(!vec4<bool>(global1.x, global1.x, global1.x, false))), vec4<bool>(!(global1.x | global1.x), all(global1.yz), any(vec4<bool>(false, true, true, global1.x)), any(vec4<bool>(false, true, global1.x, global1.x))), false);
    var var_4 = 10726i;
    return ~vec3<u32>(var_1.x, var_1.x, _wgslsmith_add_u32(~66752u, var_1.x));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(arg_2.c.xy, _wgslsmith_f_op_vec2_f32(-arg_2.c.yz), vec2<bool>(any(vec4<bool>(global1.x, false, arg_2.b, arg_0.b)), false))))));
    global2 = var_0.x;
    let var_1 = arg_0.c;
    var var_2 = vec4<bool>(all(!(!vec4<bool>(false, global1.x, true, arg_0.b))), false, arg_0.b, any(global1.yw));
    var var_3 = _wgslsmith_mult_vec2_i32(vec2<i32>(-27705i, _wgslsmith_mult_i32(u_input.a.x, 10744i)), ~((_wgslsmith_sub_vec2_i32(arg_2.e.b.yx, vec2<i32>(global0.x, global0.x)) & vec2<i32>(-2147483647i, arg_3.x)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_1.x, arg_2.e.d), vec2<u32>(2420u, arg_0.d.x)) % vec2<u32>(32u))));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 0u, ~_wgslsmith_mult_u32(arg_0.e.e.x, arg_2.d.x) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, arg_0.d.x), arg_0.a) % 32u)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~arg_1, arg_2.a), arg_2.a, select(arg_0.a, vec3<u32>(17406u, arg_0.e.e.x, arg_0.d.x), global1.wyx) >> (~arg_1 % vec3<u32>(32u))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = ~(~reverseBits(global0.x));
    global0 = vec3<i32>(u_input.a.x, 11666i, global0.x) >> (vec3<u32>(func_4(Struct_3(vec3<u32>(1u, 1u, 1u), false, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1206f, 189f, -1302f, 807f))), vec2<u32>(1u, 1u), Struct_1(-695f, vec3<i32>(2147483647i, -13834i, -1i), 850f, 1051u, vec2<u32>(4294967295u, 7032u))), select(~vec3<u32>(4294967295u, 1u, 4294967295u), func_3(vec2<f32>(813f, -497f)), select(vec3<bool>(true, global1.x, false), global1.zww, true)), Struct_3(vec3<u32>(1u, 1u, 1u), true, _wgslsmith_div_vec4_f32(vec4<f32>(720f, 1129f, 685f, -2223f), vec4<f32>(735f, -1428f, 1392f, 2306f)), vec2<u32>(21649u, 4294967295u), Struct_1(1000f, vec3<i32>(-2147483647i, 61654i, 2564i), -827f, 72094u, vec2<u32>(0u, 51113u))), vec2<i32>(_wgslsmith_mult_i32(1i, global0.x), firstTrailingBit(14947i))), min(_wgslsmith_clamp_u32(~1u, ~2735u, ~31910u), 38663u), ~reverseBits(1u)) % vec3<u32>(32u));
    global2 = 733f;
    let var_1 = Struct_3(~_wgslsmith_mod_vec3_u32(~select(vec3<u32>(33067u, 4294967295u, 0u), vec3<u32>(1583u, 0u, 4294967295u), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 46795u), vec3<u32>(2775u, 50385u, 138031u), countOneBits(vec3<u32>(4294967295u, 23798u, 0u)))), global1.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(109f, 875f, -1000f, 562f), vec4<f32>(-544f, 1068f, -1984f, -3478f)) - vec4<f32>(1422f, 2373f, 413f, 995f))))), select(vec2<u32>(~7732u, ~9064u), ~vec2<u32>(1u, 4294967295u), vec2<bool>(true, global1.x)) & (vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -267f)), _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 0i, 1i), vec3<i32>(-4043i, global0.x, 41049i)), countOneBits(select(vec3<i32>(arg_0, global0.x, global0.x), vec3<i32>(80697i, 26849i, -11282i), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1243f, _wgslsmith_f_op_f32(1063f - 679f)))), 42133u, ~vec2<u32>(4294967295u, min(0u, 19255u))));
    var var_2 = vec4<u32>(4294967295u, select(~1u, var_1.e.e.x, false), _wgslsmith_mult_u32(_wgslsmith_mod_u32(43207u, ~firstLeadingBit(82928u)), _wgslsmith_mult_u32(~4294967295u, ~22936u)), ~firstLeadingBit(_wgslsmith_mod_u32(4294967295u, var_1.e.d) ^ _wgslsmith_add_u32(0u, var_1.a.x)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-432f))), var_1.e.b, _wgslsmith_f_op_f32(-var_1.c.x), ~var_2.x, select(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.e.d, 4294967295u, 12011u) >> (vec4<u32>(4294967295u, 0u, var_1.d.x, var_1.d.x) % vec4<u32>(32u)), abs(vec4<u32>(var_2.x, 4294967295u, 37933u, var_1.d.x))), 1u), vec2<u32>(~(~var_1.d.x), 1u), select(select(vec2<bool>(global1.x, global1.x), global1.yy, vec2<bool>(true, true)), !global1.wy, 1u > ~var_2.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(false, !global1.x);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(34424i >> (arg_0.d % 32u)).a), arg_0.c)));
    var var_2 = -global0.yy;
    global1 = vec4<bool>(!any(vec4<bool>(true, true, false, global1.x)), all(select(global1.zy, select(global1.xz, select(var_0, vec2<bool>(var_0.x, global1.x), true), true), vec2<bool>(all(global1.ywz), any(global1.zyw)))), all(select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true), vec4<bool>(global1.x, true, true, true)), !(!vec4<bool>(false, true, var_0.x, global1.x)), any(select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(false, true, global1.x, true), global1.x)))), all(global1.xxy));
    let var_3 = vec4<bool>(any(!vec3<bool>(true, var_0.x, all(global1.zxx))), false, true, true);
    return Struct_3(vec3<u32>(arg_0.e.x, _wgslsmith_sub_u32(~arg_0.e.x ^ ~arg_0.e.x, func_4(Struct_3(vec3<u32>(0u, 32240u, arg_0.e.x), global1.x, vec4<f32>(arg_0.a, var_1.a, var_1.a, 185f), vec2<u32>(0u, 5216u), arg_0), vec3<u32>(1u, 1175u, 18648u), Struct_3(vec3<u32>(22747u, arg_0.e.x, 1u), var_0.x, vec4<f32>(arg_0.a, var_1.a, var_1.a, 352f), vec2<u32>(0u, arg_0.d), arg_0), vec2<i32>(37463i, 1i))), ~arg_0.e.x), var_1.a > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(994f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a)), -1133f, func_2(8833i).a, _wgslsmith_f_op_f32(floor(var_1.a)))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 693f, _wgslsmith_f_op_f32(-478f - var_1.a), -101f)))), ~arg_0.e, func_2(-1i));
}

fn func_1() -> vec4<bool> {
    global2 = _wgslsmith_f_op_f32(-1f);
    var var_0 = func_5(func_2(-(~(~(-1i)))));
    global0 = vec3<i32>(u_input.a.x, i32(-1i) * -(~1i), ~(~(~(-1i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.a, var_0.c.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.c.zw), _wgslsmith_f_op_vec2_f32(vec2<f32>(237f, 1409f) + vec2<f32>(var_0.e.c, var_0.c.x))))))) - _wgslsmith_f_op_vec2_f32(-var_0.c.yz));
    var_0 = Struct_3(_wgslsmith_mult_vec3_u32(~var_0.a, vec3<u32>(var_0.a.x, 85276u, 4294967295u)), any(select(select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, false, var_0.b), global1.xzw), select(vec3<bool>(false, false, true), vec3<bool>(var_0.b, true, true), false), global1.zwy)) && false, _wgslsmith_f_op_vec4_f32(sign(var_0.c)), var_0.d, var_0.e);
    return vec4<bool>(true, var_0.b, var_0.b, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(any(vec4<bool>(any(vec2<bool>(global1.x, false)), any(vec3<bool>(global1.x, global1.x, false)), select(true, global1.x, true), global1.x && global1.x)), true, !global1.x, !global1.x);
    let var_0 = -52985i;
    global0 = vec3<i32>(countOneBits(1i), 0i, var_0);
    let var_1 = _wgslsmith_dot_vec2_i32(select((~u_input.a >> (~vec2<u32>(0u, 52125u) % vec2<u32>(32u))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(-vec2<i32>(global0.x, -47279i), u_input.a, true), !vec2<bool>(false | global1.x, false)), global0.zz & vec2<i32>(25227i, 1i));
    global1 = func_1();
    var var_2 = ~(vec4<u32>(1u, 1u, 1u, 1u) | select(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), !func_1()));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_5(func_5(func_2(2147483647i)).e).c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3, 791f) * -343f) - var_3)), _wgslsmith_f_op_f32(-var_3), -var_0);
}

