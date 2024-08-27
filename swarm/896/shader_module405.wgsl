struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_1 = Struct_1(0u, true, vec2<bool>(true, false));

var<private> global2: vec4<u32> = vec4<u32>(37899u, 9435u, 4294967295u, 0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(~4294967295u, 55442u), global2.x << (global1.a % 32u));
    let var_1 = vec2<u32>(global1.a, 4294967295u);
    var var_2 = -1i;
    var var_3 = false;
    return ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 4294967295u, var_0.x, 4294967295u)), ~vec4<u32>(u_input.a, 4294967295u, var_0.x, 1u))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -7782i, 1i), firstTrailingBit(vec3<i32>(0i, 36502i, 0i)))) | -_wgslsmith_clamp_i32(abs(0i), ~11821i, 2147483647i), ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(countOneBits(-34082i), reverseBits(-2850i), -43890i), 2147483647i), reverseBits(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, 24532i, -1i), vec4<i32>(-1i, 30268i, 53083i, 19785i)), select(vec4<i32>(4167i, 0i, 2147483647i, -2147483647i), vec4<i32>(-1i, 11462i, 20246i, 1i), vec4<bool>(false, global0[_wgslsmith_index_u32(52751u, 26u)], arg_0.c.x, arg_3.c.x)))), firstTrailingBit(_wgslsmith_mod_i32(-abs(2147483647i), _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -14698i), ~0i))));
    var var_2 = firstLeadingBit(~vec2<u32>(firstTrailingBit(~u_input.a), arg_2.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2207f, 210f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1076f, -714f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1967f * _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))))));
    var var_4 = arg_0;
    return vec2<f32>(162f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec4<bool>(global1.b, true | global1.c.x, !(!global1.c.x), true);
    global0 = array<bool, 26>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(abs(global2.x), global0[_wgslsmith_index_u32(11369u, 26u)] != false, global1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 827f))), Struct_1(select(1u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 26u)]), global1.b, vec2<bool>(global1.c.x, true)), Struct_1(max(global1.a, 2836u), 19175u < global1.a, var_0.wy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(852f, -537f))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(u_input.a, global1.b, vec2<bool>(false, false)), -497f, Struct_1(32658u, false, var_0.zy), Struct_1(0u, global0[_wgslsmith_index_u32(u_input.a, 26u)], vec2<bool>(global1.c.x, var_0.x))))))));
    var var_2 = Struct_1(global1.a | (~0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(37415u, 15180u, 0u), global2.yyz) % 32u)), false, global1.c);
    global1 = Struct_1(global2.x, global0[_wgslsmith_index_u32(var_2.a, 26u)] && true, !global1.c);
    return countOneBits(max(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(99793u, u_input.a, global2.x, 0u), vec4<u32>(0u, var_2.a, var_2.a, global2.x), vec4<u32>(u_input.a, global2.x, 101797u, var_2.a)) | firstTrailingBit(vec4<u32>(global1.a, 0u, 25110u, global1.a))), vec4<u32>(14880u, firstLeadingBit(~global1.a), _wgslsmith_div_u32(u_input.a >> (1u % 32u), ~36384u), min(firstTrailingBit(global2.x), countOneBits(0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    var var_0 = Struct_1(global2.x, global1.b, !global1.c);
    var var_1 = reverseBits(2147483647i);
    global2 = _wgslsmith_mod_vec4_u32(abs(func_1() << (select(~vec4<u32>(global2.x, 1u, 44864u, global2.x), func_1(), !vec4<bool>(var_0.b, global0[_wgslsmith_index_u32(var_0.a, 26u)], false, global1.c.x)) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(var_0.a, 8318u, 1u)), max(vec3<u32>(var_0.a, 19959u, 1u), global2.wxx >> (global2.zwx % vec3<u32>(32u)))), 0u, 1u, global1.a));
    global2 = firstTrailingBit((((vec4<u32>(global2.x, u_input.a, var_0.a, var_0.a) | vec4<u32>(var_0.a, 4294967295u, 0u, global2.x)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(21608u, 62644u, 1u, var_0.a), vec4<u32>(0u, var_0.a, global2.x, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 35951u))) & reverseBits(max(vec4<u32>(1u, 92607u, 37045u, var_0.a), vec4<u32>(global1.a, 16425u, 1u, global2.x)))) | ~(~func_2()));
    global1 = Struct_1(~(~46419u), true, vec2<bool>(true, true));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, select(~select(vec4<i32>(14526i, 2831i, -2147483647i, -1i), vec4<i32>(17442i, -1i, -1i, 2913i), vec4<bool>(true, global1.b, global0[_wgslsmith_index_u32(47488u, 26u)], global1.c.x)), firstTrailingBit(vec4<i32>(-2227i, -29312i, 2147483647i, 2147483647i)) | vec4<i32>(1i, 1i, 1i, 1i), !(!select(vec4<bool>(global1.c.x, var_0.c.x, global0[_wgslsmith_index_u32(u_input.a, 26u)], true), vec4<bool>(var_0.c.x, true, global1.b, global1.b), var_0.c.x))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(abs(-vec3<i32>(-60230i, -2147483647i, 1i)), reverseBits(~vec3<i32>(28592i, 2147483647i, 0i))), firstTrailingBit(countOneBits(max(vec3<i32>(14452i, -11181i, 0i), vec3<i32>(0i, 13394i, -4419i))))), reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, 0i, 86503i), vec4<i32>(-36878i, -6758i, 0i, 19571i)), select(vec4<i32>(2147483647i, 0i, 15596i, -28523i), vec4<i32>(0i, 5043i, 1i, -14530i), var_0.b), max(vec4<i32>(15999i, 2308i, -1i, -28407i), vec4<i32>(1i, 21415i, 2147483647i, -19463i))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 30595i, 1i, -1i), -vec4<i32>(-39049i, 2147483647i, -1i, 0i), vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i))));
}

