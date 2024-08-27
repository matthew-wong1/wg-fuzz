struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(2147483647i), Struct_1(1i), Struct_1(-10834i), Struct_1(10170i), Struct_1(1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-900f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x))), global0.b.x)));
    var_0 = _wgslsmith_f_op_f32(max(-1037f, -856f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1045f, global0.b.x, 800f, 503f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-920f, 1944f, -1000f, 1000f) - vec4<f32>(-160f, global0.b.x, -397f, global0.b.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1586f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(184f - global0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-606f))))), -2192f));
    let var_2 = Struct_4(vec2<u32>(_wgslsmith_add_u32(1u, reverseBits(~global0.a.x)), 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(324f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(804f, -243f)))))), ~_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(global0.c.x, global0.c.x), u_input.a.zy), u_input.a.yx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1175f, -904f), _wgslsmith_f_op_f32(var_1.x + -552f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1407f, 867f), global0.b, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 940f) - var_1.zw))))));
    let var_3 = Struct_1(min(-30888i, global0.c.x));
    return var_3.a;
}

fn func_2() -> i32 {
    var var_0 = -1371f;
    var_0 = -625f;
    let var_1 = true;
    let var_2 = Struct_2(-(~u_input.a), -2147483647i);
    var_0 = _wgslsmith_f_op_f32(global0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b.x, -395f))) * -1466f)));
    return _wgslsmith_clamp_i32(49562i, _wgslsmith_div_i32(func_3(false), 61609i) | firstLeadingBit(u_input.a.x >> (abs(20182u) % 32u)), -1104i);
}

fn func_1() -> Struct_3 {
    let var_0 = ~(func_2() ^ -22309i);
    let var_1 = vec2<u32>(u_input.c.x, ~7616u);
    var var_2 = Struct_1(_wgslsmith_div_i32(var_0, u_input.b));
    var_2 = Struct_1(_wgslsmith_mult_i32(firstTrailingBit(0i), firstTrailingBit(-reverseBits(global0.c.x))));
    var var_3 = global0.d;
    return Struct_3(abs(vec3<u32>(~firstTrailingBit(1u), ~global0.a.x, 7651u)), Struct_2(_wgslsmith_add_vec3_i32(~u_input.a, u_input.a), _wgslsmith_sub_i32(21452i, u_input.b)), ~select(u_input.a, abs(u_input.a), vec3<bool>(false, any(vec3<bool>(false, false, true)), false)), Struct_2(-abs(vec3<i32>(-34586i, u_input.a.x, 1i)), _wgslsmith_dot_vec3_i32(u_input.a, abs(u_input.a)) & -firstTrailingBit(var_2.a)));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(896f)) > _wgslsmith_f_op_f32(floor(-365f));
    var var_1 = any(select(!arg_2, !vec2<bool>(true, var_0), arg_2));
    var var_2 = arg_1.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), global0.d.x, _wgslsmith_f_op_f32(sign(global0.d.x))));
    var var_4 = arg_2;
    return vec4<bool>(any(arg_2), false, !any(vec3<bool>(false != arg_0, true, all(arg_2))), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(func_4(true, func_1(), vec2<bool>(true, true)));
    let var_1 = Struct_2(-select(u_input.a, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.c.x, global0.c.x, 0i), u_input.a)), vec3<bool>(true, true, true)), global0.c.x);
    let var_2 = var_1;
    global0 = Struct_4(firstLeadingBit(~vec2<u32>(global0.a.x, 10733u) << ((~global0.a >> ((vec2<u32>(u_input.d.x, global0.a.x) >> (global0.a % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u))), global0.d, vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global0.c.x), vec2<i32>(12675i, 74906i)) | var_1.a.zy), vec2<f32>(-384f, 223f));
    var_0 = any(vec3<bool>(!((global0.a.x != 56308u) && select(false, false, true)), all(vec4<bool>(false, all(vec2<bool>(false, true)), global0.b.x <= global0.b.x, all(vec2<bool>(false, false)))), !(global0.b.x != _wgslsmith_f_op_f32(-523f * global0.b.x))));
    var var_3 = Struct_4(_wgslsmith_div_vec2_u32(~global0.a, vec2<u32>(11707u, u_input.d.x) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, 73623u), u_input.d) % vec2<u32>(32u))), global0.b, max(~firstLeadingBit(abs(u_input.a.zx)), min(-u_input.a.yx, vec2<i32>(2147483647i, 0i))), vec2<f32>(1345f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -604f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-712f * 1323f), global0.d.x))))));
    global0 = Struct_4(~global0.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.x, global0.b.x)) * vec2<f32>(var_3.b.x, -514f))))), global0.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(899f - -924f))) * -203f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1230f, var_3.d.x, true)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.b.x, -214f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

