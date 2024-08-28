struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(1000f, 416f, -419f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<u32> {
    global4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global4.a.x, global4.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) - 188f), _wgslsmith_f_op_f32(sign(global4.a.x)))));
    let var_0 = global2[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = var_0.c.x;
    global2 = array<Struct_1, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, global4.a.x, var_0.d.x, var_0.d.x)))))));
    return firstTrailingBit(vec2<u32>(~min(~1u, 12148u), 4294967295u));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = 1i;
    var var_1 = !select(!vec4<bool>(!arg_1.x, true, select(false, true, false), arg_1.x), vec4<bool>(!(false || arg_1.x), u_input.b >= abs(u_input.b), false, true), true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.x, global4.a.x, global4.a.x, -131f), vec4<f32>(737f, 398f, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(203f, 1040f, global4.a.x, -292f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-823f, arg_0.a.x, -509f, global4.a.x), vec4<f32>(610f, 2329f, global4.a.x, arg_0.a.x))))))), false, global4.a.x);
    var var_3 = -29925i;
    var var_4 = _wgslsmith_add_vec2_u32((_wgslsmith_mult_vec2_u32(func_3(), vec2<u32>(u_input.b, 14429u) << (vec2<u32>(u_input.b, 42075u) % vec2<u32>(32u))) | (select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 12045u), arg_1.zz) | vec2<u32>(1u, u_input.b))) ^ ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(58543u, 49324u), vec2<u32>(u_input.b, u_input.b))), abs(~vec2<u32>(1u, 1u)));
    return Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.a.x + var_2.a.x), _wgslsmith_f_op_f32(floor(-925f)), _wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(f32(-1f) * -1330f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, -2136f, 560f, 690f)))))), any(vec2<bool>(any(arg_1.xz), any(select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, var_2.b, var_2.b, var_2.b), var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + var_2.c) + var_2.c) - 903f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = -320f;
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_0.xzz))), select(vec3<bool>(true, !any(vec2<bool>(arg_3.x, arg_3.x)), !arg_3.x), select(vec3<bool>(true, false, true), select(vec3<bool>(arg_3.x, arg_3.x, false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x), true | arg_3.x), vec3<bool>(all(vec4<bool>(arg_3.x, arg_3.x, false, true)), true, select(arg_3.x, true, arg_3.x))), vec3<bool>(false, arg_3.x, all(vec2<bool>(true, false)) & arg_3.x)));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 0u, 4294967295u), vec3<u32>(arg_2.x, u_input.b, arg_2.x)), vec3<u32>(u_input.b, arg_2.x, u_input.b) & vec3<u32>(arg_2.x, 1u, arg_2.x))), vec3<u32>(0u, ~(~u_input.b), ~66293u)), (firstLeadingBit(vec3<u32>(1u, 17938u, 33971u)) & vec3<u32>(u_input.b, 1u, 4294967295u)) | vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 27815u), reverseBits(vec2<u32>(1u, u_input.b))), 0u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, 34689u), reverseBits(4294967295u))));
    global1 = array<vec3<f32>, 10>();
    global1 = array<vec3<f32>, 10>();
    return global2[_wgslsmith_index_u32(u_input.b, 6u)];
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c));
    global3 = _wgslsmith_div_vec4_i32(min(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, 1i, global3.x), vec4<i32>(12968i, arg_2.e, 1i, -1i), vec4<i32>(-5551i, -37645i, global3.x, arg_2.e))), reverseBits(vec4<i32>(-9180i, arg_2.e, -14584i, -1i))), _wgslsmith_mult_vec4_i32(~vec4<i32>(global3.x, u_input.a, arg_2.e, -60157i), select(max(vec4<i32>(-32074i, 2147483647i, 36403i, arg_2.e), vec4<i32>(arg_2.e, 2147483647i, 1i, global3.x)), max(vec4<i32>(global3.x, global3.x, arg_2.e, arg_2.e), vec4<i32>(arg_2.e, -31843i, 2147483647i, u_input.a)), vec4<bool>(true, true, arg_2.a, true)))) >> (arg_2.c % vec4<u32>(32u));
    var var_1 = abs(-2147483647i);
    var var_2 = Struct_2(arg_0.a.wwz);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.x)))));
    return Struct_2(vec3<f32>(995f, global4.a.x, _wgslsmith_f_op_f32(-var_2.a.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = -41026i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-273f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(round(arg_3.a.x)))), _wgslsmith_f_op_f32(-func_2(Struct_2(vec3<f32>(arg_0.a.x, -1233f, -1715f)), vec3<bool>(false, arg_2.b, arg_2.b)).a.x)) - _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~(~u_input.b), 10u)])));
    let var_2 = _wgslsmith_add_vec4_i32(-_wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.x, u_input.a, -2147483647i, 12508i), vec4<i32>(global3.x, 31668i, 2147483647i, global3.x), vec4<i32>(global3.x, global3.x, 1i, 183i))), vec4<i32>(~u_input.c, select(-2147483647i, -1i, false), select(global3.x, 1i, true), _wgslsmith_mod_i32(u_input.a, -28585i))), -(~vec4<i32>(global3.x << (u_input.b % 32u), -2147483647i, firstLeadingBit(global3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3.x, 2147483647i), u_input.d))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-1i, u_input.d.x);
    var var_1 = vec2<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_div_i32(~(global3.x << (4294967295u % 32u)), ~0i), u_input.c));
    let var_2 = 19417i << (u_input.b % 32u);
    global2 = array<Struct_1, 6>();
    var var_3 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b)), 10u)], vec3<f32>(405f, global4.a.x, global4.a.x))))), !vec2<bool>(select(true, false, false) != any(vec2<bool>(false, false)), true), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.a.x, -494f, -207f, global4.a.x))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1455f * -1047f)))), func_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(1112f - global4.a.x), _wgslsmith_f_op_f32(floor(-530f)), -1000f, _wgslsmith_f_op_f32(abs(global4.a.x))), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), global4.a.x), !((var_1.x < var_1.x) || true), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(984f, -258f, global4.a.x, -1645f), vec4<f32>(2120f, global4.a.x, global4.a.x, 306f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.x, 941f, -141f, global4.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.xx)), abs(vec2<u32>(u_input.b, u_input.b)), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(587f, var_3.a.x, var_3.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, 1030f, 1499f) - vec3<f32>(global4.a.x, 1559f, 153f))), var_3.a.zxw)), func_5(Struct_2(vec3<f32>(-2586f, _wgslsmith_div_f32(var_3.c, var_3.c), _wgslsmith_f_op_f32(-global4.a.x))), select(select(vec2<bool>(var_3.b, true), select(vec2<bool>(true, var_3.b), vec2<bool>(var_3.b, true), vec2<bool>(false, var_3.b)), func_2(Struct_2(vec3<f32>(1246f, global4.a.x, var_3.c)), vec3<bool>(true, var_3.b, false)).b), vec2<bool>(!var_3.b, !var_3.b), var_3.b), func_5(func_4(func_2(Struct_2(vec3<f32>(global4.a.x, var_3.c, -779f)), vec3<bool>(var_3.b, var_3.b, false)), var_3.b, func_1(var_3.a, global4.a.zy, vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_3.b, var_3.b))), vec2<bool>(!var_3.b, var_3.b), Struct_3(var_3.a, all(vec4<bool>(var_3.b, var_3.b, false, true)), 1f), func_4(Struct_3(vec4<f32>(-414f, global4.a.x, global4.a.x, -558f), var_3.b, 113f), func_5(Struct_2(global4.a), vec2<bool>(var_3.b, false), Struct_3(vec4<f32>(-2813f, -979f, global4.a.x, -864f), true, 344f), Struct_2(global4.a)).b, Struct_1(var_3.b, u_input.b, vec4<u32>(4294967295u, 1u, 8104u, 8733u), global4.a.zx, var_2))), Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-137f, global4.a.x, global4.a.x))))).a, firstLeadingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(4294967295u, u_input.b, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, 44186u), vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(16852u, 77108u, u_input.b)), select(vec3<bool>(var_3.b, false, var_3.b), vec3<bool>(var_3.b, true, false), true))) | ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(4294967295u, u_input.b, 748u), vec3<u32>(0u, u_input.b, u_input.b), vec3<bool>(var_3.b, false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, u_input.b), vec3<u32>(91821u, u_input.b, 8417u))), -42175i);
}

