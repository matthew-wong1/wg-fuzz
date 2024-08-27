struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(-7209i, 15444i, 8374i), -1i), Struct_1(vec3<i32>(1i, 8172i, 11437i), 1i), Struct_1(vec3<i32>(33527i, -26856i, 1i), 1i), Struct_1(vec3<i32>(2147483647i, 0i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(1i, -18007i, 0i), i32(-2147483648)), Struct_1(vec3<i32>(27496i, -1i, 0i), 44442i), Struct_1(vec3<i32>(0i, -28721i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(84539i, 0i, 87208i), 56859i), Struct_1(vec3<i32>(21728i, i32(-2147483648), 0i), i32(-2147483648)), Struct_1(vec3<i32>(-30221i, i32(-2147483648), -78391i), 2147483647i), Struct_1(vec3<i32>(-23548i, 61687i, 1i), 0i), Struct_1(vec3<i32>(-8395i, -12937i, 0i), -18555i), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(18745i, 59923i, 1i), i32(-2147483648)), Struct_1(vec3<i32>(-8320i, -16627i, -46652i), -64970i), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), 47872i), Struct_1(vec3<i32>(2147483647i, 2147483647i, -1i), 2147483647i), Struct_1(vec3<i32>(-1i, 2147483647i, 22330i), 12332i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i), -1i));

var<private> global2: i32 = 2147483647i;

var<private> global3: array<i32, 18> = array<i32, 18>(-1i, 29344i, -42361i, 1i, 0i, 9213i, 2147483647i, -1i, 1i, 1i, 2147483647i, 2147483647i, -68333i, i32(-2147483648), 37718i, -41723i, 25394i, -9716i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec3<i32>(global3[_wgslsmith_index_u32(1u, 18u)], -(~(1i & u_input.a)), abs(1i)), -62963i);
    global2 = _wgslsmith_mult_i32(firstLeadingBit(-1i), -4809i);
    global1 = array<Struct_1, 19>();
    let var_1 = -max(0i, firstTrailingBit(_wgslsmith_div_i32(~global3[_wgslsmith_index_u32(1u, 18u)], ~(-45967i))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(586f))))));
    return -reverseBits(-_wgslsmith_dot_vec3_i32(var_0.a, -vec3<i32>(-2147483647i, -33034i, global3[_wgslsmith_index_u32(0u, 18u)])));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = !vec2<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(true, false)))));
    var var_1 = select(select(select(vec4<bool>(true, !var_0.x, true, false), !vec4<bool>(false, var_0.x, var_0.x, true), true), vec4<bool>(true, select(var_0.x && true, var_0.x, var_0.x), var_0.x, false), select(vec4<bool>(!var_0.x, any(var_0), true, true), !(!vec4<bool>(false, false, var_0.x, var_0.x)), false)), !(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(true, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false)), any(var_0))), vec4<bool>(any(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, false))), !var_0.x | all(!vec3<bool>(true, var_0.x, true)), (0u >= arg_0) && true, !var_0.x));
    let var_2 = vec4<bool>(!(!(min(-3806i, global3[_wgslsmith_index_u32(0u, 18u)]) == arg_1.b)), !var_0.x, !(!var_1.x) | (!all(vec4<bool>(false, var_0.x, true, false)) & (var_0.x | (false && var_0.x))), !all(vec4<bool>(!var_0.x, !var_1.x, arg_0 <= 1u, !var_0.x)));
    global3 = array<i32, 18>();
    let var_3 = var_2.x;
    return _wgslsmith_clamp_i32(~(~func_2()), u_input.c, 32969i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-685f, -1572f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-326f, 1099f, -644f))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1640f, -246f, 383f), vec3<f32>(369f, -155f, 419f), vec3<bool>(true, false, false))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-291f, -291f, -306f), vec3<f32>(-2181f, -334f, 496f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-954f, 1125f, -313f)))));
    global2 = _wgslsmith_div_i32(1i, arg_0.x) & reverseBits(func_3(1u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3.x, _wgslsmith_dot_vec3_u32(arg_3.ywx, arg_3.wxx)), 19u)]));
    let var_1 = Struct_2(vec3<f32>(-1562f, var_0.x, _wgslsmith_f_op_f32(select(-135f, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-27068i, arg_0.x, 31531i, u_input.e)) != u_input.e))));
    let var_2 = global0[_wgslsmith_index_u32(1u, 14u)];
    global0 = array<Struct_2, 14>();
    return !((all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))) & false) != !(-u_input.e > 4853i));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_4(-select(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(44809u, 18u)], 0i, global3[_wgslsmith_index_u32(11017u, 18u)], u_input.b.x), vec4<i32>(-1i, arg_0, 40909i, global3[_wgslsmith_index_u32(65347u, 18u)])), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(func_2(), _wgslsmith_add_i32(0i, u_input.c), -17114i, func_3(18272u, global1[_wgslsmith_index_u32(126599u, 19u)])), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false))), abs(abs(abs(vec2<u32>(1u, 1u)))), 59096u, firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(0u, 79586u, 10853u, 0u), vec4<u32>(1u, 0u, 1u, 59160u), true)))));
    global3 = array<i32, 18>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1493f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-881f * _wgslsmith_f_op_f32(round(-1385f))))))));
    var var_2 = (~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(20962u, 0u, 0u, 56522u), vec4<u32>(1u, 4294967295u, 31382u, 94013u)), 1u, 89959u) | ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 4294967295u, 38166u), vec3<u32>(97434u, 0u, 29367u), false), vec3<u32>(91508u, 36496u, 0u))) | ~vec3<u32>(firstLeadingBit(1u), ~_wgslsmith_div_u32(63178u, 13987u), _wgslsmith_div_u32(abs(1u), ~1u));
    let var_3 = true;
    return 82273u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 14>();
    var var_0 = vec3<f32>(-856f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -225f))))), 1336f);
    var var_1 = (global3[_wgslsmith_index_u32(firstLeadingBit(func_1(-656i)), 18u)] | -2147483647i) ^ u_input.e;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, -673f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1477f, 738f)), vec3<f32>(-402f, -899f, 484f), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(274f)), _wgslsmith_div_f32(var_0.x, 626f), var_0.x))));
    var var_3 = global0[_wgslsmith_index_u32(~(70229u >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, min(4294967295u, 1u)), 1u) % 32u)), 14u)];
    var var_4 = Struct_1(vec3<i32>(select(~(-7653i), global3[_wgslsmith_index_u32(1u, 18u)], false), -2147483647i, -u_input.c), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 42420i) << (vec2<u32>(3785u, 24099u) % vec2<u32>(32u)), vec2<i32>(40867i, global3[_wgslsmith_index_u32(17021u, 18u)])), u_input.a) << (14754u % 32u));
    var var_5 = global1[_wgslsmith_index_u32(~1u, 19u)];
    global3 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(1u, 40348u, 4294967295u))) ^ max(select(vec3<u32>(0u, 94342u, 1u), ~vec3<u32>(0u, 0u, 31986u), vec3<bool>(false, false, false)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(45671u, 12902u, 0u), vec3<u32>(0u, 70295u, 23977u), vec3<bool>(true, false, false)), vec3<u32>(1u, 1u, 1u))));
}

