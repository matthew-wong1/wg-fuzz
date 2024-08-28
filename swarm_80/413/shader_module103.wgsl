struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

var<private> global1: array<Struct_2, 32>;

var<private> global2: f32;

var<private> global3: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec2<u32>(0u, 4294967295u), vec3<u32>(1u, 34029u, 50524u), 11290u, vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(67358u, 0u), vec3<u32>(57205u, 127918u, 4294967295u), 1u, vec2<u32>(1u, 1u)), Struct_3(vec2<u32>(1u, 1u), vec3<u32>(1u, 17267u, 20322u), 4921u, vec2<u32>(5045u, 32401u)), Struct_3(vec2<u32>(0u, 12070u), vec3<u32>(42105u, 0u, 95586u), 20715u, vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(13613u, 0u), vec3<u32>(27231u, 41144u, 0u), 4294967295u, vec2<u32>(1u, 37498u)), Struct_3(vec2<u32>(9761u, 0u), vec3<u32>(4294967295u, 16081u, 18409u), 4294967295u, vec2<u32>(8003u, 0u)), Struct_3(vec2<u32>(48301u, 2407u), vec3<u32>(31231u, 0u, 1u), 4294967295u, vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(1u, 8739u), vec3<u32>(16193u, 79541u, 4294967295u), 4294967295u, vec2<u32>(45310u, 4294967295u)), Struct_3(vec2<u32>(26278u, 35827u), vec3<u32>(58433u, 17300u, 1u), 35870u, vec2<u32>(4294967295u, 1u)), Struct_3(vec2<u32>(47388u, 32584u), vec3<u32>(31653u, 0u, 36714u), 0u, vec2<u32>(73908u, 77999u)), Struct_3(vec2<u32>(0u, 4294967295u), vec3<u32>(50111u, 4294967295u, 34887u), 80302u, vec2<u32>(1u, 1u)), Struct_3(vec2<u32>(99646u, 16038u), vec3<u32>(4294967295u, 62781u, 4294967295u), 49776u, vec2<u32>(2029u, 1u)), Struct_3(vec2<u32>(4294967295u, 0u), vec3<u32>(110944u, 0u, 4294967295u), 4294967295u, vec2<u32>(0u, 4294967295u)), Struct_3(vec2<u32>(0u, 4294967295u), vec3<u32>(11281u, 4294967295u, 4294967295u), 18936u, vec2<u32>(1u, 11116u)), Struct_3(vec2<u32>(2802u, 1u), vec3<u32>(0u, 7940u, 1u), 1u, vec2<u32>(0u, 41693u)), Struct_3(vec2<u32>(1u, 0u), vec3<u32>(8737u, 0u, 4294967295u), 11122u, vec2<u32>(4294967295u, 0u)), Struct_3(vec2<u32>(118488u, 0u), vec3<u32>(1u, 6732u, 30763u), 0u, vec2<u32>(48622u, 29112u)), Struct_3(vec2<u32>(1u, 21221u), vec3<u32>(40192u, 4294967295u, 46906u), 0u, vec2<u32>(47163u, 1u)), Struct_3(vec2<u32>(1u, 19330u), vec3<u32>(15347u, 15965u, 27465u), 1u, vec2<u32>(0u, 14845u)), Struct_3(vec2<u32>(43319u, 0u), vec3<u32>(4294967295u, 10396u, 29435u), 4294967295u, vec2<u32>(47996u, 17442u)), Struct_3(vec2<u32>(1u, 4294967295u), vec3<u32>(4294967295u, 33977u, 4294967295u), 26602u, vec2<u32>(0u, 38378u)), Struct_3(vec2<u32>(54849u, 1u), vec3<u32>(1u, 67875u, 13290u), 4294967295u, vec2<u32>(31729u, 66158u)), Struct_3(vec2<u32>(4294967295u, 28563u), vec3<u32>(12645u, 36076u, 101355u), 4294967295u, vec2<u32>(1u, 86033u)));

