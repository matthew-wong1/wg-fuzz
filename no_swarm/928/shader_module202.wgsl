struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: Struct_4,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5) -> bool {
    var var_0 = Struct_3(arg_1.e, arg_0);
    let var_1 = true;
    var_0 = Struct_3(Struct_1(-1436f, -168f, !select(vec3<bool>(true, false, arg_1.e.c.x), !arg_1.e.c, var_0.a.c), var_0.a.d), arg_0);
    var_0 = Struct_3(arg_1.e, Struct_2(0i, vec2<i32>(1i, 46754i)));
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(-1000f, arg_1.c.a.x)), !(!(!vec3<bool>(var_1, var_0.a.c.x, true))), _wgslsmith_f_op_vec3_f32(arg_1.e.d + vec3<f32>(1381f, _wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(exp2(arg_1.c.d.x))))), Struct_2(i32(-1i) * -40551i, var_0.b.b));
    return false;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = select(!vec3<bool>(func_3(Struct_2(-1i, vec2<i32>(-1i, 0i)), Struct_5(vec2<i32>(1i, 2147483647i), Struct_4(vec3<f32>(-1348f, -1490f, -1084f), arg_0, var_0.c.xy, vec3<f32>(var_0.b, -1202f, var_0.a)), Struct_4(vec3<f32>(arg_0.b, -1162f, var_0.a), Struct_1(1000f, arg_0.d.x, arg_0.c, vec3<f32>(504f, -253f, var_0.a)), arg_0.c.xy, vec3<f32>(var_0.b, var_0.d.x, 2143f)), vec4<f32>(-1469f, var_0.a, 1116f, arg_0.a), Struct_1(379f, -2111f, vec3<bool>(var_0.c.x, false, false), var_0.d))), true && select(false, var_0.c.x, true), var_0.c.x), !select(select(var_0.c, !vec3<bool>(true, arg_0.c.x, var_0.c.x), any(vec4<bool>(var_0.c.x, false, false, false))), !vec3<bool>(var_0.c.x, true, arg_0.c.x), true), any(vec2<bool>(!any(arg_0.c.xz), var_0.c.x)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(385f - var_0.a), _wgslsmith_f_op_f32(ceil(-1000f)), !select(vec3<bool>(var_1.x, var_1.x & arg_0.c.x, false), select(select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_1, arg_0.c.x), vec3<bool>(true, true, true), arg_0.c), vec3<bool>(all(var_0.c.xy), var_0.c.x, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.d), _wgslsmith_f_op_vec3_f32(-arg_0.d))) + vec3<f32>(var_0.b, 543f, _wgslsmith_f_op_f32(var_0.a - arg_0.a))), _wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(round(var_0.a)), arg_0.a))));
    var var_2 = (vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), 64619u, ~u_input.b.x), _wgslsmith_sub_u32(36619u, ~u_input.a), u_input.a, 59050u) << (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 3685u, u_input.a, u_input.b.x), ~vec4<u32>(0u, 28307u, u_input.a, u_input.b.x)), select(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 1u), vec4<u32>(u_input.a, 20344u, u_input.b.x, u_input.b.x), select(vec4<bool>(var_1.x, true, arg_0.c.x, var_0.c.x), vec4<bool>(false, true, arg_0.c.x, true), var_0.c.x))) % vec4<u32>(32u))) >> (vec4<u32>(11137u, 71697u, u_input.b.x, 1u) % vec4<u32>(32u));
    var var_3 = vec2<bool>(all(select(select(var_1, vec3<bool>(true, true, true), vec3<bool>(false, false, var_0.c.x)), vec3<bool>(var_1.x, var_1.x, true | arg_0.c.x), false)), func_3(Struct_2(~(51000i >> (0u % 32u)), ~(~vec2<i32>(-28368i, 42129i))), Struct_5(vec2<i32>(1i, max(0i, -2147483647i)), Struct_4(_wgslsmith_f_op_vec3_f32(var_0.d + var_0.d), Struct_1(var_0.a, var_0.b, var_1, vec3<f32>(-1000f, arg_0.a, arg_0.a)), select(arg_0.c.zy, vec2<bool>(false, var_0.c.x), arg_0.c.x), vec3<f32>(var_0.b, -826f, arg_0.a)), Struct_4(vec3<f32>(arg_0.d.x, var_0.a, 1297f), arg_0, select(arg_0.c.xx, var_1.zy, true), arg_0.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 318f, arg_0.d.x, arg_0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, var_0.a, arg_0.b, var_0.b))), arg_0)));
    return -31880i;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_4 {
    let var_0 = arg_2;
    var var_1 = max(_wgslsmith_sub_vec4_i32(max(-vec4<i32>(-2147483647i, -1i, arg_2, 30770i), vec4<i32>(var_0, var_0, -14388i, -23674i) ^ vec4<i32>(2147483647i, var_0, -46051i, -1i)), countOneBits(-vec4<i32>(var_0, 27970i, 34492i, arg_2))) | -vec4<i32>(var_0, -12575i << (arg_1.x % 32u), firstTrailingBit(arg_2), func_2(Struct_1(arg_0.x, arg_0.x, vec3<bool>(true, false, true), arg_0))), vec4<i32>(i32(-1i) * -2147483647i, var_0, func_2(Struct_1(arg_0.x, arg_0.x, vec3<bool>(true, true, false), arg_0)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_0, arg_2, var_0)), vec3<i32>(arg_2, -18731i, var_0))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_0.x * 669f), arg_0.x, vec3<bool>(true, true & any(vec2<bool>(true, true)), true), vec3<f32>(_wgslsmith_f_op_f32(max(131f, arg_0.x)), 551f, 376f));
    var var_3 = !vec4<bool>(all(vec4<bool>(all(vec3<bool>(true, var_2.c.x, var_2.c.x)), true, var_2.c.x, var_2.c.x & false)), true, !(!var_2.c.x), var_2.c.x);
    var_3 = vec4<bool>(!all(select(vec2<bool>(var_2.c.x, var_2.c.x), !vec2<bool>(true, var_2.c.x), func_3(Struct_2(-1i, vec2<i32>(34926i, -14497i)), Struct_5(vec2<i32>(var_1.x, arg_2), Struct_4(var_2.d, Struct_1(-1075f, arg_0.x, var_2.c, arg_0), vec2<bool>(true, var_3.x), var_2.d), Struct_4(var_2.d, Struct_1(-401f, 647f, vec3<bool>(var_3.x, var_2.c.x, false), arg_0), var_2.c.xx, vec3<f32>(var_2.d.x, arg_0.x, 296f)), vec4<f32>(-1029f, 1109f, 1360f, 872f), Struct_1(-1487f, 337f, vec3<bool>(var_3.x, true, var_3.x), arg_0))))), true, true, false);
    return Struct_4(var_2.d, Struct_1(var_2.a, _wgslsmith_f_op_f32(sign(arg_0.x)), vec3<bool>(true, var_2.c.x, any(!vec3<bool>(var_2.c.x, true, var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(var_2.b + 1665f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.x)))), -1949f)), select(vec2<bool>(var_2.c.x, var_2.c.x || false), var_2.c.zx, any(!select(vec3<bool>(var_3.x, var_3.x, var_2.c.x), vec3<bool>(true, false, var_3.x), var_3.x))), var_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -395f), 1f, -511f))), countOneBits(~vec4<u32>(0u, ~u_input.a, ~0u, 20730u | u_input.b.x)), -17204i);
    var var_1 = func_1(_wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, var_0.b.a, 547f), vec3<f32>(var_0.d.x, var_0.a.x, 701f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, 1401f, 414f), var_0.b.d)), _wgslsmith_f_op_vec3_f32(floor(var_0.a)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 0u, 21644u), countOneBits(vec4<u32>(u_input.a, 99526u, u_input.b.x, u_input.a))), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), select(vec4<u32>(56845u, reverseBits(4294967295u), u_input.b.x, reverseBits(u_input.b.x)), ~(~vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.b.x)), func_3(Struct_2(-20003i, vec2<i32>(2147483647i, 2147483647i)), Struct_5(vec2<i32>(25479i, 2147483647i), var_0, Struct_4(vec3<f32>(var_0.d.x, -1000f, var_0.b.a), var_0.b, vec2<bool>(var_0.c.x, var_0.b.c.x), vec3<f32>(1665f, 228f, -351f)), vec4<f32>(1000f, var_0.a.x, -368f, var_0.b.a), Struct_1(-607f, -2088f, vec3<bool>(var_0.b.c.x, var_0.b.c.x, var_0.c.x), vec3<f32>(-990f, -456f, var_0.a.x)))))), -34081i).b;
    let var_2 = Struct_3(Struct_1(var_0.d.x, -601f, select(vec3<bool>(var_1.c.x, any(vec3<bool>(var_1.c.x, var_0.c.x, false)), !var_1.c.x), !(!vec3<bool>(var_0.b.c.x, false, true)), vec3<bool>(false && var_0.c.x, any(var_0.b.c), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), var_0.a.x, _wgslsmith_f_op_f32(-var_1.a)))), Struct_2(1i, -vec2<i32>(_wgslsmith_mod_i32(22055i, 22797i), firstTrailingBit(16835i))));
    let x = u_input.a;
    s_output = StorageBuffer(34341u, var_2.a.a, abs(-abs(firstTrailingBit(var_2.b.b.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.b.x, ~abs(2147483647i), ~var_2.b.a), vec3<i32>(_wgslsmith_div_i32(var_2.b.b.x, -1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_2.b.a, 83166i)), ~vec2<i32>(-14483i, -19494i)), var_2.b.a)), 2147483647i);
}

