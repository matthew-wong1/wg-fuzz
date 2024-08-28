struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: bool;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_3) -> bool {
    global1 = arg_0.b;
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_0.d.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.c, 12209u, 0u), vec3<u32>(arg_0.a, arg_0.d.c, arg_0.d.c)), arg_0.d.c), _wgslsmith_sub_u32(arg_0.d.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 0u, 0u), vec3<u32>(arg_0.d.c, 1u, 0u) ^ vec3<u32>(1u, arg_0.d.c, arg_0.a))));
    global1 = vec4<bool>(false, arg_0.b.x, all(vec3<bool>((arg_0.b.x | true) != all(vec3<bool>(false, true, true)), !(arg_0.c < arg_0.e.x), select(all(arg_0.b), any(arg_0.b.wxz), true))), false);
    global1 = select(vec4<bool>(true, all(vec2<bool>(global1.x, all(vec4<bool>(true, false, global1.x, arg_0.b.x)))), !arg_0.b.x, !global1.x), vec4<bool>(true & ((-1i << (arg_0.a % 32u)) <= arg_0.d.b.x), 2147483647i != u_input.a.x, global1.x, any(vec3<bool>(true, arg_0.a > 33368u, !arg_0.b.x))), true);
    let var_1 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 24u)];
    return arg_0.b.x;
}

