struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 45526i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, 82688i) << ((vec2<u32>(19018u, 31605u) ^ u_input.b.xx) % vec2<u32>(32u))), vec2<i32>(-1i, 1i)) & _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 45012i, 8260i), -vec3<i32>(-1i, -2147483647i, 44738i))), min(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(5701i, -1i, 2147483647i), vec3<i32>(14048i, 1i, -2147483647i), vec3<bool>(false, arg_0.x, false))) & ((vec3<i32>(-1i, -23318i, -29300i) >> (vec3<u32>(u_input.c.x, 1u, u_input.e) % vec3<u32>(32u))) ^ -vec3<i32>(-16805i, 2147483647i, -90211i)));
    return Struct_2(-500f, !(!vec4<bool>(false, !arg_0.x, true, arg_0.x)), vec4<bool>(true, all(select(vec2<bool>(arg_0.x, false), vec2<bool>(true, arg_0.x), true)), arg_0.x, true));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = func_2(!select(vec2<bool>(true, true), arg_0, !arg_0)).c.yyw;
    let var_1 = ~_wgslsmith_add_u32(~(1723u << ((4294967295u | u_input.a) % 32u)), u_input.d.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(-1f))), -197f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -558f), -510f)))));
    let var_3 = _wgslsmith_clamp_i32(-1i, 0i ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-19841i, -36914i), vec2<i32>(13549i, 2147483647i)), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(15829i, 34206i), -1i)) << (1u % 32u);
    let var_4 = reverseBits(firstLeadingBit(-(vec3<i32>(26378i, var_3, 0i) | vec3<i32>(0i, 0i, var_3))));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(11592i, arg_1.a), 2147483647i);
    return vec3<u32>(arg_1.e.x, 1u, u_input.c.x) | _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(30421u, 1u), 4294967295u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(43980u, arg_1.e.x, u_input.c.x), vec3<u32>(1u, 38223u, u_input.a)), arg_1.e.x, min(arg_1.e.x, u_input.c.x)), vec3<u32>(arg_1.e.x, 1u, ~u_input.a)), vec3<u32>(~_wgslsmith_mod_u32(arg_1.e.x, 0u), ~_wgslsmith_add_u32(u_input.c.x, 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_1.e.x, 4294967295u), u_input.b)));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = select(vec3<u32>(~arg_0, 1u, 1576u), _wgslsmith_mult_vec3_u32(func_4(func_2(vec2<bool>(true, true)), Struct_1(-44709i, true, func_3(vec2<bool>(false, false)), vec2<bool>(false, false), vec4<u32>(arg_0, 1u, arg_0, arg_0))), u_input.d.zyx), true);
    var var_1 = countOneBits(vec4<i32>(1i, 1i, 1i, 1i));
    let var_2 = Struct_1(-1i | -var_1.x, !(-1i <= _wgslsmith_mult_i32(func_3(vec2<bool>(true, true)), -1i)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(571i, 28483i, var_1.x, var_1.x), firstLeadingBit(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x))), vec4<i32>(-23968i, var_1.x, 31231i, var_1.x)), vec2<bool>(true, true), vec4<u32>(~u_input.e, abs(~arg_0) | countOneBits(_wgslsmith_mod_u32(u_input.e, 43203u)), arg_0, ~4294967295u));
    let var_3 = vec2<i32>(firstTrailingBit(abs(var_2.a)), -2147483647i);
    var var_4 = vec2<bool>(var_2.b, true);
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = abs(((~67846i | -arg_2.a) << (u_input.e % 32u)) & min(reverseBits(select(arg_2.c, arg_2.a, arg_2.b)), arg_2.a));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -883f))))), arg_1.c, select(vec4<bool>(select(arg_1.c.x, arg_2.a == arg_2.a, !arg_1.c.x), !all(vec2<bool>(arg_0, true)), all(!vec2<bool>(arg_2.b, true)), true), arg_1.b, vec4<bool>(false, false, all(!vec4<bool>(arg_2.d.x, false, arg_2.b, arg_0)), any(vec4<bool>(arg_1.b.x, false, arg_1.b.x, true)))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(func_2(arg_2.d).a, _wgslsmith_div_f32(-639f, -1742f), var_0.b.x | var_0.b.x)), var_0.a))), !vec4<bool>(func_2(select(var_0.c.wx, vec2<bool>(true, false), vec2<bool>(arg_0, true))).b.x, var_0.b.x, arg_0 && false, true), var_0.b);
    var var_1 = 0u;
    var_1 = 35429u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(arg_1.a + -1294f))))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f - var_0.a))), var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = vec3<f32>(-619f, _wgslsmith_f_op_f32(min(651f, 201f)), _wgslsmith_f_op_f32(func_5(true, Struct_2(_wgslsmith_f_op_f32(-838f + _wgslsmith_div_f32(524f, 332f)), vec4<bool>(true, true, func_1(5052u), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), func_2(vec2<bool>(true, false)).b.x)), Struct_1(1i, true, -33200i, select(func_2(vec2<bool>(false, true)).c.zx, vec2<bool>(true, true), true), u_input.c))));
    var var_1 = func_2(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(var_1.a - 600f), -598f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(false, Struct_2(var_1.a, vec4<bool>(var_1.b.x, true, var_1.c.x, var_1.c.x), var_1.b), Struct_1(2147483647i, true, -2147483647i, var_1.b.xz, u_input.c))), 1f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(908f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-576f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1854f, 1543f, 1382f), vec3<f32>(-1020f, var_0.x, -476f), true)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1090f, -780f, var_0.x))) - vec3<f32>(-1420f, _wgslsmith_f_op_f32(f32(-1f) * -665f), var_1.a))));
    var var_2 = 60626i;
    var var_3 = _wgslsmith_f_op_f32(select(-526f, -1563f, !(_wgslsmith_f_op_f32(var_0.x + 1304f) > 1189f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.e), var_0.x);
}

