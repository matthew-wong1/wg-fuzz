struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(49637u, 0u), vec2<u32>(14510u, 62076u), vec2<u32>(2216u, 13821u), vec2<u32>(61870u, 4294967295u), vec2<u32>(17881u, 50264u), vec2<u32>(19934u, 4294967295u), vec2<u32>(48961u, 82720u), vec2<u32>(1u, 10592u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 21892u), vec2<u32>(69504u, 48801u), vec2<u32>(32744u, 4294967295u), vec2<u32>(34106u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 40558u), vec2<u32>(38621u, 4294967295u), vec2<u32>(48783u, 1u), vec2<u32>(84379u, 106250u), vec2<u32>(27121u, 0u), vec2<u32>(0u, 0u), vec2<u32>(31369u, 4294967295u), vec2<u32>(0u, 1u));

var<private> global1: Struct_1 = Struct_1(0i, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(-4938i, u_input.b.x, -29145i, -2147483647i)), vec4<i32>(33718i, global1.a, u_input.b.x, 1i)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a, 33882i, global1.a, -9934i), vec4<i32>(u_input.a.x, u_input.b.x, 25562i, -81241i), u_input.b), -vec4<i32>(-2147483647i, 2147483647i, -2147483647i, u_input.b.x), select(vec4<bool>(global1.b, true, false, global1.b), vec4<bool>(false, false, global1.b, true), global1.b))), true), Struct_1(-7601i, true), global1.a);
    let var_1 = -17455i;
    var var_2 = true;
    var var_3 = Struct_3(var_0.a, Struct_1(var_0.c, var_0.b.b), _wgslsmith_div_i32(-u_input.a.x, -26778i));
    let var_4 = Struct_2(~global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(4294967295u, 4294967295u)), 24u)] & (vec2<u32>(~88625u, 1u) & min(reverseBits(global0[_wgslsmith_index_u32(0u, 24u)]), ~vec2<u32>(23729u, 0u))), !(!(!select(vec2<bool>(false, global1.b), vec2<bool>(true, var_0.b.b), false))));
    return vec3<bool>(select(var_3.a.b && select(true, true, var_0.b.b), true, _wgslsmith_div_u32(abs(var_4.a.x), 59804u | var_4.a.x) < var_4.a.x), !(!var_0.b.b), true);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_3 {
    global0 = array<vec2<u32>, 24>();
    var var_0 = Struct_1(u_input.b.x, !(!arg_0));
    global1 = Struct_1(var_0.a, true);
    let var_1 = u_input.b;
    global0 = array<vec2<u32>, 24>();
    return Struct_3(Struct_1(global1.a, true), Struct_1(_wgslsmith_mod_i32(4966i << (arg_1 % 32u), ~(var_1.x ^ 690i)), any(select(func_3(), vec3<bool>(arg_0, false, arg_0), all(vec3<bool>(global1.b, global1.b, arg_0))))), firstTrailingBit(_wgslsmith_clamp_i32(-1i, -(-1i ^ u_input.b.x), u_input.a.x)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = arg_2;
    global1 = func_2(true, abs(~1u)).a;
    let var_1 = Struct_2(~(~vec2<u32>(1u, 1u)), !vec2<bool>(var_0.b.b, any(vec4<bool>(var_0.b.b, true, false, arg_0))));
    let var_2 = Struct_2(var_1.a, !(!vec2<bool>(!global1.b, true)));
    var var_3 = ~1u;
    return Struct_1(39052i, global1.b);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: u32) -> bool {
    global1 = func_4(true, _wgslsmith_mult_i32(firstTrailingBit(~(~arg_1.c)), abs(-_wgslsmith_mod_i32(24446i, -33144i))), func_2(!global1.b, 1u), u_input.b.x);
    let var_0 = _wgslsmith_mult_u32(0u, 0u);
    let var_1 = ~arg_1.b.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1119f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1991f))), _wgslsmith_f_op_f32(837f * 929f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1654f, -251f, 1557f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(577f, 876f, 1122f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-151f, -717f, -284f))))))));
    let var_3 = Struct_2(~countOneBits(max(vec2<u32>(arg_2, 1u), countOneBits(vec2<u32>(var_0, arg_2)))), vec2<bool>(arg_0, _wgslsmith_f_op_f32(var_2.x * var_2.x) > var_2.x));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(u_input.b.x, false);
    var var_0 = select(vec4<bool>(global1.b, true || global1.b, global1.b != global1.b, any(select(vec2<bool>(true, true), vec2<bool>(false, global1.b), true)) | all(select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(false, true, true), vec3<bool>(false, global1.b, global1.b)))), select(select(select(vec4<bool>(global1.b, global1.b, global1.b, global1.b), select(vec4<bool>(false, false, false, global1.b), vec4<bool>(global1.b, false, global1.b, true), vec4<bool>(true, global1.b, true, false)), false), vec4<bool>(!global1.b, false, true, false), !(!global1.b)), vec4<bool>(func_1(select(false, false, global1.b), Struct_3(Struct_1(1i, false), Struct_1(6823i, false), -49529i), 55470u), !(!global1.b), false, true), vec4<bool>(true, global1.b, !global1.b || all(vec4<bool>(global1.b, global1.b, false, global1.b)), true)), true);
    let var_1 = false;
    var var_2 = u_input.b;
    let var_3 = !var_0.zwx;
    let var_4 = Struct_2(vec2<u32>(104266u, 1u), vec2<bool>(firstTrailingBit(~var_2.x) == -u_input.b.x, var_1));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_4.a.x, 57033u, 0u), vec3<u32>(~var_4.a.x, abs(0u), var_4.a.x)));
}

