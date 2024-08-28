struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    var var_0 = u_input.d.x;
    var var_1 = arg_1;
    var var_2 = abs(~arg_3.b);
    return false;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(-1541f, select(_wgslsmith_dot_vec2_u32(~u_input.b, u_input.a.xx), u_input.c.x, (i32(-1i) * -9195i) <= u_input.d.x), 989f, !vec3<bool>(!all(vec2<bool>(false, false)), false, func_3(true, Struct_3(Struct_2(Struct_1(-1765f, 43309u, -2265f, vec3<bool>(false, true, true), -143f), vec4<bool>(false, true, true, false), u_input.a.xw)), vec2<u32>(27700u, 31433u), Struct_1(-783f, 62177u, 1720f, vec3<bool>(true, false, false), 508f))), -618f);
    var var_1 = vec3<i32>(_wgslsmith_clamp_i32((min(-4374i, u_input.e) ^ 2147483647i) ^ u_input.e, -59472i, _wgslsmith_add_i32(0i, firstLeadingBit(2147483647i))), min(_wgslsmith_mult_i32(1i, u_input.d.x), _wgslsmith_mult_i32(u_input.e, u_input.d.x & u_input.d.x)), select(i32(-1i) * -firstTrailingBit(u_input.e), select(_wgslsmith_dot_vec2_i32(u_input.d.xz, vec2<i32>(40208i, 0i)) ^ -u_input.e, ~18376i, var_0.d.x), all(select(select(var_0.d, vec3<bool>(true, var_0.d.x, var_0.d.x), false), var_0.d, select(vec3<bool>(var_0.d.x, false, var_0.d.x), var_0.d, var_0.d.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1184f) * 284f), -449f)));
    var_1 = ~min(abs(~vec3<i32>(var_1.x, u_input.d.x, var_1.x) << (~u_input.a.yww % vec3<u32>(32u))), vec3<i32>(-1i) * -abs(vec3<i32>(-1i, u_input.d.x, u_input.e)));
    var var_3 = 55995u;
    return !vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.x)))) <= -612f, false, false, true);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -280f), u_input.a.x, arg_0.a.e, vec3<bool>(all(arg_0.b.zwy), ~12553u != arg_0.a.b, any(select(arg_0.a.d, vec3<bool>(arg_0.a.d.x, arg_0.b.x, true), arg_0.b.zwx))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_3.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(169f * arg_3.x), _wgslsmith_f_op_f32(-arg_0.a.a), true)))), func_2(abs(1u)), ~arg_0.c);
    var var_1 = u_input.d.x;
    var var_2 = arg_0;
    return select(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), ~vec2<u32>(var_0.c.x, u_input.b.x)), ~u_input.c.yz), vec2<u32>(firstLeadingBit(~(~8730u)), arg_0.c.x), var_2.a.d.x);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(4294967295u | arg_1.a.c.x, ~_wgslsmith_add_u32(0u, ~arg_1.a.a.b)), 1u, u_input.b.x, 56964u);
    let var_1 = var_0.zww;
    var_0 = reverseBits(vec4<u32>(69257u, ~var_1.x, _wgslsmith_div_u32(u_input.c.x, 22620u), var_0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -188f), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(20085u, _wgslsmith_mult_u32(0u, var_1.x)), 58429u)), _wgslsmith_f_op_f32(f32(-1f) * -2792f), arg_1.a.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.c)));
    var var_3 = ~(~((u_input.a.xwy >> (_wgslsmith_div_vec3_u32(u_input.a.wyx, vec3<u32>(12273u, arg_1.a.a.b, var_0.x)) % vec3<u32>(32u))) >> (reverseBits(u_input.c.wzw) % vec3<u32>(32u))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(abs(func_1(Struct_2(Struct_1(-1000f, u_input.b.x, 948f, vec3<bool>(true, true, true), -579f), vec4<bool>(true, false, true, true), u_input.c.wy), vec2<i32>(31601i, u_input.e), vec3<f32>(-1000f, 1464f, -1532f), vec3<f32>(-743f, 498f, -2419f))), vec2<u32>(countOneBits(1u), func_1(Struct_2(Struct_1(1781f, u_input.a.x, 543f, vec3<bool>(true, false, true), 412f), vec4<bool>(false, true, false, true), u_input.c.zx), vec2<i32>(39664i, 34721i), vec3<f32>(-2027f, 955f, 240f), vec3<f32>(1489f, -937f, -492f)).x)), ~0u), Struct_3(Struct_2(Struct_1(_wgslsmith_div_f32(818f, -752f), func_1(Struct_2(Struct_1(144f, 0u, -718f, vec3<bool>(true, false, true), -1187f), vec4<bool>(false, false, false, false), u_input.c.wz), u_input.d.zy, vec3<f32>(-620f, -1400f, -408f), vec3<f32>(578f, 1181f, 692f)).x, _wgslsmith_f_op_f32(trunc(396f)), vec3<bool>(false, false, false), -1649f), vec4<bool>(true, true, true, func_2(1u).x), vec2<u32>(func_1(Struct_2(Struct_1(-501f, 59252u, 184f, vec3<bool>(true, true, false), -2334f), vec4<bool>(true, true, false, false), vec2<u32>(4294967295u, 1u)), u_input.d.yx, vec3<f32>(225f, -1045f, -961f), vec3<f32>(571f, 205f, 1746f)).x, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 3101u)))));
    let var_1 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, -abs(reverseBits(vec4<i32>(-2915i, var_1, u_input.d.x, 43718i)) ^ ~vec4<i32>(u_input.d.x, var_1, u_input.e, var_1)), 819f);
}

