struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(0u, 4294967295u, 18012u), vec3<u32>(22924u, 82120u, 11449u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(75293u, 28032u, 4294967295u), vec3<u32>(29859u, 70818u, 41008u), vec3<u32>(0u, 7768u, 59795u), vec3<u32>(4294967295u, 9291u, 0u), vec3<u32>(1u, 4294967295u, 21044u), vec3<u32>(45292u, 19461u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(51703u, 0u, 71769u), vec3<u32>(0u, 83023u, 37618u), vec3<u32>(4294967295u, 70340u, 1u), vec3<u32>(1u, 0u, 65105u), vec3<u32>(9594u, 96593u, 1u), vec3<u32>(14704u, 1u, 8963u), vec3<u32>(1u, 80261u, 13750u), vec3<u32>(1u, 4294967295u, 42630u), vec3<u32>(34217u, 0u, 118700u), vec3<u32>(40365u, 0u, 0u), vec3<u32>(11103u, 9131u, 4294967295u), vec3<u32>(1u, 1u, 84361u), vec3<u32>(31379u, 4294967295u, 19262u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(20596u, 0u, 0u), vec3<u32>(71922u, 43127u, 0u), vec3<u32>(25716u, 0u, 13723u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 12063u, 58235u));

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> vec2<bool> {
    global2 = vec4<bool>(true, global2.x, true, 1i > ~arg_0);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-245f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1648f, -988f, 2111f, 684f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = u_input.d.x;
    var var_2 = var_0;
    var_2 = var_0;
    return select(vec2<bool>(any(global1.zwz), global2.x), vec2<bool>(any(!global2.zxx), global1.x), !select(!global2.wz, vec2<bool>(true, true), true));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(arg_1.x, arg_1);
    global2 = !select(select(select(!vec4<bool>(false, global1.x, global2.x, global2.x), vec4<bool>(global1.x, global1.x, global1.x, global2.x), !global2.x), !select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, true, true, global1.x), global1.x), global1.x), select(!select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, false, global2.x, global1.x), global2.x), select(select(vec4<bool>(false, global2.x, true, true), vec4<bool>(true, global2.x, false, true), global1.x), vec4<bool>(true, global2.x, global2.x, false), true), all(func_3(-1i, vec4<i32>(-26697i, u_input.b, arg_0.x, arg_0.x)))), vec4<bool>(false, true, !(global1.x | global1.x), true));
    global0 = array<vec3<u32>, 30>();
    global2 = vec4<bool>(global1.x, global2.x, false, true);
    global1 = select(vec4<bool>(true, true || !all(vec4<bool>(true, global2.x, global1.x, true)), !(u_input.e == _wgslsmith_add_u32(34397u, 1u)), !global1.x), !select(!select(vec4<bool>(global1.x, global1.x, true, true), vec4<bool>(global1.x, true, false, global1.x), false), select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, global2.x, false, true), vec4<bool>(global1.x, global2.x, false, global1.x)), !vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(false, false, global1.x, global1.x), global1.x)), firstLeadingBit(arg_0.x) == ~1i), true | ((arg_2.x != arg_3) & any(vec2<bool>(global1.x, false))));
    return Struct_1(-1112f, var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global2 = vec4<bool>(func_3(1i, -countOneBits(max(vec4<i32>(-52665i, u_input.b, -9005i, 0i), vec4<i32>(u_input.b, -1067i, u_input.c, u_input.b)))).x, global1.x, false, func_3(-min(-1i, reverseBits(u_input.a.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -25295i, u_input.a.x, -1i), vec4<i32>(-1i, -18562i, -3951i, u_input.b)) ^ vec4<i32>(u_input.a.x, u_input.b, _wgslsmith_mod_i32(u_input.c, u_input.a.x), 1i >> (u_input.e % 32u))).x);
    var_0 = func_2(u_input.a, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1763f, -1251f, -1319f, arg_2.b.x))), _wgslsmith_f_op_vec4_f32(-arg_0.b)), arg_1.b)))), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 0u, 42467u) >> (global0[_wgslsmith_index_u32(0u, 30u)] % vec3<u32>(32u)), global0[_wgslsmith_index_u32(0u << (u_input.d.x % 32u), 30u)]), select(vec3<u32>(u_input.e, u_input.d.x, 0u), select(global0[_wgslsmith_index_u32(u_input.e, 30u)], vec3<u32>(0u, 1u, 79720u), global2.x), true), vec3<u32>(_wgslsmith_mult_u32(u_input.e, u_input.d.x), 1u, 45483u)), vec3<u32>(43408u, _wgslsmith_sub_u32(20088u, 1u), _wgslsmith_div_u32(u_input.d.x ^ u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 95066u, 4294967295u, 0u), vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, 4294967295u))))), u_input.e);
    global2 = select(!(!select(vec4<bool>(global1.x, false, global1.x, global2.x), !vec4<bool>(global1.x, global2.x, global2.x, global1.x), vec4<bool>(global1.x, global2.x, global1.x, global1.x))), vec4<bool>(global2.x | false, 119746u < firstLeadingBit(reverseBits(u_input.d.x)), any(select(!vec4<bool>(false, false, global2.x, global2.x), select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global2.x, global2.x, global2.x, global1.x), true), any(global2.ywx))), true), global2.x);
    let var_1 = func_2(reverseBits(u_input.a), arg_1.b, abs(abs(vec3<u32>(~u_input.d.x, abs(u_input.e), 2544u))), u_input.d.x);
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(vec3<i32>(-1i) * -select(vec3<i32>(34525i, u_input.c, -26531i), vec3<i32>(u_input.c, u_input.c, 332i), global1.x)) << (abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 11196u, 1u), vec3<u32>(u_input.d.x, arg_1.x, arg_1.x), ~vec3<u32>(87788u, u_input.e, 1u))) % vec3<u32>(32u));
    global1 = select(select(vec4<bool>(global2.x, true & (global1.x | true), true, any(select(global1.zy, vec2<bool>(true, global1.x), global2.wz))), !vec4<bool>(true, global1.x, false, arg_0.b.x < arg_2.b.x), select(select(vec4<bool>(global2.x, false, global2.x, false), !vec4<bool>(global1.x, global2.x, false, false), !vec4<bool>(false, global1.x, true, global1.x)), vec4<bool>(true, global2.x, true, global1.x), any(select(vec4<bool>(false, global2.x, true, global1.x), vec4<bool>(true, global1.x, true, true), vec4<bool>(true, global2.x, global1.x, global1.x))))), vec4<bool>(false, !(true || !global2.x), global1.x && true, !any(select(vec4<bool>(false, global2.x, global1.x, false), vec4<bool>(global2.x, false, true, false), global2.x))), global2.x);
    var var_1 = reverseBits(~vec2<u32>(u_input.d.x, firstLeadingBit(u_input.e)));
    var var_2 = func_4(func_4(arg_2, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)) * arg_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.a, -228f, 846f) - vec4<f32>(arg_2.a, arg_0.a, arg_0.a, arg_2.b.x)))), func_4(arg_0, arg_2, arg_0)), arg_0, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.b.x - 721f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, -688f, arg_0.b.x, arg_0.b.x)))) * arg_0.b)));
    let var_3 = vec2<bool>(global1.x == true, any(vec3<bool>(true, global1.x, global1.x)));
    return Struct_1(-392f, arg_0.b);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global0 = array<vec3<u32>, 30>();
    let var_0 = abs(arg_1.x >> (arg_1.x % 32u));
    return func_5(func_4(func_2(vec2<i32>(-1i) * -vec2<i32>(u_input.c, u_input.b), arg_0, _wgslsmith_add_vec3_u32(vec3<u32>(20021u, 31165u, 1u), ~global0[_wgslsmith_index_u32(var_0, 30u)]), arg_1.x), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(298f)))), _wgslsmith_f_op_vec4_f32(-arg_0)), Struct_1(-870f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(648f, arg_0.x, arg_0.x, arg_0.x))) + arg_0))), vec4<u32>(~_wgslsmith_mod_u32(arg_1.x, ~1u), _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.x, 1u) | _wgslsmith_div_u32(arg_1.x, 15610u), arg_1.x), min(countOneBits(1u), select(arg_1.x, abs(1u), true)), ~_wgslsmith_sub_u32(var_0 ^ var_0, u_input.e)), func_2(u_input.a, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-310f)), -773f)), 1317f, func_2(~u_input.a, vec4<f32>(arg_0.x, arg_0.x, 2353f, arg_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 23591u, 53817u), arg_1), arg_1.x).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), reverseBits(abs(_wgslsmith_add_vec3_u32(vec3<u32>(11434u, 4294967295u, 32511u), vec3<u32>(1u, var_0, var_0)))), _wgslsmith_div_u32(39838u >> (u_input.d.x % 32u), u_input.e >> (arg_1.x % 32u)) | arg_1.x));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    return ~reverseBits(1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 30>();
    var var_0 = _wgslsmith_div_i32(max(0i, u_input.b) | _wgslsmith_mult_i32(~u_input.c, max(u_input.b | 1i, _wgslsmith_div_i32(u_input.a.x, 1i))), ~(-2147483647i));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(func_6(all(vec3<bool>(false, false, false)), func_1(vec4<f32>(1089f, 925f, -1000f, 193f), global0[_wgslsmith_index_u32(94881u, 30u)], -14980i, true), ~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-671f, -516f, 169f, 595f))), firstTrailingBit(u_input.a.x), u_input.c, reverseBits(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.e, 4294967295u), firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 79212u, u_input.e)))), ~(select(vec4<u32>(u_input.d.x, 12034u, 1u, u_input.e), vec4<u32>(u_input.d.x, 4294967295u, u_input.e, u_input.e), vec4<bool>(true, false, global2.x, false)) << (~vec4<u32>(u_input.e, u_input.d.x, 4294967295u, u_input.d.x) % vec4<u32>(32u)))));
}

