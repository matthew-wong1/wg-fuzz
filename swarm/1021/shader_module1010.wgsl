struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 858f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(-1049f * 541f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-730f + _wgslsmith_f_op_f32(-901f + -384f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f * 715f)))));
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1431f)));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(557f)) - _wgslsmith_f_op_f32(143f - -326f))))));
    let var_1 = u_input.d >> (select(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x) >> (u_input.d % vec4<u32>(32u))), vec4<u32>(reverseBits(countOneBits(34742u)), 51571u, ~u_input.d.x, 32181u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), true), true)) % vec4<u32>(32u));
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_clamp_i32(countOneBits(abs(~var_0.x)), abs(func_3()), -2147483647i) <= var_0.x;
    var_1 = !any(vec3<bool>(true, !(u_input.d.x == 0u), false));
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32((u_input.a << (vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) % vec3<u32>(32u))) | abs(vec3<i32>(var_0.x, var_0.x, -80317i)), (vec3<i32>(var_0.x, u_input.c, -1i) & -u_input.a) << (_wgslsmith_clamp_vec3_u32(u_input.d.ywx, firstTrailingBit(vec3<u32>(u_input.d.x, 52494u, u_input.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(24942u, 0u, 56352u), vec3<u32>(66082u, 0u, u_input.d.x))) % vec3<u32>(32u))), vec3<i32>(-2441i, 30958i, 27160i));
    let var_3 = _wgslsmith_mod_i32(1i, var_0.x);
    return Struct_1(u_input.d.yy | u_input.d.wz, any(select(vec3<bool>(false, all(vec2<bool>(false, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), false)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(vec2<u32>(~1u, var_0.a.x ^ ~1u), var_0.b);
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2351f) - 1008f)));
    let var_2 = u_input.d;
    var var_3 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~vec2<u32>(1u, 1u)));
    var var_1 = reverseBits(~u_input.c) | -(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.c), u_input.a.x >> (31566u % 32u)) ^ u_input.b.x);
    var var_2 = Struct_1(var_0.a, var_0.b);
    var var_3 = Struct_1(u_input.d.yz, false);
    var var_4 = ~4294967295u;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) * _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1062f, 319f, var_0.b))))))));
    var var_6 = var_0;
    let var_7 = ~(_wgslsmith_mod_u32(~var_0.a.x & var_0.a.x, _wgslsmith_add_u32(0u, ~u_input.d.x)) << (~u_input.d.x % 32u));
    let var_8 = _wgslsmith_add_vec3_i32(select(~u_input.a, firstTrailingBit(~u_input.a >> (~u_input.d.wyz % vec3<u32>(32u))), !any(!vec4<bool>(var_2.b, var_2.b, true, var_2.b))), reverseBits(u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-1i << (~4294967295u % 32u))), -2147483647i, ~vec2<u32>(8195u, 1u), ~var_0.a.x);
}

