struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<bool> {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), true)), all(select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, false))), true || any(vec2<bool>(true, arg_0))), vec3<bool>(false, arg_0, ~u_input.a != abs(0u)));
    var var_1 = true;
    var var_2 = Struct_1(~vec2<i32>(2147483647i, abs(1i)), vec4<bool>(var_0.x, true, true, var_0.x && true), select(select(!vec3<bool>(var_0.x, true, var_0.x), select(!vec3<bool>(var_0.x, true, var_0.x), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, true, true)), !(!vec3<bool>(false, false, arg_0))), vec3<bool>(true, !arg_0, true), all(vec2<bool>(var_0.x & false, true))));
    var var_3 = Struct_1(vec2<i32>(~_wgslsmith_div_i32(countOneBits(var_2.a.x), firstTrailingBit(var_2.a.x)), abs(1i)), var_2.b, select(select(select(vec3<bool>(true, var_0.x, var_2.b.x), !vec3<bool>(arg_0, var_2.c.x, false), !vec3<bool>(var_2.b.x, false, false)), !(!vec3<bool>(var_0.x, false, var_0.x)), var_2.c.x), !(!vec3<bool>(var_2.c.x, var_2.c.x, var_0.x)), var_2.c));
    var_2 = Struct_1(-var_3.a, vec4<bool>(arg_0, var_0.x, false, var_3.b.x), vec3<bool>(false, !(select(var_0.x, false, var_2.c.x) & var_0.x), 1i >= countOneBits(var_3.a.x)));
    return !vec4<bool>(var_0.x, false, true || var_0.x, true);
}