var<private> global4: array<vec2<bool>, 11>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), 14u)];
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a, countOneBits(_wgslsmith_div_u32(0u, ~u_input.a))), 32u)];
    var var_2 = var_1.b.b;
    global3 = array<Struct_3, 23>();
    let var_3 = u_input.c.yz;
    return vec2<u32>(max(u_input.a, 0u), abs(min(firstLeadingBit(69924u), ~72722u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(abs(func_3()), abs(firstTrailingBit(vec3<u32>(~15976u, firstTrailingBit(u_input.a), 10744u))), firstTrailingBit(min(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, 1u), u_input.a), _wgslsmith_mult_u32(58849u ^ u_input.a, 0u))), vec2<u32>(1u & firstTrailingBit(countOneBits(1u)), u_input.a ^ _wgslsmith_mult_u32(36787u, firstLeadingBit(u_input.a))));
    global4 = array<vec2<bool>, 11>();
    var var_1 = vec4<bool>(false, true, true, all(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(257f, 563f, 217f), _wgslsmith_f_op_vec3_f32(vec3<f32>(936f, 3193f, 1201f) * vec3<f32>(-515f, 1817f, 946f)), var_1.zyx)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1260f, 244f, 1000f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(154f, 498f, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-567f, -2219f, -1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, 278f, 394f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(151f, -2012f, -318f))), vec3<bool>(any(vec3<bool>(false, var_1.x, false)), true, !var_1.x)))));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1087f) - _wgslsmith_f_op_f32(sign(var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(round(var_2.x)))))));
    return Struct_3(vec2<u32>(u_input.a, 91914u), min(vec3<u32>(var_0.b.x, 69681u, func_3().x), _wgslsmith_mult_vec3_u32(min(vec3<u32>(1u, 18025u, var_0.b.x), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, var_0.d.x, var_0.b.x), vec3<u32>(var_0.b.x, var_0.d.x, var_0.d.x))), vec3<u32>(19669u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 6090u, 70322u), vec3<u32>(var_0.d.x, u_input.a, 31562u)), _wgslsmith_add_u32(1u, 33809u)))), 50300u, vec2<u32>(abs(~(~1u)), select(abs(1u), firstLeadingBit(~u_input.a), true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = func_2();
    var var_1 = abs(vec4<i32>(-(~(~(-2147483647i))), u_input.d, global0[_wgslsmith_index_u32(~var_0.a.x, 14u)] & _wgslsmith_sub_i32(~u_input.d, u_input.e.x), _wgslsmith_dot_vec4_i32(abs(arg_0), -vec4<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 14u)], 2147483647i, 14347i, global0[_wgslsmith_index_u32(0u, 14u)])) | firstLeadingBit(-21116i)));
    var var_2 = Struct_2(vec2<i32>(arg_0.x, countOneBits(min(0i, _wgslsmith_mult_i32(u_input.d, -24042i)))), Struct_1(~u_input.d ^ ~(global0[_wgslsmith_index_u32(var_0.a.x, 14u)] | global0[_wgslsmith_index_u32(7637u, 14u)]), max(-2147483647i, min(abs(var_1.x), var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f + 1402f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -1454f) + _wgslsmith_f_op_f32(f32(-1f) * -515f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) - _wgslsmith_f_op_f32(arg_1.x - 1598f))), -countOneBits(arg_0.xwx)));
    var var_3 = var_2.b;
    let var_4 = global1[_wgslsmith_index_u32(1u, 32u)];
    return _wgslsmith_add_vec3_u32(~(~vec3<u32>(~var_0.a.x, 1u, u_input.a)), vec3<u32>(0u, var_0.d.x, max(u_input.a, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(14743u, 32u)];
    global4 = array<vec2<bool>, 11>();
    global4 = array<vec2<bool>, 11>();
    var var_1 = vec4<u32>(u_input.a, reverseBits(31288u), _wgslsmith_mult_u32(max(abs(u_input.a), 1u), reverseBits(0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 4858u, 4294967295u), vec3<bool>(true, false, false)) >> (func_1(vec4<i32>(var_0.b.e.x, -37474i, u_input.e.x, 26977i), vec2<f32>(var_0.b.d, 1498f)) % vec3<u32>(32u)), func_2().b, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 78146u, 26621u), vec3<u32>(0u, 79752u, u_input.a), vec3<u32>(u_input.a, 44940u, u_input.a))), ~vec3<u32>(1u, select(u_input.a, u_input.a, false), 1u)));
    let var_2 = any(select(vec3<bool>(true, !(var_0.b.d < 1357f), !select(true, false, true)), vec3<bool>(all(vec2<bool>(false, false)), true && all(vec4<bool>(true, true, false, false)), false), vec3<bool>(true, true, true)));
    global0 = array<i32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(var_1.yww, var_1.wxx), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a.x, firstTrailingBit(global0[_wgslsmith_index_u32(var_1.x, 14u)])), ~u_input.c.yz));
}

