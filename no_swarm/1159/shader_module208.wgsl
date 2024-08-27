struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = vec3<bool>(arg_0.d.x, -1i != -(i32(-1i) * -arg_0.b), arg_0.d.x || true);
    global0 = array<u32, 24>();
    var_0 = select(!select(!select(vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, arg_0.d.x), var_0.x), vec3<bool>(all(vec3<bool>(false, arg_0.d.x, arg_0.d.x)), false, true), vec3<bool>(any(vec4<bool>(arg_0.d.x, var_0.x, var_0.x, false)), true, select(var_0.x, true, var_0.x))), select(!select(vec3<bool>(var_0.x, false, false), !vec3<bool>(var_0.x, false, true), false), select(!vec3<bool>(false, arg_0.d.x, false), !vec3<bool>(arg_0.d.x, arg_0.d.x, false), select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(true, var_0.x, false), vec3<bool>(arg_0.d.x, false, var_0.x), vec3<bool>(var_0.x, arg_0.d.x, var_0.x)), !vec3<bool>(arg_0.d.x, var_0.x, var_0.x))), true), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.d.x, var_0.x, arg_0.d.x), false)), true, (arg_0.a.x & -2147483647i) != _wgslsmith_div_i32(arg_0.b, arg_0.a.x)));
    return vec2<bool>(var_0.x, !all(select(vec4<bool>(true, arg_0.d.x, var_0.x, arg_0.d.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, false, true, true))));
}

fn func_3() -> vec4<i32> {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-1i, -2147483647i, -1i, -25925i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, -2147483647i, 346i), vec4<i32>(-2147483647i, -1i, -45718i, 55409i))) >> (_wgslsmith_mod_vec4_u32(select(vec4<u32>(61232u, 105126u, 1u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 4294967295u, u_input.a.x), vec4<bool>(false, false, true, true)), ~vec4<u32>(14980u, 31415u, u_input.a.x, 9142u)) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, i32(-1i) * -1i, _wgslsmith_mod_i32(0i, -2147483647i), select(60407i, 7390i, true)), vec4<i32>(abs(1i), ~(25248i << (u_input.a.x % 32u)), reverseBits(9524i), countOneBits(-2147483647i))), select(u_input.a.x, ~u_input.a.x, true & all(vec3<bool>(true, true, true))), vec2<bool>(true, true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f + _wgslsmith_div_f32(-1000f, 1629f)) + _wgslsmith_f_op_f32(floor(-1581f))), _wgslsmith_f_op_f32(min(1660f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -371f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-782f, -2276f, select(true, false, false))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2073f, -198f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1812f)))));
    let var_1 = ~(-vec3<i32>(24775i << (0u % 32u), -1i ^ var_0.a.x, _wgslsmith_add_i32(var_0.b, var_0.b)) >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], ~(~850u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(var_0.c, 0u, u_input.a.x)), firstLeadingBit(u_input.a))) % vec3<u32>(32u)));
    return _wgslsmith_add_vec4_i32(var_0.a, -vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, var_0.b, var_0.b, -1i), vec4<i32>(-42762i, -57761i, var_0.a.x, 40573i), vec4<i32>(var_1.x, var_1.x, var_1.x, 0i))), _wgslsmith_div_i32(var_0.b, var_1.x), 0i, select(_wgslsmith_div_i32(var_1.x, -29602i), 1742i, !var_0.d.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_1(arg_1.a, func_3().x, _wgslsmith_sub_u32(1u, 1u), vec2<bool>(any(!vec3<bool>(true, false, arg_1.d.x)), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(arg_2.e, arg_1.e))))), _wgslsmith_f_op_vec4_f32(-arg_2.e)));
    var var_1 = arg_1;
    var var_2 = arg_2;
    global0 = array<u32, 24>();
    var var_3 = arg_2;
    return arg_1.c;
}

fn func_1() -> Struct_1 {
    let var_0 = !select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, true), false);
    global0 = array<u32, 24>();
    let var_1 = select(!var_0.ww, !select(vec2<bool>(true, any(vec3<bool>(var_0.x, false, var_0.x))), select(!var_0.wx, select(vec2<bool>(true, var_0.x), var_0.ww, var_0.x), !vec2<bool>(var_0.x, true)), !func_2(Struct_1(vec4<i32>(0i, 2147483647i, -1169i, 1i), -2147483647i, 52380u, vec2<bool>(var_0.x, false), vec4<f32>(-1323f, 1146f, -1519f, -1178f)))), any(!vec4<bool>(var_0.x, any(var_0.xxx), true, var_0.x)));
    let var_2 = Struct_1(vec4<i32>(3345i, 0i, -1i, i32(-1i) * -12739i), _wgslsmith_add_i32(-(i32(-1i) * -3136i), abs(1i)), global0[_wgslsmith_index_u32(~func_4(all(!vec2<bool>(var_0.x, false)), Struct_1(func_3(), -4297i, 0u, select(vec2<bool>(true, var_0.x), var_0.yy, vec2<bool>(true, var_0.x)), vec4<f32>(-361f, 752f, -1743f, -1000f)), Struct_1(select(vec4<i32>(-22708i, 1i, 20393i, 2147483647i), vec4<i32>(-2147483647i, -1i, 26448i, 2147483647i), var_0), countOneBits(1i), _wgslsmith_dot_vec4_u32(vec4<u32>(97483u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 62314u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)])), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, -921f, 1281f, -1622f) * vec4<f32>(-1000f, 468f, -766f, 1181f))), vec3<i32>(1i, 1i, 1i)), 24u)], !func_2(Struct_1(vec4<i32>(-537i, 21352i, -39447i, -2147483647i), _wgslsmith_div_i32(38353i, -2147483647i), abs(u_input.a.x), func_2(Struct_1(vec4<i32>(4307i, -2241i, 1i, 0i), 0i, 4294967295u, vec2<bool>(false, true), vec4<f32>(693f, -208f, 463f, -261f))), vec4<f32>(442f, -362f, -1552f, 2283f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1548f, 478f)), _wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1236f + -2308f) + _wgslsmith_f_op_f32(round(-439f))))));
    let var_3 = var_2;
    return Struct_1(firstLeadingBit(var_3.a), firstLeadingBit(var_2.b), _wgslsmith_mult_u32(max(countOneBits(~var_2.c), ~1u), _wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), firstLeadingBit(var_3.c) & 24078u)), var_3.d, _wgslsmith_f_op_vec4_f32(-var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    let var_0 = func_1();
    let var_1 = var_0.e.x;
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(var_0.a, ~(-var_0.a))), 66156i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(65669u, global0[_wgslsmith_index_u32(var_0.c, 24u)]), ~(~55026u) << (((1u >> (0u % 32u)) << (var_0.c % 32u)) % 32u)), 24u)], var_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, var_1, -1779f, var_0.e.x), var_0.e) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1413f, var_0.e.x, var_0.e.x, -1507f)))))));
    let var_3 = var_0.c;
    var var_4 = func_1();
    var var_5 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.xz)), vec2<u32>(_wgslsmith_sub_u32(func_1().c, ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(46784u, 0u, 119235u), 24u)]), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_3, var_4.c, 0u, global0[_wgslsmith_index_u32(var_3, 24u)]), vec4<u32>(65156u, var_4.c, 0u, 26790u)) ^ vec4<u32>(var_3, 15656u, var_2.c, var_0.c), reverseBits(vec4<u32>(var_0.c, 0u, var_0.c, 18162u)))), max(48591u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.zx, abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 24u)], u_input.a.x))), 29845u >> (var_0.c % 32u))));
}

