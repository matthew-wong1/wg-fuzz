struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = arg_3.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a.d.x * arg_3.d.x), _wgslsmith_f_op_f32(1173f * 486f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2039f, arg_0.d.x), arg_3.a.d)), arg_0.b.xy)), arg_0.a.d)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1073f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, arg_0.d.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.d)), _wgslsmith_f_op_vec2_f32(select(arg_3.a.d, arg_3.a.d, vec2<bool>(arg_1, true)))))), vec2<bool>(arg_0.b.x, arg_0.b.x))));
    var var_2 = arg_3.a;
    var_1 = vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1676f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + -553f), 729f)) * _wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-229f)), -202f))))));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(arg_2, u_input.c.x), ~firstLeadingBit(select(0i, 50184i, false) ^ 12502i));
    return select(arg_0.b, select(vec4<bool>((802i & arg_0.a.c) >= 1i, ~arg_0.a.b >= u_input.a.x, !(!arg_0.b.x), (var_0.a.x >> (var_0.a.x % 32u)) != firstLeadingBit(u_input.b)), arg_0.b, arg_3.b), false);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>) -> u32 {
    let var_0 = true;
    var var_1 = -u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(arg_1.b.a.d.x + -899f);
    let var_3 = Struct_3(-1i, Struct_2(arg_1.b.a, select(vec4<bool>(select(arg_1.b.b.x, false, arg_1.c), var_2 >= 1000f, select(arg_0.b.b.x, var_0, arg_0.d.b.x), all(vec3<bool>(true, var_0, false))), select(vec4<bool>(false, false, false, false), select(vec4<bool>(arg_0.d.b.x, true, false, arg_0.b.b.x), vec4<bool>(arg_0.c, var_0, true, true), true), arg_0.d.b.x), !(arg_1.a != 6679i)), arg_0.d.a.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-513f, 356f) - arg_0.d.d), _wgslsmith_f_op_vec2_f32(arg_1.b.a.d * vec2<f32>(arg_0.d.a.d.x, var_2)))), vec2<f32>(_wgslsmith_div_f32(arg_0.d.d.x, var_2), 198f), any(select(arg_1.d.b.wyw, vec3<bool>(false, arg_0.d.b.x, false), arg_0.b.b.x))))), arg_1.d.b.x, arg_0.b, arg_1.d.a.b);
    return u_input.e.x;
}

