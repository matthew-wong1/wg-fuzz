struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<u32, 1>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_4) -> bool {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.a.a)), arg_0, select(arg_2.b.x, true, !arg_3.c.x), abs(~(~vec4<u32>(arg_3.a.d.x, arg_3.a.d.x, arg_2.d.x, global0[_wgslsmith_index_u32(76338u, 1u)]) << (arg_3.a.d % vec4<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.e) * _wgslsmith_f_op_f32(round(-1420f))), 989f)), arg_3.b.a.x));
    let var_1 = any(vec3<bool>(true || (true && arg_2.c), arg_0.x, !any(vec3<bool>(var_0.c, false, false)))) == true;
    global0 = array<u32, 1>();
    var_0 = arg_2;
    let var_2 = vec3<i32>(-12137i, _wgslsmith_mod_i32(-13059i, countOneBits(-u_input.b)) >> (_wgslsmith_clamp_u32(~88863u >> (var_0.d.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(9616u, 0u, 62320u), reverseBits(arg_2.d.xzy)), var_0.d.x) % 32u), -72704i);
    return all(!select(select(select(vec2<bool>(true, arg_3.a.b.x), arg_0, vec2<bool>(false, false)), select(var_0.b, vec2<bool>(arg_3.a.c, var_1), vec2<bool>(arg_0.x, false)), vec2<bool>(arg_0.x, arg_2.b.x)), arg_0, vec2<bool>(arg_0.x, true)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2134f, 1421f, 1105f, _wgslsmith_f_op_f32(-814f - 292f)))));
    let var_1 = !(!vec4<bool>(true, true, func_3(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_1(vec2<f32>(var_0.x, var_0.x)), Struct_3(Struct_1(var_0.wx), vec2<bool>(true, true), false, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32095u, 1u)], 1u)], 1u)], 1u)], 1u)], 40618u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30528u, 1u)], 1u)], 129428u), var_0.x), Struct_4(Struct_3(Struct_1(var_0.xx), vec2<bool>(false, false), false, vec4<u32>(46378u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 28388u, 4294967295u), 398f), Struct_1(vec2<f32>(var_0.x, 1173f)), vec2<bool>(false, true), vec4<i32>(0i, 0i, u_input.a, u_input.a))), false));
    var var_2 = _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - -126f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1565f + -244f))))) - var_0.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, 1094f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1859f, var_0.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * var_0.xz)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1693f, var_0.x), vec2<f32>(var_0.x, var_0.x), var_1.ww)))))));
    let var_4 = Struct_3(var_3, !var_1.xx, !(true == any(!var_1.yw)), max(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(13086u, global0[_wgslsmith_index_u32(4294967295u, 1u)], 38907u, global0[_wgslsmith_index_u32(13625u, 1u)]), vec4<u32>(28381u, 1u, 16147u, 1u)), ~vec4<u32>(24725u, global0[_wgslsmith_index_u32(4267u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)])) & firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34826u, 1u)], 1u)], 1u, global0[_wgslsmith_index_u32(1u, 1u)], 4294967295u)), select(vec4<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 1u)], 1u)], _wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)]), 4473u, 1u), ~(vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(16528u, 1u)], 0u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 17973u, 1u, 1u)), var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-978f)) - -1021f)));
    return var_4.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec2<f32> {
    let var_0 = Struct_3(func_2(), vec2<bool>(!(any(vec2<bool>(arg_2.e, false)) || arg_2.e), arg_2.e), all(select(!vec4<bool>(false, arg_2.e, arg_2.e, arg_2.e), !(!vec4<bool>(arg_2.e, arg_2.e, false, arg_2.e)), arg_2.e)), vec4<u32>(45044u, ~(~(~1u)), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], ~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(4294967295u, 1u)], reverseBits(1u))), 1000f);
    global0 = array<u32, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.e, 1097f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, -245f))))) - arg_2.b.a), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.b.a.x, -583f), arg_2.c.a))), var_0.a.a)), _wgslsmith_f_op_vec2_f32(-arg_2.c.a))), select(select(var_0.b, !select(var_0.b, var_0.b, var_0.b.x), any(select(var_0.b, var_0.b, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, arg_2.e), !vec2<bool>(var_0.c, arg_2.e), !vec2<bool>(var_0.b.x, true)), any(vec2<bool>(true, false))), vec2<bool>(arg_2.e, true))));
    let var_2 = arg_2;
    var var_3 = Struct_4(Struct_3(func_2(), select(var_0.b, !var_0.b, !any(vec3<bool>(arg_2.e, false, var_0.c))), true, ~vec4<u32>(~global0[_wgslsmith_index_u32(4294967295u, 1u)], ~1u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 29060u), _wgslsmith_add_u32(1u, 19415u)), _wgslsmith_f_op_f32(floor(-1047f))), func_2(), var_0.b, vec4<i32>(min(arg_2.a.x, var_2.a.x), u_input.a, 39355i, select(_wgslsmith_div_i32(arg_3, ~u_input.a), u_input.b, select(true, 0u != var_0.d.x, var_2.e))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-603f, var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a)), all(vec2<bool>(true, arg_2.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1 - var_0.a.a))), select(_wgslsmith_clamp_u32(4294967295u, var_0.d.x, var_0.d.x) <= 4294967295u, func_3(var_0.b, arg_2.c, var_0, Struct_4(Struct_3(var_3.b, vec2<bool>(var_3.c.x, false), true, var_0.d, -1000f), Struct_1(var_2.b.a), var_3.a.b, arg_2.a)), true))), _wgslsmith_f_op_vec2_f32(-arg_2.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(u_input.b), -u_input.b, 2147483647i, _wgslsmith_sub_i32(-7665i, u_input.a)), vec4<i32>(u_input.b | u_input.b, u_input.b ^ u_input.a, u_input.a, u_input.a | u_input.a))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(-12544i, u_input.a, u_input.a, u_input.b), -33002i, Struct_2(vec4<i32>(-3054i, -5048i, u_input.b, u_input.a), Struct_1(vec2<f32>(-340f, 847f)), Struct_1(vec2<f32>(-195f, 485f)), 1434f, false), u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -266f)))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, -517f))), -520f, func_3(!vec2<bool>(all(vec3<bool>(true, true, true)), true), func_2(), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1203f, -177f))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false, vec4<u32>(4294967295u, min(global0[_wgslsmith_index_u32(63962u, 1u)], 32960u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(55679u, 65918u), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 1u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1098f, -652f, true)), -1727f)), Struct_4(Struct_3(func_2(), vec2<bool>(true, false), false, vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(46131u, 1u)], global0[_wgslsmith_index_u32(1321u, 1u)], 4294967295u) & vec4<u32>(3941u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52444u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(step(-1303f, -1274f))), func_2(), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec4<i32>(71686i, 7975i, countOneBits(u_input.a), 0i))));
    var var_1 = Struct_2(-_wgslsmith_add_vec4_i32(var_0.a, var_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-344f, var_0.d), var_0.c.a), var_0.c.a))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-235f, var_0.d))))), true);
    var_1 = Struct_2(var_1.a, func_2(), func_2(), _wgslsmith_div_f32(var_0.c.a.x, var_1.c.a.x), false);
    var var_2 = ~18458u;
    var var_3 = vec2<bool>(false, var_0.e);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.d, var_1.c.a.x), vec2<f32>(297f, var_1.c.a.x), select(vec2<bool>(true, false), vec2<bool>(false, var_0.e), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, var_1.b.a.x) - var_1.b.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a))));
    var var_5 = Struct_3(var_1.c, select(vec2<bool>(!(var_0.a.x <= 2147483647i), false), !select(select(vec2<bool>(var_3.x, var_1.e), vec2<bool>(true, true), var_1.e), !vec2<bool>(var_0.e, false), select(vec2<bool>(var_0.e, false), vec2<bool>(false, var_1.e), vec2<bool>(var_3.x, false))), !vec2<bool>(true, var_1.e)), false, ~max(~vec4<u32>(global0[_wgslsmith_index_u32(36147u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16307u, 1u)], 1u)], 1u)], 1u)], 4294967295u), ~vec4<u32>(38174u, 0u, 1u, global0[_wgslsmith_index_u32(1u, 1u)])) | ~select(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(77519u, 1u)], 1u, 1u)), vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 4294967295u, 4294967295u, 4294967295u), true), 1289f);
    let var_6 = Struct_2(_wgslsmith_div_vec4_i32(-countOneBits(var_1.a), var_1.a), var_0.c, Struct_1(var_4.a), var_0.d, all(select(vec4<bool>(var_1.e, true, all(vec4<bool>(var_0.e, var_0.e, var_0.e, var_5.b.x)), var_1.e), select(!vec4<bool>(var_1.e, var_5.c, var_0.e, false), select(vec4<bool>(false, var_5.b.x, var_3.x, var_5.b.x), vec4<bool>(var_3.x, true, var_5.c, true), var_1.e), !vec4<bool>(var_3.x, var_0.e, var_0.e, var_0.e)), true)));
    var var_7 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-376f)) - _wgslsmith_f_op_f32(exp2(var_0.b.a.x))), var_0.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(193f, var_7.a.x, var_3.x))))));
}

