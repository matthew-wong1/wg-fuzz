struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, true, true, true, false, false, false, false, true, false, false, false, true, false, false, true, false, true, true, false, true, false, true, true, false, true, false);

var<private> global1: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(9203i, -32960i, -56006i, -43045i), vec4<i32>(0i, -14589i, -22392i, -1i), vec4<i32>(1i, -64263i, -77330i, -18872i), vec4<i32>(-1i, -1552i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -20824i), vec4<i32>(20843i, -1i, 15165i, 0i), vec4<i32>(39822i, 46848i, -19159i, 46162i), vec4<i32>(-10730i, -36217i, -1i, 25596i), vec4<i32>(-1i, -1i, i32(-2147483648), 1027i), vec4<i32>(8656i, 0i, 1i, 1i), vec4<i32>(i32(-2147483648), -33955i, -11560i, 1i), vec4<i32>(5170i, i32(-2147483648), 0i, 1i), vec4<i32>(-15930i, 0i, -1i, -16261i), vec4<i32>(0i, i32(-2147483648), -16892i, 0i), vec4<i32>(-5153i, 22987i, -1i, i32(-2147483648)), vec4<i32>(1i, 0i, 35621i, -6628i), vec4<i32>(7972i, 0i, -66761i, 1i), vec4<i32>(3327i, 0i, 2147483647i, 6149i), vec4<i32>(18560i, -1i, -50797i, -4937i), vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec4<i32>(4425i, i32(-2147483648), -19473i, 0i), vec4<i32>(-62944i, 1i, -39236i, i32(-2147483648)), vec4<i32>(1i, -4524i, 7036i, 7004i), vec4<i32>(1i, 1i, 0i, -14605i), vec4<i32>(0i, 14697i, -21870i, -1i), vec4<i32>(-15499i, -66743i, -1i, 2147483647i), vec4<i32>(-6722i, 1i, -69046i, -33431i), vec4<i32>(2147483647i, 1i, 2206i, 10328i), vec4<i32>(17335i, 6515i, 0i, -21731i), vec4<i32>(2147483647i, 29028i, -14533i, 2147483647i), vec4<i32>(18483i, 23786i, 0i, 3420i), vec4<i32>(i32(-2147483648), -1i, 1i, -23050i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    global1 = array<vec4<i32>, 32>();
    var var_2 = Struct_1(u_input.c);
    return Struct_1(firstTrailingBit(u_input.a.x) ^ _wgslsmith_mult_i32((u_input.c ^ var_1.a) ^ -var_1.a, -4i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 29>();
    return func_1(arg_2);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_mod_i32(~(u_input.a.x >> (4294967295u % 32u)), func_2(vec3<i32>(arg_0.a, 5365i, u_input.c), select(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 29u)]), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(arg_0.a)).a));
    let var_1 = !global0[_wgslsmith_index_u32(u_input.b.x, 29u)];
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_div_f32(-1168f, 1061f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(698f + _wgslsmith_f_op_f32(round(304f))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_div_f32(var_2, -1415f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(var_2, var_2, var_2))));
    var var_4 = vec3<bool>(any(!(!(!vec2<bool>(var_1, var_1)))), false, ~max(-16398i, func_2(vec3<i32>(arg_0.a, 18400i, -2147483647i), vec2<bool>(false, false), arg_0).a) >= func_2(vec3<i32>(reverseBits(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(11237i, arg_0.a, u_input.a.x, -1i), vec4<i32>(u_input.c, -18130i, 1i, arg_0.a)), min(-1526i, -19577i)), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(~3566u, 29u)]), arg_0).a);
    return reverseBits(-var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<u32>(u_input.b.x, max(1u, 1u ^ u_input.b.x) ^ u_input.b.x), ~u_input.b.yx, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]);
    var_0 = ~(u_input.b.yz ^ vec2<u32>(~32256u >> ((var_0.x ^ var_0.x) % 32u), u_input.b.x));
    let var_1 = func_2(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-7978i, u_input.c, -31136i), -vec3<i32>(u_input.c, u_input.c, 0i)), ~vec3<i32>(0i, u_input.a.x, u_input.c)), _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(8363i, u_input.a.x, 1i), vec3<i32>(u_input.a.x, -41838i, 0i)), -reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 29u)]), func_1(Struct_1(_wgslsmith_mult_i32(5862i, u_input.c))));
    let var_2 = -1i | ~(-_wgslsmith_clamp_i32(u_input.a.x, ~var_1.a, func_3(Struct_1(-1i))));
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(642f)), 1152f, -1000f))));
    var var_4 = false;
    var var_5 = firstLeadingBit(~u_input.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~min(99962u, 32948u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, _wgslsmith_div_f32(var_3.x, -1000f))), select(~_wgslsmith_mod_vec3_u32(~u_input.b, vec3<u32>(34825u, u_input.b.x, var_0.x)), u_input.b, 27861i <= (0i ^ firstTrailingBit(var_2))));
}

