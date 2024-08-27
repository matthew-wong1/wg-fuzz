struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -667f);

var<private> global1: array<bool, 23> = array<bool, 23>(false, true, false, true, true, false, false, true, true, false, false, false, true, false, false, false, false, false, true, true, false, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(round(-229f))), vec2<f32>(-853f, _wgslsmith_f_op_f32(286f * global0.x))))));
    global1 = array<bool, 23>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(select(1874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - -1355f), all(vec3<bool>(1154f >= global0.x, arg_0.x != false, global1[_wgslsmith_index_u32(~arg_2.c.a.x, 23u)])))), global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(482f, global0.x), vec2<f32>(global0.x, global0.x), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -175f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(221f, global0.x) + vec2<f32>(global0.x, -1157f)) - vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -305f) - vec2<f32>(-105f, 1794f))) + vec2<f32>(_wgslsmith_f_op_f32(-831f * 380f), _wgslsmith_f_op_f32(-global0.x)))));
    global1 = array<bool, 23>();
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i) ^ min(vec2<i32>(-33920i, u_input.a), arg_2), select(vec2<i32>(2147483647i, -1i), vec2<i32>(-47262i, -47016i), arg_3.b) & abs(vec2<i32>(arg_1, arg_3.d.b))), arg_3.a);
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(~48784u, _wgslsmith_sub_u32(arg_3.c.a.x, 4294967295u), 104558u, _wgslsmith_sub_u32(42035u, 39910u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15873u, arg_3.d.a.x, arg_0), u_input.c), vec4<u32>(58111u, u_input.c.x, arg_0, 0u))), arg_1);
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -716f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -2018f), vec2<f32>(217f, -757f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, -1443f) + vec2<f32>(422f, global0.x))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(2039f * _wgslsmith_f_op_f32(-global0.x))), global0.x)));
    return ~(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 0u, arg_3.d.a.x, arg_3.c.a.x), arg_3.c.a, vec4<u32>(arg_0, u_input.c.x, u_input.c.x, 64046u))), var_1.a, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(66481u, 40863u), vec2<u32>(arg_3.c.a.x, arg_0)), var_1.a.x & 1u, 1u, 16290u)));
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-765f, global0.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 705f) * vec2<f32>(global0.x, 775f))))));
    let var_0 = 1i;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1615f - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1444f)))) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(1666f - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(abs(743f))))));
    var var_2 = Struct_1(func_4(~(~_wgslsmith_div_u32(4294967295u, 26630u)), 1i, _wgslsmith_mod_vec2_i32(-max(vec2<i32>(u_input.b, 50i), vec2<i32>(var_0, var_0)), -_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(-255i, -2147483647i))), Struct_2(-vec2<i32>(u_input.b, 31215i) ^ reverseBits(vec2<i32>(u_input.b, u_input.b)), any(func_3(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(58087u, 23u)], true), Struct_1(vec4<u32>(1u, 1u, u_input.c.x, u_input.c.x), u_input.a), Struct_2(vec2<i32>(2147483647i, var_0), global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(vec4<u32>(1u, 51347u, u_input.c.x, u_input.c.x), -27963i), Struct_1(vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x), u_input.a), u_input.a))), Struct_1(u_input.c, 13961i), Struct_1(u_input.c, u_input.b), firstLeadingBit(countOneBits(var_0)))), -2147483647i);
    var_2 = Struct_1(vec4<u32>(u_input.c.x, 23092u, 42611u, u_input.c.x), -1i);
    return 1189i ^ (-min(var_0, u_input.b) >> (69070u % 32u));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_2() != reverseBits(u_input.a);
    let var_1 = false;
    let var_2 = arg_0;
    return !vec4<bool>(var_1 && var_0, -var_2.b > ~(-98329i), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global0.x) - _wgslsmith_f_op_f32(sign(2302f))), _wgslsmith_f_op_f32(global0.x - -1495f));
    let var_1 = Struct_2(firstTrailingBit(-_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 34185i), vec2<i32>(-5977i, u_input.b)), ~vec2<i32>(u_input.b, -2147483647i))), any(select(vec4<bool>(true, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true)), select(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], true), false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], true), !func_1(Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), u_input.a)))), Struct_1(min(~u_input.c & u_input.c, vec4<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), firstTrailingBit(u_input.c.x), 0u, ~u_input.c.x)), ~1i | (1i | abs(u_input.b))), Struct_1(u_input.c, u_input.a), u_input.b);
    var var_2 = -18155i;
    var var_3 = Struct_1(~vec4<u32>(~0u, 36100u, _wgslsmith_mult_u32(abs(u_input.c.x), ~var_1.c.a.x), 0u), ~u_input.a);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 551f)))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 450f)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_div_f32(var_0.x, -1770f), global1[_wgslsmith_index_u32(firstTrailingBit(0u), 23u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-200f)))));
    var var_4 = Struct_2(vec2<i32>(min(-var_1.e, 2147483647i), abs(func_2())), u_input.b > var_1.d.b, Struct_1(max(u_input.c, ~(~var_1.d.a)), -var_1.c.b), var_1.d, i32(-1i) * -4053i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1370f, global0.x, 321f, -354f), vec4<f32>(-1470f, var_0.x, global0.x, var_0.x)) + vec4<f32>(var_0.x, -2135f, var_0.x, -197f)) - vec4<f32>(_wgslsmith_f_op_f32(min(-897f, 383f)), global0.x, _wgslsmith_f_op_f32(step(-1156f, -824f)), var_0.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 184f, global0.x, var_0.x), vec4<f32>(global0.x, 427f, global0.x, 586f))))))), _wgslsmith_f_op_f32(round(-576f)), (select(countOneBits(vec4<i32>(var_1.c.b, var_1.e, u_input.b, 1i)), max(vec4<i32>(-13536i, var_1.a.x, var_3.b, 0i), vec4<i32>(-51315i, u_input.a, -1i, -2147483647i)), func_1(Struct_1(var_1.d.a, var_1.a.x))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(117113u, 52949u, 0u, var_1.c.a.x), _wgslsmith_mod_vec4_u32(var_4.c.a, var_3.a)) % vec4<u32>(32u))) | ~(-(vec4<i32>(-1i, 64446i, 0i, 36316i) << (u_input.c % vec4<u32>(32u)))));
}

