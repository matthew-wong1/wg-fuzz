struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-826f, 1203f, -1318f, -731f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = global0.xw;
    var var_1 = arg_0;
    let var_2 = -u_input.c.x;
    var_1 = Struct_1(select(vec3<bool>(all(select(vec3<bool>(arg_0.a.x, false, false), vec3<bool>(false, false, arg_0.a.x), arg_0.a.x)), all(select(var_1.a.xx, vec2<bool>(false, var_1.a.x), var_1.a.x)), u_input.a != u_input.b.x), vec3<bool>(arg_0.a.x, any(vec3<bool>(true, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-97396i, -60102i, 2147483647i), vec3<i32>(2147483647i, var_2, -50455i)) < (11966i | u_input.c.x)), true));
    let var_3 = reverseBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-44037i, -1i), abs(-27694i), var_2 << (u_input.a % 32u), 1i), ~u_input.c)));
    return _wgslsmith_f_op_f32(f32(-1f) * -449f);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(!(!select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(arg_0, false, false), vec3<bool>(arg_1, arg_1, true)))));
    var var_1 = Struct_1(select(vec3<bool>(any(select(vec2<bool>(true, false), var_0.a.xz, false)), true, reverseBits(u_input.b.x) <= ~22009u), select(select(select(var_0.a, var_0.a, false), select(vec3<bool>(false, false, arg_0), vec3<bool>(false, var_0.a.x, true), vec3<bool>(false, arg_1, var_0.a.x)), var_0.a), !select(vec3<bool>(true, true, arg_1), vec3<bool>(false, var_0.a.x, arg_0), var_0.a), !vec3<bool>(arg_1, true, true)), vec3<bool>(var_0.a.x, _wgslsmith_f_op_f32(step(arg_2.x, global0.x)) == _wgslsmith_f_op_f32(global0.x + global0.x), !arg_1)));
    var var_2 = Struct_1(vec3<bool>(false, !arg_1, !all(var_1.a.zy)));
    let var_3 = firstLeadingBit(u_input.b);
    let var_4 = true;
    return ~1u;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = ~func_4(true, u_input.c.x > arg_1, vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<bool>(true, arg_2.a.x, true)))), global0.x, -417f));
    var_0 = ~(~arg_3.x);
    let var_1 = select(!(!(!(!vec4<bool>(arg_2.a.x, true, arg_2.a.x, true)))), !select(select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, false, true), vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true)), vec4<bool>(true, false, arg_2.a.x, false), arg_2.a.x), vec4<bool>(true, u_input.c.x < arg_1, u_input.a > arg_3.x, !arg_2.a.x), vec4<bool>(arg_2.a.x, !arg_2.a.x, arg_2.a.x, true)), select(vec4<bool>(true, arg_2.a.x, !arg_2.a.x, !all(vec4<bool>(false, arg_2.a.x, arg_2.a.x, true))), vec4<bool>(any(select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), arg_2.a, arg_2.a.x)), any(select(vec3<bool>(arg_2.a.x, true, true), vec3<bool>(true, arg_2.a.x, false), vec3<bool>(true, arg_2.a.x, arg_2.a.x))), true, !arg_2.a.x), select(vec4<bool>(false && arg_2.a.x, true, arg_2.a.x, any(vec4<bool>(true, true, arg_2.a.x, true))), vec4<bool>(global0.x == global0.x, true, all(vec4<bool>(true, true, arg_2.a.x, arg_2.a.x)), !arg_2.a.x), arg_2.a.x)));
    var var_2 = 70785u;
    var var_3 = var_1;
    return Struct_1(vec3<bool>(false, all(var_1) & (select(false, true, arg_2.a.x) | true), all(var_3.xxx)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = vec2<i32>(0i, u_input.c.x);
    global0 = arg_3;
    var_0 = -vec2<i32>(_wgslsmith_dot_vec3_i32(~(u_input.c.zzx << (arg_2.wxz % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(u_input.c.zwz, vec3<i32>(u_input.c.x, u_input.c.x, var_0.x))), reverseBits(countOneBits(33235i)));
    var var_1 = max(_wgslsmith_add_u32(1u, _wgslsmith_div_u32(arg_2.x, 1u)), arg_2.x) != reverseBits(~u_input.b.x | u_input.b.x);
    var var_2 = all(select(vec3<bool>(_wgslsmith_f_op_f32(round(1435f)) == _wgslsmith_f_op_f32(arg_3.x + 701f), select(true, false, true), countOneBits(u_input.c.x) != var_0.x), arg_0.a, true));
    return -47990i;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !vec4<bool>(!(!arg_2.a.x && false), false, any(arg_0), !(!(arg_2.a.x & arg_0.x)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(458f, global0.x, -702f, -779f), vec4<f32>(671f, -1386f, 402f, -885f))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1319f, 462f, 1195f), vec4<f32>(-529f, arg_1, arg_1, arg_1))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 578f, arg_1, -434f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-413f, global0.x, arg_1, 879f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, -724f, arg_1))), arg_3.x)) - vec4<f32>(global0.x, arg_1, _wgslsmith_f_op_f32(step(-190f, arg_1)), -337f)), arg_2.a.x && false)));
    var var_2 = ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(5460u, u_input.a), u_input.b), vec2<u32>(u_input.b.x, u_input.b.x))) < min(u_input.b.x, 50073u);
    var var_3 = Struct_1(select(select(func_2(u_input.b.x, func_5(arg_2, false, vec4<u32>(4294967295u, u_input.a, 14006u, 0u), vec4<f32>(var_1.x, 1000f, global0.x, global0.x)), func_2(u_input.b.x, -1i, arg_2, u_input.b), vec2<u32>(1u, 97016u)).a, func_2(u_input.a, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x), Struct_1(vec3<bool>(false, var_0.x, arg_2.a.x)), vec2<u32>(u_input.a, u_input.b.x) | u_input.b).a, false), !vec3<bool>(arg_2.a.x, true, false), !arg_3.ywy));
    let var_4 = var_0.zx;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = func_6(vec4<bool>(var_0.a.x, func_5(func_2(1u, u_input.c.x, Struct_1(vec3<bool>(true, false, false)), arg_1.zy), global0.x <= 1000f, vec4<u32>(18979u, 126928u, 4294967295u, 18069u), vec4<f32>(global0.x, -988f, global0.x, global0.x)) < 29603i, true, !(!var_0.a.x && any(var_0.a.zy))), global0.x, func_2(max(69075u ^ func_4(arg_0.a.x, false, vec4<f32>(global0.x, global0.x, global0.x, 556f)), 85073u), u_input.c.x, func_2(~_wgslsmith_clamp_u32(u_input.b.x, arg_1.x, arg_1.x), 2147483647i, func_2(arg_1.x << (1u % 32u), _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.zw), arg_0, arg_1.xz), ~(~arg_1.zx)), abs(max(vec2<u32>(33157u, 1u), arg_1.xx)) << (reverseBits(vec2<u32>(u_input.b.x, 1u)) % vec2<u32>(32u))), vec4<bool>(true, true, var_0.a.x, true));
    let var_2 = 1u;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(198f, -1728f, global0.x, 887f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -768f, global0.x, global0.x))))))));
    let var_3 = any(!(!vec4<bool>(true, !var_0.a.x, false, true)));
    return ~(~vec4<u32>(1u, 1u, arg_1.x << ((u_input.b.x | 2637u) % 32u), 30904u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(~(~vec4<u32>(30672u, _wgslsmith_mult_u32(u_input.a, 88051u), countOneBits(4294967295u), 41242u)), ~max(func_1(Struct_1(vec3<bool>(true, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 1u), vec3<u32>(u_input.b.x, u_input.b.x, 0u))), ~min(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(22725u, u_input.b.x, u_input.b.x, 16017u))));
    var var_1 = func_6(vec4<bool>(3200f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), true, select(_wgslsmith_mult_i32(-88617i, u_input.c.x), u_input.c.x, global0.x != global0.x) > u_input.c.x, any(vec3<bool>(any(vec4<bool>(true, false, true, true)), -241f >= global0.x, true))), _wgslsmith_f_op_f32(global0.x * -169f), Struct_1(func_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(27622u, 0u, 4294967295u, 1372u), vec4<u32>(var_0.x, 35389u, 38152u, 0u)), u_input.c.x | u_input.c.x, func_6(vec4<bool>(true, true, true, true), global0.x, Struct_1(vec3<bool>(true, true, true)), vec4<bool>(false, false, true, true)), firstTrailingBit(vec2<u32>(var_0.x, u_input.a))).a), !select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), vec4<bool>(false, all(vec4<bool>(false, true, true, true)), true, false), false));
    var var_2 = Struct_1(var_1.a);
    var_1 = func_2(~_wgslsmith_dot_vec2_u32(u_input.b, ~(~u_input.b)), i32(-1i) * -(~(-2147483647i)), func_2(var_0.x, -func_5(Struct_1(vec3<bool>(var_2.a.x, true, true)), true, max(vec4<u32>(var_0.x, u_input.a, 67501u, var_0.x), var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1029f, global0.x, global0.x, global0.x))), Struct_1(select(!vec3<bool>(var_2.a.x, var_1.a.x, var_1.a.x), vec3<bool>(true, true, true), vec3<bool>(true, true, var_2.a.x))), _wgslsmith_div_vec2_u32(var_0.wz ^ ~vec2<u32>(0u, var_0.x), var_0.yx)), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1328u, 1u), vec2<u32>(0u, var_0.x))), firstLeadingBit(max(vec2<u32>(var_0.x, u_input.b.x), u_input.b))), abs(~(~u_input.b))));
    var_2 = Struct_1(var_1.a);
    var var_3 = func_6(select(vec4<bool>(true, func_2(u_input.b.x, 26924i, Struct_1(vec3<bool>(var_1.a.x, var_2.a.x, var_1.a.x)), vec2<u32>(4294967295u, 4294967295u)).a.x & any(var_1.a), !var_2.a.x, ~u_input.a <= var_0.x), select(!select(vec4<bool>(false, var_2.a.x, false, var_1.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, false), var_1.a.x), !(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_2.a.x)), vec4<bool>(func_2(u_input.b.x, -2147483647i, Struct_1(vec3<bool>(true, var_2.a.x, true)), var_0.zx).a.x, false, true, !var_1.a.x)), select(!vec4<bool>(true, var_1.a.x, var_1.a.x, var_2.a.x), select(select(vec4<bool>(var_2.a.x, false, false, var_2.a.x), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, true), vec4<bool>(var_1.a.x, var_1.a.x, false, false)), !vec4<bool>(false, var_2.a.x, var_1.a.x, true), vec4<bool>(true, var_1.a.x, var_2.a.x, var_2.a.x)), func_2(13129u, u_input.c.x, Struct_1(var_1.a), select(var_0.yz, vec2<u32>(var_0.x, u_input.b.x), vec2<bool>(true, false))).a.x)), 627f, Struct_1(var_1.a), select(select(vec4<bool>(false, global0.x >= 1002f, true, !var_2.a.x), vec4<bool>(true, any(vec3<bool>(false, var_2.a.x, true)), true, false), select(!vec4<bool>(var_2.a.x, true, false, var_1.a.x), !vec4<bool>(var_2.a.x, false, false, false), false)), select(!vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true), select(!vec4<bool>(var_1.a.x, false, false, false), !vec4<bool>(var_2.a.x, var_1.a.x, var_2.a.x, var_2.a.x), true & var_1.a.x), !vec4<bool>(true, var_1.a.x, var_1.a.x, var_1.a.x)), vec4<bool>(any(func_6(vec4<bool>(true, false, false, false), 411f, Struct_1(var_1.a), vec4<bool>(var_2.a.x, var_2.a.x, true, true)).a), any(func_6(vec4<bool>(false, true, true, false), global0.x, Struct_1(var_1.a), vec4<bool>(false, var_1.a.x, true, var_1.a.x)).a), var_1.a.x, _wgslsmith_f_op_f32(abs(219f)) > global0.x)));
    var var_4 = func_6(vec4<bool>(!(var_0.x >= (20979u & var_0.x)), any(!var_3.a.xy), true, var_2.a.x), _wgslsmith_f_op_f32(-101f - 207f), Struct_1(vec3<bool>(var_3.a.x & var_1.a.x, !func_2(15700u, u_input.c.x, Struct_1(vec3<bool>(var_2.a.x, var_1.a.x, true)), vec2<u32>(u_input.b.x, 4294967295u)).a.x, var_2.a.x | any(vec2<bool>(var_2.a.x, false)))), vec4<bool>(var_1.a.x, var_1.a.x, any(func_2(var_0.x, u_input.c.x, func_2(0u, -1i, Struct_1(var_2.a), u_input.b), vec2<u32>(1u, 31399u)).a), var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, u_input.c.x >> (u_input.a % 32u)), abs(countOneBits(~_wgslsmith_div_vec4_u32(var_0, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2100f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f + global0.x))))));
}

