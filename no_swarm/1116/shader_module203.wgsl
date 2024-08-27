struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(32333i, 13400i, 2147483647i), Struct_1(1u, vec3<u32>(0u, 4294967295u, 3582u), vec2<f32>(1062f, 1710f)), 0u, vec4<bool>(true, false, true, false), 0u);

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<bool, 31>();
    return global3.b.c.x;
}

fn func_3() -> vec3<i32> {
    var var_0 = !global3.d.x;
    let var_1 = abs(abs(vec4<i32>(2147483647i & u_input.c.x, _wgslsmith_mult_i32(firstLeadingBit(u_input.e.x), global3.a.x), ~global2.a.x, -abs(global3.a.x))));
    var var_2 = Struct_3(Struct_2(abs(global2.a), Struct_1(1u, max(vec3<u32>(4294967295u, global2.c, 0u), ~global3.b.b), global3.b.c), global3.e, vec4<bool>(any(vec3<bool>(true, global3.d.x, global3.d.x)) & any(vec3<bool>(global0[_wgslsmith_index_u32(global3.c, 31u)], true, global3.d.x)), false, select(all(vec2<bool>(true, global2.d.x)), select(global2.d.x, global3.d.x, true), false), any(global3.d.wy)), 35335u), global2.b, !global2.d, global3.b, global0[_wgslsmith_index_u32(4294967295u, 31u)]);
    var var_3 = var_2.a;
    let var_4 = var_3.d;
    return firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, var_2.a.a.x), ~vec3<i32>(-23701i, 0i, 21576i), ~vec3<i32>(global2.a.x, var_1.x, u_input.e.x)), vec3<i32>(var_1.x, 0i, global2.a.x) >> (select(vec3<u32>(global2.e, var_2.a.c, 0u), u_input.a, vec3<bool>(false, true, true)) % vec3<u32>(32u))), -reverseBits(vec3<i32>(1i, 38153i, -2147483647i))));
}