fn func_2() -> Struct_1 {
    global1 = select(vec4<bool>(true, !func_3(Struct_3(0u, vec4<bool>(global1.x, true, global1.x, global1.x), 1264f, Struct_1(u_input.b, vec3<i32>(2147483647i, u_input.b, 2147483647i), 4294967295u, vec2<i32>(2147483647i, u_input.a.x)), vec3<f32>(-1275f, 354f, 1827f))), any(select(global1.yz, global1.xx, global1.zy)), global1.x), select(vec4<bool>(false, !global1.x, !(global1.x && global1.x), true), !select(!vec4<bool>(global1.x, true, global1.x, false), !vec4<bool>(global1.x, global1.x, false, false), select(global1.x, false, false)), !vec4<bool>(all(global1.ywx), true, func_3(Struct_3(29328u, vec4<bool>(false, global1.x, false, false), -1498f, Struct_1(u_input.a.x, u_input.a, 44134u, u_input.a.yy), vec3<f32>(715f, 985f, 1731f))), true)), !select(vec4<bool>(true, true, global1.x, all(vec4<bool>(global1.x, global1.x, global1.x, true))), vec4<bool>(true, global1.x, global1.x, global1.x), select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, false, true, false), true), u_input.b == u_input.a.x)));
    let var_0 = vec4<bool>(true, global1.x, true, ~(~4294967295u) < select(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, 21959u, 2980u), vec4<u32>(1485u, 61498u, 50774u, 12387u)), _wgslsmith_mult_u32(~2624u, _wgslsmith_clamp_u32(0u, 1u, 53403u)), global1.x));
    global0 = array<Struct_2, 24>();
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.a.x, u_input.b, 1i, u_input.b), vec4<i32>(-10732i, u_input.b, u_input.b, u_input.b), vec4<bool>(true, var_0.x, var_1.x, true)), vec4<i32>(-1865i, u_input.a.x, -1i, 26267i), ~vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, 2147483647i)), vec4<i32>(_wgslsmith_mod_i32(u_input.b, u_input.b), firstLeadingBit(-15542i), u_input.b, 1i)), max(u_input.a >> (~(~vec3<u32>(0u, 6428u, 78292u)) % vec3<u32>(32u)), max(vec3<i32>(u_input.b, 2147483647i, u_input.a.x) ^ vec3<i32>(u_input.a.x, 5054i, 1i), _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, 0u, 24469u) % vec3<u32>(32u)), abs(u_input.a)))), max(firstTrailingBit(~(~4294967295u)), select(_wgslsmith_add_u32(_wgslsmith_add_u32(62390u, 12067u), 1u), 25115u, var_1.x)), reverseBits(u_input.a.zy));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, 0u, arg_2.b.c), vec3<u32>(26151u, 4643u, 4294967295u), vec3<bool>(arg_1.x, arg_0.a.x, global1.x)), ~abs(vec3<u32>(4294967295u, 79411u, 85457u))), ~11163u, arg_0.b.c);
    let var_1 = arg_2;
    var var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, abs(arg_0.b.c)), ~(max(vec2<u32>(var_0.x, 1u), vec2<u32>(68707u, 1u)) ^ firstTrailingBit(~vec2<u32>(1u, var_1.b.c))));
    var var_3 = func_2();
    let var_4 = Struct_2(select(arg_2.a, select(vec4<bool>(any(var_1.a.yzx), false, false && arg_1.x, any(var_1.a.wzx)), vec4<bool>(any(vec4<bool>(true, true, arg_2.a.x, global1.x)), true, select(false, true, false), !arg_1.x), arg_2.a.x), var_1.a.x), arg_0.b);
    return firstLeadingBit(5902i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global1.zzy);
    var var_1 = vec3<i32>(func_1(global0[_wgslsmith_index_u32(1u, 24u)], global1.wyz, global0[_wgslsmith_index_u32(32731u, 24u)], _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 42330i), firstTrailingBit(abs(vec4<i32>(u_input.b, u_input.b, -23049i, -2147483647i))))), _wgslsmith_add_i32(0i, max(countOneBits(firstLeadingBit(u_input.b)), 2147483647i)), _wgslsmith_clamp_i32(u_input.a.x, u_input.b, firstTrailingBit(4535i)));
    var var_2 = Struct_1(var_1.x, countOneBits(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_sub_i32(u_input.b, 20064i), -8886i, ~1i))), firstLeadingBit(~4294967295u), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -437i), _wgslsmith_div_vec2_i32(var_1.yz, vec2<i32>(u_input.a.x, -63336i)), ~vec2<i32>(u_input.b, u_input.a.x)) >> (select(vec2<u32>(1u, 1u), vec2<u32>(25391u, 0u), select(vec2<bool>(false, true), var_0.zy, var_0.x)) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(var_1.x, 0i)));
    var var_3 = 3969i & var_1.x;
    var var_4 = Struct_3(1u, vec4<bool>(false, true, (firstTrailingBit(var_2.b.x) ^ _wgslsmith_mod_i32(u_input.a.x, var_1.x)) != -32539i, !var_0.x), 209f, Struct_1(31012i, var_2.b, ~(var_2.c ^ select(27258u, 0u, global1.x)), ~min(var_1.yy, var_1.xy) << (vec2<u32>(var_2.c, 11693u) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(min(176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - _wgslsmith_div_f32(-872f, 551f)))), -453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2615f, -1494f))))));
    var var_5 = Struct_3(~var_4.a, vec4<bool>(true, false, u_input.a.x < select(var_1.x, -var_4.d.d.x, !var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -543f))) < var_4.e.x), -593f, func_2(), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -594f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(379f * -261f) + var_4.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.c - var_4.c))))));
    var_1 = ~abs(var_5.d.b);
    var var_6 = ~max(select(vec2<u32>(56984u, var_4.d.c), ~vec2<u32>(83214u, 0u), var_4.d.c < var_5.a), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.c), vec2<u32>(4294967295u, 77011u)), _wgslsmith_mult_u32(var_5.d.c, 1u))) >> (~vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~11773u), 4294967295u) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_5.c)), _wgslsmith_f_op_f32(639f * -717f)) - _wgslsmith_f_op_f32(max(var_4.c, _wgslsmith_f_op_f32(var_4.c + var_4.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-508f, _wgslsmith_f_op_f32(var_4.c * -1000f)))), ~(~(vec2<u32>(52574u, 4294967295u) << (vec2<u32>(var_6.x, 1u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(floor(1f)));
}

