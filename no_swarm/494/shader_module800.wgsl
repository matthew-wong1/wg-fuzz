struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> vec2<i32> {
    var var_0 = 143f;
    let var_1 = Struct_4(!(!(!select(global0.b.xy, vec2<bool>(false, global0.b.x), true))), Struct_2(!(!(!vec3<bool>(false, false, global0.b.x))), Struct_1(abs(-vec2<i32>(1i, 2147483647i)), global0.b), ~u_input.a.ywy), true, select(vec2<bool>(global0.b.x, 24206u > _wgslsmith_clamp_u32(53192u, arg_0, u_input.c)), !(!(!global0.b.zy)), any(vec2<bool>(global0.b.x & global0.b.x, global0.b.x & global0.b.x))), select(abs((vec4<i32>(u_input.b.x, arg_1.x, arg_1.x, u_input.b.x) << (vec4<u32>(arg_0, arg_0, u_input.d, u_input.c) % vec4<u32>(32u))) | vec4<i32>(1i, -2147483647i, arg_1.x, 0i)), abs(vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 3328i), global0.a.x, abs(-2147483647i), arg_1.x)), true));
    var var_2 = var_1.b.c.x;
    let var_3 = Struct_4(global0.b.zz, var_1.b, true, !vec2<bool>(global0.b.x, var_1.b.b.b.x), vec4<i32>(u_input.b.x | -1i, global0.a.x, _wgslsmith_div_i32(global0.a.x, var_1.e.x), u_input.b.x));
    var_2 = 33245u;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.x, 594i), -select(vec2<i32>(2147483647i, 2147483647i & global0.a.x), vec2<i32>(-2147483647i, -8432i), false));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_div_vec2_i32(u_input.b.zx, select(vec2<i32>(-67345i, ~global0.a.x), firstTrailingBit(func_3(15215u, global0.a, vec3<f32>(-284f, -1011f, -879f))), !global0.b.yy)), global0.b);
    global0 = Struct_1(-vec2<i32>(min(17878i, countOneBits(u_input.b.x)), -2147483647i), vec3<bool>(true, min(abs(5515u), ~u_input.d) != (_wgslsmith_add_u32(u_input.a.x, u_input.d) | _wgslsmith_add_u32(u_input.d, u_input.d)), global0.b.x));
    let var_0 = -_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(~global0.a.x, global0.a.x), u_input.b.zz), _wgslsmith_mult_vec2_i32(global0.a, ~reverseBits(u_input.b.yy)));
    var var_1 = Struct_1(firstLeadingBit(var_0), !select(vec3<bool>(all(vec4<bool>(global0.b.x, global0.b.x, true, false)), true, true), select(!global0.b, select(global0.b, vec3<bool>(global0.b.x, global0.b.x, true), global0.b.x), global0.b), !vec3<bool>(global0.b.x, true, global0.b.x)));
    let var_2 = Struct_3(var_1.b.x, Struct_1(abs(var_1.a), vec3<bool>(!all(vec4<bool>(false, global0.b.x, var_1.b.x, global0.b.x)), false, !global0.b.x)), ~(-3696i));
    return vec4<bool>(var_1.b.x, all(select(vec3<bool>(false, false, select(var_1.b.x, true, var_2.a)), vec3<bool>(var_2.b.b.x, var_1.b.x == var_1.b.x, global0.b.x), true)), !var_2.b.b.x, var_2.b.b.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: vec4<bool>) -> bool {
    var var_0 = all(!vec3<bool>(arg_3.x, !all(global0.b), arg_3.x));
    var var_1 = Struct_3(!(~_wgslsmith_sub_i32(u_input.b.x, -1i) >= firstLeadingBit(_wgslsmith_clamp_i32(global0.a.x, global0.a.x, global0.a.x))), Struct_1(~global0.a, vec3<bool>(true, true, true)), -u_input.b.x);
    var var_2 = all(func_2().xz);
    let var_3 = -2147483647i;
    let var_4 = Struct_1(_wgslsmith_sub_vec2_i32(select(vec2<i32>(global0.a.x, 2147483647i) >> (vec2<u32>(8583u, arg_2) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b.x, 31507i), min(global0.a, var_1.b.a)), vec2<bool>(var_1.b.b.x, global0.b.x)), vec2<i32>(var_1.c, -global0.a.x << ((u_input.c ^ arg_0.x) % 32u))), vec3<bool>(!var_1.b.b.x, global0.b.x, true));
    return false;
}

