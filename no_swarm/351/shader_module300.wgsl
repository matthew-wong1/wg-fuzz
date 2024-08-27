struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_div_i32(u_input.c.x, -48486i);
    var var_1 = arg_1.b;
    var var_2 = !select(vec3<bool>(all(select(arg_1.d, arg_1.d, true)), var_1.c.x < -156f, select(arg_1.b.b, arg_1.d.x, var_1.b) || false), select(arg_1.d.yyx, select(vec3<bool>(arg_1.d.x, var_1.b, false), arg_1.d.zwz, true), true), all(!(!vec4<bool>(false, false, arg_1.d.x, false))));
    var var_3 = u_input.d.x;
    var var_4 = arg_1;
    return var_1.c.x;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1373f + -192f))))) * _wgslsmith_f_op_f32(func_3(select(vec2<u32>(_wgslsmith_add_u32(u_input.a, u_input.d.x), u_input.a & u_input.a), ~(u_input.d.xz & u_input.d.xz), true), Struct_2(arg_0.x, Struct_1(~vec4<u32>(0u, 4294967295u, 35180u, 0u), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(1808f, -669f, -162f, -486f) + vec4<f32>(389f, -233f, -1715f, 578f)), ~4294967295u), min(vec3<i32>(1i, u_input.b, arg_0.x), vec3<i32>(-2147483647i, u_input.b, 2147483647i) & u_input.c), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_2(-u_input.b, Struct_1(~reverseBits(abs(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.a))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(543f, -299f, -1623f, 508f), vec4<f32>(104f, -883f, 229f, -405f)) * vec4<f32>(2147f, -1288f, 1300f, 1198f))), 18772u), u_input.c, !select(vec4<bool>(true, u_input.a != u_input.d.x, false, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, all(vec3<bool>(false, false, false)))));
    let var_2 = var_1.b.b;
    var_0 = var_1.b.c.x;
    var var_3 = _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.a, -1i, 2147483647i, 1i), vec4<i32>(30269i, arg_0.x, -2147483647i, var_1.c.x))), min(~_wgslsmith_add_vec4_i32(vec4<i32>(26427i, -2147483647i, arg_0.x, arg_0.x), vec4<i32>(-31313i, 4259i, var_1.a, 1i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c.x, 4544i, -11795i, 2147483647i), max(vec4<i32>(u_input.b, u_input.c.x, 1i, 18855i), vec4<i32>(u_input.c.x, 47511i, u_input.c.x, -1i))))) & (vec4<i32>(_wgslsmith_mult_i32(1i, 1i), firstLeadingBit(-arg_0.x), 33099i, ~(~var_1.a)) << (vec4<u32>(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_div_u32(select(u_input.d.x, var_1.b.a.x, var_2), _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(select(var_1.b.a.xz, var_1.b.a.wy, vec2<bool>(var_2, var_2)), vec2<u32>(67807u, var_1.b.d)), u_input.a) % vec4<u32>(32u)));
    return Struct_2(var_1.a, Struct_1(firstLeadingBit(vec4<u32>(u_input.d.x | 1u, 1u, _wgslsmith_mod_u32(1u, 14471u), u_input.d.x)), var_1.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-107f, -705f, 379f, -416f)))), 23516u), u_input.c, vec4<bool>(var_1.b.d < 4294967295u, true, var_1.b.b, !any(select(var_1.d.yx, vec2<bool>(false, false), var_2))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = -1i;
    let var_1 = arg_0;
    let var_2 = func_2(arg_0.c.yz).b;
    var var_3 = -1719f;
    var_3 = -478f;
    return true;
}

fn func_1() -> Struct_2 {
    return Struct_2(-2147483647i, Struct_1(vec4<u32>(u_input.d.x, min(63820u, u_input.d.x), abs(0u) >> (u_input.a % 32u), u_input.d.x), func_4(func_2(-u_input.c.zz), u_input.b, -306f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-639f, -2057f, -296f, -695f) * vec4<f32>(350f, -314f, -1771f, -443f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, -532f, 445f, 688f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1353f, 1104f, -1969f, -1000f) + vec4<f32>(512f, 387f, 801f, -581f)))), ~_wgslsmith_clamp_u32(1u, 1u, 1u)), u_input.c ^ vec3<i32>(-(u_input.b | u_input.b), u_input.b, ~(~44483i)), func_2(select(abs(~u_input.c.yy), -vec2<i32>(u_input.c.x, u_input.c.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = var_0.b;
    var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(var_0.b.a, firstLeadingBit(countOneBits(var_1.a)), ~vec4<u32>(~var_1.d, 39280u ^ var_1.d, var_1.a.x, ~u_input.a)), func_4(var_0, ~(-2147483647i << (~var_0.b.d % 32u)), var_1.c.x), vec4<f32>(var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.c.x, -1717f)), var_1.c.x)), var_0.b.c.x, func_1().b.c.x), var_1.d);
    let var_2 = var_0.b;
    var var_3 = var_0.c.yy;
    var var_4 = Struct_2(~(-2147483647i << ((~4294967295u << (_wgslsmith_add_u32(var_2.d, var_1.d) % 32u)) % 32u)), func_2(vec2<i32>(_wgslsmith_mod_i32(1i, -1i), ~_wgslsmith_sub_i32(2147483647i, u_input.c.x))).b, ~var_0.c, var_0.d);
    var_4 = var_0;
    let var_5 = ~select(var_1.a.xzx, vec3<u32>(countOneBits(9345u), var_4.b.d, max(max(var_0.b.a.x, 10897u), _wgslsmith_add_u32(var_4.b.a.x, var_4.b.d))), any(func_1().d));
    let var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(~0u, var_5.x, ~0u, ~var_2.a.x)));
}

