struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_2;

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 51798u);

var<private> global3: array<i32, 12>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<bool>) -> bool {
    var var_0 = Struct_2(-(~(i32(-1i) * -2147483647i)), Struct_1(global3[_wgslsmith_index_u32(21254u, 12u)], _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), arg_0.c, firstTrailingBit(u_input.a >> (~global2.yx % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(25739i, var_0.a) << (global2.yw % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(0i, min(global1.b.d.x, var_0.a)))), u_input.a);
    global3 = array<i32, 12>();
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-var_0.b.c.x), !(!(!(!vec3<bool>(arg_2.x, true, arg_2.x)))), arg_1.a.c, !(((var_0.a <= 0i) || (arg_1.b.d || arg_2.x)) != !(!arg_2.x)));
    var var_3 = vec2<u32>(global2.x, 1u << (~global2.x % 32u));
    return any(select(vec4<bool>(true || all(vec4<bool>(true, false, arg_2.x, false)), true, arg_1.b.d, arg_1.a.b.x & false), !vec4<bool>(-1i == arg_1.b.c, false, true, true), false));
}

fn func_2(arg_0: vec4<i32>) -> vec4<bool> {
    var var_0 = Struct_4(Struct_3(global1.b.c.x, vec3<bool>(true, false, false), ~35424i, true), Struct_3(-1159f, vec3<bool>((53308u > global2.x) || true, !(u_input.a.x <= -2147483647i), func_3(Struct_1(u_input.a.x, global1.b.c.xy, vec3<f32>(-347f, global1.b.b.x, 362f), global1.b.d), Struct_4(Struct_3(315f, vec3<bool>(false, false, true), -25091i, false), Struct_3(-100f, vec3<bool>(false, true, true), 2147483647i, true), 2147483647i), vec2<bool>(true, true))), global1.b.a, true), -1i);
    let var_1 = Struct_2(global1.b.a, Struct_1(43886i, global1.b.c.zx, global1.b.c, global1.b.d));
    let var_2 = global1.b.c.yz;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), 426f, _wgslsmith_f_op_f32(trunc(var_1.b.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, 526f, var_1.b.c.x)))));
    var var_4 = _wgslsmith_mod_i32(-24633i, u_input.a.x);
    return select(!(!vec4<bool>(any(vec4<bool>(false, true, var_0.b.b.x, false)), var_0.a.d | var_0.b.b.x, !var_0.a.b.x, true)), !vec4<bool>(true, false, select(true, !var_0.b.d, !var_0.b.b.x), true), any(var_0.a.b.yz));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    return global1.b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_5 {
    var var_0 = -374f;
    global1 = Struct_2(global3[_wgslsmith_index_u32(min(global2.x, reverseBits(_wgslsmith_sub_u32(global2.x, firstLeadingBit(global2.x)))), 12u)], global0[_wgslsmith_index_u32(global2.x, 12u)]);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.c.x + -1874f))), _wgslsmith_f_op_f32(global1.b.b.x * -756f)));
    let var_1 = func_4(global2.wy, arg_0.x, !func_2(_wgslsmith_div_vec4_i32(~vec4<i32>(24323i, 2147483647i, 2147483647i, global1.a), vec4<i32>(-14696i, global3[_wgslsmith_index_u32(1u, 12u)], 0i, 0i))));
    global3 = array<i32, 12>();
    return Struct_5(Struct_3(-284f, vec3<bool>(false, true, !all(vec3<bool>(false, true, true))), firstTrailingBit(max(~0i, arg_0.x)), true), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, global3[_wgslsmith_index_u32(12119u, 12u)]) << (vec2<u32>(global2.x, 19880u) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -28744i, ~17427i)), ~vec3<i32>(var_1.a, global1.b.a, ~(-arg_0.x)), i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i, u_input.a.x)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_2) -> Struct_4 {
    let var_0 = !(!func_2(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.d, 1i, 3892i, -35688i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(2147483647i, 20897i, u_input.a.x, 7031i))).wy);
    global3 = array<i32, 12>();
    let var_1 = Struct_4(func_1(_wgslsmith_clamp_vec2_i32(arg_2.b.d, ~vec2<i32>(-31437i, arg_2.a), -_wgslsmith_mult_vec2_i32(vec2<i32>(27412i, global3[_wgslsmith_index_u32(32524u, 12u)]), arg_1.c.yy))).a, func_1(-func_1(firstTrailingBit(vec2<i32>(arg_0.b.x, arg_2.b.d.x))).c.xx).a, global1.a);
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~(~global2.x), ~17513u ^ global2.x), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24803u, 0u, global2.x) | vec4<u32>(3561u, 23919u, global2.x, global2.x), vec4<u32>(global2.x, 1u, 61044u, 0u)))), select(abs(vec2<u32>(4294967295u, global2.x)), ~global2.yy, arg_1.a.b.xz) >> (global2.xw % vec2<u32>(32u)));
    var_2 = vec2<u32>(~var_2.x, 0u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(reverseBits(vec2<i32>(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 12u)], 12818i), i32(-1i) * -1i))), Struct_5(func_1(vec2<i32>(5875i, -52606i)).a, _wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], ~(-2147483647i)), ~(global1.b.d >> (vec2<u32>(4733u, 28426u) % vec2<u32>(32u)))), -_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -34218i, global3[_wgslsmith_index_u32(70881u, 12u)]), vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 12u)], -4436i, global3[_wgslsmith_index_u32(global2.x, 12u)]), vec3<i32>(35953i, 0i, global1.b.a)), vec3<i32>(global3[_wgslsmith_index_u32(global2.x, 12u)], u_input.a.x, global1.b.d.x)), global1.a), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.yy, ~(vec2<u32>(global2.x, 37662u) << (vec2<u32>(26698u, 4294967295u) % vec2<u32>(32u)))), 12u)], Struct_1(func_1(_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(global3[_wgslsmith_index_u32(39164u, 12u)], -9315i))).a.c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(global1.b.c.zz)), _wgslsmith_f_op_vec2_f32(step(global1.b.c.zx, global1.b.c.zy)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.c)), vec2<i32>(global3[_wgslsmith_index_u32(23002u, 12u)], u_input.a.x) & -global1.b.d)));
    global0 = array<Struct_1, 12>();
    let var_1 = _wgslsmith_add_u32(~(global2.x & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2.xxy, vec3<u32>(42539u, global2.x, global2.x)), global2.x)), _wgslsmith_mod_u32(0u, abs(global2.x)));
    var_0 = func_5(Struct_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f * var_0.a.a)), var_0.b.b, u_input.a.x, false), ~u_input.a, (vec3<i32>(63052i, -1i, global3[_wgslsmith_index_u32(1u, 12u)]) << (~global2.xxy % vec3<u32>(32u))) >> (global2.zxx % vec3<u32>(32u)), select(27022i & max(6780i, global3[_wgslsmith_index_u32(3354u, 12u)]), ~func_1(u_input.a).b.x, false)), Struct_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) - _wgslsmith_f_op_f32(1409f * var_0.b.a)), select(func_5(Struct_5(Struct_3(-247f, vec3<bool>(false, true, false), var_0.a.c, var_0.a.d), u_input.a, vec3<i32>(global1.a, -22642i, global1.b.a), global3[_wgslsmith_index_u32(var_1, 12u)]), Struct_5(var_0.b, vec2<i32>(global3[_wgslsmith_index_u32(25850u, 12u)], u_input.a.x), vec3<i32>(global1.b.a, u_input.a.x, 9588i), 1i), Struct_2(global1.b.d.x, global1.b)).b.b, select(var_0.b.b, var_0.a.b, vec3<bool>(false, true, var_0.a.b.x)), any(vec4<bool>(true, false, var_0.a.d, var_0.a.d))), 0i, false), vec2<i32>(_wgslsmith_mod_i32(-1i, func_1(vec2<i32>(-4236i, -18656i)).c.x), 278i), max(vec3<i32>(-28988i, 1i, 1i), countOneBits(vec3<i32>(-75299i, -1i, -2147483647i) >> (global2.zww % vec3<u32>(32u)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-74137i, -15137i, u_input.a.x, global3[_wgslsmith_index_u32(global2.x, 12u)]), ~vec4<i32>(var_0.b.c, 0i, global1.b.a, u_input.a.x)), -select(vec4<i32>(global3[_wgslsmith_index_u32(global2.x, 12u)], global1.a, global3[_wgslsmith_index_u32(global2.x, 12u)], var_0.a.c), vec4<i32>(var_0.a.c, global1.a, global1.a, var_0.a.c), vec4<bool>(true, var_0.a.d, var_0.b.b.x, false)))), Struct_2(-80081i, Struct_1(_wgslsmith_div_i32(-var_0.a.c, -u_input.a.x), _wgslsmith_f_op_vec2_f32(select(global1.b.b, _wgslsmith_f_op_vec2_f32(min(global1.b.c.yx, vec2<f32>(-439f, global1.b.c.x))), vec2<bool>(true, var_0.b.d))), _wgslsmith_f_op_vec3_f32(global1.b.c * global1.b.c), u_input.a)));
    var_0 = Struct_4(var_0.a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1955f, global1.b.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.c.x + -982f), _wgslsmith_f_op_f32(global1.b.c.x * global1.b.b.x))), !var_0.b.b, _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, global1.a), vec3<i32>(global1.a, var_0.b.c, u_input.a.x)), -firstLeadingBit(global1.a)), true), global3[_wgslsmith_index_u32(firstLeadingBit(~32002u) >> (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), global2.wz), reverseBits(global2.x))) % 32u), 12u)]);
    global1 = Struct_2(firstLeadingBit(countOneBits(countOneBits(37481i)) << (~(var_1 & var_1) % 32u)), func_4(vec2<u32>(~min(1u, 4294967295u), 19283u), var_0.b.c, func_2(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 98233i, global3[_wgslsmith_index_u32(4294967295u, 12u)]), vec4<i32>(-25879i, global1.a, 28007i, var_0.a.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_sub_u32(~var_1, global2.x) | var_1), -vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(global1.b.a, -22441i) ^ abs(0i), -_wgslsmith_add_i32(13865i, var_0.b.c), -160i));
}