fn func_1() -> Struct_2 {
    global0 = Struct_1(global0.a, select(vec3<bool>(u_input.c < u_input.a.x, func_4(max(u_input.a.wxw, vec3<u32>(u_input.d, u_input.c, u_input.a.x)), true, ~u_input.c, func_2()), true), global0.b, true));
    var var_0 = Struct_3(!(global0.b.x || !func_2().x), Struct_1(~(~global0.a), vec3<bool>(false, true, func_2().x)), (u_input.b.x | 2403i) & u_input.b.x);
    var var_1 = -(~(-2147483647i));
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.c, global0.a.x) >> (u_input.a.wz % vec2<u32>(32u)), global0.a), -global0.a) ^ firstTrailingBit(_wgslsmith_add_vec2_i32(~global0.a, vec2<i32>(var_0.c, -36223i))), global0.b);
    var_0 = Struct_3(false, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.a.x, -17133i) >> ((vec2<u32>(u_input.d, u_input.c) & vec2<u32>(21604u, u_input.c)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(global0.a, vec2<i32>(var_0.b.a.x, global0.a.x)), firstTrailingBit(vec2<i32>(-34799i, global0.a.x)))), var_0.b.b), 24052i);
    return Struct_2(vec3<bool>(!global0.b.x | all(select(global0.b, global0.b, true)), func_2().x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b.x), var_0.b.a, vec2<i32>(1i, 11939i)), global0.a) >= ~(var_0.b.a.x | var_0.b.a.x)), Struct_1(abs(abs(var_0.b.a)), vec3<bool>(var_0.b.a.x <= abs(u_input.b.x), true, ~(-2147483647i) <= firstTrailingBit(1i))), ~max(max(u_input.a.xxz, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, u_input.d, 35290u), u_input.a.wwz)), vec3<u32>(~4294967295u, 1u, ~u_input.a.x)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_1 {
    global0 = Struct_1(select(_wgslsmith_mult_vec2_i32(u_input.b.zx, global0.a), -arg_2.b.a, true), arg_1.b.a);
    var var_0 = false;
    let var_1 = reverseBits(u_input.c);
    global0 = Struct_1(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~global0.a, global0.a | vec2<i32>(38930i, arg_2.b.a.x)), _wgslsmith_clamp_vec2_i32(arg_1.b.b.a, vec2<i32>(-1i, -1i), arg_1.b.b.a)), ~global0.a, vec2<bool>(53164u < var_1, true)), arg_2.a);
    var_0 = global0.b.x;
    return Struct_1(min(-(~u_input.b.zx), u_input.b.zy), arg_1.b.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.a.x), 30403u, u_input.d), abs(u_input.a.wxz), u_input.a.yxy), Struct_4(global0.b.yz, func_1(), func_1().a.x, global0.b.yx, -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, 13209i, 35069i, global0.a.x), vec4<i32>(global0.a.x, 6910i, u_input.b.x, u_input.b.x), vec4<i32>(24346i, 0i, -1i, global0.a.x)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-20478i, 0i, global0.a.x), vec3<i32>(u_input.b.x, global0.a.x, -45101i)), -global0.a.x, -13801i, abs(u_input.b.x))), func_1());
    var var_0 = Struct_3(!(!select(true, !global0.b.x, global0.b.x)), Struct_1(~u_input.b.zy, vec3<bool>(0i == func_1().b.a.x, select(func_4(vec3<u32>(u_input.d, 9759u, 0u), true, 14228u, vec4<bool>(global0.b.x, false, global0.b.x, false)), false, false), false)), 12528i);
    var var_1 = -11188i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-217f, 1000f), -328f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1055f), 1000f)), -213f, 735f));
    var_0 = Struct_3(global0.b.x | true, var_0.b, global0.a.x);
    var var_3 = 5742u;
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(-7527i, func_3(abs(u_input.a.x), (var_0.b.a ^ vec2<i32>(u_input.b.x, u_input.b.x)) << (vec2<u32>(u_input.c, 22116u) % vec2<u32>(32u)), var_2.xyw).x), 2147483647i << (u_input.d % 32u), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, -78i, ~global0.a.x, u_input.b.x >> (u_input.c % 32u)), vec4<i32>(-13012i, 1i, ~var_0.c, -20785i)), _wgslsmith_mult_i32(abs(-33931i), -_wgslsmith_mult_i32(global0.a.x, u_input.b.x))), -firstLeadingBit(22466i));
    var_3 = ~55890u;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~u_input.c, -1457f);
}

