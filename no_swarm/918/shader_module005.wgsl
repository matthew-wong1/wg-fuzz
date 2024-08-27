struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

var<private> global1: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(577f, -274f), vec2<f32>(-112f, -337f), vec2<f32>(-755f, -163f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<vec3<bool>, 24>();
    global0 = array<vec3<bool>, 24>();
    var var_0 = Struct_4(Struct_3(any(vec3<bool>(true, true, true)), Struct_1(vec4<i32>(select(2147483647i, -7931i, true), countOneBits(u_input.a), u_input.b.x, u_input.b.x), select(true, true, any(global0[_wgslsmith_index_u32(1u, 24u)])), true, vec3<i32>(u_input.a, 1i, 1i ^ u_input.a)), Struct_1(vec4<i32>(0i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(2147483647i, u_input.a), u_input.b.x), select(false, true, false) || all(vec3<bool>(true, true, true)), true, ~vec3<i32>(u_input.a, -2147483647i, -10129i))), -192f, Struct_2(Struct_1(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -12038i, u_input.a, u_input.b.x), vec4<i32>(-47156i, u_input.a, u_input.b.x, u_input.b.x)), vec4<i32>(1i, 0i, u_input.b.x, -38103i) >> (vec4<u32>(28836u, 41822u, 12860u, 0u) % vec4<u32>(32u))), true, true, ~min(vec3<i32>(-2147483647i, u_input.a, 4860i), vec3<i32>(u_input.a, -15777i, 0i))), 1u));
    global1 = array<vec2<f32>, 3>();
    var_0 = Struct_4(Struct_3(var_0.c.a.b || false, var_0.a.c, Struct_1(var_0.a.c.a & var_0.c.a.a, true | any(vec2<bool>(var_0.c.a.b, var_0.a.a)), var_0.c.a.c, abs(~vec3<i32>(u_input.b.x, u_input.a, 43063i)))), _wgslsmith_f_op_f32(floor(var_0.b)), var_0.c);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(749f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -1372f), _wgslsmith_f_op_f32(step(789f, 990f)))))), -3736f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-var_0.x), true)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) - var_0.x))));
    global1 = array<vec2<f32>, 3>();
    global0 = array<vec3<bool>, 24>();
    var var_2 = 5349i > u_input.b.x;
    return Struct_1(vec4<i32>(1i, ~16857i, countOneBits(i32(-1i) * -1i), firstLeadingBit(-33278i)), true, any(select(vec3<bool>(false, true, all(vec2<bool>(true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)])), true)), vec3<i32>(-33250i, 0i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b.x, u_input.a, -1i)) >> (abs(vec3<u32>(19377u, 0u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 41995i, 62776i), vec3<i32>(-1i, u_input.b.x, u_input.a))))));
}

fn func_1() -> Struct_3 {
    global1 = array<vec2<f32>, 3>();
    global0 = array<vec3<bool>, 24>();
    var var_0 = func_2();
    global0 = array<vec3<bool>, 24>();
    var_0 = func_2();
    return Struct_3(~select(2273i, firstLeadingBit(-1i), !var_0.b) == func_2().a.x, Struct_1(vec4<i32>(u_input.a, 27567i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 16542i, u_input.b.x, var_0.d.x), var_0.a), u_input.b.x), var_0.b, true, vec3<i32>(-52730i, var_0.a.x & -50071i, 41548i)), Struct_1(var_0.a, false, var_0.b, var_0.d));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = reverseBits(min(vec2<u32>(~13469u, select(10974u, 53177u, arg_0.a)), vec2<u32>(1u, abs(7954u)))) ^ ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, 362u), vec4<u32>(58630u, 57346u, 16426u, 1u)));
    global1 = array<vec2<f32>, 3>();
    var var_1 = func_2();
    var var_2 = arg_0;
    let var_3 = Struct_4(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 666f), -588f))) + 1527f), Struct_2(Struct_1(-vec4<i32>(-1i, var_2.b.a.x, 1i, 39622i), true, func_2().b, vec3<i32>(reverseBits(var_1.d.x), var_2.c.a.x, min(2915i, var_1.d.x))), _wgslsmith_dot_vec2_u32(min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 53671u)), var_0)));
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 3>();
    let var_0 = Struct_4(Struct_3(any(vec3<bool>(false, true, false)), Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-10567i, 1i, -831i, 39456i), vec4<i32>(-2147483647i, -34307i, u_input.b.x, u_input.b.x), vec4<i32>(10955i, -2953i, u_input.b.x, -2147483647i)), (u_input.b.x <= u_input.a) && true, true, ~min(vec3<i32>(1i, 2147483647i, u_input.b.x), vec3<i32>(-27561i, 74000i, u_input.a))), func_4(func_1())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1827f)))), _wgslsmith_f_op_f32(1000f + 473f))), Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 18329i, u_input.a) << (vec4<u32>(1u, 35944u, 0u, 1235u) % vec4<u32>(32u)), -vec4<i32>(20138i, 2147483647i, 2147483647i, u_input.a)), func_2().b, any(vec4<bool>(true, true, false, false)) | true, -(vec3<i32>(u_input.b.x, -13647i, -91836i) | vec3<i32>(u_input.b.x, u_input.a, -24416i))), ~firstTrailingBit(46873u) ^ 1u));
    let var_1 = Struct_4(Struct_3(false, func_1().c, Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.a.d.x, 2147483647i, var_0.a.b.d.x, -32162i), vec4<i32>(18073i, var_0.c.a.a.x, 3063i, var_0.c.a.d.x))), true, true, var_0.c.a.a.zwy)), var_0.b, var_0.c);
    var var_2 = var_1.c.a;
    var_2 = Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x << (4294967295u % 32u), ~var_0.c.a.a.x, _wgslsmith_dot_vec2_i32(var_2.d.yx, vec2<i32>(var_2.d.x, var_2.a.x)), i32(-1i) * -30367i), vec4<i32>(var_2.d.x, 49452i, var_0.c.a.a.x, _wgslsmith_mult_i32(-1i, 1i))), any(vec2<bool>(all(global0[_wgslsmith_index_u32(19494u, 24u)]), (var_1.b <= -1231f) || true)), var_0.a.a, vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-34344i, -2147483647i, -2147483647i, var_1.c.a.d.x), vec4<i32>(3923i, u_input.a, u_input.b.x, 14493i)), var_0.c.a.d.x), ~(-2147483647i) >> (1u % 32u)), ~(-1i), _wgslsmith_sub_i32(1i, ~(var_1.a.c.a.x | -12638i))));
    let var_3 = ~_wgslsmith_mod_vec2_i32(~var_2.d.xy, select(var_0.a.b.d.xz, func_2().d.zx, !all(vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.b, select(countOneBits(vec3<i32>(-2147483647i, ~var_2.a.x, 7307i)), -firstLeadingBit(vec3<i32>(22262i, -7195i, var_1.a.b.a.x)), global0[_wgslsmith_index_u32(1u, 24u)]), vec3<i32>(-1i, 0i, -_wgslsmith_mod_i32(u_input.a, func_2().a.x)));
}

