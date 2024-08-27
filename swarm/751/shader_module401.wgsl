struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(256f, -359f);

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<u32>(4294967295u, 14671u), vec3<u32>(0u, 4294967295u, 4294967295u), vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(87410u, 63857u), vec3<u32>(1u, 32920u, 4294967295u), vec2<u32>(25500u, 35734u)), Struct_1(vec2<u32>(5429u, 0u), vec3<u32>(4294967295u, 15968u, 4294967295u), vec2<u32>(21736u, 68470u)), Struct_1(vec2<u32>(0u, 15907u), vec3<u32>(4294967295u, 76384u, 12348u), vec2<u32>(30759u, 81620u)), Struct_1(vec2<u32>(26011u, 62028u), vec3<u32>(0u, 1u, 4294967295u), vec2<u32>(64354u, 1u)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(0u, 63831u, 0u), vec2<u32>(4294967295u, 68745u)), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(138798u, 13814u, 4294967295u), vec2<u32>(1u, 59293u)), Struct_1(vec2<u32>(0u, 38325u), vec3<u32>(8124u, 1u, 0u), vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1672u, 46302u), vec3<u32>(78525u, 14205u, 1u), vec2<u32>(1u, 34115u)), Struct_1(vec2<u32>(4294967295u, 21385u), vec3<u32>(0u, 14499u, 57056u), vec2<u32>(51761u, 67824u)), Struct_1(vec2<u32>(8334u, 46894u), vec3<u32>(0u, 33844u, 4294967295u), vec2<u32>(3082u, 7418u)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 27489u), vec2<u32>(0u, 40321u)));

var<private> global2: vec4<u32>;

var<private> global3: bool = false;

var<private> global4: array<u32, 10>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<f32> {
    let var_0 = -22968i;
    global4 = array<u32, 10>();
    let var_1 = vec3<bool>(0i >= u_input.b.x, any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), all(select(vec3<bool>(u_input.a.x == 6264u, true, any(vec2<bool>(false, false))), select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), true), any(vec3<bool>(true, true, false)))));
    global3 = !(!(_wgslsmith_f_op_f32(floor(global0.x)) <= _wgslsmith_f_op_f32(-global0.x)));
    let var_2 = 71986u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 541f, 535f)), vec3<f32>(1000f, global0.x, -1224f), var_1)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1160f, global0.x, global0.x), vec3<f32>(global0.x, 787f, global0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -914f) - vec3<f32>(global0.x, global0.x, -470f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 171f) * vec2<f32>(global0.x, 903f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-767f, global0.x), vec2<f32>(global0.x, 193f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1408f) + vec2<f32>(global0.x, global0.x))))));
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-u_input.c, _wgslsmith_sub_i32(arg_0.x, reverseBits(u_input.c)), 30544i, 36770i), u_input.b);
    let var_1 = global1[_wgslsmith_index_u32(~global2.x | abs(u_input.a.x & ~global4[_wgslsmith_index_u32(u_input.a.x, 10u)]), 12u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(firstLeadingBit(u_input.b), 7747u, arg_1, _wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(arg_1.c.x), max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.b.x, 10u)], 10u)], var_1.c.x), global2.x, _wgslsmith_mod_u32(24u, global4[_wgslsmith_index_u32(77628u, 10u)])), vec4<u32>(_wgslsmith_mod_u32(25499u, global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(18041u, 1u, 21209u, 25133u), vec4<u32>(27838u, 144334u, arg_1.b.x, 18304u)), ~26404u, min(global4[_wgslsmith_index_u32(4294967295u, 10u)], global2.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 390f, 1131f) - vec3<f32>(1357f, -1326f, global0.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 315f)), vec3<f32>(-1030f, -1404f, 1097f))))));
    var var_3 = _wgslsmith_f_op_f32(global0.x - -989f);
    return ~arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = select(func_2(-firstTrailingBit(vec4<i32>(u_input.c, u_input.b.x, 2147483647i, 2147483647i)), arg_2, arg_3.x & any(vec3<bool>(arg_1, false, false))), func_2(-u_input.b, arg_2, arg_1), !select(vec4<bool>(false | arg_1, all(arg_3.yx), true, true), select(!vec4<bool>(false, arg_3.x, arg_1, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_1, arg_3.x), select(vec4<bool>(arg_1, false, arg_3.x, arg_1), vec4<bool>(true, false, false, false), arg_1)), !select(vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_3.x, arg_1))));
    let var_1 = !arg_3.zx;
    let var_2 = global1[_wgslsmith_index_u32(2611u, 12u)];
    var var_3 = arg_2;
    let var_4 = Struct_1(reverseBits(~(~countOneBits(var_3.a))), vec3<u32>(96643u, 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 13452u), vec2<u32>(var_3.a.x, u_input.a.x)), min(var_3.c, global2.wx)) >> (abs(global2.x) % 32u)), _wgslsmith_div_vec2_u32(vec2<u32>(firstTrailingBit(global4[_wgslsmith_index_u32(0u, 10u)] >> (4294967295u % 32u)), ~u_input.a.x), var_3.c));
    return var_1.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec4<i32> {
    return -_wgslsmith_div_vec4_i32(~u_input.b, vec4<i32>(~(i32(-1i) * -1638i), ~_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_1.x, arg_1.x, 2847i, 43492i)), u_input.c, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(global2.x != 47378u, func_1(vec3<f32>(global0.x, global0.x, -2501f), true, Struct_1(u_input.a, global2.wzy, u_input.a), vec3<bool>(false, false, true))))), -(~u_input.b), Struct_1(global2.wx, global2.wxw, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(12667u, u_input.a.x), vec2<u32>(68752u, 9945u)), vec2<u32>(1u, select(59172u, global2.x, false)))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-countOneBits(var_0.x), var_0.x), min(u_input.b.yy, u_input.b.zz), vec2<i32>(i32(-1i) * -reverseBits(var_0.x), u_input.c));
    let var_2 = -210f;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -2265f) + 1769f), _wgslsmith_f_op_f32(floor(global0.x))), vec2<f32>(var_2, _wgslsmith_f_op_f32(-var_2))));
    let var_4 = -724f;
    var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.x, var_1.x), func_4(vec2<bool>(false, true), vec4<i32>(-2147483647i, var_1.x, -21234i, -13919i), global1[_wgslsmith_index_u32(4096u, 12u)]).x)), vec2<i32>(-(~34452i), 1i));
    var_0 = ~max(min(min(u_input.b ^ u_input.b, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.b.x, 2147483647i), u_input.b, u_input.b) | (u_input.b << (vec4<u32>(6396u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(abs(~u_input.a.x), firstTrailingBit(0u) << (firstLeadingBit(global2.x) % 32u), u_input.a.x, global2.x), vec4<u32>(0u, select(_wgslsmith_mod_u32(global4[_wgslsmith_index_u32(u_input.a.x, 10u)], 4294967295u), ~1u, 1000f >= var_2), ~4294967295u & select(4294967295u, global4[_wgslsmith_index_u32(global2.x, 10u)], true), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 20744u, 4294967295u), ~4294967295u))), ~(~(~global2.yz)), i32(-1i) * -(_wgslsmith_mod_i32(-2147483647i, u_input.b.x) | -66740i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(1025f, _wgslsmith_f_op_f32(-354f - -440f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_4))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.b, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 12u)], vec4<u32>(19333u, u_input.a.x, 70260u, global4[_wgslsmith_index_u32(0u, 10u)]))).x, _wgslsmith_f_op_f32(var_4 * global0.x))), vec2<bool>(!(1259f < var_3.x), all(vec3<bool>(true, true, true))))));
}

