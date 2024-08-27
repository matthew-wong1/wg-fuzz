struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-42496i, -14488i);

var<private> global1: array<i32, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = firstTrailingBit(-(~select(vec2<i32>(arg_0.b, u_input.e), countOneBits(vec2<i32>(global0.x, global1[_wgslsmith_index_u32(69679u, 4u)])), vec2<bool>(true, true))));
    let var_0 = arg_0.d.b;
    global1 = array<i32, 4>();
    let var_1 = Struct_2(1000f, Struct_1(firstLeadingBit(abs(abs(arg_0.a.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), arg_0.a.c, _wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_f_op_f32(floor(arg_0.c)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c.b + _wgslsmith_div_f32(var_1.b.b, 168f))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d.b.b))), _wgslsmith_f_op_f32(abs(arg_0.d.e))));
    return any(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), select(true, false, false))) & (true & any(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)));
}

fn func_2() -> Struct_5 {
    var var_0 = select(select(vec3<bool>(true || func_3(Struct_3(Struct_2(-1000f, Struct_1(vec4<u32>(5851u, u_input.b, 20918u, 96019u), 411f), Struct_1(vec4<u32>(u_input.c.x, 29295u, 63975u, 14300u), -1261f), -1263f, -194f), global1[_wgslsmith_index_u32(u_input.b, 4u)], 249f, Struct_2(337f, Struct_1(vec4<u32>(u_input.c.x, 51193u, 4294967295u, 0u), -839f), Struct_1(vec4<u32>(16809u, 0u, u_input.b, 4294967295u), -509f), 421f, -392f))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true), vec3<bool>(false, func_3(Struct_3(Struct_2(971f, Struct_1(vec4<u32>(4294967295u, 1u, u_input.b, u_input.b), -199f), Struct_1(vec4<u32>(u_input.c.x, u_input.b, u_input.b, u_input.b), -148f), 667f, 1000f), global0.x, -638f, Struct_2(-1000f, Struct_1(vec4<u32>(1u, u_input.b, 7732u, u_input.b), 267f), Struct_1(vec4<u32>(u_input.b, u_input.c.x, 15840u, u_input.b), -186f), 511f, 935f))), false), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec2<bool>(true, true)), true)), vec3<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), false)), !(-14759i > -u_input.d), true), true);
    var var_1 = !any(!vec4<bool>(true, var_0.x | true, false && var_0.x, false));
    let var_2 = ~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(u_input.c.x, u_input.b, u_input.b)), max(vec3<u32>(u_input.c.x, 29589u, 0u), vec3<u32>(10103u, u_input.c.x, 104603u)), _wgslsmith_mod_vec3_u32(vec3<u32>(11264u, u_input.c.x, 42846u), vec3<u32>(u_input.c.x, 18602u, 4294967295u))), vec3<u32>(37829u, 13475u, 71267u) << (vec3<u32>(u_input.c.x, 43385u, 53427u) % vec3<u32>(32u))));
    let var_3 = Struct_4(Struct_3(Struct_2(899f, Struct_1(vec4<u32>(var_2, 775u, 55851u, var_2), _wgslsmith_f_op_f32(f32(-1f) * -1854f)), Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 12713u, u_input.c.x, 17890u), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(step(-585f, 343f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-519f - _wgslsmith_f_op_f32(round(-990f)))), countOneBits(-global0.x) ^ 1i, 186f, Struct_2(_wgslsmith_f_op_f32(sign(1652f)), Struct_1(countOneBits(vec4<u32>(1u, 1u, u_input.b, var_2)), -122f), Struct_1(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, var_2), -1370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-199f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1243f)))), any(select(select(var_0.xx, !vec2<bool>(var_0.x, false), !var_0.x), !(!var_0.zx), vec2<bool>(func_3(Struct_3(Struct_2(-524f, Struct_1(vec4<u32>(u_input.c.x, 53396u, u_input.b, 0u), 700f), Struct_1(vec4<u32>(1u, 30782u, 69915u, 26200u), 1445f), -427f, -1000f), global0.x, -524f, Struct_2(-133f, Struct_1(vec4<u32>(83123u, 0u, var_2, 0u), 510f), Struct_1(vec4<u32>(0u, 10266u, 4294967295u, 1u), -1099f), -1859f, -1618f))), var_0.x))), (~(vec2<i32>(1i, global0.x) | vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 4u)])) & -max(vec2<i32>(0i, global1[_wgslsmith_index_u32(11182u, 4u)]), vec2<i32>(global0.x, -13076i))) << (vec2<u32>(~2872u, ~var_2) % vec2<u32>(32u)));
    var_0 = select(select(vec3<bool>(true, false, var_2 <= ~var_2), select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, var_0.x, true), var_3.b), vec3<bool>(var_0.x, func_3(Struct_3(var_3.a.a, 2147483647i, var_3.a.d.e, Struct_2(var_3.a.d.c.b, Struct_1(vec4<u32>(22228u, 4294967295u, 3987u, 32373u), var_3.a.a.a), var_3.a.d.b, 227f, -281f))), true), vec3<bool>(all(vec4<bool>(var_0.x, false, false, true)), true, true || var_0.x)), false), !vec3<bool>(!var_3.b, !(var_0.x || false), false), all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, var_0.x, false)), vec3<bool>(true, !var_0.x, all(vec3<bool>(var_0.x, false, var_0.x))), select(vec3<bool>(false, false, true), !vec3<bool>(var_3.b, var_3.b, var_0.x), select(vec3<bool>(var_3.b, var_3.b, var_0.x), vec3<bool>(var_3.b, false, false), false)))));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.c, 1168f, var_3.a.a.c.b) * vec3<f32>(671f, var_3.a.d.d, var_3.a.a.d)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-345f, var_3.a.c, var_3.a.c) - vec3<f32>(var_3.a.d.c.b, var_3.a.d.b.b, 1452f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.a.c, var_3.a.c, var_3.a.d.d)))))), vec4<u32>(var_3.a.d.c.a.x, var_3.a.d.c.a.x, 1u, 1u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.d.d, -449f, var_3.a.a.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1077f, -1000f, -1896f) - vec3<f32>(1048f, var_3.a.c, 434f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.a.a.e, -1174f, var_3.a.a.c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.a.e, var_3.a.a.e, -591f) - vec3<f32>(var_3.a.d.e, 1423f, -263f)))), vec3<bool>(any(vec4<bool>(var_3.b, var_0.x, true, var_0.x)), var_0.x, false))))), 2182f, vec4<bool>(true, var_0.x, true == var_3.b, false));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-func_2().a.x)))), Struct_1(_wgslsmith_add_vec4_u32(countOneBits(abs(vec4<u32>(var_0.b.x, 11809u, var_0.b.x, u_input.b))), var_0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + var_0.a.x), 1000f))), Struct_1(firstTrailingBit(vec4<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4696u, u_input.c.x), vec2<u32>(4294967295u, u_input.b)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(70361u, var_0.b.x, 1u), var_0.b.wzz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1613f)) + _wgslsmith_f_op_f32(-var_0.c.x)) - -972f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * 302f), var_0.d) + -361f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x)))), var_0.d));
    var var_2 = ~(-(~(min(1i, 3937i) | u_input.e)));
    var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(489f, var_1.d, func_2().c.x), var_0.c, !func_2().e.zzw))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.b, _wgslsmith_dot_vec3_u32(var_0.b.xxy, var_0.b.ywz), _wgslsmith_mod_u32(var_0.b.x, 0u)), vec4<u32>(var_1.b.a.x, 1u, var_1.c.a.x, 0u ^ u_input.c.x)), var_0.c, _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1063f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-790f)), 1f)))), select(vec4<bool>(func_2().e.x, true && (var_0.e.x && var_0.e.x), any(select(var_0.e, vec4<bool>(true, var_0.e.x, true, var_0.e.x), true)), _wgslsmith_f_op_f32(-var_1.b.b) >= _wgslsmith_f_op_f32(var_0.a.x * -526f)), vec4<bool>(false, false, var_0.e.x, all(vec3<bool>(true, var_0.e.x, var_0.e.x))), all(!select(var_0.e.ww, var_0.e.xy, var_0.e.x))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d)) * _wgslsmith_f_op_f32(max(var_0.a.x, 1120f))), var_0.c.x))), var_1.b, var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + 342f), 239f);
    return ~firstTrailingBit(firstLeadingBit(1i)) << (var_0.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), false)), _wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(27051u, 4u)], 35487i) == _wgslsmith_mult_i32(func_1(), _wgslsmith_mod_i32(global0.x, -2185i)), false), !select(vec4<bool>(func_3(Struct_3(Struct_2(-1309f, Struct_1(vec4<u32>(0u, 1u, 4294967295u, u_input.c.x), -440f), Struct_1(vec4<u32>(u_input.c.x, 102819u, u_input.c.x, 17252u), 148f), 1102f, 1749f), u_input.d, -1540f, Struct_2(1290f, Struct_1(vec4<u32>(33540u, 56420u, u_input.b, 0u), -2345f), Struct_1(vec4<u32>(u_input.b, u_input.c.x, 1u, 54919u), 754f), -1157f, 256f))), false, func_2().e.x, true), func_2().e, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false))), select(!vec4<bool>(true, false, any(vec4<bool>(false, false, true, true)), any(vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_2().e.x), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, true, false)))));
    global1 = array<i32, 4>();
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(-22338i, _wgslsmith_clamp_i32(func_1(), min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], -1i), vec4<i32>(u_input.a, 2147483647i, 13930i, -32739i)), _wgslsmith_div_i32(global0.x, 0i)), global0.x)), -27098i, ~countOneBits(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, -59120i), -48289i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 4u)], global0.x))), _wgslsmith_mod_i32(~(global1[_wgslsmith_index_u32(44880u, 4u)] >> (u_input.b % 32u)) | u_input.a, _wgslsmith_add_i32(-u_input.e, 1i >> (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))));
    global0 = vec2<i32>(min(~(-1i), global0.x), -_wgslsmith_mult_i32(~_wgslsmith_mult_i32(-4797i, -12543i), select(reverseBits(u_input.a), -476i, false)));
    var var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.xyz, vec3<i32>(min(1i, 18703i), var_1.x, 1i)), vec3<i32>(~(~(-23314i)), -var_1.x, -1622i), var_1.zwz) | var_1.xyw;
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-445f, -1367f)) - -1086f)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (select(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 34711u), vec4<u32>(0u, u_input.b, 88685u, 4294967295u), var_0) % vec4<u32>(32u)), 697f), Struct_1(vec4<u32>(u_input.c.x, ~32059u, min(u_input.c.x, u_input.b), 22886u), func_2().d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(526f)), _wgslsmith_f_op_f32(f32(-1f) * -464f))), !var_0.x)), 1523f), var_2.x, 2146f, Struct_2(325f, Struct_1(vec4<u32>(u_input.c.x, 64509u, u_input.c.x << (u_input.c.x % 32u), reverseBits(0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1080f - -137f))), Struct_1(vec4<u32>(_wgslsmith_add_u32(32835u, 27327u), u_input.c.x, ~u_input.b, ~u_input.b), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(-390f)))), func_2().a.x, 1f));
    var var_4 = vec4<bool>(any(vec3<bool>(var_0.x, true, var_0.x && (true || var_0.x))), var_0.x, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(457f * 284f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.b))), all(select(var_0, func_2().e, !all(vec3<bool>(true, var_0.x, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * func_2().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.a + 597f), 1014f, any(var_0)))), 1349f));
}

