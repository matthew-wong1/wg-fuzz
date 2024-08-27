struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<u32>(119210u, 0u), vec2<i32>(-81286i, -1i), vec3<f32>(2081f, 691f, -1357f)), i32(-2147483648), vec3<i32>(2147483647i, 3767i, 0i), Struct_1(vec2<u32>(62458u, 1u), vec2<i32>(-46463i, i32(-2147483648)), vec3<f32>(-374f, 305f, 1455f))), Struct_2(Struct_1(vec2<u32>(6614u, 38981u), vec2<i32>(-7882i, -15729i), vec3<f32>(1069f, 1046f, 542f)), 27181i, vec3<i32>(0i, 2147483647i, -21395i), Struct_1(vec2<u32>(11401u, 4294967295u), vec2<i32>(-51831i, -29804i), vec3<f32>(139f, -1224f, 1049f))), Struct_2(Struct_1(vec2<u32>(0u, 46524u), vec2<i32>(1464i, -30240i), vec3<f32>(-1000f, -1000f, 844f)), -8472i, vec3<i32>(2147483647i, -29090i, 37552i), Struct_1(vec2<u32>(4294967295u, 13006u), vec2<i32>(0i, 61503i), vec3<f32>(-367f, -498f, 1355f))), Struct_2(Struct_1(vec2<u32>(55135u, 0u), vec2<i32>(2147483647i, -13455i), vec3<f32>(-508f, 1000f, 446f)), 24287i, vec3<i32>(-1i, 37448i, -80447i), Struct_1(vec2<u32>(13690u, 13338u), vec2<i32>(16454i, -51527i), vec3<f32>(1086f, -782f, 510f))), Struct_2(Struct_1(vec2<u32>(286u, 1u), vec2<i32>(34756i, -1i), vec3<f32>(826f, -1850f, 362f)), 7373i, vec3<i32>(13624i, 30784i, 2520i), Struct_1(vec2<u32>(4294967295u, 50029u), vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(1000f, 531f, 508f))), Struct_2(Struct_1(vec2<u32>(9520u, 4294967295u), vec2<i32>(0i, -1i), vec3<f32>(389f, -1202f, -370f)), 28679i, vec3<i32>(-1i, 1i, 57i), Struct_1(vec2<u32>(4294967295u, 0u), vec2<i32>(-16588i, -13306i), vec3<f32>(1185f, -515f, -602f))), Struct_2(Struct_1(vec2<u32>(0u, 61186u), vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(1329f, -1356f, 284f)), 15617i, vec3<i32>(i32(-2147483648), 14989i, -30325i), Struct_1(vec2<u32>(13734u, 17905u), vec2<i32>(2147483647i, 0i), vec3<f32>(-220f, -1000f, 218f))), Struct_2(Struct_1(vec2<u32>(0u, 0u), vec2<i32>(-6720i, 15256i), vec3<f32>(-1000f, 544f, 845f)), 1i, vec3<i32>(14325i, 30327i, -1i), Struct_1(vec2<u32>(4294967295u, 30581u), vec2<i32>(71255i, 1i), vec3<f32>(-800f, -558f, 798f))), Struct_2(Struct_1(vec2<u32>(0u, 7767u), vec2<i32>(-44425i, -5069i), vec3<f32>(244f, -2176f, 2134f)), -14438i, vec3<i32>(31805i, -10156i, 1i), Struct_1(vec2<u32>(45657u, 8034u), vec2<i32>(-6005i, 1i), vec3<f32>(815f, -338f, -1892f))), Struct_2(Struct_1(vec2<u32>(28875u, 0u), vec2<i32>(2147483647i, -1i), vec3<f32>(1230f, 889f, 565f)), 2147483647i, vec3<i32>(-1i, 2147483647i, -8912i), Struct_1(vec2<u32>(51217u, 57607u), vec2<i32>(-1i, 2147483647i), vec3<f32>(2392f, -1034f, 1746f))));