fn func_1() -> Struct_1 {
    global1 = -183f >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_f32(sign(global2.b.c.x))));
    var var_0 = Struct_2(func_3(), global3.b, ~0u, vec4<bool>(true, all(vec4<bool>(select(true, false, global3.d.x), global0[_wgslsmith_index_u32(1u, 31u)], global3.d.x, true)), _wgslsmith_f_op_f32(-global3.b.c.x) > 1403f, all(global2.d)), u_input.b);
    global3 = Struct_2(abs(global2.a), Struct_1(0u, global2.b.b, _wgslsmith_f_op_vec2_f32(max(var_0.b.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global2.b.c)) * _wgslsmith_f_op_vec2_f32(floor(global3.b.c)))))), 0u, var_0.d, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(30883u, var_0.c, 2467u, 33833u) >> (vec4<u32>(2240u, global2.b.a, global3.e, 1u) % vec4<u32>(32u)), vec4<u32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, 0u)) & u_input.b));
    var var_1 = vec2<bool>(!global3.d.x, true);
    let var_2 = 247f;
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_vec2_u32(select(~select(~arg_0.b.b.yy, vec2<u32>(arg_0.d.b.x, 35347u), 0u == u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x & 42508u, ~4294967295u), select(vec2<u32>(70138u, 1u), vec2<u32>(arg_2.a, 25367u), select(vec2<bool>(global2.d.x, true), arg_0.a.d.xx, false)), ~u_input.a.xy >> (vec2<u32>(global2.b.a, arg_0.d.a) % vec2<u32>(32u))), select(global2.d.yz, vec2<bool>(!global2.d.x, all(arg_0.a.d)), vec2<bool>(true, false))), vec2<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, 0u, arg_2.a, global2.c) | vec4<u32>(arg_0.a.c, arg_2.a, arg_0.b.b.x, 1u)), countOneBits(vec4<u32>(86197u, 27113u, global3.c, 4294967295u)) << (~vec4<u32>(51406u, 0u, arg_0.b.b.x, arg_0.a.e) % vec4<u32>(32u))), firstLeadingBit(~firstTrailingBit(0u))), ~(arg_0.b.b.zx >> (vec2<u32>(abs(arg_2.a), abs(0u)) % vec2<u32>(32u))));
    var_0 = vec2<u32>(global3.e, _wgslsmith_sub_u32(var_0.x, 0u >> (var_0.x % 32u)) >> (arg_0.b.a % 32u)) >> (vec2<u32>(~firstTrailingBit(u_input.a.x & global3.e), 1u) % vec2<u32>(32u));
    let var_1 = ~min(_wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_1, -2147483647i, 1i, 1i), vec4<i32>(u_input.d.x, 0i, global2.a.x, -1100i), true), ~(-vec4<i32>(41708i, arg_1, global2.a.x, arg_1))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(global2.a.x, arg_1, 11236i, arg_0.a.a.x), -vec4<i32>(36654i, 0i, global3.a.x, 28593i)), ~countOneBits(vec4<i32>(arg_1, u_input.e.x, arg_0.a.a.x, global3.a.x))));
    var var_2 = arg_0.a;
    var var_3 = !select(var_2.d, vec4<bool>(all(vec4<bool>(false, false, arg_0.c.x, arg_0.a.d.x)), global2.d.x, arg_2.c.x <= -419f, arg_0.e), vec4<bool>(_wgslsmith_f_op_f32(step(global2.b.c.x, global2.b.c.x)) <= global3.b.c.x, false, any(!vec2<bool>(true, var_2.d.x)), global2.d.x));
    return Struct_2(vec3<i32>(0i, countOneBits(~(-1i)), firstTrailingBit(arg_1) ^ global3.a.x), func_1(), var_2.e, !(!(!var_2.d)), 14095u);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    let var_0 = (_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, firstTrailingBit(global2.a.x)), u_input.d) ^ 26058i) >> (_wgslsmith_clamp_u32(u_input.b, _wgslsmith_add_u32(~(~global2.b.a), func_4(Struct_3(arg_0.a, global2.b, arg_0.c, arg_0.a.b, true), arg_0.a.a.x, func_4(Struct_3(Struct_2(arg_0.a.a, arg_1.a, global3.c, arg_0.c, arg_1.c.x), arg_0.b, global3.d, Struct_1(17404u, vec3<u32>(38412u, 9489u, 1u), vec2<f32>(-787f, global3.b.c.x)), false), 1i, Struct_1(arg_1.a.b.x, vec3<u32>(arg_1.c.x, global3.e, 14749u), vec2<f32>(2353f, 1890f))).b).c), 27405u) % 32u);
    global3 = arg_0.a;
    global0 = array<bool, 31>();
    var var_1 = func_4(Struct_3(Struct_2(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x), ~vec3<i32>(arg_0.a.a.x, var_0, 33151i)), Struct_1(abs(6172u), firstLeadingBit(global2.b.b), _wgslsmith_f_op_vec2_f32(-arg_1.a.c)), _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(17379u, 0u)), vec4<bool>(true, global2.d.x, false, true), arg_0.b.b.x), global2.b, vec4<bool>(global2.d.x, arg_1.b, true | all(vec2<bool>(global3.d.x, false)), !all(vec3<bool>(true, global2.d.x, false))), global3.b, -40730i != arg_0.a.a.x), func_3().x, func_1()).b.c.x;
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.b.a, global3.b.b.x, reverseBits(93384u << (global2.b.a % 32u)), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, 4294967295u, global3.b.b.x))), ~min(_wgslsmith_mult_vec4_u32(vec4<u32>(15119u, arg_0.b.a, global3.b.a, u_input.b), vec4<u32>(0u, u_input.a.x, 0u, arg_0.a.b.b.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.a, u_input.b, 1u, 19941u), vec4<u32>(u_input.b, arg_1.c.x, u_input.a.x, global3.e))));
    return Struct_2(-(global2.a ^ firstLeadingBit(vec3<i32>(global2.a.x, arg_0.a.a.x, -20494i))), Struct_1((global3.c << (u_input.b % 32u)) << (4294967295u % 32u), u_input.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1298f, -861f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(760f, 501f))))))), _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_2, 0u, global3.b.b.x, 48435u)), vec4<u32>(~firstLeadingBit(global2.b.a), _wgslsmith_clamp_u32(arg_0.d.a | 58948u, arg_1.c.x & 0u, 4294967295u), 1u, var_2)), vec4<bool>(all(!arg_0.a.d.yw), global3.d.x || false, global0[_wgslsmith_index_u32(~(~(~38906u)), 31u)], false), arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(Struct_3(func_4(Struct_3(Struct_2(global2.a, global3.b, u_input.b, global2.d, 45175u), func_1(), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], false, true, global0[_wgslsmith_index_u32(4294967295u, 31u)]), func_1(), true), -(~u_input.e.x), global2.b), global3.b, func_4(Struct_3(func_4(Struct_3(Struct_2(vec3<i32>(global2.a.x, 0i, global3.a.x), Struct_1(4294967295u, global2.b.b, global2.b.c), global3.e, global3.d, 66281u), global2.b, vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(76389u, 31u)]), Struct_1(global3.b.a, vec3<u32>(4294967295u, global3.c, 14073u), vec2<f32>(626f, 702f)), true), u_input.e.x, Struct_1(12595u, vec3<u32>(global2.e, u_input.a.x, global3.c), vec2<f32>(1326f, global2.b.c.x))), global3.b, vec4<bool>(false, true, false, global2.d.x), Struct_1(4294967295u, vec3<u32>(global2.c, 0u, 4294967295u), global2.b.c), global2.a.x >= u_input.d.x), global2.a.x << ((u_input.a.x | 4294967295u) % 32u), Struct_1(~global2.c, vec3<u32>(global3.b.a, 0u, 40671u), vec2<f32>(global3.b.c.x, global3.b.c.x))).d, Struct_1(global3.b.b.x, global2.b.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(219f, -1091f)))), global2.d.x), Struct_4(func_4(Struct_3(func_4(Struct_3(Struct_2(global2.a, global2.b, global2.b.a, global3.d, 4294967295u), Struct_1(global3.e, vec3<u32>(4294967295u, 1u, 532u), global2.b.c), global3.d, Struct_1(64955u, vec3<u32>(24296u, 0u, global2.e), vec2<f32>(1970f, -112f)), false), u_input.e.x, Struct_1(global3.b.a, u_input.a, global3.b.c)), global2.b, func_4(Struct_3(Struct_2(vec3<i32>(global2.a.x, -13756i, global3.a.x), global2.b, global2.b.b.x, vec4<bool>(global0[_wgslsmith_index_u32(global3.c, 31u)], true, true, global2.d.x), 4294967295u), Struct_1(u_input.a.x, u_input.a, global2.b.c), global3.d, Struct_1(u_input.b, vec3<u32>(global2.e, u_input.b, 0u), vec2<f32>(1017f, -1000f)), global0[_wgslsmith_index_u32(global3.e, 31u)]), u_input.c.x, global3.b).d, global3.b, true), select(firstTrailingBit(1i), -29159i, any(global2.d.zyy)), func_4(Struct_3(Struct_2(vec3<i32>(u_input.e.x, u_input.e.x, global2.a.x), Struct_1(global3.c, vec3<u32>(1u, u_input.a.x, u_input.a.x), vec2<f32>(1922f, -1000f)), 12019u, vec4<bool>(false, false, global0[_wgslsmith_index_u32(global3.c, 31u)], global2.d.x), 0u), global2.b, vec4<bool>(global3.d.x, false, false, global2.d.x), global2.b, true), ~global2.a.x, Struct_1(global2.b.b.x, u_input.a, vec2<f32>(global2.b.c.x, 795f))).b).b, any(vec3<bool>(true, true, false)), ~u_input.a));
    let var_0 = u_input.a.x;
    global1 = all(select(global2.d.yzz, vec3<bool>(any(global3.d), !global3.d.x, global0[_wgslsmith_index_u32(global2.e, 31u)] & false), !vec3<bool>(true, func_4(Struct_3(Struct_2(global2.a, global3.b, var_0, global3.d, 4294967295u), global2.b, global2.d, global3.b, global2.d.x), -8301i, global3.b).d.x, !global3.d.x)));
    var var_1 = 61164u;
    global0 = array<bool, 31>();
    var_1 = abs(global2.b.a);
    let var_2 = select(-_wgslsmith_div_i32(-(u_input.d.x << (global2.b.b.x % 32u)), _wgslsmith_mod_i32(~2147483647i, -215i)), global3.a.x, global3.d.x);
    var var_3 = Struct_3(Struct_2(firstLeadingBit(min(~global3.a, u_input.c << (vec3<u32>(7102u, var_0, 1u) % vec3<u32>(32u)))), Struct_1(~34187u, ~func_4(Struct_3(Struct_2(u_input.c, global2.b, var_0, vec4<bool>(global3.d.x, true, true, false), global2.c), global3.b, global2.d, Struct_1(27599u, vec3<u32>(1u, global2.e, 1u), vec2<f32>(-132f, 403f)), global2.d.x), -17230i, global2.b).b.b, vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(global2.b.c.x)))), _wgslsmith_mult_u32(42083u, 1u), vec4<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global3.b.b.xz, u_input.a.yz), 31u)], !global0[_wgslsmith_index_u32(5705u, 31u)], global0[_wgslsmith_index_u32(82200u, 31u)]), 66683u), global2.b, func_5(Struct_3(func_4(Struct_3(Struct_2(u_input.c, Struct_1(global2.c, global3.b.b, vec2<f32>(global2.b.c.x, -1666f)), 47673u, global2.d, global2.e), Struct_1(1u, global3.b.b, vec2<f32>(-2120f, global2.b.c.x)), vec4<bool>(global2.d.x, global3.d.x, true, true), global3.b, global2.d.x), ~u_input.d.x, global2.b), func_1(), global3.d, func_4(Struct_3(Struct_2(vec3<i32>(var_2, 44069i, global2.a.x), Struct_1(4294967295u, vec3<u32>(67088u, var_0, 0u), vec2<f32>(-571f, -394f)), global3.c, global3.d, global2.c), Struct_1(66180u, vec3<u32>(global3.e, global2.c, global2.c), global2.b.c), global2.d, global3.b, false), select(-1i, global2.a.x, false), Struct_1(45388u, global3.b.b, global2.b.c)).b, global3.d.x), Struct_4(global3.b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(min(1u, global2.e), u_input.b & var_0), 31u)], u_input.a)).d, Struct_1(reverseBits(~_wgslsmith_sub_u32(1u, var_0)), u_input.a, _wgslsmith_f_op_vec2_f32(global2.b.c * _wgslsmith_f_op_vec2_f32(-global2.b.c))), true);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(var_3.a.e, u_input.b, 38891u, var_3.b.a)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_3.d.b.x, 1u, var_0), 1u, 16211u, u_input.b), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global2.c, global3.e, 1u, var_0)), select(vec4<u32>(1u, 1u, 48640u, 59295u), vec4<u32>(63905u, 16095u, 54364u, 36338u), vec4<bool>(true, false, true, global2.d.x)))) % vec4<u32>(32u)), global3.a, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global3.e, 19188u, var_0, 15321u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 110492u, 166u, global2.b.b.x), vec4<u32>(var_3.a.c, 5444u, u_input.b, 0u))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3.c, var_3.d.b.x, global2.e, var_3.a.b.b.x), vec4<u32>(19826u, 4294967295u, 0u, 0u), vec4<u32>(global3.b.a, u_input.a.x, 1u, 4294967295u)))) >> (vec4<u32>(global2.e, 1u, ~min(var_3.a.c, var_0), select(var_0, _wgslsmith_clamp_u32(global2.b.a, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(func_5(Struct_3(var_3.a, Struct_1(1u, var_3.b.b, global2.b.c), global2.d, global2.b, global2.d.x), Struct_4(global2.b, true, var_3.a.b.b)).c, 31u)])) % vec4<u32>(32u)), func_5(Struct_3(Struct_2(var_3.a.a, Struct_1(u_input.a.x, vec3<u32>(13119u, var_0, 4294967295u), vec2<f32>(var_3.a.b.c.x, -375f)), global2.b.b.x, !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(46117u, 31u)]), 4294967295u), global2.b, !vec4<bool>(true, global3.d.x, true, false), global3.b, !(u_input.a.x == 25384u)), Struct_4(global3.b, true, ~vec3<u32>(u_input.b, 1u, global3.b.a))).b.b.x, global3.b.b);
}

