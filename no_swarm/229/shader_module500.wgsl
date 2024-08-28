struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, false), Struct_1(68893i, vec3<bool>(true, false, false), -781f, vec2<f32>(-1124f, 367f)), Struct_2(vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 3430i, 0i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_1(-5134i, vec3<bool>(true, false, false), 474f, vec2<f32>(208f, -1079f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = global0.d.c;
    var var_1 = Struct_3(!(!select(vec2<bool>(false, true), arg_0.b.xz, true)), global0.b, global0.c, arg_0);
    let var_2 = u_input.b.x;
    global0 = Struct_3(select(var_1.b.b.yy, select(select(global0.b.b.xy, !global0.c.a, arg_0.b.x & arg_0.b.x), var_1.c.c.ww, select(arg_0.b.zx, select(vec2<bool>(var_1.c.c.x, global0.d.b.x), vec2<bool>(false, arg_0.b.x), global0.c.a), true)), false), Struct_1(var_1.d.a, !arg_0.b, arg_0.c, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), global0.b.c)), var_1.c, var_1.d);
    global0 = Struct_3(global0.d.b.yy, Struct_1(-_wgslsmith_mult_i32(~global0.b.a, -10874i), select(vec3<bool>(var_1.b.b.x, false, arg_0.b.x), vec3<bool>(any(arg_0.b.yx), !global0.d.b.x, all(vec3<bool>(false, var_1.d.b.x, true))), false), -724f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-157f, global0.b.d.x))), _wgslsmith_div_vec2_f32(arg_0.d, vec2<f32>(arg_0.c, 1381f)))))), var_1.c, global0.b);
    return firstTrailingBit(16239i);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<u32>) -> vec3<bool> {
    global0 = Struct_3(!vec2<bool>(true, select(global0.d.b.x, global0.c.c.x, all(vec4<bool>(global0.d.b.x, global0.d.b.x, global0.c.c.x, false)))), Struct_1(1i, vec3<bool>(false, 2730f >= _wgslsmith_f_op_f32(-676f * global0.d.c), global0.b.b.x), _wgslsmith_f_op_f32(max(global0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - -1176f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(179f)) * -810f), -659f)), Struct_2(!global0.c.c.yx, global0.c.b, global0.c.c), Struct_1(2147483647i, global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2108f, -1144f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - global0.d.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.d + _wgslsmith_f_op_vec2_f32(-global0.b.d)) + _wgslsmith_f_op_vec2_f32(global0.d.d - _wgslsmith_f_op_vec2_f32(max(global0.b.d, vec2<f32>(-1023f, global0.b.c)))))));
    global0 = Struct_3(select(global0.d.b.zy, global0.a, (select(false, global0.d.b.x, false) && all(global0.d.b)) & global0.a.x), global0.b, Struct_2(select(!vec2<bool>(global0.c.c.x, global0.d.b.x), global0.c.c.xz, vec2<bool>(!global0.b.b.x, all(global0.b.b))), vec4<i32>(1i, global0.c.b.x, abs(u_input.a.x | 15669i), _wgslsmith_div_i32(2147483647i, -41383i)), vec4<bool>(any(global0.c.c.zzy), false, all(select(vec2<bool>(global0.a.x, false), global0.d.b.yx, global0.b.b.xx)), (3672u < u_input.b.x) | global0.c.c.x)), global0.d);
    let var_0 = true;
    let var_1 = Struct_3(select(vec2<bool>(false, all(!vec2<bool>(true, global0.a.x))), vec2<bool>(true, true), vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), global0.c.c, true)))), global0.d, Struct_2(select(!vec2<bool>(global0.c.c.x, global0.b.b.x), global0.c.c.yz, select(!vec2<bool>(false, global0.c.a.x), vec2<bool>(true, true), !global0.a)), ~global0.c.b, vec4<bool>(var_0, any(vec3<bool>(global0.d.b.x, global0.d.b.x, global0.d.b.x)), global0.a.x, false)), Struct_1(_wgslsmith_mod_i32(31131i, global0.c.b.x) << (77597u % 32u), vec3<bool>(false, !(7418u > u_input.b.x), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d.x) * global0.b.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.d) + vec2<f32>(arg_1, _wgslsmith_f_op_f32(select(arg_1, arg_1, false))))));
    var var_2 = Struct_1(firstTrailingBit(arg_0.x), select(vec3<bool>(!(-646f < arg_1), !any(var_1.c.c), true), !vec3<bool>(global0.c.a.x & false, 0u != arg_2.x, all(vec3<bool>(false, true, var_1.a.x))), true), global0.d.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    return var_1.c.c.wzx;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global0.d;
    var var_1 = Struct_3(global0.d.b.xx, Struct_1(1i, func_4(vec2<i32>(func_3(global0.d), max(-1i, 23444i)), global0.b.c, u_input.b >> (~u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-363f + 174f))))), var_0.d), Struct_2(vec2<bool>(false, u_input.a.x <= abs(u_input.a.x)), global0.c.b, global0.c.c), global0.d);
    var_1 = Struct_3(vec2<bool>(true, all(select(select(var_1.b.b, var_0.b, global0.b.b), global0.b.b, arg_0))), Struct_1(_wgslsmith_mod_i32(global0.c.b.x, u_input.a.x), var_0.b, _wgslsmith_f_op_f32(-global0.b.c), var_1.d.d), Struct_2(select(!(!var_0.b.zy), var_0.b.yy, select(func_4(vec2<i32>(-2147483647i, var_0.a), var_1.d.d.x, vec4<u32>(16613u, u_input.b.x, 0u, u_input.b.x)).zy, vec2<bool>(true, arg_0), select(vec2<bool>(false, global0.a.x), vec2<bool>(var_0.b.x, false), true))), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 41267i, 17917i, 4952i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.a, 12683i, u_input.a.x, -2147483647i), global0.c.b), vec4<i32>(global0.c.b.x, _wgslsmith_sub_i32(-79452i, global0.c.b.x), -7225i, ~1i)), select(!global0.c.c, !select(vec4<bool>(global0.b.b.x, false, false, false), vec4<bool>(var_1.b.b.x, arg_0, arg_0, global0.b.b.x), var_1.c.c.x), 4294967295u <= u_input.b.x)), var_1.d);
    let var_2 = var_1.c;
    var var_3 = !vec3<bool>(true, global0.a.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.a, var_1.b.a), vec2<i32>(0i, 4249i))) > 1i);
    return Struct_1(countOneBits(-var_2.b.x), var_1.b.b, 2051f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.x), global0.b.c), _wgslsmith_f_op_f32(-var_1.d.c)));
}