var<private> global3: array<Struct_2, 5>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = global0.b;
    let var_1 = Struct_2(Struct_1(arg_2.zy ^ (~vec2<u32>(arg_3.a.x, 1u) >> (~arg_2.xz % vec2<u32>(32u))), -select(arg_1.b, vec2<i32>(u_input.a, global0.d.b.x), !global1.x), arg_1.c), arg_1.b.x, _wgslsmith_sub_vec3_i32(~vec3<i32>(i32(-1i) * -1i, arg_3.b.x, global0.c.x), ~global0.c), Struct_1(vec2<u32>(~arg_3.a.x, reverseBits(firstLeadingBit(arg_2.x))), global0.c.yz >> (_wgslsmith_mult_vec2_u32(arg_1.a, _wgslsmith_sub_vec2_u32(arg_2.xy, arg_2.xx)) % vec2<u32>(32u)), global0.d.c));
    global3 = array<Struct_2, 5>();
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 17632u, arg_3.a.x), countOneBits(vec3<u32>(53677u, var_1.d.a.x, arg_3.a.x))) >> (~(~24129u) % 32u), global0.a.a.x), vec2<i32>(arg_3.b.x, -u_input.a & global0.a.b.x) << (~abs(~var_1.a.a) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.c)) - _wgslsmith_f_op_vec3_f32(var_1.a.c * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.c.x, -1581f, arg_1.c.x)))))));
    var var_3 = select(_wgslsmith_mult_vec4_i32(-select(vec4<i32>(2147483647i, var_2.b.x, var_1.c.x, u_input.a), countOneBits(vec4<i32>(39660i, 28343i, 0i, var_2.b.x)), true), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_1.b.x, arg_3.b.x, 0i), vec4<i32>(-2147483647i, arg_1.b.x, -15682i, arg_1.b.x)) << ((vec4<u32>(19186u, arg_2.x, 38906u, 1u) & vec4<u32>(arg_1.a.x, 39525u, arg_1.a.x, 0u)) % vec4<u32>(32u)))), vec4<i32>(var_2.b.x, -3930i, select(~arg_3.b.x, ~(~u_input.a), true), -12454i), !(!vec4<bool>(true, !global1.x, any(global1.xx), global1.x & arg_0)));
    return _wgslsmith_mult_i32(-15692i, _wgslsmith_sub_i32(-abs(var_3.x), firstLeadingBit(_wgslsmith_div_i32(abs(-2147483647i), -35033i >> (arg_1.a.x % 32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(arg_0.b.x, _wgslsmith_mod_i32(-35882i ^ arg_0.b.x, -2147483647i)), ~0i, min(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0.b.x, 11808i, u_input.a), vec4<i32>(0i, -2147483647i, arg_0.b.x, u_input.a)), arg_0.b.x | -2147483647i, !global1.x), firstTrailingBit(1i))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(global0.c, max(global0.c, global0.c)), func_3(global1.x, global0.a, vec3<u32>(arg_0.a.x, 41550u, arg_1.x), global0.a), 27190i)));
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a.x, arg_1.x | 22377u, ~3352u), ~vec4<u32>(1u, 31031u, arg_1.x, arg_1.x) & (vec4<u32>(global0.d.a.x, arg_1.x, arg_0.a.x, 4527u) << (vec4<u32>(arg_1.x, 73124u, 14766u, 48050u) % vec4<u32>(32u)))), _wgslsmith_mult_u32(39843u, 20093u), ~(~4294967295u), 0u);
    let var_2 = select(!vec3<bool>(true, any(!global1.xx), any(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, false)))), select(select(vec3<bool>(all(vec4<bool>(false, global1.x, global1.x, true)), 1i > arg_0.b.x, global1.x), select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, true), vec3<bool>(global1.x, true, global1.x)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, global1.x), global1.x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, true, true), vec3<bool>(true, true, false)), global1.x)), !vec3<bool>(true, global1.x, all(vec4<bool>(global1.x, global1.x, false, true))), !select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, false), !global1.x)), !(!(!vec3<bool>(false, true, global1.x))));
    global2 = array<Struct_2, 10>();
    var_0 = global0.c;
    return true;
}

