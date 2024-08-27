struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    return true;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(~(~(-1645i))), -firstLeadingBit(u_input.a | u_input.a) & min(-23511i, -u_input.a), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, u_input.a, u_input.a, u_input.a), min(vec4<i32>(-21879i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, 0i, arg_0.x, 2147483647i))), _wgslsmith_mult_i32(-u_input.a, -8145i), arg_0.x | select(arg_0.x, -2147483647i, true)), ~(-(vec3<i32>(arg_0.x, arg_0.x, 2147483647i) | vec3<i32>(0i, u_input.a, arg_0.x)))), Struct_2(Struct_1(arg_0.x), -6639i < -(arg_0.x | arg_0.x), Struct_1(arg_0.x), vec4<bool>(true, true & any(vec2<bool>(false, true)), !func_3(Struct_3(Struct_1(-1i), -14210i, vec3<i32>(u_input.a, arg_0.x, 2147483647i), Struct_2(Struct_1(-13787i), true, Struct_1(arg_0.x), vec4<bool>(true, true, false, true))), false), false)));
    var var_1 = !all(var_0.d.d.wyw);
    let var_2 = Struct_2(var_0.a, any(vec3<bool>(var_0.d.b, var_0.d.b, select(var_0.d.b, true, all(vec2<bool>(var_0.d.b, true))))), Struct_1(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(2147483647i, arg_0.x, var_0.d.c.a), var_0.c, var_0.d.d.xwy), firstLeadingBit(var_0.c))), vec4<bool>(true, var_0.d.d.x, true, !(!var_0.d.b & all(vec3<bool>(var_0.d.b, var_0.d.d.x, var_0.d.d.x)))));
    let var_3 = var_0.d.b;
    var_1 = true;
    return Struct_3(Struct_1(_wgslsmith_mult_i32(1i, u_input.a)), 66923i, vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_dot_vec3_i32(var_0.c, var_0.c)), Struct_2(var_2.a, var_0.d.b, var_2.c, select(!vec4<bool>(var_0.d.b, var_2.d.x, var_2.d.x, true), !(!var_2.d), true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = arg_1.d.b;
    var var_2 = select(arg_1.d.d.xzx, vec3<bool>(arg_1.d.b && arg_1.d.d.x, arg_1.d.b, false), true);
    var_0 = abs(~(~_wgslsmith_sub_u32(countOneBits(20255u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13608u, 0u), vec3<u32>(1u, 4294967295u, 21519u)))));
    var var_3 = Struct_3(Struct_1(max(func_2(arg_1.c.xz).c.x, 1i)), arg_1.a.a, ~vec3<i32>(_wgslsmith_mod_i32(-15208i, arg_1.a.a), u_input.a, 43456i), func_2(~arg_1.c.xz).d);
    return ~func_2(var_3.c.xx).c.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = func_2(arg_2.c.xy).d.d.zww;
    var var_1 = -arg_0.a;
    let var_2 = -min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(19315i, 0i, 22009i, arg_2.a.a), vec4<i32>(u_input.a, arg_3.x, 0i, arg_0.a)), -2147483647i, -1i & arg_1.x) | vec3<i32>(-1i, firstLeadingBit(arg_3.x), -1i), -firstTrailingBit(vec3<i32>(-70329i, -44883i, 2147483647i)));
    var var_3 = arg_2.d.b;
    let var_4 = arg_2.a;
    return !select(!(!(!vec2<bool>(var_0.x, false))), arg_2.d.d.zz, func_2(_wgslsmith_sub_vec2_i32(-arg_2.c.yz, -var_2.yz)).d.d.zx);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = arg_0.d.d.yw;
    let var_1 = arg_0.d;
    let var_2 = arg_0.a;
    let var_3 = reverseBits(_wgslsmith_add_i32(arg_0.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~arg_0.c.xx, max(vec2<i32>(1i, var_2.a), vec2<i32>(var_2.a, u_input.a))), arg_0.c.yy)));
    var_0 = select(func_5(Struct_1(1i), vec3<i32>(8161i, -_wgslsmith_add_i32(1i, -13097i), func_4(vec2<f32>(388f, 627f), func_2(vec2<i32>(var_1.c.a, arg_0.c.x)))), arg_0, vec2<i32>(_wgslsmith_clamp_i32(func_4(vec2<f32>(arg_2, -902f), arg_0), min(-36873i, arg_0.c.x), ~var_3), _wgslsmith_mult_i32(-var_2.a, 0i))), !(!vec2<bool>(arg_0.d.b, false)), arg_1);
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(~1i), u_input.a, ~vec3<i32>(abs(u_input.a), 2147483647i, u_input.a), Struct_2(Struct_1(0i), any(vec3<bool>(true, func_1(Struct_3(Struct_1(u_input.a), -48803i, vec3<i32>(u_input.a, u_input.a, 24365i), Struct_2(Struct_1(u_input.a), false, Struct_1(-8791i), vec4<bool>(true, false, true, true))), true, 1681f), any(vec2<bool>(false, false)))), func_2(_wgslsmith_mult_vec2_i32(select(vec2<i32>(47007i, u_input.a), vec2<i32>(u_input.a, 12576i), vec2<bool>(true, true)), countOneBits(vec2<i32>(-20878i, u_input.a)))).a, select(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(0i, 0i))).d.d, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false))));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-145f, -572f), vec2<f32>(-720f, 1334f)))))), vec2<f32>(-1053f, 776f)));
    let var_3 = var_0.d.c;
    var var_4 = -1324f;
    let x = u_input.a;
    s_output = StorageBuffer(63910u);
}

