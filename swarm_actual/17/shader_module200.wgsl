struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: Struct_4,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(1i, 1i, -5142i, -788i, -31087i, 0i, -26233i, 35623i, 0i, 2147483647i, 15596i, 34814i, -1i, i32(-2147483648), -39433i, -3760i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = select(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(16760i, global0[_wgslsmith_index_u32(35845u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]), vec3<i32>(global0[_wgslsmith_index_u32(25927u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], global0[_wgslsmith_index_u32(32930u, 16u)])), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], 0i, 2147483647i))), vec3<i32>(0i, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b, 16u)], abs(global0[_wgslsmith_index_u32(33052u, 16u)])), global0[_wgslsmith_index_u32(83192u, 16u)])), vec3<i32>(i32(-1i) * -2147483647i, ~global0[_wgslsmith_index_u32(1655u, 16u)] | _wgslsmith_dot_vec2_i32(vec2<i32>(28465i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])), firstLeadingBit(-27746i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(85167u, 16u)], 32016i) >> (vec3<u32>(1u, 36595u, u_input.b) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 16u)], -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(19652u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), min(vec3<i32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(16306u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)]), -vec3<i32>(-11995i, global0[_wgslsmith_index_u32(62367u, 16u)], global0[_wgslsmith_index_u32(21223u, 16u)]))), !vec3<bool>(arg_0.x, arg_0.x, !arg_0.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-981f, 2097f, 633f, 910f), vec4<f32>(1491f, -1000f, 758f, -596f)))), vec4<f32>(1f, -1198f, _wgslsmith_f_op_f32(f32(-1f) * -1315f), _wgslsmith_f_op_f32(f32(-1f) * -725f)))));
    global0 = array<i32, 16>();
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1765f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yy)), ~u_input.b), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(36041u, 16u)], var_0.x, 85i, -1i), select(vec4<i32>(var_0.x, 0i, var_0.x, 2147483647i), vec4<i32>(-1i, -1i, global0[_wgslsmith_index_u32(4294967295u, 16u)], var_0.x), vec4<bool>(false, false, false, arg_0.x))) >> ((min(u_input.a.x, 0u) << (~u_input.a.x % 32u)) % 32u), Struct_2(all(!arg_0.wyy), var_1), Struct_2(select(true, true, any(vec4<bool>(false, true, false, arg_0.x))), var_1), _wgslsmith_f_op_f32(var_1.a.x + 714f), 64670u), Struct_2(!arg_0.x & arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)))), firstTrailingBit(u_input.b));
    var var_3 = var_2.d.b;
    return var_2.d.a;
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<bool>((all(vec3<bool>(true, true, false)) | (true || func_3(vec4<bool>(true, false, true, false)))) == false, true, !(-285f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -426f), _wgslsmith_f_op_f32(738f * 1633f), any(vec4<bool>(true, true, true, false))))));
    let var_1 = Struct_3(~vec2<u32>(u_input.b, ~(~1u)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(2026f)), _wgslsmith_f_op_f32(step(-1124f, -860f)), _wgslsmith_f_op_f32(f32(-1f) * -1291f), 778f)))), vec2<bool>(!(false & (var_0.x && false)), var_0.x | var_0.x), global0[_wgslsmith_index_u32(max(abs(u_input.a.x >> (52926u % 32u)), u_input.a.x >> (select(1u, 1u, false) % 32u)), 16u)] >= 1i, Struct_2(!var_0.x, Struct_1(vec4<f32>(-338f, _wgslsmith_f_op_f32(f32(-1f) * -1302f), _wgslsmith_f_op_f32(select(237f, 715f, var_0.x)), _wgslsmith_f_op_f32(max(690f, -1547f))))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return Struct_4(_wgslsmith_div_i32(~0i, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zxw, u_input.a.zxy) | 2676u, 16u)]), Struct_2(var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-316f, var_1.b.a.x, var_1.b.a.x, 831f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e.b.a.x, var_1.e.b.a.x, var_1.b.a.x, -1322f))))))), var_1.e, _wgslsmith_f_op_f32(-var_1.b.a.x), var_1.a.x);
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 16>();
    var var_0 = abs(_wgslsmith_add_vec4_u32(~vec4<u32>(0u << (1u % 32u), 1u, 22044u, u_input.b), vec4<u32>(_wgslsmith_mult_u32(countOneBits(1112u), _wgslsmith_div_u32(u_input.b, u_input.a.x)), _wgslsmith_add_u32(~u_input.b, ~u_input.a.x), ~_wgslsmith_add_u32(0u, u_input.a.x), (u_input.a.x & 13062u) & ~u_input.b)));
    global0 = array<i32, 16>();
    let var_1 = func_2();
    var var_2 = var_1.a;
    return func_2().c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(reverseBits(~(~vec2<u32>(4120u, 1u))), func_1(), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(0u >= u_input.b, true, true))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u) << (vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, 94538u))), u_input.a.x), 16u)] >= _wgslsmith_mult_i32(1i, (-2147483647i ^ global0[_wgslsmith_index_u32(4294967295u, 16u)]) >> (~21150u % 32u)), Struct_2(true, func_1()));
    global0 = array<i32, 16>();
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(var_0.a.x, var_0.a.x)), 16u)], countOneBits(-1i)), _wgslsmith_div_i32(1i, ~28007i)), max(max(_wgslsmith_sub_i32(-17980i, global0[_wgslsmith_index_u32(var_0.a.x, 16u)]), -global0[_wgslsmith_index_u32(4785u, 16u)]), _wgslsmith_sub_i32(abs(-39968i), -2147483647i | global0[_wgslsmith_index_u32(var_0.a.x, 16u)]))) >> (max(_wgslsmith_sub_u32(abs(var_0.a.x), var_0.a.x), 1u) % 32u);
    let var_2 = vec4<i32>(-1i) * -((-vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 16u)], 1i, 0i, -43299i) | -vec4<i32>(-2147483647i, var_1, var_1, 38831i)) ^ ~vec4<i32>(var_1, global0[_wgslsmith_index_u32(4294967295u, 16u)], -9035i, 0i));
    var var_3 = firstLeadingBit(~(~var_2));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -1i, -1i, var_1), ~vec3<i32>(1i, -21631i, var_1)), select(vec3<i32>(-2147483647i, var_2.x >> (var_0.a.x % 32u), _wgslsmith_mult_i32(var_2.x, -28738i)), vec3<i32>(-2147483647i, -var_1, ~(-27467i)), vec3<bool>(true, var_0.b.a.x > var_0.e.b.a.x, !var_0.c.x)), select(var_0.e.a, any(!var_0.c), false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.e.b.a.x, -589f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, func_1().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.b.a.x + var_0.e.b.a.x) * _wgslsmith_div_f32(var_0.b.a.x, var_0.e.b.a.x))))), var_3.zz);
}