fn func_1() -> vec3<f32> {
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20499u, 49336u, countOneBits(countOneBits(1u)), 22499u), vec4<u32>(1u, global0.a.a.x, global0.d.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.a.a.x, 11109u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a.x, global0.a.a.x, global0.d.a.x), vec3<u32>(4294967295u, 33850u, global0.a.a.x))) << (global0.a.a.x % 32u))), 10u)];
    global1 = select(!(!select(select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, false, false), false), select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, false, false), global1.x), func_2(Struct_1(global0.d.a, global0.a.b, vec3<f32>(-218f, global0.d.c.x, -225f)), vec3<u32>(global0.a.a.x, 0u, 118178u)))), !vec3<bool>(!global1.x, global1.x, global1.x), !(_wgslsmith_clamp_u32(global0.d.a.x, 21778u, global0.a.a.x) < 1u) == any(vec3<bool>(-2903i >= u_input.a, false, !global1.x)));
    var var_0 = max(firstTrailingBit(1i), _wgslsmith_add_i32(-45681i, select(2147483647i, ~_wgslsmith_mult_i32(-3545i, 32555i), true)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.c.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.c.x * 379f)))) - global0.d.c.x), -412f, global0.d.c.x);
    var var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(0i, ~global0.a.b.x));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 10>();
    let var_0 = Struct_1(firstTrailingBit(~(~firstLeadingBit(global0.d.a))), -global0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    global3 = array<Struct_2, 5>();
    let var_1 = Struct_1(global0.a.a, min(reverseBits(var_0.b), vec2<i32>(_wgslsmith_div_i32(-5923i, global0.d.b.x), u_input.a)) & abs(_wgslsmith_clamp_vec2_i32(~var_0.b, var_0.b, vec2<i32>(-1i, -1i) >> (vec2<u32>(global0.d.a.x, var_0.a.x) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.d.c * var_0.c))));
    let var_2 = Struct_2(global0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.b.x, var_0.b.x, _wgslsmith_add_i32(~(-43249i), 1i), -2147483647i), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 0i, global0.d.b.x, u_input.a), vec4<i32>(1i, global0.b, -1i, -1i)), max(vec4<i32>(var_0.b.x, var_1.b.x, global0.d.b.x, -41481i), vec4<i32>(var_1.b.x, -5813i, 80523i, -25949i)), vec4<i32>(u_input.a, 1i, var_1.b.x, global0.c.x)), vec4<i32>(~0i, var_1.b.x, 0i ^ var_0.b.x, func_3(global1.x, Struct_1(vec2<u32>(var_1.a.x, 0u), global0.a.b, vec3<f32>(var_0.c.x, var_1.c.x, global0.a.c.x)), vec3<u32>(1u, global0.a.a.x, var_1.a.x), var_0)), vec4<i32>(firstLeadingBit(-2147483647i), abs(var_1.b.x), _wgslsmith_sub_i32(global0.c.x, var_1.b.x), -27025i))), vec3<i32>(~(-19375i), reverseBits(_wgslsmith_div_i32(var_1.b.x, 8183i)), -1i), var_0);
    let var_3 = Struct_1(min(vec2<u32>(var_2.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(8683u, 0u, var_1.a.x, var_2.d.a.x), vec4<u32>(var_0.a.x, 45262u, global0.a.a.x, 35857u))), var_0.a) >> (~(~abs(global0.d.a)) % vec2<u32>(32u)), var_0.b >> (vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(61204u, global0.d.a.x, 0u), vec3<u32>(1u, 1u, var_2.d.a.x)), var_2.a.a.x >> (var_2.d.a.x % 32u)), _wgslsmith_clamp_u32(select(14698u, var_2.d.a.x, global1.x), var_2.a.a.x, 58597u)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(-var_0.c.x)), var_1.c.x, _wgslsmith_f_op_f32(var_0.c.x - global0.a.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d.c.x, var_0.c.x), var_1.c.yy)))))));
}

