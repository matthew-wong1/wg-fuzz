struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = countOneBits(vec2<i32>(u_input.a.x, ~u_input.a.x));
    var_0 = u_input.a.yz;
    var var_1 = select(select(select(vec2<bool>(true, all(vec2<bool>(false, true))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(all(vec3<bool>(true, false, true)), arg_2 == arg_1.a.x, false)), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) && (all(vec4<bool>(true, true, true, true)) == true));
    var var_2 = arg_2;
    var_0 = _wgslsmith_div_vec2_i32(u_input.a.yx, -(u_input.a.zx & reverseBits(vec2<i32>(-1i, 474i))) | vec2<i32>(~max(-8404i, var_0.x), ~12608i));
    return _wgslsmith_div_vec4_u32(~(~(~(~vec4<u32>(arg_2, 105859u, arg_1.a.x, 29170u)))), ~_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 4294967295u, arg_1.a.x, arg_2), vec4<u32>(0u, arg_2, 39412u, 62584u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 1u, arg_1.a.x, 0u), vec4<u32>(0u, arg_2, 1u, 4294967295u))) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, 4294967295u, 1u, 0u), ~vec4<u32>(12557u, arg_1.a.x, arg_2, 0u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = arg_0.a.x >> ((arg_0.a.x ^ _wgslsmith_div_u32(arg_0.a.x, ~abs(arg_0.a.x))) % 32u);
    var var_1 = Struct_2(arg_0.a);
    var var_2 = Struct_2(var_1.a);
    var_1 = Struct_2(~vec2<u32>(firstTrailingBit(1u) ^ _wgslsmith_mult_u32(var_1.a.x, arg_0.a.x), var_2.a.x));
    var_0 = var_1.a.x;
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.x, 89223u, var_2.a.x, 4294967295u), ~vec4<u32>(arg_0.a.x, arg_0.a.x, var_1.a.x, var_1.a.x)) << (vec4<u32>(~0u, 53117u, 1u, select(var_1.a.x, arg_0.a.x, arg_1.x)) % vec4<u32>(32u)), countOneBits((vec4<u32>(4294967295u, arg_0.a.x, 38019u, var_1.a.x) << (vec4<u32>(var_1.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, 4294967295u, 0u, var_1.a.x)) % vec4<u32>(32u))), ~func_3(-571f, arg_0, arg_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-502f, -1353f) - vec2<f32>(507f, 1564f)))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-763f, -120f, -1000f, 705f), vec4<f32>(1244f, 278f, 449f, -1400f)))) - vec4<f32>(2455f, 1f, -109f, 1027f)) - vec4<f32>(-154f, _wgslsmith_f_op_f32(729f - -318f), 1f, 888f)));
    var var_1 = Struct_2(arg_0.a);
    var var_2 = arg_2.a.yyy;
    let var_3 = Struct_2(arg_0.a);
    let var_4 = -(~vec3<i32>(countOneBits(countOneBits(u_input.a.x)), u_input.a.x, u_input.a.x << (_wgslsmith_sub_u32(3265u, arg_1) % 32u)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * 212f)));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1042f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(1495u, arg_1)), reverseBits(22291u), func_2(Struct_2(vec2<u32>(27326u, arg_1)), vec3<bool>(true, false, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2054f, 1233f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec2<u32>(1u, arg_1)), 1u, Struct_1(vec4<u32>(41663u, 11204u, 5478u, 36963u)))))))));
    var var_1 = Struct_2(abs(~abs(vec2<u32>(arg_1, 45194u))));
    var_1 = Struct_2(var_1.a);
    var var_2 = Struct_1(countOneBits(vec4<u32>(arg_1, arg_1 >> (16226u % 32u), ~arg_1, func_3(var_0, Struct_2(var_1.a), 0u, vec2<f32>(1681f, var_0)).x) >> ((~vec4<u32>(0u, var_1.a.x, arg_1, arg_1) << (vec4<u32>(9226u, arg_1, 1u, 98998u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_3 = Struct_2(vec2<u32>(firstLeadingBit(~var_2.a.x), var_2.a.x));
    return Struct_1(countOneBits(~(~_wgslsmith_sub_vec4_u32(var_2.a, var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_dot_vec4_i32(min((vec4<i32>(u_input.a.x, 27871i, 12643i, 24787i) | vec4<i32>(u_input.a.x, u_input.a.x, -16196i, u_input.a.x)) << (abs(vec4<u32>(4294967295u, 1u, 24347u, 22643u)) % vec4<u32>(32u)), -vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x) << (~vec4<u32>(7238u, 4294967295u, 4294967295u, 17277u) % vec4<u32>(32u))), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(-20646i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(0i, 2147483647i, 0i, 20920i))), firstLeadingBit(~min(firstTrailingBit(1u), firstTrailingBit(22628u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)) - _wgslsmith_div_f32(1451f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1682f, -1000f), _wgslsmith_f_op_f32(271f + 609f), true)))));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(~20584u, var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.x), vec2<u32>(var_0.a.x, var_0.a.x)))), _wgslsmith_div_vec4_u32(~abs(var_0.a), vec4<u32>(func_3(var_1, Struct_2(vec2<u32>(var_0.a.x, 4294967295u)), 1u, vec2<f32>(-303f, -848f)).x, ~82470u, var_0.a.x, func_1(-61588i, var_0.a.x).a.x))));
    let var_3 = vec4<bool>(!((_wgslsmith_div_i32(u_input.a.x, 2147483647i) | u_input.a.x) > ~u_input.a.x), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(false, true, false)), any(vec2<bool>(true, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, true, false), true))), select(all(vec2<bool>(true, u_input.a.x > u_input.a.x)), (select(true, true, true) & (-2147483647i <= u_input.a.x)) && true, (var_1 >= 1214f) & (_wgslsmith_f_op_f32(-var_1) <= -247f)), any(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, false))));
    let var_4 = -117f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.a.zw), abs(4294967295u), 1u, u_input.a.yz);
}

