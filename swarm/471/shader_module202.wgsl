struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
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

var<private> global0: bool;

var<private> global1: f32;

var<private> global2: array<Struct_3, 19>;

var<private> global3: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(12299i, 1i, 0i), vec3<i32>(-40004i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -17653i, 39873i), vec3<i32>(17451i, -11367i, 29758i), vec3<i32>(964i, 28844i, -1i), vec3<i32>(2147483647i, 0i, 26612i), vec3<i32>(65364i, 0i, -21991i), vec3<i32>(i32(-2147483648), 0i, -10887i), vec3<i32>(2147483647i, 2147483647i, 53264i), vec3<i32>(-1i, 34702i, 1i), vec3<i32>(0i, 14104i, 1i), vec3<i32>(90604i, 2504i, 1i), vec3<i32>(0i, 66236i, 8475i), vec3<i32>(42244i, -1915i, 39684i), vec3<i32>(20070i, 0i, -75i), vec3<i32>(-56821i, 4543i, i32(-2147483648)), vec3<i32>(33092i, -1i, -65301i), vec3<i32>(1i, 2147483647i, -3632i), vec3<i32>(75163i, -33373i, -9325i), vec3<i32>(-9156i, 18593i, -1i), vec3<i32>(-50993i, 1i, 21322i), vec3<i32>(555i, i32(-2147483648), 13267i), vec3<i32>(6673i, -49780i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = Struct_3(!(true || !any(vec3<bool>(false, true, true))), !vec4<bool>(true, _wgslsmith_div_u32(u_input.b.x, 0u) < _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), true, true), reverseBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(31852i, -6941i, -1243i, -55026i), vec4<i32>(12956i, -2147483647i, 15798i, -2147483647i), vec4<i32>(-1i, -1i, -40758i, 0i)) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, 28485u) % vec4<u32>(32u)))));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    global0 = !any(vec2<bool>(func_3() | any(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-1324f * arg_1.x) >= _wgslsmith_f_op_f32(f32(-1f) * -253f)));
    global0 = 14360u >= _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_0.a.x, 14830u, arg_0.a.x)), ~_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(18343u, 1u, arg_0.a.x)) << (~select(u_input.b, vec3<u32>(arg_0.a.x, u_input.b.x, u_input.b.x), true) % vec3<u32>(32u)));
    global2 = array<Struct_3, 19>();
    let var_0 = Struct_3(true, vec4<bool>(any(vec4<bool>(true, true, true, true)), true, func_3(), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))), select(-(~arg_0.b), arg_0.b, false));
    var var_1 = Struct_3(true, !vec4<bool>(var_0.b.x, func_3(), true, all(vec4<bool>(var_0.a, var_0.a, false, true))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(71380i, var_0.c, arg_0.b, arg_0.b) ^ vec4<i32>(82656i, var_0.c, 0i, -2147483647i)), vec4<i32>(arg_0.b, countOneBits(0i), var_0.c, 19162i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_0.c, var_0.c, -28200i), vec4<i32>(4472i, arg_0.b, arg_0.b, var_0.c)), max(-vec4<i32>(-6343i, 2147483647i, 1i, 1i), vec4<i32>(arg_0.b, -2147483647i, arg_0.b, -2147483647i))), ~(~(-2147483647i))));
    return arg_0.b << (57704u % 32u);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global0 = true;
    global0 = true;
    global2 = array<Struct_3, 19>();
    global0 = !(arg_0.x && any(!vec2<bool>(false, arg_0.x)));
    global0 = arg_0.x;
    return min(~(-countOneBits(reverseBits(-34382i))), _wgslsmith_dot_vec4_i32((abs(vec4<i32>(2147483647i, -34204i, -1277i, 49025i)) << (firstTrailingBit(vec4<u32>(1u, 1u, 1u, 13790u)) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-13205i, 22924i, 23419i, 2147483647i), vec4<i32>(0i, -54350i, -1i, -15795i)), 15476i >> (u_input.a.x % 32u), reverseBits(40562i), func_2(Struct_1(vec2<u32>(u_input.a.x, 26211u), -1i), vec2<f32>(-1013f, 515f))), -_wgslsmith_clamp_vec4_i32(vec4<i32>(23744i, -1i, -6195i, 2147483647i) << (u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, -49734i), vec4<i32>(3376i, -47530i, 33129i, 0i)), -vec4<i32>(-18653i, -1i, -6652i, -7650i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1u, (countOneBits(func_1(vec4<bool>(false, false, false, true))) >> (~u_input.b.x % 32u)) | countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-19824i, 25342i), vec2<i32>(-2147483647i, 6435i) >> (u_input.b.yz % vec2<u32>(32u)))));
    let var_1 = Struct_1(~u_input.b.xy, func_2(Struct_1(abs(vec2<u32>(1u, 47071u)), -15515i), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(356f, -573f), vec2<f32>(-359f, -1085f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-330f, 138f) - vec2<f32>(-1495f, 1762f))))) ^ var_0.b);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f + _wgslsmith_f_op_f32(f32(-1f) * -353f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - 639f)))) + 477f), _wgslsmith_div_f32(1742f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1407f) * -2229f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1701f)) + _wgslsmith_f_op_f32(f32(-1f) * -496f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-531f))), _wgslsmith_f_op_f32(-889f * _wgslsmith_f_op_f32(trunc(734f))), true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1417f, 1166f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 408f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f - _wgslsmith_f_op_f32(trunc(233f)))))));
    var var_3 = 4294967295u;
    var var_4 = ~var_0.a;
    let var_5 = global2[_wgslsmith_index_u32(0u, 19u)];
    let var_6 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.x)))))));
    let var_7 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(352f, _wgslsmith_f_op_f32(-var_6)))), vec2<f32>(var_6, var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.xy + var_2.yw))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

