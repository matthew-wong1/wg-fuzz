struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool) -> bool {
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    return false;
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<u32>, 31>();
    var var_0 = Struct_1(select(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), true), vec4<bool>(false, select(any(vec2<bool>(true, false)), true, true), false, true), vec4<bool>(true, true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), func_3(true))), !(u_input.d != (~54322i << (abs(1u) % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 358f) + _wgslsmith_f_op_f32(1402f - -1361f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(594f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-759f - 602f) - _wgslsmith_f_op_f32(f32(-1f) * -756f)))), min(u_input.c, _wgslsmith_clamp_vec4_i32(abs(u_input.c) << (firstLeadingBit(vec4<u32>(4294967295u, 0u, 36932u, 4294967295u)) % vec4<u32>(32u)), u_input.c, ~(~u_input.c))));
    global0 = array<vec3<u32>, 31>();
    var_0 = Struct_1(vec4<bool>(false, false, var_0.a.x, true | var_0.a.x), any(select(select(!var_0.a.zx, vec2<bool>(false, var_0.a.x), all(var_0.a)), select(vec2<bool>(var_0.b, var_0.b), select(var_0.a.yz, var_0.a.xx, true), true), vec2<bool>(var_0.b || false, true))), _wgslsmith_f_op_vec3_f32(-var_0.c), vec4<i32>(select(reverseBits(abs(-1i)), 40589i, var_0.b), u_input.d, 63806i, _wgslsmith_clamp_i32(-var_0.d.x, 45383i, var_0.d.x) >> (82151u % 32u)));
    var_0 = Struct_1(!var_0.a, var_0.a.x, var_0.c, -var_0.d);
    return Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(16535u, firstTrailingBit(~58652u)), abs(vec2<u32>(485u, 0u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), var_0.a.yy);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(arg_1.a, arg_2.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(327f, _wgslsmith_f_op_f32(ceil(-499f)), arg_1.c.x) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1.c - arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-779f, 2445f, -537f)) - vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x))))), vec4<i32>(u_input.a, abs(arg_1.d.x), ~(-9169i), 28829i) & arg_1.d);
    let var_1 = -1690f;
    var_0 = arg_1;
    let var_2 = any(!var_0.a);
    global0 = array<vec3<u32>, 31>();
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.d.xx, vec2<i32>(-2147483647i, -1i)) | vec2<i32>(2147483647i, var_0.d.x), ~_wgslsmith_clamp_vec2_i32(arg_1.d.xw, vec2<i32>(2147483647i, 1i), vec2<i32>(37435i, -151i)))) ^ -arg_1.d.x;
}

fn func_5(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<f32>(-620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)) - 1f));
    let var_1 = vec2<bool>(true, true);
    let var_2 = -vec2<i32>(arg_1.x ^ ~(i32(-1i) * -23290i), arg_1.x);
    var var_3 = true;
    global0 = array<vec3<u32>, 31>();
    return Struct_1(select(vec4<bool>(arg_0, true, var_1.x, select(any(vec2<bool>(true, false)), any(vec3<bool>(true, arg_0, arg_0)), func_3(false))), select(vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, arg_0, false)), true, false), !vec4<bool>(arg_0, var_1.x, false, var_1.x), select(vec4<bool>(arg_0, true, false, arg_0), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, true, true))), !select(select(vec4<bool>(true, arg_0, var_1.x, true), vec4<bool>(arg_0, arg_0, arg_0, var_1.x), false), vec4<bool>(false, var_1.x, true, arg_0), !arg_0)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, -598f, 1259f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1697f, var_0.x)), vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(678f, -1028f, -1336f), vec3<f32>(-404f, 977f, -731f)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 159f)), var_0.x) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -484f, -1696f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(821f, -297f, 1000f) * vec3<f32>(-548f, 1667f, -1000f))))), vec4<i32>(abs(~(~var_2.x)), var_2.x, 30015i, arg_1.x));
}

fn func_1() -> Struct_2 {
    var var_0 = ~(-_wgslsmith_add_i32(u_input.b, -_wgslsmith_mod_i32(-1i, u_input.b)));
    global0 = array<vec3<u32>, 31>();
    let var_1 = func_5(!(!any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), vec4<i32>(func_4(Struct_2(31414u, vec2<bool>(true, false)), Struct_1(vec4<bool>(false, true, true, false), true, vec3<f32>(-1101f, 285f, -671f), u_input.c), func_2()), reverseBits(u_input.b) << (firstLeadingBit(28232u) % 32u), u_input.b, -32333i) & select(~u_input.c, vec4<i32>(u_input.c.x, -3166i, 3587i, u_input.c.x) & -vec4<i32>(-2798i, 1i, u_input.d, -17662i), all(vec3<bool>(false, true, false))));
    var var_2 = 0u;
    var var_3 = u_input.d;
    return Struct_2(0u, !vec2<bool>(true, all(vec3<bool>(var_1.b, var_1.b, false))));
}

fn func_6(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = global0[_wgslsmith_index_u32(func_2().a, 31u)];
    global0 = array<vec3<u32>, 31>();
    var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, firstLeadingBit(max(30390u ^ var_1.x, var_1.x))), global0[_wgslsmith_index_u32(arg_0.a, 31u)]);
    var var_2 = 951f;
    return !(!vec4<bool>(true, _wgslsmith_div_f32(216f, -1488f) <= _wgslsmith_f_op_f32(trunc(-1248f)), arg_0.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!func_6(func_1()), func_6(func_2()).x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, -1030f, 201f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(900f, -529f, 689f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-513f, 1000f, 304f) + vec3<f32>(-654f, -711f, -1000f))) - vec3<f32>(_wgslsmith_f_op_f32(642f - 629f), _wgslsmith_f_op_f32(f32(-1f) * -420f), -357f)))), vec4<i32>(-_wgslsmith_mod_i32(countOneBits(u_input.d), max(1i, u_input.a)), -select(u_input.a, u_input.a, all(vec2<bool>(true, true))), u_input.a, u_input.c.x ^ _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-2147483647i, -45768i, u_input.d, u_input.a) << (vec4<u32>(40539u, 4294967295u, 0u, 24856u) % vec4<u32>(32u)))));
    let var_1 = ~(~20916i);
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    let var_2 = firstTrailingBit(global0[_wgslsmith_index_u32(~0u, 31u)] >> (countOneBits(reverseBits(reverseBits(global0[_wgslsmith_index_u32(50258u, 31u)]))) % vec3<u32>(32u)));
    let var_3 = 0i;
    global0 = array<vec3<u32>, 31>();
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

