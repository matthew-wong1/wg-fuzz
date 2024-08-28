struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<i32>(20401i, i32(-2147483648), 1i, -1i), Struct_2(1299f, 4294967295u, vec2<i32>(i32(-2147483648), i32(-2147483648)))), Struct_3(vec4<i32>(-1i, 1i, i32(-2147483648), 14560i), Struct_2(-1201f, 53867u, vec2<i32>(2147483647i, 39632i))), Struct_3(vec4<i32>(1i, -1i, 52424i, i32(-2147483648)), Struct_2(-1045f, 0u, vec2<i32>(1i, 4040i))), Struct_3(vec4<i32>(82854i, -18027i, -15114i, 15740i), Struct_2(820f, 0u, vec2<i32>(31969i, 19738i))), Struct_3(vec4<i32>(-9417i, 29898i, 18882i, 1i), Struct_2(698f, 0u, vec2<i32>(-21897i, 52454i))), Struct_3(vec4<i32>(1i, -1i, -14290i, 2147483647i), Struct_2(1578f, 11648u, vec2<i32>(39328i, i32(-2147483648)))), Struct_3(vec4<i32>(2147483647i, -68828i, 0i, 2147483647i), Struct_2(827f, 51156u, vec2<i32>(19227i, 0i))), Struct_3(vec4<i32>(1i, 2047i, -16759i, 2147483647i), Struct_2(1578f, 0u, vec2<i32>(1i, -16402i))), Struct_3(vec4<i32>(1i, i32(-2147483648), 2147483647i, 1i), Struct_2(564f, 0u, vec2<i32>(38015i, 0i))), Struct_3(vec4<i32>(-18844i, -11990i, i32(-2147483648), -43699i), Struct_2(684f, 11585u, vec2<i32>(41491i, 31394i))), Struct_3(vec4<i32>(1i, 37727i, 1i, 1i), Struct_2(-119f, 0u, vec2<i32>(2147483647i, -25949i))), Struct_3(vec4<i32>(-1i, -57607i, 42601i, -1i), Struct_2(243f, 24866u, vec2<i32>(-1i, 2147483647i))), Struct_3(vec4<i32>(i32(-2147483648), -13551i, -76623i, 1i), Struct_2(676f, 23815u, vec2<i32>(57995i, 0i))), Struct_3(vec4<i32>(i32(-2147483648), 8725i, 9450i, 2397i), Struct_2(-1182f, 1u, vec2<i32>(11857i, -85705i))), Struct_3(vec4<i32>(1i, -1i, 17650i, -1i), Struct_2(-830f, 1u, vec2<i32>(54497i, -14680i))), Struct_3(vec4<i32>(-1i, 1i, i32(-2147483648), 0i), Struct_2(1093f, 60302u, vec2<i32>(0i, 39919i))), Struct_3(vec4<i32>(-4773i, -5610i, -22027i, -1i), Struct_2(410f, 4294967295u, vec2<i32>(33641i, -45923i))), Struct_3(vec4<i32>(-41580i, 2147483647i, 14241i, -1788i), Struct_2(-160f, 4294967295u, vec2<i32>(-3529i, -1i))));

var<private> global1: Struct_3 = Struct_3(vec4<i32>(46290i, 20828i, 2147483647i, 4902i), Struct_2(392f, 83273u, vec2<i32>(-1i, 0i)));

var<private> global2: f32;

var<private> global3: array<vec3<f32>, 18>;

var<private> global4: Struct_3 = Struct_3(vec4<i32>(1i, -575i, -42671i, i32(-2147483648)), Struct_2(-1000f, 4294967295u, vec2<i32>(0i, -9815i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool) -> vec2<f32> {
    let var_0 = ~_wgslsmith_sub_i32(global1.b.c.x, u_input.a);
    let var_1 = true;
    let var_2 = u_input.c;
    var var_3 = var_1;
    global2 = 2462f;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(722f))) + -927f), _wgslsmith_f_op_f32(min(global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a * global4.b.a)) + _wgslsmith_f_op_f32(global1.b.a - _wgslsmith_f_op_f32(-590f + 1000f))))));
}

