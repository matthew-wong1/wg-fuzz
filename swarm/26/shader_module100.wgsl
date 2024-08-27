struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = u_input.a.xy;
    let var_1 = Struct_2(true, arg_0.x, Struct_1(_wgslsmith_mod_vec3_u32(~(vec3<u32>(var_0.x, 0u, 12589u) ^ vec3<u32>(var_0.x, 4294967295u, 4388u)), firstTrailingBit(~u_input.a)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(-2147483647i, u_input.b.x, 2147483647i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(6232u, 14u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 11742i, -21533i))), -vec3<i32>(2147483647i, u_input.b.x, -40140i)), select(u_input.a.x, 83224u, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(56922u, 14u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -773f, arg_0.x, arg_0.x) - vec4<f32>(-763f, arg_0.x, arg_0.x, -1307f))))))));
    return select(firstTrailingBit(26660u >> (~_wgslsmith_clamp_u32(4294967295u, 1u, 29600u) % 32u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, var_1.c.a.x >> (var_0.x % 32u)), var_1.c.a.x), all(vec3<bool>(~var_1.c.b.x <= var_1.c.b.x, select(all(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)])), any(vec4<bool>(false, true, global0[_wgslsmith_index_u32(17510u, 14u)], true)), true & global0[_wgslsmith_index_u32(var_0.x, 14u)]), !global0[_wgslsmith_index_u32(var_1.c.a.x, 14u)])));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(abs(-197f));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_0.d.xx));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1921f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d.x, -2389f))))))));
    let var_2 = Struct_2(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - arg_0.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f + arg_0.d.x))), var_1.x), arg_0);
    let var_3 = arg_1;
    return Struct_2(_wgslsmith_clamp_i32(0i, -(~var_2.c.b.x), -arg_0.b.x) <= _wgslsmith_mod_i32(~arg_0.b.x ^ ~1i, firstLeadingBit(var_2.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1803f)) + var_2.c.d.x)), Struct_1(~u_input.a, vec3<i32>(i32(-1i) * -1i, arg_0.b.x, ~87464i), _wgslsmith_mult_u32(func_3(vec2<f32>(1342f, 993f)), 0u), vec4<f32>(-646f, _wgslsmith_f_op_f32(-var_2.c.d.x), _wgslsmith_f_op_f32(-var_2.b), -277f)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(max(426f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(455f, 930f), _wgslsmith_f_op_f32(arg_0.b + 423f))))) - func_2(func_2(Struct_1(arg_1.c.a, vec3<i32>(u_input.b.x, -31478i, 1i), u_input.a.x, arg_2), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 4294967295u)).c, firstTrailingBit(vec4<u32>(arg_1.b.c.a.x, 4294967295u, u_input.a.x, arg_0.a.c.a.x)) ^ (vec4<u32>(arg_1.b.c.c, 5120u, u_input.a.x, u_input.a.x) ^ vec4<u32>(u_input.a.x, arg_0.a.c.c, 42629u, 0u))).c.d.x)));
    var_0 = _wgslsmith_f_op_f32(-arg_1.e.x);
    let var_1 = arg_0.a.c.d.wx;
    var var_2 = ~min(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-3993i, -2147483647i, -1i, arg_1.b.c.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, -19668i)), reverseBits(vec4<i32>(arg_1.b.c.b.x, arg_0.a.c.b.x, 46137i, arg_0.a.c.b.x))) ^ vec4<i32>(arg_1.b.c.b.x, -arg_0.a.c.b.x, arg_1.b.c.b.x & 2147483647i, _wgslsmith_dot_vec3_i32(arg_0.a.c.b, vec3<i32>(arg_0.a.c.b.x, u_input.b.x, u_input.b.x))), vec4<i32>(arg_0.a.c.b.x, select(firstLeadingBit(arg_0.a.c.b.x), ~arg_1.b.c.b.x, true | global0[_wgslsmith_index_u32(15413u, 14u)]), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.a.c.b.x, 0i), ~arg_0.a.c.b.x), arg_0.a.c.b.x));
    var_2 = select(abs(-vec4<i32>(arg_0.a.c.b.x >> (18462u % 32u), u_input.b.x, 0i, _wgslsmith_mod_i32(1i, u_input.b.x))), firstLeadingBit(-firstTrailingBit(vec4<i32>(arg_0.a.c.b.x, 40791i, arg_1.b.c.b.x, u_input.b.x))), vec4<bool>(false, !global0[_wgslsmith_index_u32(arg_0.a.c.c, 14u)], func_2(func_2(Struct_1(vec3<u32>(4294967295u, arg_1.b.c.c, 37271u), vec3<i32>(-46946i, arg_0.a.c.b.x, -4122i), u_input.a.x, vec4<f32>(arg_2.x, arg_2.x, -1352f, arg_0.b)), reverseBits(vec4<u32>(4294967295u, 0u, 4294967295u, 0u))).c, ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 64752u), vec4<u32>(32784u, 0u, 7470u, 60493u))).a, !all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.c.a.x, 14u)], false), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a.c.c, 14u)], false, arg_0.a.a), vec3<bool>(arg_1.b.a, global0[_wgslsmith_index_u32(0u, 14u)], true)))));
    return arg_1;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = !vec3<bool>(!global0[_wgslsmith_index_u32(arg_1.x, 14u)], select(true, arg_0.d, !any(vec2<bool>(arg_0.a.a, global0[_wgslsmith_index_u32(arg_1.x, 14u)]))), true);
    let var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(u_input.a), ~func_4(Struct_5(Struct_2(true, arg_0.c.d.x, arg_0.a.c), arg_0.c.d.x), func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -678f, Struct_1(vec3<u32>(arg_1.x, 0u, arg_1.x), arg_0.c.b, 19216u, arg_0.c.d)), arg_0.c.d.x), arg_0, arg_0.a.c.d), _wgslsmith_div_vec4_f32(arg_0.c.d, arg_0.c.d)).a.c.a), u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.b.c.d - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(arg_0.b.c.d, vec4<f32>(-496f, -750f, arg_0.b.c.d.x, arg_0.b.b), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 14u)], false, global0[_wgslsmith_index_u32(38891u, 14u)], false))))))))));
    var var_3 = var_2.x;
    var var_4 = ~(~firstLeadingBit(vec2<u32>(37750u, arg_1.x)));
    return arg_0.c;
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.d.x), -1211f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f - arg_0.d.x))), false)));
    let var_1 = func_2(Struct_1(arg_0.a, ~arg_0.b, 1u, vec4<f32>(377f, _wgslsmith_f_op_f32(f32(-1f) * -237f), arg_0.d.x, arg_0.d.x)), _wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(u_input.a.x, arg_0.c, 1u, arg_0.a.x) ^ ~vec4<u32>(1636u, arg_0.a.x, 0u, 1u)), ~(~vec4<u32>(4294967295u, u_input.a.x, 1u, 16220u) ^ max(vec4<u32>(arg_0.c, 1u, 10077u, 1u), vec4<u32>(24301u, u_input.a.x, u_input.a.x, arg_0.a.x)))));
    var var_2 = !(!var_1.a);
    let var_3 = Struct_3(Struct_1(select(func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(56730u, 14u)], var_1.b, arg_0), 844f), func_4(Struct_5(Struct_2(false, -488f, Struct_1(arg_0.a, vec3<i32>(2147483647i, 1i, var_1.c.b.x), 37598u, vec4<f32>(-303f, -1208f, var_1.b, 284f))), 2466f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(var_1.c.a.x, 14u)], arg_0.d.x, var_1.c), Struct_2(true, var_1.c.d.x, Struct_1(arg_0.a, vec3<i32>(-1i, var_1.c.b.x, var_1.c.b.x), 0u, vec4<f32>(var_1.c.d.x, arg_0.d.x, arg_0.d.x, -216f))), Struct_1(u_input.a, var_1.c.b, 29206u, var_1.c.d), false, vec2<f32>(arg_0.d.x, -1505f)), arg_0.d), vec4<f32>(var_1.c.d.x, -545f, arg_0.d.x, 1163f)).a.c.a, ~vec3<u32>(u_input.a.x, 0u, arg_0.c), (global0[_wgslsmith_index_u32(arg_0.c, 14u)] & true) & (-32070i >= u_input.b.x)), func_5(func_4(Struct_5(var_1, -328f), Struct_4(var_1, var_1, Struct_1(arg_0.a, vec3<i32>(35539i, -11297i, arg_0.b.x), var_1.c.c, arg_0.d), var_1.a, arg_0.d.wx), vec4<f32>(1278f, -1246f, 733f, -613f)), vec4<u32>(50731u, _wgslsmith_dot_vec2_u32(var_1.c.a.zz, u_input.a.zy), arg_0.c, 20625u)).b, _wgslsmith_mod_u32(arg_0.a.x, 12659u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.d)))))), u_input.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.c.d.x * -524f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_0.d.ww, vec2<f32>(var_1.c.d.x, 1232f))))));
    let var_4 = Struct_2(any(select(vec3<bool>(all(vec2<bool>(true, false)), var_1.a, var_1.a), !select(vec3<bool>(var_1.a, var_1.a, global0[_wgslsmith_index_u32(var_3.b, 14u)]), vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(var_3.a.c, 14u)], var_1.a), vec3<bool>(true, false, false)), true)), 1523f, func_5(Struct_4(Struct_2(true, 1845f, func_4(Struct_5(Struct_2(var_1.a, arg_0.d.x, Struct_1(var_3.a.a, vec3<i32>(-1i, var_3.a.b.x, var_3.a.b.x), u_input.a.x, var_3.a.d)), var_3.a.d.x), Struct_4(var_1, var_1, var_1.c, false, vec2<f32>(1982f, 532f)), arg_0.d).a.c), Struct_2(true, _wgslsmith_f_op_f32(arg_0.d.x * -941f), Struct_1(arg_0.a, vec3<i32>(51989i, var_1.c.b.x, 2147483647i), 83148u, vec4<f32>(var_1.b, var_1.b, 1079f, 177f))), Struct_1(arg_0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(var_3.a.b.x, u_input.b.x, -27412i), var_3.a.b), arg_0.a.x, _wgslsmith_f_op_vec4_f32(-arg_0.d)), (var_1.c.b.x << (1u % 32u)) == _wgslsmith_mod_i32(var_1.c.b.x, var_1.c.b.x), vec2<f32>(var_1.c.d.x, _wgslsmith_f_op_f32(round(var_1.c.d.x)))), ~vec4<u32>(4294967295u, 26381u >> (var_3.b % 32u), _wgslsmith_dot_vec3_u32(var_1.c.a, arg_0.a), ~14810u)));
    return var_3;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = func_6(func_5(func_4(Struct_5(func_2(Struct_1(u_input.a, vec3<i32>(-1i, u_input.b.x, 2147483647i), arg_0, vec4<f32>(985f, 1000f, -253f, 1000f)), vec4<u32>(4294967295u, u_input.a.x, 53542u, 4294967295u)), -1551f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(47566u, 14u)], 187f, Struct_1(u_input.a, vec3<i32>(-8723i, -2147483647i, u_input.b.x), u_input.a.x, vec4<f32>(1387f, 1000f, 749f, -1517f))), Struct_2(true, -280f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, 2147483647i, -36412i), 9903u, vec4<f32>(-180f, -620f, 1000f, -371f))), Struct_1(vec3<u32>(arg_0, 1u, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, -49360i), 12707u, vec4<f32>(1231f, 255f, 645f, -1088f)), false, vec2<f32>(717f, -1028f)), vec4<f32>(-221f, _wgslsmith_div_f32(2582f, 151f), 2218f, _wgslsmith_f_op_f32(763f + 1056f))), _wgslsmith_sub_vec4_u32(vec4<u32>(74277u, func_2(Struct_1(vec3<u32>(arg_0, u_input.a.x, u_input.a.x), vec3<i32>(1i, -2147483647i, -26007i), 1u, vec4<f32>(1075f, 2082f, -343f, -967f)), vec4<u32>(4294967295u, 23482u, 1u, 24872u)).c.c, 4294967295u, _wgslsmith_mult_u32(u_input.a.x, 29596u)), select(countOneBits(vec4<u32>(u_input.a.x, 36181u, 47152u, 0u)), firstTrailingBit(vec4<u32>(u_input.a.x, 1u, 4294967295u, 10940u)), any(vec4<bool>(global0[_wgslsmith_index_u32(48138u, 14u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 14u)]))))));
    var var_1 = var_0.b;
    global0 = array<bool, 14>();
    return select(select(!vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a.a.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(42065u, 14u)], true)), global0[_wgslsmith_index_u32(~u_input.a.x, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)]), vec3<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(8496u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(30742u, 14u)])) && true, false), true), vec3<bool>(true, false, true), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(67691u, 14u)], false, global0[_wgslsmith_index_u32(16551u, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.b, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), !vec3<bool>(global0[_wgslsmith_index_u32(24093u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(~(~u_input.a.x), 14u)]), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(18192u, 14u)], false, global0[_wgslsmith_index_u32(arg_0, 14u)])), select(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 14u)], false, false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 14u)]), false), select(vec3<bool>(global0[_wgslsmith_index_u32(25254u, 14u)], global0[_wgslsmith_index_u32(var_0.b, 14u)], global0[_wgslsmith_index_u32(3058u, 14u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(63827u, 14u)], true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(35719u, 14u)])), !global0[_wgslsmith_index_u32(1u, 14u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.c, 14u)], false, global0[_wgslsmith_index_u32(6601u, 14u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 14u)]), global0[_wgslsmith_index_u32(arg_0, 14u)])), true));
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_add_vec4_u32(~abs(max(~vec4<u32>(arg_1.c.a.x, 102180u, arg_1.b.c.a.x, 68644u), vec4<u32>(1u, 0u, 4294967295u, u_input.a.x))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_1.b.c.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(1863u, u_input.a.x, arg_1.a.c.c, arg_2.a.c.c)), ~vec4<u32>(0u, arg_1.c.a.x, 1u, u_input.a.x) << ((vec4<u32>(u_input.a.x, arg_2.a.c.c, arg_2.a.c.c, 1u) & vec4<u32>(arg_2.a.c.a.x, 4447u, 0u, 4611u)) % vec4<u32>(32u)), vec4<u32>(61234u | u_input.a.x, select(u_input.a.x, 56568u, true), arg_2.a.c.a.x, _wgslsmith_mult_u32(arg_2.a.c.a.x, 6921u))));
    var var_1 = 4294967295u;
    var_1 = arg_2.a.c.a.x;
    var_1 = countOneBits(u_input.a.x);
    var var_2 = arg_1.c;
    return arg_1.a.c.d.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_7(vec4<bool>(true, !((1u | u_input.a.x) < (u_input.a.x << (u_input.a.x % 32u))), any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], false), !vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(18844u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true)))), !all(func_1(35977u))), func_4(Struct_5(func_4(Struct_5(Struct_2(true, -1560f, Struct_1(u_input.a, vec3<i32>(-47606i, -23064i, -2147483647i), u_input.a.x, vec4<f32>(-421f, 165f, 574f, 1371f))), 392f), func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1427f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, 0i, u_input.b.x), u_input.a.x, vec4<f32>(-1102f, -463f, -195f, 1327f))), -238f), Struct_4(Struct_2(true, 108f, Struct_1(vec3<u32>(19919u, 5827u, u_input.a.x), vec3<i32>(-14764i, 0i, u_input.b.x), 0u, vec4<f32>(1160f, 477f, -165f, 676f))), Struct_2(global0[_wgslsmith_index_u32(1u, 14u)], 867f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, 0i), 0u, vec4<f32>(1343f, 164f, 738f, -375f))), Struct_1(vec3<u32>(1u, 22578u, 70578u), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u, vec4<f32>(1000f, 1613f, -2026f, 424f)), false, vec2<f32>(785f, 2418f)), vec4<f32>(1087f, 653f, 2449f, -262f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1296f, -2001f, 933f, 1561f), vec4<f32>(-753f, -2602f, -841f, 918f), false))).b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1195f + 239f), _wgslsmith_f_op_f32(-712f + -1211f)))), func_4(Struct_5(func_2(Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 9632u), vec3<i32>(0i, -7522i, u_input.b.x), 34750u, vec4<f32>(294f, -922f, -1088f, 1000f)), vec4<u32>(u_input.a.x, 0u, 58472u, u_input.a.x)), -447f), Struct_4(Struct_2(true, -1000f, Struct_1(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), 1u, vec4<f32>(1270f, -603f, 2371f, -1000f))), func_2(Struct_1(u_input.a, vec3<i32>(u_input.b.x, -27570i, u_input.b.x), 11844u, vec4<f32>(-2073f, 1000f, -724f, -546f)), vec4<u32>(23245u, 48475u, 4294967295u, u_input.a.x)), func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 2191f, Struct_1(u_input.a, vec3<i32>(-1i, -1i, -27953i), 0u, vec4<f32>(-309f, 1059f, 1708f, -220f))), 142f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1309f, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 27148u), vec3<i32>(0i, u_input.b.x, u_input.b.x), 19804u, vec4<f32>(1291f, 1273f, -1429f, 1949f))), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1782f, Struct_1(vec3<u32>(24491u, u_input.a.x, 1u), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(396f, -371f, 552f, -824f))), Struct_1(u_input.a, vec3<i32>(-22813i, u_input.b.x, 2147483647i), 50742u, vec4<f32>(359f, 148f, 156f, 599f)), false, vec2<f32>(-642f, -1000f)), vec4<f32>(-369f, -1649f, -879f, 1000f)).a.c, global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-2865f, 1400f) + vec2<f32>(1293f, 1238f))), func_4(Struct_5(Struct_2(true, -972f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, -11101i), u_input.a.x, vec4<f32>(-1183f, 350f, 1887f, 1771f))), -545f), func_4(Struct_5(Struct_2(true, 235f, Struct_1(u_input.a, vec3<i32>(1i, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(-364f, 1333f, -1000f, 381f))), 1000f), Struct_4(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -1803f, Struct_1(u_input.a, vec3<i32>(19970i, 0i, u_input.b.x), 13226u, vec4<f32>(935f, -1356f, 196f, 627f))), Struct_2(false, 1419f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, 2147483647i, 1i), 1266u, vec4<f32>(-1283f, -2173f, 701f, 103f))), Struct_1(u_input.a, vec3<i32>(8985i, u_input.b.x, 16186i), u_input.a.x, vec4<f32>(1000f, 226f, 193f, 616f)), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<f32>(-1000f, 1637f)), vec4<f32>(1080f, 264f, -778f, 1324f)), vec4<f32>(988f, -218f, 1145f, -1000f)).c.d), vec4<f32>(-1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1822f - -439f)), _wgslsmith_f_op_f32(f32(-1f) * -733f), -1158f)), Struct_5(func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1758f, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 12269u), vec3<i32>(468i, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(-451f, 406f, -1219f, -223f))), _wgslsmith_f_op_f32(-539f - -1924f)), Struct_4(func_4(Struct_5(Struct_2(true, -676f, Struct_1(u_input.a, vec3<i32>(-31911i, -35856i, u_input.b.x), u_input.a.x, vec4<f32>(-212f, -938f, -733f, -1088f))), 864f), Struct_4(Struct_2(false, -1107f, Struct_1(vec3<u32>(4294967295u, 35472u, u_input.a.x), vec3<i32>(u_input.b.x, -25872i, 13972i), u_input.a.x, vec4<f32>(1211f, -365f, -1160f, -1000f))), Struct_2(global0[_wgslsmith_index_u32(33183u, 14u)], 2411f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(669f, -426f, -200f, 262f))), Struct_1(u_input.a, vec3<i32>(u_input.b.x, 1i, u_input.b.x), 4294967295u, vec4<f32>(428f, 252f, -817f, -509f)), global0[_wgslsmith_index_u32(10894u, 14u)], vec2<f32>(406f, -1000f)), vec4<f32>(243f, -117f, -1235f, -1197f)).a, Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 338f, Struct_1(vec3<u32>(1u, 29089u, 0u), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(290f, -1534f, 1365f, -923f))), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, 0i), 0u, vec4<f32>(-1250f, -822f, 898f, -867f)), all(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, true)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-907f, 1000f)))), vec4<f32>(1f, 1f, 1f, 1f)).a, _wgslsmith_f_op_f32(step(252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f + -797f) + _wgslsmith_f_op_f32(f32(-1f) * -1543f))))), select(vec4<bool>(true, func_1(min(u_input.a.x, u_input.a.x)).x, false, true), !select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(61437u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 14u)]), false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, global0[_wgslsmith_index_u32(20546u, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], true, false, global0[_wgslsmith_index_u32(63670u, 14u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), false), true && global0[_wgslsmith_index_u32(func_2(Struct_1(vec3<u32>(0u, u_input.a.x, 64120u), vec3<i32>(-32596i, -2147483647i, u_input.b.x), 92163u, vec4<f32>(883f, -1447f, -1118f, -834f)), vec4<u32>(203u, 20240u, u_input.a.x, u_input.a.x) >> (vec4<u32>(50704u, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))).c.c, 14u)])));
    let var_1 = Struct_5(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 311f, func_4(Struct_5(func_4(Struct_5(Struct_2(true, var_0.x, Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(var_0.x, var_0.x, -739f, var_0.x))), -498f), Struct_4(Struct_2(true, var_0.x, Struct_1(vec3<u32>(4294967295u, u_input.a.x, 91849u), vec3<i32>(u_input.b.x, 56609i, -2147483647i), u_input.a.x, vec4<f32>(var_0.x, -290f, -359f, var_0.x))), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 14u)], -924f, Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), 4294967295u, vec4<f32>(var_0.x, var_0.x, var_0.x, 715f))), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 1048u), vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(var_0.x, var_0.x, var_0.x, -535f)), global0[_wgslsmith_index_u32(64985u, 14u)], vec2<f32>(var_0.x, -1000f)), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)).b, _wgslsmith_f_op_f32(f32(-1f) * -767f)), Struct_4(func_4(Struct_5(Struct_2(global0[_wgslsmith_index_u32(57793u, 14u)], var_0.x, Struct_1(vec3<u32>(42685u, 1u, u_input.a.x), vec3<i32>(1i, 1i, 1128i), 0u, vec4<f32>(1000f, var_0.x, var_0.x, 1000f))), var_0.x), Struct_4(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -871f, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.b.x, 0i, u_input.b.x), 0u, vec4<f32>(-345f, 242f, 287f, var_0.x))), Struct_2(false, 1281f, Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 6071i, u_input.b.x), 36695u, vec4<f32>(660f, 1083f, var_0.x, -670f))), Struct_1(vec3<u32>(47139u, 67131u, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, -13957i), u_input.a.x, vec4<f32>(var_0.x, -383f, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(44150u, 14u)], vec2<f32>(598f, 928f)), vec4<f32>(1006f, -424f, var_0.x, 1103f)).a, func_2(Struct_1(vec3<u32>(u_input.a.x, 27832u, 0u), vec3<i32>(0i, 3813i, -5337i), u_input.a.x, vec4<f32>(var_0.x, -914f, var_0.x, -1050f)), vec4<u32>(32243u, 30021u, u_input.a.x, 4294967295u)), Struct_1(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.a.x, vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -242f) * vec2<f32>(var_0.x, var_0.x))), vec4<f32>(-1696f, 671f, _wgslsmith_f_op_f32(-484f * var_0.x), _wgslsmith_f_op_f32(-var_0.x))).b.c), -1000f);
    var_0 = var_1.a.c.d.xz;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.b))) - _wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1549f + _wgslsmith_f_op_f32(trunc(-184f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.a.c.d.zyw))));
    var_2 = _wgslsmith_f_op_vec3_f32(var_1.a.c.d.xwx * func_2(Struct_1(min(~vec3<u32>(var_1.a.c.a.x, u_input.a.x, u_input.a.x), func_4(Struct_5(var_1.a, var_2.x), Struct_4(var_1.a, Struct_2(false, var_2.x, var_1.a.c), var_1.a.c, false, var_1.a.c.d.xx), var_1.a.c.d).c.a), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_1.a.c.b.x, 0i, -1i), var_1.a.c.b), var_1.a.c.c, _wgslsmith_f_op_vec4_f32(var_1.a.c.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, -2953f, var_2.x, 648f)))), reverseBits(vec4<u32>(58754u, u_input.a.x | u_input.a.x, _wgslsmith_mult_u32(var_1.a.c.a.x, u_input.a.x), var_1.a.c.a.x))).c.d.xyy);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -183f, func_4(var_1, Struct_4(var_1.a, var_1.a, Struct_1(var_1.a.c.a, var_1.a.c.b, var_1.a.c.a.x, vec4<f32>(var_1.a.b, 1214f, 1623f, -2158f)), var_1.a.a, var_2.zy), var_1.a.c.d).a.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -1511f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b))), -1407f, 910f), var_1.a.c.d.yzx);
    let var_4 = !any(func_1(~0u)) == ((~(~var_1.a.c.c) >> (select(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x, false) % 32u)) != ~var_1.a.c.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), vec4<u32>(~u_input.a.x, select(u_input.a.x, u_input.a.x, true), abs(u_input.a.x), func_2(Struct_1(var_1.a.c.a, var_1.a.c.b, 0u, var_1.a.c.d), vec4<u32>(1u, var_1.a.c.c, u_input.a.x, 4294967295u)).c.a.x)), 4294967295u, func_4(Struct_5(func_2(func_6(Struct_1(var_1.a.c.a, var_1.a.c.b, var_1.a.c.c, var_1.a.c.d)).a, vec4<u32>(46136u, u_input.a.x, u_input.a.x, 57657u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f))), Struct_4(var_1.a, Struct_2(any(vec3<bool>(var_1.a.a, var_1.a.a, true)), _wgslsmith_f_op_vec2_f32(func_7(vec4<bool>(global0[_wgslsmith_index_u32(29676u, 14u)], global0[_wgslsmith_index_u32(35260u, 14u)], false, true), Struct_4(Struct_2(var_4, var_0.x, var_1.a.c), var_1.a, Struct_1(vec3<u32>(var_1.a.c.a.x, u_input.a.x, var_1.a.c.c), vec3<i32>(var_1.a.c.b.x, u_input.b.x, 1i), var_1.a.c.c, vec4<f32>(1000f, -999f, var_0.x, -412f)), var_4, var_3.xz), var_1, vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], true, false, var_4))).x, Struct_1(u_input.a, vec3<i32>(26692i, var_1.a.c.b.x, 74980i), u_input.a.x, var_1.a.c.d)), Struct_1(u_input.a, _wgslsmith_clamp_vec3_i32(var_1.a.c.b, var_1.a.c.b, var_1.a.c.b), ~var_1.a.c.a.x, _wgslsmith_f_op_vec4_f32(-var_1.a.c.d)), true, var_3.xz), var_1.a.c.d).b.c.c);
}

