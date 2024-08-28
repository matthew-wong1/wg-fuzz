struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_3(Struct_2(!(!vec4<bool>(false, arg_0, false, true))), u_input.a.x);
    let var_1 = var_0;
    var var_2 = Struct_3(Struct_2(!var_0.a.a), 1u);
    var var_3 = ~(vec3<i32>(_wgslsmith_sub_i32(-35399i, -u_input.b.x), abs(u_input.b.x), -14377i) | reverseBits(-vec3<i32>(20738i, -27843i, 1944i) >> (min(u_input.a.xyx, u_input.a.wzz) % vec3<u32>(32u))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -142f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(808f, 1060f), _wgslsmith_f_op_f32(f32(-1f) * -1353f))))));
    return 1u;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~_wgslsmith_add_i32(2147483647i, u_input.b.x), 1i >> (_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x) % 32u)), u_input.b.x), u_input.b.x, u_input.b.x << (_wgslsmith_mod_u32(u_input.a.x, func_3(!arg_0.a.x)) % 32u), _wgslsmith_div_i32(-2147483647i, -34372i << (1u % 32u)));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(0u), ~1u, ~firstLeadingBit(1u)), ~_wgslsmith_clamp_vec3_u32(u_input.a.wwy, u_input.a.wxz, select(u_input.a.yxx, u_input.a.zwx, arg_0.a.x)), u_input.a.zyy), firstLeadingBit(_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, 9780u)), ~u_input.a.wyw)), u_input.a.zxz);
    var var_3 = -max(abs(firstLeadingBit(~vec2<i32>(-23014i, 7566i))), u_input.b);
    let var_4 = Struct_4(arg_0, !(select(arg_0.a.x, all(arg_0.a.zw), any(vec2<bool>(true, arg_0.a.x))) && true), _wgslsmith_mult_u32(4294967295u, var_2.x));
    return Struct_1(-670f);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = u_input.b.x;
    let var_1 = max(u_input.b.x, _wgslsmith_add_i32(1i, -(~reverseBits(2147483647i))));
    let var_2 = select(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, any(vec3<bool>(true, true, false))), !select(false, false, true)), !select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), !select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, false)));
    let var_3 = -u_input.b;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1227f);
    return Struct_3(Struct_2(vec4<bool>(true, all(select(vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, true, true))), all(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, false, var_2.x), false)), var_2.x)), _wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.a.yz));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: u32) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(vec4<bool>(arg_0.a.x, true, true, 1u >= ~u_input.a.x)), 22414u);
    var var_1 = _wgslsmith_f_op_f32(round(-519f));
    var var_2 = func_4(func_2(Struct_2(!(!arg_0.a))));
    let var_3 = !(!select(var_2.a.a.xzy, func_4(Struct_1(788f)).a.a.wzz, select(select(vec3<bool>(arg_0.a.x, var_0.a.a.x, false), vec3<bool>(false, false, arg_0.a.x), true), func_4(Struct_1(751f)).a.a.xyz, var_0.a.a.x)));
    var var_4 = ~_wgslsmith_sub_vec3_u32(~(~u_input.a.yxy), vec3<u32>(_wgslsmith_mult_u32(4294967295u, 0u), max(var_2.b, arg_2), select(u_input.a.x, var_2.b, var_3.x))) >> (~(vec3<u32>(u_input.a.x, ~0u, var_2.b) ^ (~vec3<u32>(1u, var_0.b, 10820u) << (~u_input.a.yxz % vec3<u32>(32u)))) % vec3<u32>(32u));
    return Struct_4(Struct_2(!var_2.a.a), false, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)))), -1i, ~u_input.a.x);
    let var_1 = var_0.a.a;
    var var_2 = func_1(Struct_2(!var_0.a.a), -u_input.b.x, u_input.a.x);
    var var_3 = -(~min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -116571i, -2147483647i) | vec3<i32>(-1i, -1i, u_input.b.x), select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -5620i, u_input.b.x), false)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), ~u_input.b.x, u_input.b.x)));
    var_2 = func_1(Struct_2(var_2.a.a), u_input.b.x, 1u);
    let var_4 = -553f;
    var var_5 = Struct_1(_wgslsmith_f_op_f32(var_4 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(919f)))))));
    let var_6 = func_1(func_4(func_2(var_2.a)).a, _wgslsmith_clamp_i32(-37673i ^ _wgslsmith_div_i32(firstLeadingBit(var_3.x), u_input.b.x), firstTrailingBit(abs(-u_input.b.x)), -countOneBits(_wgslsmith_sub_i32(var_3.x, u_input.b.x))), countOneBits(0u)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 12527i << (var_0.c % 32u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, var_3.x, var_3.x), vec3<i32>(var_3.x, u_input.b.x, var_3.x)), u_input.b.x), min(-vec4<i32>(2147483647i, var_3.x, var_3.x, -1i), vec4<i32>(-2147483647i, -20534i, 2147483647i, 2147483647i) >> (~u_input.a % vec4<u32>(32u)))));
}