fn func_2(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = all(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), select(func_3(true, u_input.a), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    var var_1 = true;
    var var_2 = ~_wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(reverseBits(14365u), ~u_input.a)), arg_1);
    var var_3 = func_3(var_0, firstTrailingBit(1u) & 86375u).yx;
    var_2 = 1u;
    return !(!(!(!func_3(var_3.x, 1u))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~arg_2.yy, func_2(-2147483647i, u_input.a), func_3(arg_3, abs(u_input.a ^ 1u)).xzx), Struct_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(24820i, 1i), ~vec2<i32>(arg_1, arg_1)), !(!func_3(arg_3, u_input.a)), !(!(!vec3<bool>(arg_3, arg_3, false)))));
    var var_1 = true;
    let var_2 = vec2<bool>(!var_0.a.c.x, !(-9271i >= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, 18693i), vec3<i32>(var_0.a.a.x, arg_1, var_0.a.a.x)), arg_2.xyx)));
    return Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(arg_2.yw, vec2<i32>(0i, 2147483647i))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, u_input.a)) % vec2<u32>(32u)), -vec2<i32>(arg_1 & 1i, _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(0i, 1i, arg_1, -2147483647i)))), !func_3(any(var_0.b.b) && (2147483647i == arg_2.x), ~53257u), vec3<bool>(var_0.b.c.x, func_2(10347i, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(7225u, u_input.a, 6888u))).x, !(!var_0.a.b.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_sub_vec2_i32(arg_1.b.a, vec2<i32>(1i, 1i)), func_2(0i, 0u), arg_1.b.c);
    let var_1 = -2314f;
    var var_2 = var_0.c;
    var var_3 = arg_1.a.c;
    var var_4 = Struct_2(Struct_1(arg_1.b.a, func_1(~1i, arg_1.b.a.x, -(~vec4<i32>(-52619i, 23430i, arg_1.a.a.x, arg_1.a.a.x)), _wgslsmith_f_op_f32(-var_1) == var_1).b, !select(!vec3<bool>(arg_0, var_2.x, false), arg_1.b.c, true)), Struct_1(abs(vec2<i32>(-arg_1.b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.b.a.x, arg_1.b.a.x), vec3<i32>(arg_1.b.a.x, var_0.a.x, 2147483647i)))), !vec4<bool>(true, func_2(-2147483647i, u_input.a).x, 0u > arg_2, var_1 == -350f), func_1(-19484i, -2147483647i ^ ~var_0.a.x, _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.a.a.x, -1i, 0i, -23885i), -vec4<i32>(var_0.a.x, -2147483647i, arg_1.b.a.x, var_0.a.x), vec4<i32>(23502i, 30009i, var_0.a.x, var_0.a.x) << (vec4<u32>(u_input.a, u_input.a, arg_2, u_input.a) % vec4<u32>(32u))), func_3(!var_2.x, countOneBits(0u)).x).b.wxz));
    return Struct_1(var_4.a.a, !func_1(_wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, var_4.a.a.x), _wgslsmith_sub_i32(11874i, 1i)), var_4.a.a.x, _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-28658i, 2147483647i, -49403i, var_4.a.a.x)), select(vec4<i32>(0i, var_0.a.x, 17866i, arg_1.b.a.x), vec4<i32>(-1i, var_4.a.a.x, var_4.b.a.x, 13602i), false), countOneBits(vec4<i32>(var_4.b.a.x, arg_1.a.a.x, -1i, -2147483647i))), arg_1.b.b.x).b, !(!func_2(arg_1.b.a.x, 4294967295u).xxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true))), Struct_2(func_1(min(_wgslsmith_clamp_i32(-34841i, -21622i, -7597i), 1i), (-35488i << (u_input.a % 32u)) << ((4294967295u | u_input.a) % 32u), -(~vec4<i32>(16625i, -2147483647i, -2147483647i, 1i)), true), Struct_1(countOneBits(vec2<i32>(0i, 2147483647i)), vec4<bool>(true, true, true, true), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, true))))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(107162u, 4294967295u, u_input.a), ~vec3<u32>(1u, 1u, 37429u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), vec3<u32>(1u, 26079u, u_input.a) & ~vec3<u32>(u_input.a, 1u, 4294967295u)), reverseBits(vec3<u32>(_wgslsmith_add_u32(1u, 5895u), 4294967295u, ~u_input.a))));
    var_0 = func_4(true, Struct_2(Struct_1(var_0.a, !vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x), func_4(false, Struct_2(Struct_1(var_0.a, var_0.b, var_0.b.wxx), Struct_1(var_0.a, var_0.b, vec3<bool>(true, true, false))), select(u_input.a, 45068u, true)).c), Struct_1(vec2<i32>(var_0.a.x, 37340i), var_0.b, var_0.c)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), countOneBits(select(vec3<u32>(u_input.a, u_input.a, 41176u), vec3<u32>(u_input.a, u_input.a, 1u), vec3<bool>(var_0.b.x, var_0.c.x, var_0.b.x)))), abs(u_input.a | ~u_input.a), ~4294967295u));
    let var_1 = select(!var_0.c.x, any(vec3<bool>(!(var_0.a.x > var_0.a.x), false, !(var_0.a.x != 11594i))), all(func_4(func_3(true, u_input.a).x, Struct_2(func_1(-1i, var_0.a.x, vec4<i32>(var_0.a.x, 154i, -2147483647i, var_0.a.x), var_0.b.x), Struct_1(var_0.a, var_0.b, vec3<bool>(true, false, false))), abs(u_input.a)).b.xwx));
    let var_2 = Struct_2(Struct_1(vec2<i32>(var_0.a.x, var_0.a.x), !var_0.b, select(vec3<bool>(true, true, true), var_0.c, func_1(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), -23302i, ~vec4<i32>(36657i, var_0.a.x, var_0.a.x, var_0.a.x), true).c)), Struct_1(vec2<i32>(var_0.a.x, _wgslsmith_clamp_i32(25235i, _wgslsmith_dot_vec2_i32(var_0.a, var_0.a), -var_0.a.x)), var_0.b, vec3<bool>(true, !(var_0.a.x != 1i), all(vec3<bool>(var_0.b.x, var_0.b.x, var_1)))));
    let var_3 = Struct_2(func_4(true & !any(var_2.b.c), Struct_2(func_4(!var_1, var_2, 35932u), Struct_1(_wgslsmith_div_vec2_i32(var_0.a, var_0.a), !var_2.a.b, !vec3<bool>(var_0.b.x, false, var_2.b.c.x))), 53463u), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-var_2.b.a.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-4757i, 1i, 2147483647i) & vec3<i32>(var_3.b.a.x, var_0.a.x, var_0.a.x), abs(vec3<i32>(var_0.a.x, -1i, var_3.b.a.x))), -(-1i << (countOneBits(0u) % 32u))), _wgslsmith_f_op_f32(floor(-756f)), _wgslsmith_mod_u32(abs(abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), ~1u));
}

