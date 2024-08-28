struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_4, arg_3: bool) -> bool {
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_5) -> Struct_2 {
    var var_0 = vec4<bool>(!arg_2.a && true, arg_0.x | true, !((true && arg_0.x) || false), false);
    var_0 = vec4<bool>(arg_2.a, select(!(!(u_input.b.x != u_input.c.x)), func_3(arg_2, Struct_2(u_input.c ^ vec4<u32>(29530u, u_input.b.x, 155093u, u_input.b.x), 1u, Struct_1(vec2<i32>(arg_1.x, -2147483647i), vec4<f32>(-838f, 206f, -2275f, -159f)), u_input.d.x), Struct_4(Struct_3(Struct_1(vec2<i32>(-19052i, arg_1.x), vec4<f32>(-327f, -1098f, 1098f, -1097f))), -14260i >> (1u % 32u), Struct_1(u_input.a, vec4<f32>(-420f, 1000f, 699f, -1454f)), Struct_2(vec4<u32>(85130u, u_input.b.x, 50110u, u_input.c.x), 74600u, Struct_1(vec2<i32>(arg_1.x, 2147483647i), vec4<f32>(1000f, -365f, -1071f, -686f)), 0i)), any(var_0.zx) && all(vec3<bool>(true, arg_0.x, var_0.x))), false), true, var_0.x);
    var var_1 = 458f;
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 701f))) + 403f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1330f, _wgslsmith_f_op_f32(round(665f))))))));
    var_1 = -969f;
    return Struct_2(~(~u_input.c), 0u >> (_wgslsmith_mod_u32(u_input.c.x, ~_wgslsmith_div_u32(30499u, u_input.c.x)) % 32u), Struct_1(vec2<i32>(60143i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_1.x), vec2<i32>(10601i, arg_1.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(159f, 493f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(255f, 2136f))), 485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f - -1260f)))), min(firstTrailingBit(firstLeadingBit(-arg_1.x)), 9928i));
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(vec2<i32>(abs(-2147483647i), ~u_input.d.x), arg_3.c.b));
    return u_input.c.xwx;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = ~(~u_input.b);
    var_0 = vec3<u32>(~var_0.x, u_input.b.x << (4294967295u % 32u), ~countOneBits(0u ^ u_input.b.x)) >> (~(func_4(_wgslsmith_div_f32(arg_0.x, arg_0.x), arg_1, arg_0.x, func_2(vec2<bool>(arg_1.a, true), vec3<i32>(-13889i, u_input.e, -1i), Struct_5(arg_1.a))) >> (~_wgslsmith_mult_vec3_u32(u_input.c.wzx, u_input.c.zxy) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = ~select(firstLeadingBit(vec3<u32>(22087u, 69983u, var_0.x)), func_2(!vec2<bool>(arg_1.a, false), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.a.x, 49227i, arg_2.a.x), vec3<i32>(-2147483647i, 2147483647i, arg_2.a.x)), arg_1).a.wyy, all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.a)))) >> (vec3<u32>(var_0.x, u_input.c.x, ~(~(~12853u))) % vec3<u32>(32u));
    var_0 = u_input.b;
    var var_1 = !vec2<bool>(all(!(!vec2<bool>(false, arg_1.a))), false);
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_1(vec3<f32>(_wgslsmith_div_f32(889f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -797f, 648f), Struct_5(true), Struct_1(-u_input.d.wx << (_wgslsmith_sub_vec2_u32(vec2<u32>(41098u, 0u), u_input.c.yx) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2774f, -173f, 439f, 1000f)), vec4<f32>(681f, -1477f, -926f, 188f)))), vec2<f32>(_wgslsmith_f_op_f32(1000f + 1045f), 160f))));
    let var_1 = Struct_5(all(select(vec4<bool>(true, true, all(vec2<bool>(true, true)), true), vec4<bool>(true, true, true, true), true)));
    let var_2 = select(func_2(vec2<bool>(true, func_3(var_1, Struct_2(u_input.c, u_input.b.x, Struct_1(u_input.d.wy, vec4<f32>(var_0, 1128f, 1622f, -1062f)), 0i), Struct_4(Struct_3(Struct_1(u_input.d.xy, vec4<f32>(1380f, 158f, var_0, var_0))), 2147483647i, Struct_1(u_input.a, vec4<f32>(1000f, var_0, var_0, var_0)), Struct_2(vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.b.x), u_input.b.x, Struct_1(vec2<i32>(u_input.e, -1i), vec4<f32>(1119f, -413f, 651f, var_0)), -38134i)), false | var_1.a)), vec3<i32>(max(abs(-1i), countOneBits(u_input.a.x)), func_2(select(vec2<bool>(false, true), vec2<bool>(var_1.a, var_1.a), var_1.a), ~u_input.d.xyz, Struct_5(var_1.a)).c.a.x, func_2(select(vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, var_1.a), var_1.a), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-2147483647i, -40802i, u_input.a.x)), var_1).d), var_1).a.zx, select(_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, 0u)), u_input.c.wy), ~u_input.b.zx, func_3(Struct_5(true), func_2(vec2<bool>(false, var_1.a), firstTrailingBit(u_input.d.wwx), var_1), Struct_4(Struct_3(Struct_1(u_input.d.yy, vec4<f32>(-230f, var_0, var_0, var_0))), u_input.a.x, Struct_1(u_input.d.yx, vec4<f32>(var_0, var_0, var_0, var_0)), func_2(vec2<bool>(false, false), u_input.d.zwy, var_1)), var_1.a)), all(vec4<bool>(true, true, true, !(var_1.a == false))));
    let var_3 = vec3<i32>(u_input.d.x & _wgslsmith_dot_vec4_i32(~(~vec4<i32>(-2147483647i, 40i, 7710i, u_input.d.x)), vec4<i32>(u_input.e, u_input.d.x, -1i ^ u_input.e, 32147i)), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, 3808i, 11617i), vec4<i32>(0i, 1i, u_input.e, 0i))) >> (~(~var_2.x) % 32u), ~(u_input.a.x & u_input.a.x));
    var var_4 = Struct_1(-(~(~(~u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0, _wgslsmith_div_f32(var_0, -1451f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1012f * -1167f)), var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -236f))))));
    let var_5 = select(!vec4<bool>(!var_1.a, var_4.a.x < firstLeadingBit(38813i), var_1.a, _wgslsmith_f_op_f32(round(-1407f)) > _wgslsmith_f_op_f32(sign(var_0))), !select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), select(select(vec4<bool>(var_1.a, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), var_1.a), select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(false, false, false, false), vec4<bool>(var_1.a, false, var_1.a, true)), false), !(!vec4<bool>(true, true, var_1.a, true))), !var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.b.x, 1000f, var_5.x)))) + var_4.b.x));
}

