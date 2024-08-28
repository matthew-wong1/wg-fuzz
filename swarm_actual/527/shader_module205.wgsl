struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec4<u32>(4294967295u, 33266u, 0u, 4294967295u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 47936u)), vec3<i32>(1i, -45419i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(8100u, 0u, 22666u, 0u)), Struct_1(vec4<u32>(63413u, 30464u, 1u, 4294967295u)), vec3<i32>(-1i, 17430i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(63924u, 4294967295u, 4294967295u, 1u)), Struct_1(vec4<u32>(40052u, 14008u, 1u, 4294967295u)), vec3<i32>(-23816i, 0i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(24904u, 4294967295u, 4294967295u, 18425u)), Struct_1(vec4<u32>(0u, 4294967295u, 11717u, 4294967295u)), vec3<i32>(-10746i, 2147483647i, -10877i)), Struct_2(Struct_1(vec4<u32>(111294u, 103279u, 4294967295u, 15268u)), Struct_1(vec4<u32>(52515u, 0u, 38109u, 61851u)), vec3<i32>(2147483647i, 0i, 18364i)), Struct_2(Struct_1(vec4<u32>(0u, 6784u, 1u, 0u)), Struct_1(vec4<u32>(7627u, 0u, 2796u, 1u)), vec3<i32>(-42484i, 2147483647i, 1i)), Struct_2(Struct_1(vec4<u32>(0u, 37043u, 4294967295u, 94474u)), Struct_1(vec4<u32>(3066u, 4294967295u, 1379u, 41026u)), vec3<i32>(i32(-2147483648), -4300i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(5674u, 54191u, 53879u, 21286u)), Struct_1(vec4<u32>(37442u, 10816u, 51647u, 34671u)), vec3<i32>(2147483647i, 0i, -8635i)), Struct_2(Struct_1(vec4<u32>(27272u, 4294967295u, 4294967295u, 15993u)), Struct_1(vec4<u32>(73187u, 75580u, 1u, 3096u)), vec3<i32>(8383i, -10646i, -1i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 59356u, 64463u, 33709u)), Struct_1(vec4<u32>(4638u, 18650u, 60066u, 1u)), vec3<i32>(1i, -1i, 1i)), Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_1(vec4<u32>(20842u, 4294967295u, 58732u, 1u)), vec3<i32>(-13772i, -3178i, i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(1u, 29863u, 83619u, 4294967295u)), Struct_1(vec4<u32>(49039u, 68494u, 25220u, 0u)), vec3<i32>(-1i, 19825i, 1i)), Struct_2(Struct_1(vec4<u32>(7114u, 63242u, 51109u, 25546u)), Struct_1(vec4<u32>(1u, 0u, 59771u, 103615u)), vec3<i32>(12617i, -18830i, -16121i)), Struct_2(Struct_1(vec4<u32>(4294967295u, 12766u, 0u, 50945u)), Struct_1(vec4<u32>(0u, 4294967295u, 53512u, 28561u)), vec3<i32>(0i, -2701i, 1i)), Struct_2(Struct_1(vec4<u32>(128416u, 0u, 17201u, 8066u)), Struct_1(vec4<u32>(1u, 26537u, 56677u, 4294967295u)), vec3<i32>(0i, -1i, -71671i)), Struct_2(Struct_1(vec4<u32>(27160u, 1u, 1u, 27660u)), Struct_1(vec4<u32>(0u, 82023u, 56166u, 4294967295u)), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec4<u32>(1u, 32034u, 64146u, 25018u)), Struct_1(vec4<u32>(0u, 4294967295u, 6877u, 11669u)), vec3<i32>(i32(-2147483648), 19534i, 22216i)), Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(vec4<u32>(0u, 0u, 1u, 78250u)), vec3<i32>(-24447i, -7734i, 2147483647i)), Struct_2(Struct_1(vec4<u32>(2542u, 1u, 48772u, 73323u)), Struct_1(vec4<u32>(1u, 1u, 0u, 0u)), vec3<i32>(908i, -1i, -14112i)), Struct_2(Struct_1(vec4<u32>(0u, 23193u, 85565u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 71317u, 74212u)), vec3<i32>(4906i, 41604i, 20561i)), Struct_2(Struct_1(vec4<u32>(0u, 44456u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(160u, 1u, 4294967295u, 1u)), vec3<i32>(-1i, 17993i, 1i)), Struct_2(Struct_1(vec4<u32>(11162u, 9559u, 0u, 1u)), Struct_1(vec4<u32>(27332u, 46783u, 4294967295u, 1u)), vec3<i32>(-20956i, 2147483647i, -72601i)));

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_2, 22>();
    return _wgslsmith_f_op_f32(-arg_0.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: f32) -> f32 {
    global3 = Struct_4(global3.a);
    global0 = array<vec3<bool>, 16>();
    var var_0 = -_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(max(vec4<i32>(22919i, -2147483647i, 0i, u_input.b), vec4<i32>(-10178i, 67855i, 8853i, u_input.d)), firstTrailingBit(vec4<i32>(-20597i, u_input.d, u_input.d, u_input.d))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.b, 29387i), vec4<i32>(u_input.d, u_input.b, u_input.b, 38684i)), -(~vec4<i32>(1i, 50018i, u_input.d, u_input.b))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_2(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1028f * arg_1) + _wgslsmith_f_op_f32(-global3.a))), Struct_1(~vec4<u32>(arg_0.x, arg_0.x, 0u, 1u)), Struct_1(vec4<u32>(1u, u_input.a, reverseBits(u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(23179u, 0u, u_input.c, 1u), arg_0))))));
    let var_2 = Struct_4(global3.a);
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_add_u32(19244u, _wgslsmith_clamp_u32(1u, 0u, u_input.c));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a, 768f, -156f), vec3<f32>(-1434f, global3.a, -1485f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(200f, -375f, 501f) + vec3<f32>(-2423f, 247f, -1169f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, global3.a, 1847f)))), false)))));
    let var_2 = true;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -388f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstLeadingBit(vec4<u32>(u_input.a, u_input.c, 4294967295u, 25692u)), _wgslsmith_f_op_f32(sign(-1611f)))))));
    let var_4 = 985i;
    let var_5 = countOneBits(4294967295u);
    let var_6 = Struct_4(_wgslsmith_div_f32(-1169f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_div_f32(-735f, var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1057f)))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1773f))));
}