fn func_5(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.b.b.zy;
    global0 = Struct_3(!arg_0.a, arg_0.d, Struct_2(func_4(vec2<i32>(1i, global0.b.a), func_2(!arg_0.c.c.x).d.x, max(vec4<u32>(61525u, 4294967295u, u_input.b.x, u_input.b.x) | u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 1u, 90805u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))).yx, countOneBits(global0.c.b), vec4<bool>(!(!arg_0.a.x), global0.c.a.x, false, func_4(abs(vec2<i32>(1i, 34750i)), global0.b.d.x, vec4<u32>(u_input.b.x, u_input.b.x, 13u, 55955u)).x)), arg_0.b);
    global0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -603f);
    let var_2 = Struct_3(select(func_2(any(vec3<bool>(true, global0.a.x, true))).b.xy, var_0, !arg_0.a.x), func_2(global0.c.a.x), arg_0.c, global0.b);
    return false;
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b.x > u_input.b.x;
    var var_1 = vec2<bool>(func_5(Struct_3(!(!global0.a), func_2(any(vec2<bool>(false, false))), Struct_2(global0.c.a, global0.c.b, select(global0.c.c, global0.c.c, vec4<bool>(false, global0.b.b.x, false, global0.d.b.x))), Struct_1(~1i, select(vec3<bool>(global0.d.b.x, global0.d.b.x, false), vec3<bool>(global0.d.b.x, true, global0.b.b.x), global0.d.b.x), 1745f, _wgslsmith_f_op_vec2_f32(min(global0.b.d, global0.b.d))))), func_5(Struct_3(func_4(_wgslsmith_mod_vec2_i32(vec2<i32>(26870i, u_input.a.x), vec2<i32>(0i, global0.d.a)), global0.d.c, ~u_input.b).zx, global0.d, global0.c, Struct_1(i32(-1i) * -47448i, global0.c.c.xww, _wgslsmith_f_op_f32(-global0.b.d.x), _wgslsmith_f_op_vec2_f32(global0.b.d - global0.b.d)))));
    let var_2 = vec2<i32>(global0.c.b.x, -22036i << (u_input.b.x % 32u));
    var var_3 = true;
    var var_4 = u_input.b.yw;
    return Struct_3(vec2<bool>(var_1.x, var_1.x), func_2(func_5(Struct_3(vec2<bool>(global0.a.x, var_1.x), Struct_1(global0.b.a, global0.b.b, 1000f, global0.b.d), global0.c, global0.d))), global0.c, Struct_1(~abs(-global0.b.a), select(vec3<bool>(true, func_5(Struct_3(global0.a, Struct_1(u_input.a.x, global0.c.c.wyy, global0.b.c, global0.b.d), Struct_2(vec2<bool>(var_1.x, true), global0.c.b, global0.c.c), global0.d)), !global0.b.b.x), vec3<bool>(false, true, global0.d.b.x), vec3<bool>(-2147483647i < global0.c.b.x, false, true)), global0.d.c, func_2(all(global0.c.c.wzx)).d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = !select(vec4<bool>((u_input.a.x >= 12296i) | false, global0.c.c.x, true, global0.b.b.x), select(select(vec4<bool>(global0.d.b.x, true, global0.a.x, global0.a.x), !global0.c.c, !global0.a.x), vec4<bool>(true, global0.b.b.x, any(global0.c.c), global0.c.a.x != false), func_2(true).b.x), true);
    global0 = Struct_3(select(var_0.wy, vec2<bool>(false, any(global0.c.c)), vec2<bool>(!(global0.b.c >= global0.b.d.x), var_0.x)), global0.b, func_1().c, func_1().b);
    var var_1 = ~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-399i, -1422i | u_input.a.x, -global0.c.b.x, -3864i)), -(abs(vec4<i32>(u_input.a.x, u_input.a.x, 33701i, -48240i)) | ~vec4<i32>(-31993i, -1i, 7758i, 1i)));
    global0 = Struct_3(func_4(vec2<i32>(~0i, abs(var_1.x)), _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.d.x))), vec4<u32>(49930u, u_input.b.x, 4294967295u, u_input.b.x)).xx, Struct_1(u_input.a.x, var_0.yyw, _wgslsmith_f_op_f32(global0.b.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d.d.x)) - _wgslsmith_f_op_f32(step(-835f, 1204f)))), vec2<f32>(_wgslsmith_f_op_f32(global0.b.c - -597f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1537f)))), global0.c, func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, 1682f, global0.b.c, global0.b.d.x))))), ~_wgslsmith_mod_u32(4294967295u, u_input.b.x | u_input.b.x), abs(u_input.a));
}

