struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<i32, 27> = array<i32, 27>(-41498i, 2147483647i, -8318i, -1i, -1i, -1i, 1i, 2868i, 2147483647i, -23499i, -5531i, 32035i, 0i, -37479i, -42178i, 23031i, -8554i, -1i, i32(-2147483648), 35982i, -1i, -9356i, i32(-2147483648), 0i, 2147483647i, 2147483647i, 0i);

var<private> global2: array<Struct_1, 6>;

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    global3 = any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(_wgslsmith_mult_u32(arg_1, 1u) == arg_1, true)));
    let var_0 = global2[_wgslsmith_index_u32(arg_1, 6u)];
    var var_1 = -405i;
    let var_2 = _wgslsmith_mod_vec3_i32(reverseBits(-vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(arg_1, 27u)]), _wgslsmith_add_i32(-47755i, global1[_wgslsmith_index_u32(var_0.e, 27u)]), -18955i)), vec3<i32>(0i, -1i, global1[_wgslsmith_index_u32(abs(abs(var_0.a.x)) >> (arg_1 % 32u), 27u)]));
    global1 = array<i32, 27>();
    return -38251i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1361f - -919f));
    var var_1 = Struct_1(~abs(firstLeadingBit(vec2<u32>(66049u, 0u))), vec3<i32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-219f))), 35967u << (_wgslsmith_clamp_u32(0u, 1u, 34225u) % 32u)), 1744i, i32(-1i) * -1i), arg_1.x, arg_0.zx, 0u);
    let var_2 = !(min(_wgslsmith_mod_u32(4294967295u, 4294967295u >> (1u % 32u)), ~(~var_1.e)) >= countOneBits(var_1.e));
    var var_3 = 1489f;
    let var_4 = abs(-(~(~var_1.b)));
    return var_1.d;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(98396u, 15360u), reverseBits(vec2<u32>(60376u, 36210u)), ~vec2<u32>(1u, 38721u))), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 49502u, 38622u)), vec3<u32>(38472u, 36357u, 4294967295u)), _wgslsmith_mod_u32(40788u, ~1u))), _wgslsmith_div_vec3_i32(reverseBits(-countOneBits(u_input.a.yyy)), -u_input.a.zwz), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(902f, -1000f), vec2<f32>(-989f, 1000f), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(627f, -935f, -1340f, -833f) * vec4<f32>(1000f, -1152f, -545f, -569f)), vec3<bool>(true, true, false), u_input.a.wyw))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(574f, 922f), vec2<f32>(-1000f, 618f), vec2<bool>(true, false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(130f, 1048f) * vec2<f32>(622f, -1023f)), vec2<f32>(-323f, -2327f)))), countOneBits(~(~1u)));
    var var_1 = any(!select(select(!vec3<bool>(true, var_0.c, false), vec3<bool>(true, true, true), !var_0.c), select(!vec3<bool>(false, var_0.c, true), select(vec3<bool>(false, true, true), vec3<bool>(var_0.c, var_0.c, var_0.c), var_0.c), true), vec3<bool>(!var_0.c, var_0.c, any(vec2<bool>(var_0.c, var_0.c)))));
    global4 = ~103u;
    var var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(abs(_wgslsmith_mod_vec4_i32(-u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(77767i, u_input.a.x, u_input.b, -1i), u_input.a))), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(var_0.b.x, global1[_wgslsmith_index_u32(var_0.e, 27u)], u_input.b, 3991i)), ~u_input.a)), vec4<i32>(global1[_wgslsmith_index_u32(~(abs(var_0.e) >> (select(var_0.a.x, 6843u, var_0.c) % 32u)), 27u)], _wgslsmith_div_i32(-reverseBits(global1[_wgslsmith_index_u32(var_0.a.x, 27u)]), 2147483647i), _wgslsmith_add_i32(var_0.b.x, firstLeadingBit(-u_input.b)), 0i));
    global0 = array<Struct_1, 13>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x << (_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, 0u, 15463u))), vec3<u32>(~_wgslsmith_mod_u32(1u, 36524u), countOneBits(func_1()), 1u)) % 32u);
    var var_1 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(47653u, 0u)), vec2<u32>(1u, 1u)) & ~1u, func_1(), 4294967295u);
    global3 = true;
    global4 = 0u;
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 13u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(var_2.d, vec2<f32>(var_2.d.x, -490f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(var_3.x, -257f, -429f, 605f), !vec3<bool>(false, var_2.c, var_2.c), u_input.a.zxz)).x, _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(f32(-1f) * -483f)), var_3.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-886f, _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, var_2.d.x, 412f)))), true)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.d.x))), var_2.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -228f)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_i32(vec2<i32>(~var_2.b.x, -14733i), vec2<i32>(-1i, 42894i)), firstLeadingBit(abs(var_2.b.x >> (var_1.x % 32u))), all(select(select(vec2<bool>(var_2.c, true), vec2<bool>(false, var_2.c), true), !vec2<bool>(false, var_2.c), !vec2<bool>(var_2.c, var_2.c)))), ~(vec2<i32>(-1i) * -vec2<i32>(32806i, -14689i)), func_1());
}

