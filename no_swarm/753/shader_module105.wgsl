struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> i32 {
    return ~(~global0.x ^ 0i) | (-14052i | _wgslsmith_mult_i32(22223i, global0.x));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global0 = _wgslsmith_mod_vec4_i32((u_input.d | u_input.d) | vec4<i32>(_wgslsmith_sub_i32(u_input.b, -2147483647i), firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-1i, 2147483647i, -23529i), global0.zzw), ~u_input.c), global0.x), _wgslsmith_add_vec4_i32(firstTrailingBit(-u_input.d | _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(46857i, global0.x, 23530i, u_input.d.x))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d.x, u_input.b, 10192i), vec4<i32>(global0.x, global0.x, u_input.d.x, 0i)), -u_input.d) | vec4<i32>(2147483647i, abs(u_input.d.x), -30777i, firstLeadingBit(56744i))));
    var var_0 = !(!vec4<bool>(true, ~u_input.a.x > u_input.a.x, any(vec3<bool>(true, true, false)), true));
    let var_1 = 1660f;
    var_0 = vec4<bool>(var_0.x, false, var_0.x, !any(vec4<bool>(var_0.x & var_0.x, any(vec4<bool>(true, false, false, false)), true, var_0.x)));
    global0 = u_input.d;
    return all(vec3<bool>(all(!select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, false, var_0.x, true), var_0.x)), var_0.x, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> i32 {
    var var_0 = !arg_2.a;
    var var_1 = Struct_5(u_input.a.x, vec4<bool>(var_0.x, func_3(~(~vec3<u32>(1u, 82644u, 36455u))), true, !all(vec4<bool>(false, var_0.x, false, var_0.x)) & !arg_2.a.x), true, ~abs(min(18592u, ~u_input.a.x)));
    var var_2 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, var_1.a, 23723u, 44257u)), u_input.e), 15016u, 1u, max(var_1.d, _wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(u_input.a.x, u_input.a.x) | u_input.e.yz))));
    return -5191i;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_4 {
    return Struct_4(countOneBits(u_input.c.x), Struct_1(vec4<i32>(func_1(), 0i, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -133f, -418f, -619f) - vec4<f32>(arg_1.x, 540f, 1963f, arg_1.x)), Struct_2(arg_3.a, arg_3.c.x, arg_3.a.xwy, arg_3.d), Struct_2(arg_3.a, arg_0.c.x, vec3<bool>(arg_2.c.x, true, arg_0.a.x), arg_3.d), arg_1.x), 0i), arg_0.d.b, select(arg_3.d.b.yz << (vec2<u32>(4294967295u, u_input.e.x) % vec2<u32>(32u)), vec2<i32>(max(u_input.d.x, 15447i), 1i), vec2<bool>(func_3(vec3<u32>(35765u, u_input.a.x, 68200u)), true))), select(vec3<bool>(any(!vec4<bool>(true, arg_2.c.x, true, true)), arg_2.c.x, ~53051u <= (u_input.a.x & 0u)), vec3<bool>(any(vec4<bool>(false, arg_3.c.x, false, arg_2.c.x)), 4294967295u < max(u_input.e.x, 0u), !arg_3.a.x), select(vec3<bool>(arg_3.c.x, true, select(true, true, false)), !arg_3.a.yyw, arg_2.c.x)), -1i, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(13474i, 34397i, 1i, -41712i), _wgslsmith_mod_vec4_i32(vec4<i32>(-70003i, u_input.b, -1i, 52124i), arg_2.e.a) << ((u_input.e >> (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u))), countOneBits(select(firstLeadingBit(arg_3.d.b), vec4<i32>(global0.x, arg_2.d, arg_3.d.b.x, arg_0.d.a.x), vec4<bool>(false, true, arg_2.c.x, true))), _wgslsmith_mult_vec2_i32(-(vec2<i32>(-2147483647i, global0.x) << (u_input.a % vec2<u32>(32u))), arg_0.d.b.zx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec4<bool>(true, false, true, true), true, vec3<bool>(true, true && any(vec3<bool>(false, true, false)), true), Struct_1(vec4<i32>(7411i >> (0u % 32u), func_1(), 54825i, -45600i), vec4<i32>(global0.x, u_input.c.x, func_2(vec4<f32>(-1278f, -834f, 257f, 292f), Struct_2(vec4<bool>(false, true, false, true), false, vec3<bool>(false, true, true), Struct_1(u_input.d, vec4<i32>(-2147483647i, u_input.c.x, global0.x, global0.x), vec2<i32>(u_input.b, 1i))), Struct_2(vec4<bool>(true, false, true, false), true, vec3<bool>(false, true, true), Struct_1(vec4<i32>(u_input.b, global0.x, -1623i, -6215i), vec4<i32>(u_input.d.x, 0i, u_input.d.x, -1i), global0.xw)), -901f), _wgslsmith_dot_vec4_i32(vec4<i32>(-5275i, -37774i, u_input.b, 0i), vec4<i32>(1i, -22553i, 23190i, -2147483647i))), (vec2<i32>(2147483647i, global0.x) >> (u_input.e.xw % vec2<u32>(32u))) << (~u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(294f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1988f, 766f) * vec2<f32>(-1563f, -693f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(864f, 2048f), vec2<f32>(534f, -155f)))))), Struct_4(18989i, Struct_1(u_input.d, ~(-u_input.d), vec2<i32>(u_input.c.x, ~u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, all(vec4<bool>(true, false, false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false))), global0.x << (0u % 32u), Struct_1(vec4<i32>(-2147483647i << (u_input.a.x % 32u), u_input.d.x, countOneBits(u_input.b), -1i), u_input.d, _wgslsmith_div_vec2_i32(u_input.d.zy, u_input.d.yx))), Struct_2(vec4<bool>(true, u_input.d.x > u_input.d.x, true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)))), true, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), !all(vec3<bool>(true, false, true))), Struct_1(vec4<i32>(-2147483647i, ~u_input.d.x, u_input.b, ~u_input.b), ~u_input.d, global0.yw)));
    var var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, !var_0.c.x), false), func_4(Struct_2(vec4<bool>(false, true, false, var_0.c.x), var_0.c.x, func_4(Struct_2(vec4<bool>(false, true, true, false), true, var_0.c, var_0.b), vec2<f32>(-494f, -1965f), Struct_4(-27458i, var_0.b, vec3<bool>(false, true, true), -1234i, var_0.e), Struct_2(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), var_0.c.x, vec3<bool>(var_0.c.x, var_0.c.x, true), var_0.b)).c, func_4(Struct_2(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, true), true, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), var_0.b), vec2<f32>(463f, -424f), Struct_4(global0.x, Struct_1(var_0.b.b, vec4<i32>(-1i, -2147483647i, u_input.d.x, 2147483647i), vec2<i32>(36025i, var_0.e.b.x)), vec3<bool>(false, var_0.c.x, false), -63165i, var_0.e), Struct_2(vec4<bool>(false, false, false, false), var_0.c.x, var_0.c, var_0.e)).b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(324f, 392f))) * vec2<f32>(1f, 1f)), func_4(Struct_2(vec4<bool>(false, false, var_0.c.x, true), var_0.c.x, var_0.c, Struct_1(var_0.e.b, vec4<i32>(5147i, -21171i, 9392i, 41193i), u_input.d.xz)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(787f, 791f))), Struct_4(var_0.b.a.x, Struct_1(u_input.d, vec4<i32>(2147483647i, u_input.c.x, global0.x, global0.x), u_input.c.xx), vec3<bool>(true, var_0.c.x, var_0.c.x), global0.x, var_0.e), Struct_2(vec4<bool>(false, var_0.c.x, true, false), true, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), Struct_1(vec4<i32>(global0.x, -2147483647i, var_0.d, 16771i), var_0.b.b, vec2<i32>(2147483647i, u_input.b)))), Struct_2(select(vec4<bool>(false, false, var_0.c.x, false), vec4<bool>(true, var_0.c.x, true, false), var_0.c.x), any(var_0.c), vec3<bool>(true, var_0.c.x, var_0.c.x), var_0.b)).c.zy, vec2<bool>(1f == _wgslsmith_f_op_f32(ceil(-991f)), var_0.c.x && true));
    let var_2 = u_input.b | var_0.e.b.x;
    let var_3 = u_input.e.x >= abs(abs(u_input.e.x & _wgslsmith_mult_u32(u_input.e.x, 1u)));
    var var_4 = firstLeadingBit(u_input.e.yxx);
    var_0 = func_4(Struct_2(vec4<bool>(true, true, !var_3, var_0.c.x), any(vec4<bool>(!var_3, any(var_0.c), true, var_3 && true)), var_0.c, Struct_1(-firstLeadingBit(vec4<i32>(var_0.d, 0i, var_2, var_2)), vec4<i32>(select(var_2, u_input.b, var_3), -1i, -2147483647i, 1i), firstTrailingBit(~u_input.c.zy))), vec2<f32>(-325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-750f * _wgslsmith_div_f32(-789f, 266f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1154f + 619f), -1232f)))), func_4(Struct_2(!select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_0.c.x, false, var_1.x, var_1.x), var_0.c.x), any(vec3<bool>(var_0.c.x, false, var_0.c.x)), var_0.c, var_0.e), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1079f, -232f), vec2<f32>(-1717f, -277f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-447f, -1652f))), vec2<f32>(1f, 1f)), Struct_4(-41055i, func_4(Struct_2(vec4<bool>(true, true, var_0.c.x, var_3), var_3, vec3<bool>(true, false, true), Struct_1(vec4<i32>(-1i, 0i, var_2, global0.x), vec4<i32>(-17728i, -15188i, var_2, var_0.e.a.x), global0.xy)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(149f, -667f), vec2<f32>(2381f, -643f))), Struct_4(9172i, var_0.b, vec3<bool>(false, var_3, var_3), var_2, var_0.b), Struct_2(vec4<bool>(false, true, var_1.x, true), var_1.x, var_0.c, Struct_1(vec4<i32>(global0.x, var_2, -1216i, var_0.b.a.x), vec4<i32>(-15887i, u_input.c.x, global0.x, var_0.d), vec2<i32>(-2147483647i, 0i)))).e, !vec3<bool>(var_3, true, true), -24436i << (var_4.x % 32u), var_0.e), Struct_2(select(select(vec4<bool>(var_3, var_3, false, false), vec4<bool>(var_1.x, false, false, var_0.c.x), vec4<bool>(true, false, var_0.c.x, true)), !vec4<bool>(var_3, false, false, var_1.x), vec4<bool>(false, true, var_1.x, false)), any(!var_0.c), !(!vec3<bool>(var_0.c.x, true, var_3)), func_4(Struct_2(vec4<bool>(var_3, false, var_3, var_0.c.x), var_3, vec3<bool>(false, false, var_0.c.x), var_0.b), vec2<f32>(-1916f, -721f), func_4(Struct_2(vec4<bool>(var_0.c.x, false, var_3, false), var_3, var_0.c, Struct_1(u_input.d, vec4<i32>(75528i, 17920i, -1i, u_input.b), var_0.b.b.ww)), vec2<f32>(688f, 1229f), Struct_4(u_input.b, var_0.b, var_0.c, -2147483647i, var_0.e), Struct_2(vec4<bool>(var_3, false, false, true), false, var_0.c, var_0.b)), Struct_2(vec4<bool>(var_0.c.x, false, true, var_0.c.x), var_0.c.x, vec3<bool>(true, true, var_1.x), Struct_1(u_input.d, vec4<i32>(var_0.a, 2147483647i, 15690i, var_0.a), vec2<i32>(4259i, -11867i)))).b)), Struct_2(vec4<bool>(var_0.c.x, true, any(!vec2<bool>(var_0.c.x, var_0.c.x)), true), true, vec3<bool>(true, var_1.x, false), func_4(Struct_2(!vec4<bool>(var_0.c.x, false, true, var_3), true, func_4(Struct_2(vec4<bool>(true, var_0.c.x, var_3, true), false, var_0.c, Struct_1(vec4<i32>(u_input.c.x, 0i, 4050i, var_0.e.c.x), vec4<i32>(0i, 2147483647i, 16530i, -70588i), global0.zz)), vec2<f32>(-128f, -154f), Struct_4(29441i, var_0.b, var_0.c, 0i, var_0.e), Struct_2(vec4<bool>(true, var_0.c.x, true, true), var_3, var_0.c, var_0.b)).c, func_4(Struct_2(vec4<bool>(var_0.c.x, true, true, false), true, vec3<bool>(true, true, var_1.x), var_0.e), vec2<f32>(-405f, -372f), Struct_4(var_0.d, Struct_1(var_0.e.a, vec4<i32>(-2147483647i, var_2, -16430i, u_input.b), global0.zx), vec3<bool>(var_3, var_1.x, true), -2147483647i, var_0.b), Struct_2(vec4<bool>(var_3, true, var_0.c.x, var_1.x), var_1.x, vec3<bool>(var_3, false, var_1.x), Struct_1(var_0.e.a, u_input.d, vec2<i32>(u_input.d.x, -2147483647i)))).e), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-591f, -1199f))), func_4(Struct_2(vec4<bool>(true, false, true, var_1.x), true, vec3<bool>(false, false, true), var_0.b), vec2<f32>(-184f, 1935f), func_4(Struct_2(vec4<bool>(false, var_3, false, var_3), var_1.x, var_0.c, var_0.e), vec2<f32>(1000f, -936f), Struct_4(global0.x, var_0.b, vec3<bool>(true, var_0.c.x, false), var_2, var_0.b), Struct_2(vec4<bool>(true, var_3, var_3, true), var_1.x, var_0.c, var_0.b)), Struct_2(vec4<bool>(var_1.x, var_1.x, var_0.c.x, var_1.x), var_1.x, var_0.c, var_0.e)), Struct_2(!vec4<bool>(false, var_1.x, var_3, false), false, vec3<bool>(var_3, true, var_1.x), var_0.e)).e));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1020f))) * _wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1346f))), 787f))), 89402u);
}