fn func_1() -> Struct_3 {
    var var_0 = 2849u;
    var var_1 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.e, _wgslsmith_mult_vec4_u32(u_input.e, u_input.e))), ~firstTrailingBit(0i), u_input.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-678f, 1000f), vec2<f32>(681f, -201f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-160f, 1512f), vec2<f32>(-1631f, 388f), false)))), u_input.b), !select(vec4<bool>(false, true, true, true), !func_2(Struct_2(Struct_1(u_input.e, u_input.a.x, u_input.c.x, vec2<f32>(-271f, 1944f), u_input.e.x), vec4<bool>(true, true, true, false), u_input.e.x, vec2<f32>(512f, 378f)), false, u_input.a.x, Struct_2(Struct_1(u_input.e, u_input.c.x, u_input.c.x, vec2<f32>(-1678f, 887f), 4294967295u), vec4<bool>(true, true, true, false), 0u, vec2<f32>(-265f, 1397f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true))), 4294967295u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(3028f, 751f)))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-1468f))), vec2<f32>(-351f, _wgslsmith_f_op_f32(488f * 891f))))));
    let var_2 = firstLeadingBit((vec3<i32>(u_input.c.x, ~var_1.a.c, _wgslsmith_div_i32(var_1.a.b, -33811i)) & abs(u_input.d.zyw)) & firstTrailingBit(vec3<i32>(-var_1.a.b, 23804i, firstTrailingBit(1i))));
    let var_3 = min(0u, ~(~func_3(Struct_3(var_1.a.b, Struct_2(var_1.a, vec4<bool>(true, var_1.b.x, false, false), u_input.b, vec2<f32>(var_1.d.x, 132f)), var_1.b.x, Struct_2(Struct_1(vec4<u32>(281u, u_input.b, 0u, u_input.e.x), var_1.a.c, -35560i, var_1.d, u_input.b), var_1.b, 16792u, var_1.a.d), -53799i), Struct_3(var_1.a.b, Struct_2(var_1.a, vec4<bool>(false, var_1.b.x, true, true), var_1.c, var_1.a.d), false, Struct_2(var_1.a, vec4<bool>(false, true, var_1.b.x, var_1.b.x), u_input.b, var_1.a.d), -5520i), _wgslsmith_div_vec3_u32(u_input.e.wyz, vec3<u32>(var_1.a.a.x, 1u, 48571u)))));
    return Struct_3(abs(1i), Struct_2(Struct_1(firstTrailingBit(vec4<u32>(56561u, 107525u, 4934u, 37071u)), -11458i, var_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.d.x, var_1.a.d.x)) - vec2<f32>(var_1.a.d.x, var_1.d.x)), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), firstLeadingBit(var_1.a.e))), !(!vec4<bool>(true, false, var_1.b.x, true)), var_3, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1000f, _wgslsmith_f_op_f32(exp2(var_1.a.d.x)))))), var_1.b.x, Struct_2(Struct_1(~select(u_input.e, var_1.a.a, true), 0i, ~abs(var_1.a.c), vec2<f32>(var_1.d.x, var_1.a.d.x), 8506u), !vec4<bool>(var_1.b.x, select(var_1.b.x, true, var_1.b.x), var_1.b.x, !var_1.b.x), abs(~(~var_1.a.e)), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.a.d.x, var_1.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(771f * 655f))))), 9751i);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = ~reverseBits(select(~firstTrailingBit(u_input.e.zy), _wgslsmith_add_vec2_u32(~vec2<u32>(34419u, 57467u), arg_0.d.a.a.yw), !(arg_0.d.d.x <= arg_0.d.a.d.x)));
    let var_1 = ~u_input.b >> (~u_input.e.x % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -252f, 2700f))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.d.x * -1652f), _wgslsmith_div_f32(1000f, arg_0.b.d.x), _wgslsmith_f_op_f32(-1025f + -1005f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.a.d.x))) + -1647f) > _wgslsmith_f_op_f32(arg_0.d.a.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.d.a.d.x, var_2.x)))));
    var var_4 = func_1().d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), false, select(func_1().d.b, select(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, true, false), func_2(Struct_2(Struct_1(vec4<u32>(35626u, u_input.b, u_input.e.x, 15521u), u_input.d.x, u_input.a.x, vec2<f32>(-625f, -355f), 4294967295u), vec4<bool>(false, false, true, false), u_input.b, vec2<f32>(-903f, -905f)), func_1().b.b.x, -11554i, func_1().d), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)))), !vec4<bool>(true, false, false, all(vec2<bool>(false, true)))), -(~u_input.d.x));
    var_0 = Struct_3(~(((u_input.a.x << (var_0.b.a.e % 32u)) & u_input.c.x) << (36325u % 32u)), var_0.d, true, Struct_2(Struct_1(~var_0.b.a.a, min(var_0.e, var_0.a), abs(firstLeadingBit(var_0.d.a.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(560f, -510f))), var_0.d.d, func_1().d.b.yw)), 1u), func_2(var_0.b, !var_0.c, func_4(func_1(), var_0.c, !var_0.b.b, _wgslsmith_mod_i32(var_0.e, var_0.e)).b.a.b, func_4(Struct_3(u_input.d.x, Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.e.x, 57760u, 1u), 2147483647i, 1i, vec2<f32>(var_0.b.a.d.x, 178f), 4294967295u), var_0.b.b, 64313u, var_0.b.a.d), true, Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.e.x, 38547u, 4294967295u), u_input.c.x, 2147483647i, var_0.b.d, 0u), vec4<bool>(true, var_0.d.b.x, true, var_0.b.b.x), var_0.d.c, var_0.b.d), u_input.c.x), false, vec4<bool>(var_0.d.b.x, var_0.d.b.x, false, false), 1i).d), func_4(Struct_3(var_0.b.a.b, var_0.d, true, var_0.d, u_input.a.x), var_0.d.b.x, vec4<bool>(all(var_0.b.b.xyz), var_0.d.b.x && true, var_0.d.b.x, var_0.c), 0i).d.a.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.d.d, vec2<f32>(-274f, var_0.d.d.x)) - var_0.b.a.d))), -2147483647i);
    var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-850f * _wgslsmith_f_op_f32(-var_0.d.a.d.x));
    let var_2 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(var_0.b.a.a, ~vec4<u32>(4294967295u, var_0.d.a.e, var_0.b.c, 32999u)) | vec4<u32>(abs(10165u), u_input.b, var_0.b.c & u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.c, 16652u, 1u), u_input.e.xyy) << (~25687u % 32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(-u_input.c, vec4<i32>(u_input.c.x, 0i, var_2.x, var_2.x), u_input.c)), u_input.d.x, 0i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, var_0.b.d.x)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 152f)))), var_0.d.a.d, func_1().d.b.x)), _wgslsmith_f_op_f32(sign(1000f)), -min(firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, -25504i)) >> (u_input.e.wyw % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(var_0.e, var_2.x), 52315i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a.c, var_2.x, -15387i, u_input.d.x), u_input.d))));
}

