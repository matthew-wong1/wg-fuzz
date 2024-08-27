struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 26510u), vec2<bool>(true, false), true), Struct_1(vec3<u32>(1u, 12713u, 4294967295u), vec2<bool>(false, false), true), vec4<u32>(54085u, 39540u, 4792u, 0u), vec3<i32>(12644i, 32699i, i32(-2147483648)), Struct_1(vec3<u32>(97524u, 0u, 44970u), vec2<bool>(true, false), false));

var<private> global1: u32 = 1u;

var<private> global2: vec3<f32> = vec3<f32>(434f, 1000f, 1108f);

var<private> global3: array<f32, 1> = array<f32, 1>(503f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: f32) -> vec3<i32> {
    var var_0 = select(vec3<bool>(!global0.a.b.x, global0.e.b.x & false, !(!(global0.d.x >= u_input.c))), vec3<bool>(any(!select(global0.b.b, global0.a.b, global0.b.c)), false, select(true, true | global0.a.c, !(global0.b.b.x && true))), vec3<bool>(true, global0.a.b.x, global0.a.c));
    let var_1 = -212f;
    global0 = Struct_2(global0.e, Struct_1(max(vec3<u32>(global0.c.x, ~117181u, _wgslsmith_mult_u32(14141u, u_input.a)), ~vec3<u32>(u_input.a, 13560u, global0.e.a.x)), global0.b.b, any(vec3<bool>(all(vec4<bool>(global0.b.b.x, var_0.x, true, var_0.x)), true, global3[_wgslsmith_index_u32(0u, 1u)] > 1002f))), _wgslsmith_mod_vec4_u32(~max(global0.c, global0.c), ~firstTrailingBit(vec4<u32>(40160u, arg_1.x, 0u, u_input.a))), countOneBits(~(-u_input.b.xzw)) & vec3<i32>(max(-global0.d.x, countOneBits(-10912i)), 2147483647i, -arg_0 >> (1u % 32u)), global0.e);
    var_0 = vec3<bool>(any(vec4<bool>(true, all(vec2<bool>(false, var_0.x)), any(vec3<bool>(false, false, false)), true)) && any(select(select(vec3<bool>(global0.e.c, var_0.x, var_0.x), vec3<bool>(var_0.x, false, false), global0.e.b.x), !vec3<bool>(false, global0.e.b.x, global0.e.b.x), select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, global0.e.b.x, global0.b.b.x), false))), var_0.x, true);
    var var_2 = abs(global0.c.x);
    return u_input.b.zww;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = -func_3(global0.d.x, global0.a.a.zz, _wgslsmith_f_op_f32(floor(global2.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 1u)] * 887f))))), 1773f);
    var var_2 = vec2<i32>(countOneBits(u_input.b.x), select(global0.d.x, 0i, select(true, false, global0.b.b.x)));
    var_0 = -vec3<i32>(reverseBits(i32(-1i) * -u_input.b.x), var_0.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.x, var_2.x), var_0.x), -16424i));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(17703u, global0.e.a.x), 0u, 1u), 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0.x, 1u)], var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * global3[_wgslsmith_index_u32(9542u, 1u)]) - 736f)), _wgslsmith_f_op_f32(step(-530f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 1u)] * -756f)))))));
    return Struct_1(select(vec3<u32>(arg_0.x, u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 50536u, 4791u), vec4<u32>(1u, 14944u, 20082u, global0.a.a.x)), arg_0.x ^ countOneBits(21892u)), ((global0.b.a << (vec3<u32>(u_input.a, 4294967295u, 39790u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_u32(vec3<u32>(54108u, global0.b.a.x, arg_0.x), vec3<u32>(2202u, 4294967295u, u_input.a))) | abs(vec3<u32>(76386u, 0u, 29399u)), all(vec4<bool>(!global0.e.b.x, global0.b.c, global0.b.c, !global0.e.c))), global0.e.b, global0.b.b.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    var var_0 = func_2(global0.a.a.yx);
    var var_1 = ~(arg_1.b.a.xx | arg_0.a.zz);
    let var_2 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.zyy, _wgslsmith_clamp_vec3_i32(~vec3<i32>(global0.d.x, arg_1.d.x, arg_1.d.x), ~vec3<i32>(global0.d.x, 1i, 11170i), vec3<i32>(1i, 2147483647i, 2147483647i))), abs(_wgslsmith_clamp_vec3_i32(global0.d, arg_1.d, global0.d) ^ u_input.b.wwy));
    var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, func_2(var_0.a.zz).a.x), vec2<u32>(firstLeadingBit(firstLeadingBit(arg_0.a.x)), ~firstTrailingBit(0u))), select(firstLeadingBit(~arg_0.a.xx), ~firstTrailingBit(abs(vec2<u32>(1u, var_0.a.x))), select(!select(vec2<bool>(true, true), arg_0.b, var_0.b.x), var_0.b, select(!global0.b.b, !arg_0.b, arg_1.b.b))));
    global1 = ~select(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(47546u, 50897u, u_input.a, arg_1.b.a.x), vec4<u32>(arg_2, 81249u, u_input.a, 1u)), ~4294967295u), ~global0.c.x), 44267u, false & !any(vec3<bool>(arg_1.e.b.x, true, arg_1.b.b.x)));
    return func_2(arg_0.a.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(Struct_1(vec3<u32>(~1u, 17186u, 1u), select(global0.b.b, vec2<bool>(true, global0.a.b.x), vec2<bool>(false, false)), global0.a.c), Struct_2(Struct_1(~global0.e.a, vec2<bool>(false, global0.b.c), -49075i <= u_input.c), Struct_1(global0.c.wyy >> (global0.a.a % vec3<u32>(32u)), !global0.a.b, !global0.a.b.x), vec4<u32>(u_input.a, 1u, 35737u, 4294967295u), global0.d, Struct_1(~vec3<u32>(global0.b.a.x, global0.a.a.x, 1u), select(vec2<bool>(true, global0.e.b.x), global0.a.b, false), any(vec3<bool>(global0.b.b.x, global0.a.b.x, false)))), abs(u_input.a)), Struct_1(~(~global0.b.a) ^ func_2(global0.b.a.xz & vec2<u32>(18143u, u_input.a)).a, !vec2<bool>(func_2(vec2<u32>(u_input.a, 40702u)).b.x, select(global0.b.b.x, false, global0.b.b.x)), false), vec4<u32>(func_2(abs(vec2<u32>(u_input.a, 28150u))).a.x >> (1u % 32u), 46287u, u_input.a, 11925u), reverseBits(select(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.d.x, 50737i, -2147483647i), -vec3<i32>(1i, global0.d.x, global0.d.x)), global0.d, global0.e.c)), Struct_1(~(~global0.e.a), global0.a.b, global0.e.c));
    global3 = array<f32, 1>();
    let var_1 = func_1(Struct_1(~select(var_0.a.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0.c.x, u_input.a), var_0.c.yxy), 85624u == global0.e.a.x), select(var_0.b.b, !select(vec2<bool>(var_0.a.b.x, var_0.e.b.x), vec2<bool>(false, var_0.e.b.x), global0.e.b.x), select(global0.b.b, global0.a.b, func_1(Struct_1(var_0.b.a, var_0.b.b, global0.a.b.x), Struct_2(var_0.a, Struct_1(var_0.a.a, vec2<bool>(false, var_0.e.b.x), false), vec4<u32>(4294967295u, var_0.c.x, 11639u, 4294967295u), u_input.b.wxw, var_0.a), u_input.a).b)), global0.e.b.x == false), Struct_2(Struct_1(firstLeadingBit(~vec3<u32>(157218u, u_input.a, 6721u)), vec2<bool>(true, true), global0.a.c), func_2(abs(select(global0.c.xx, global0.b.a.xz, true))), max(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(global0.e.a.x, 6674u, var_0.b.a.x, 13518u)), u_input.a, 0u, select(0u, var_0.c.x, var_0.a.c)), vec4<u32>(var_0.b.a.x, func_2(var_0.e.a.zz).a.x, ~63041u, ~u_input.a)), select(firstLeadingBit(vec3<i32>(u_input.c, var_0.d.x, -20192i)), min(-var_0.d, ~vec3<i32>(var_0.d.x, -1i, u_input.c)), true), func_1(func_2(vec2<u32>(28872u, var_0.c.x)), Struct_2(func_1(Struct_1(vec3<u32>(1u, var_0.c.x, 14878u), global0.e.b, global0.b.c), Struct_2(Struct_1(global0.c.wxx, vec2<bool>(true, var_0.b.b.x), global0.b.c), Struct_1(global0.c.zxy, var_0.e.b, false), var_0.c, u_input.b.zxx, var_0.a), u_input.a), Struct_1(var_0.a.a, global0.b.b, global0.b.c), _wgslsmith_mod_vec4_u32(vec4<u32>(91625u, 86735u, 28378u, u_input.a), vec4<u32>(var_0.a.a.x, var_0.b.a.x, var_0.b.a.x, 44486u)), abs(vec3<i32>(2147483647i, -2147483647i, 12338i)), Struct_1(vec3<u32>(4294967295u, var_0.e.a.x, 53572u), vec2<bool>(var_0.e.c, true), global0.e.c)), 28863u)), global0.a.a.x);
    let var_2 = ~62715u;
    global1 = ~(~firstLeadingBit(u_input.a));
    let var_3 = var_0.d;
    var_0 = Struct_2(func_1(func_1(func_2(var_1.a.yz), Struct_2(global0.e, Struct_1(global0.b.a, vec2<bool>(true, var_0.e.b.x), false), global0.c, select(global0.d, var_0.d, false), global0.a), global0.c.x), Struct_2(var_1, var_0.b, var_0.c, -u_input.b.yyz, global0.b), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_0.e.a.x, u_input.a, var_0.c.x)), var_0.c ^ vec4<u32>(33001u, 0u, 0u, var_1.a.x)), ~(15931u & u_input.a))), func_1(Struct_1((global0.a.a | vec3<u32>(1291u, var_2, var_0.b.a.x)) | (global0.b.a & vec3<u32>(u_input.a, var_2, global0.b.a.x)), func_2(reverseBits(vec2<u32>(0u, var_0.b.a.x))).b, global0.e.c), Struct_2(var_1, func_2(vec2<u32>(0u, 72672u)), global0.c, -min(vec3<i32>(2500i, -2147483647i, u_input.c), var_0.d), global0.b), u_input.a), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(~var_0.c, ~vec4<u32>(54482u, 1u, var_0.e.a.x, 0u)), _wgslsmith_mult_u32(max(global0.c.x, u_input.a), firstLeadingBit(4294967295u)), var_0.b.a.x & ~4294967295u) << (vec4<u32>(8768u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, var_2), var_0.c) % 32u), max(~21774u, 1u), global0.a.a.x, max(~0u, ~94294u)) % vec4<u32>(32u)), vec3<i32>(~var_3.x, ~(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_3.x, -1i, var_3.x, 26526i)) & countOneBits(0i)), global0.d.x), global0.a);
    var var_4 = Struct_2(var_1, Struct_1(~(~global0.b.a), !(!var_0.b.b), global0.b.b.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u & global0.a.a.x, abs(var_1.a.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(var_0.c), var_0.c)), func_2(var_0.b.a.xz).a.x, func_1(func_2(~vec2<u32>(72170u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(1u, u_input.a, var_0.c.x), vec2<bool>(true, global0.b.b.x), true), func_1(Struct_1(vec3<u32>(1u, 21632u, 55996u), var_0.e.b, false), Struct_2(Struct_1(var_0.b.a, var_1.b, false), var_1, vec4<u32>(var_0.e.a.x, 53444u, 1u, var_0.a.a.x), vec3<i32>(14974i, u_input.b.x, u_input.c), Struct_1(vec3<u32>(0u, var_1.a.x, 0u), var_0.b.b, global0.e.b.x)), global0.a.a.x), ~vec4<u32>(global0.c.x, u_input.a, 4294967295u, var_1.a.x), _wgslsmith_add_vec3_i32(vec3<i32>(8748i, 0i, -1i), vec3<i32>(-15216i, 1i, var_3.x)), func_1(Struct_1(vec3<u32>(20369u, u_input.a, 75246u), var_0.a.b, var_1.b.x), Struct_2(Struct_1(global0.c.wxz, var_1.b, true), global0.a, global0.c, u_input.b.wyx, global0.a), global0.b.a.x)), ~(~12847u)).a.x, var_1.a.x), max(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_0.d.x), var_0.d, ~var_0.d), abs(vec3<i32>(-43i, var_0.d.x, var_3.x))), min(global0.d, min(var_0.d, func_3(global0.d.x, var_0.c.ww, global3[_wgslsmith_index_u32(global0.a.a.x, 1u)])))), Struct_1(vec3<u32>(32050u ^ global0.b.a.x, global0.c.x, ~_wgslsmith_sub_u32(var_2, 22235u)), !var_0.e.b, any(select(select(vec4<bool>(var_1.b.x, false, true, false), vec4<bool>(false, var_0.e.c, false, false), var_0.a.b.x), !vec4<bool>(true, true, false, var_0.b.c), select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.b.b.x, var_0.e.c, var_1.c), true)))));
    var var_5 = all(vec3<bool>(true, (_wgslsmith_clamp_i32(-1i, 2147483647i, 37492i) | ~u_input.c) > (-var_0.d.x >> (u_input.a % 32u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-110f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(247f * global3[_wgslsmith_index_u32(var_1.a.x, 1u)])))), vec4<u32>(var_4.b.a.x, _wgslsmith_add_u32(global0.b.a.x, _wgslsmith_add_u32(45211u, _wgslsmith_mult_u32(u_input.a, var_0.b.a.x))), 1u & ~(~var_0.a.a.x), ~_wgslsmith_mod_u32(~global0.c.x, var_0.a.a.x)), func_3(_wgslsmith_mod_i32(~(~var_3.x), u_input.c), firstLeadingBit(var_1.a.yz | _wgslsmith_mult_vec2_u32(global0.c.zz, vec2<u32>(0u, 30208u))), -946f).yx, var_4.c.x, max(u_input.b, vec4<i32>(~(-1i), var_4.d.x, u_input.b.x, _wgslsmith_clamp_i32(-5370i, ~5755i, abs(u_input.b.x)))));
}