fn func_3(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(~u_input.c, 18u)];
    global4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(30014u, min(global1.b.b, u_input.c), firstLeadingBit(4294967295u), 1u)), vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(4294967295u, global4.b.b), ~40170u), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(23076u, global1.b.b, 1u), vec3<u32>(global4.b.b, global1.b.b, global4.b.b))), vec3<u32>(_wgslsmith_add_u32(global4.b.b, 14718u), global1.b.b, 95794u)), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(global1.b.b, u_input.c), vec2<u32>(54748u, 28425u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(global4.b.b, global1.b.b)), countOneBits(vec2<u32>(global1.b.b, global4.b.b)))), ~global1.b.b)), 18u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(global4.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(var_0.x - arg_0.x), 1078f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_div_f32(var_0.x, arg_0.x), _wgslsmith_f_op_f32(max(global1.b.a, global4.b.a)), _wgslsmith_f_op_f32(round(-1645f)))))));
    var var_2 = global1.b.b;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, _wgslsmith_f_op_f32(737f + _wgslsmith_f_op_f32(max(312f, 1600f))), _wgslsmith_div_f32(-625f, _wgslsmith_f_op_f32(min(-467f, var_1.x))), -1824f) + var_1), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(444f, 1808f, arg_0.x, arg_0.x), vec4<f32>(1698f, -680f, var_1.x, 633f))))))));
    return Struct_1(true, u_input.b);
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(true, vec4<i32>(u_input.a, -1i, global4.b.c.x, ~(i32(-1i) * -global1.b.c.x)));
    let var_1 = ~_wgslsmith_clamp_vec4_i32((-var_0.b | _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -23626i, global1.b.c.x, global4.b.c.x), vec4<i32>(global1.a.x, global1.b.c.x, u_input.a, 19337i))) & firstLeadingBit(global4.a), firstTrailingBit(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(global1.b.c.x, global4.b.c.x, -2147483647i, global1.a.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.b.b, global1.b.b, global1.b.b, u_input.c), vec4<u32>(843u, 809u, 4294967295u, u_input.c), vec4<u32>(u_input.c, 63640u, global1.b.b, 1u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, ~global4.b.c.x, max(global4.b.c.x, global1.b.c.x), var_0.b.x), -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.x, global1.b.c.x, 0i, u_input.a), vec4<i32>(-1i, 59902i, 2147483647i, -62885i)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 0i, global1.b.c.x), select(vec4<i32>(-2147483647i, 2147483647i, 0i, 0i), vec4<i32>(u_input.d.x, 53139i, u_input.b.x, global4.b.c.x), vec4<bool>(true, var_0.a, var_0.a, var_0.a)))));
    var var_2 = false;
    global1 = Struct_3(~((vec4<i32>(4743i, var_1.x, -36908i, var_0.b.x) | ~var_1) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global1.b.b, 63518u, global4.b.b), vec4<u32>(global1.b.b, global1.b.b, global1.b.b, 0u)) % vec4<u32>(32u))), Struct_2(1829f, ~(~(~1u)), -vec2<i32>(global1.b.c.x, _wgslsmith_mult_i32(21052i, 56325i))));
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.a, -378f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true)), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2(false)).x, -906f))));
    return StorageBuffer(global1.b.a, global1.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(296f, global1.b.a), vec2<f32>(2092f, -1891f))), vec2<f32>(1f, 1f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1390f, global1.b.a), vec2<f32>(465f, -1413f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.b.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 18>();
    global4 = global0[_wgslsmith_index_u32(global1.b.b, 18u)];
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.b.a * 443f))), global4.b.a, true))));
    var var_1 = Struct_1(true, vec4<i32>(select(u_input.b.x ^ countOneBits(global1.a.x), _wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(3202i, global1.b.c.x, -16947i)), true), ~(-40431i), u_input.a, global4.b.c.x));
    let var_2 = vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(abs(-var_1.b), var_1.b));
    let x = u_input.a;
    s_output = func_1();
}

