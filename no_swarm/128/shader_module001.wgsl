struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> vec3<u32> {
    let var_0 = ~vec3<u32>(abs(countOneBits(u_input.b)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_2.x, 1u, arg_2.x, 29967u)), select(~vec4<u32>(arg_1, u_input.b, 40920u, arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 55742u, 23274u), vec4<u32>(47699u, 59531u, u_input.b, u_input.b)), vec4<bool>(true, true, true, false))), 0u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3))), arg_3, any(vec3<bool>(true, true, true)))), -491f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_3)))), -1001f);
    var var_2 = var_1.x;
    let var_3 = -689f;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-653f)), 1024f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1184f * var_3), _wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(trunc(arg_3))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1037f, 462f, 175f, 782f) + vec4<f32>(arg_3, var_3, var_3, -131f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.x, var_3, -591f) + vec4<f32>(-272f, arg_3, var_3, var_1.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(583f, 714f, 930f, var_1.x), vec4<f32>(153f, var_1.x, var_1.x, var_1.x)))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-435f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3), 575f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3, var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1166f - -228f))))));
    return vec3<u32>(arg_1, var_0.x, _wgslsmith_add_u32(((var_0.x >> (1u % 32u)) ^ reverseBits(arg_1)) & ~arg_1, 26338u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(func_3(-1i, u_input.b, (vec3<u32>(0u, 4294967295u, 97222u) | vec3<u32>(u_input.b, 1u, u_input.b)) << (~vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-362f + -506f)) << (~_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.b, u_input.b, 65193u), vec3<u32>(2443u, 0u, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 1976u, u_input.b), vec3<u32>(u_input.b, u_input.b, 26883u))) % vec3<u32>(32u)), true, !vec4<bool>(min(0i, 1i) >= ~u_input.a.x, all(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    let var_1 = Struct_1(select(firstLeadingBit(var_0.a), vec3<u32>(min(var_0.a.x, 76064u), ~4294967295u, _wgslsmith_mod_u32(1u, var_0.a.x)), select(false, var_0.c.x && var_0.b, !var_0.b)) | select(var_0.a & ~var_0.a, var_0.a, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) >= u_input.a.x), all(var_0.c.zwz), select(!select(select(var_0.c, vec4<bool>(var_0.b, var_0.c.x, true, var_0.c.x), var_0.b), vec4<bool>(false, false, false, true), all(var_0.c.yy)), !(!vec4<bool>(var_0.b, true, var_0.c.x, true)), var_0.c));
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(var_0.a, var_0.a | vec3<u32>(var_0.a.x, u_input.b, firstTrailingBit(0u))), var_0.c.x, var_0.c);
    var_0 = var_1;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-201f, 1184f)));
    return var_1;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.b;
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = ~(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17939i, arg_1.x, 2147483647i, -1i), -vec4<i32>(-1i, 42298i, arg_1.x, 0i)), vec4<i32>(arg_2.x, _wgslsmith_mult_i32(0i, arg_1.x), ~u_input.a.x, 1i)));
    var var_1 = false;
    var_1 = select(false, select(arg_3.b, any(arg_0.c), false), false);
    let var_2 = Struct_1(~vec3<u32>(15573u, arg_3.a.x, _wgslsmith_sub_u32(arg_0.a.x ^ u_input.b, arg_3.a.x)), true, vec4<bool>(true, any(vec4<bool>(select(true, true, false), true, true, !arg_3.c.x)), true & arg_0.c.x, all(select(!vec3<bool>(arg_3.c.x, arg_3.b, false), !arg_3.c.yzz, vec3<bool>(true, arg_3.c.x, arg_0.b)))));
    var var_3 = var_2.c.xxz;
    return select(!arg_3.c, vec4<bool>(true, all(func_1(vec2<f32>(1f, 1f)).c.zx), true, false), !(!vec4<bool>(var_3.x, u_input.b < 1u, arg_0.c.x, arg_3.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~vec3<u32>(~(~u_input.b), 31146u, _wgslsmith_add_u32(u_input.b, 4294967295u) ^ u_input.b), select(true, true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))), select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), func_4(func_1(vec2<f32>(-184f, -774f)), -vec3<i32>(u_input.a.x, -46851i, u_input.a.x), vec2<i32>(u_input.a.x, -2147483647i), func_2()), !func_4(Struct_1(vec3<u32>(264u, u_input.b, u_input.b), true, vec4<bool>(false, false, true, true)), vec3<i32>(-47789i, u_input.a.x, 57020i), vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(vec3<u32>(50009u, u_input.b, u_input.b), false, vec4<bool>(true, true, false, true)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-909f, -1737f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-103f, -662f)))).c, true));
    let var_1 = Struct_1(~var_0.a, true, !var_0.c);
    var var_2 = func_2();
    var_2 = var_1;
    var_2 = var_1;
    var var_3 = !select(select(func_2().c.yw, vec2<bool>(true, var_2.b), var_0.c.yz), var_2.c.zx, func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2021f, 406f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1275f, -1290f))))).c.zy);
    let var_4 = countOneBits(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-151f + -1573f), 478f, _wgslsmith_f_op_f32(trunc(-820f)), 214f) - vec4<f32>(_wgslsmith_f_op_f32(trunc(-277f)), 525f, _wgslsmith_f_op_f32(f32(-1f) * -664f), -632f))));
}

