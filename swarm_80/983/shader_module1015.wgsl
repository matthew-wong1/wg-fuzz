struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 12>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(false, false), -1336f, true, vec2<i32>(i32(-2147483648), 2147483647i));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: u32) -> vec4<u32> {
    global2 = array<f32, 12>();
    var var_0 = arg_2;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) + _wgslsmith_f_op_f32(arg_0.b * -395f)))) - 2538f), global2[_wgslsmith_index_u32(~u_input.c.x, 12u)]);
    let var_1 = arg_0;
    var var_2 = arg_2;
    return countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_3, 40718u, 61192u) & (vec4<u32>(0u, global1.x, u_input.c.x, u_input.c.x) | vec4<u32>(61265u, 55689u, 28037u, arg_3)), min(vec4<u32>(46739u, u_input.c.x, 4294967295u, 6833u), _wgslsmith_mult_vec4_u32(vec4<u32>(2448u, 1u, 1u, 32241u), vec4<u32>(global1.x, global1.x, 29908u, 0u)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = ~_wgslsmith_add_vec4_u32(~func_3(Struct_1(vec2<bool>(global3.a.x, true), global3.b, global3.c, global3.d), vec4<bool>(global3.a.x, true, true, false), Struct_2(global3.a.x), 0u), ~vec4<u32>(~0u, 4294967295u, abs(global1.x), u_input.c.x));
    global1 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 26434u | global1.x, global1.x, 55420u), vec4<u32>(~4294967295u, ~5390u, 0u, _wgslsmith_div_u32(global1.x, global1.x))), vec4<u32>(~0u, min(~4294967295u, abs(4294967295u)), _wgslsmith_sub_u32(firstTrailingBit(17399u), global1.x << (11680u % 32u)), 4953u)), countOneBits(1u), ~(~(~global1.x)), _wgslsmith_div_u32(~u_input.c.x, u_input.c.x));
    global2 = array<f32, 12>();
    var var_0 = ~(~vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), u_input.c.x));
    let var_1 = Struct_1(global3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1385f), -1755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(259f, 1223f))) + _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_0.x, 12u)], global3.b)))), true, vec2<i32>(2635i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.d.x, 2147483647i, 2147483647i), vec3<i32>(u_input.e, arg_0, global3.d.x)) << ((global1.x | abs(var_0.x)) % 32u)));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = countOneBits(~max(u_input.c.yz, reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 4294967295u), global1.yy))));
    global1 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.c.x, countOneBits(1u), 37830u), ~firstTrailingBit(~(~vec4<u32>(1u, u_input.c.x, u_input.c.x, 1u))));
    global2 = array<f32, 12>();
    var var_2 = -(-65406i << (var_1.x % 32u));
    return Struct_2(any(!vec4<bool>(global3.c, select(false, arg_1.c, true), true, any(vec2<bool>(arg_1.c, false)))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec3<f32>) -> bool {
    global3 = Struct_1(global3.a, 1130f, (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1536f, global3.b)))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(771f, arg_3.x))) | any(vec2<bool>(any(vec3<bool>(global3.c, arg_2.a, true)), arg_0)), global3.d);
    let var_0 = _wgslsmith_sub_u32(~abs(abs(~u_input.c.x)), 53599u);
    let var_1 = ~(abs(countOneBits(firstTrailingBit(-2147483647i))) & -1i);
    var var_2 = _wgslsmith_sub_u32(firstTrailingBit(abs(var_0)), abs(u_input.c.x));
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-895f, global3.b), _wgslsmith_div_vec2_f32(arg_3.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 496f) + arg_3.xy)))));
    return -128f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b))) + _wgslsmith_f_op_f32(floor(-326f)));
}

fn func_1() -> Struct_2 {
    return Struct_2(select(global3.a.x, any(global3.a), func_5(!global3.a.x, !global3.c, func_4(true, func_2(-2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(20436u, 12u)], global2[_wgslsmith_index_u32(u_input.c.x, 12u)], global0.x) - vec3<f32>(global3.b, 1088f, 1213f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(43316u, 12u)], global0.x, global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<f32>(global3.b, global2[_wgslsmith_index_u32(u_input.c.x, 12u)], -831f), vec3<bool>(global3.a.x, global3.c, false)))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), true)) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(19451u, 12u)], global0.x) - vec2<f32>(global3.b, 112f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global3.b) * vec2<f32>(global2[_wgslsmith_index_u32(102943u, 12u)], 645f))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1.x, 12u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b, global3.b) * vec2<f32>(global0.x, global0.x))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, global3.b))))), vec2<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], _wgslsmith_f_op_f32(442f * _wgslsmith_f_op_f32(min(global3.b, 1000f))))));
    global3 = func_2(1i);
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(any(!select(select(vec4<bool>(arg_1.a, arg_1.a, true, global3.c), vec4<bool>(arg_1.a, global3.c, global3.c, arg_1.a), false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), true)));
    global3 = Struct_1(func_2(1i).a, -1231f, any(!(!(!vec3<bool>(true, global3.c, arg_1.a)))), vec2<i32>(-1767i, func_2(u_input.a).d.x));
    return func_2(-14335i);
}

fn func_7(arg_0: Struct_1, arg_1: u32) -> f32 {
    global3 = Struct_1(vec2<bool>(func_6(arg_0.d, func_4(true, Struct_1(arg_0.a, global3.b, false, vec2<i32>(u_input.a, global3.d.x))), global3.d).a.x, (i32(-1i) * -arg_0.d.x) <= 0i), 1000f, true & all(vec4<bool>(false, true, false == arg_0.a.x, global3.c)), ~min(~abs(arg_0.d), reverseBits(~vec2<i32>(1i, u_input.d))));
    let var_0 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(global3.d.x, countOneBits(-14188i), u_input.b, 13924i)), abs(vec4<i32>(_wgslsmith_mult_i32(global3.d.x, -20553i), firstLeadingBit(u_input.e), 2147483647i, func_6(arg_0.d, Struct_2(global3.c), arg_0.d).d.x))) & ~(-(~(~vec4<i32>(2147483647i, u_input.d, global3.d.x, u_input.b))));
    let var_1 = -1725i > var_0.x;
    var var_2 = func_4(true, arg_0);
    global2 = array<f32, 12>();
    return -1877f;
}

fn func_8(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = func_2(global3.d.x ^ (func_2(global3.d.x).d.x | _wgslsmith_mod_i32(firstLeadingBit(-1i), global3.d.x)));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(min(1i, func_2(u_input.e).d.x), abs(-12452i), -u_input.e, 0i), vec4<i32>(_wgslsmith_dot_vec2_i32(global3.d, ~var_0.d), _wgslsmith_sub_i32(0i, 51539i), ~global3.d.x, reverseBits(_wgslsmith_mod_i32(abs(0i), var_0.d.x))));
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.wwx, vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(global3.d, global3.d)), 0i, ~abs(global3.d.x))), ~9051i, 50585i);
    let var_3 = -_wgslsmith_mod_vec2_i32(firstLeadingBit(select(global3.d, _wgslsmith_sub_vec2_i32(vec2<i32>(global3.d.x, 1i), var_1.yz), global3.c)), ~vec2<i32>(~var_2.x, select(1i, 37706i, global3.c)));
    let var_4 = 1u;
    return Struct_1(!global3.a, global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(0u, u_input.c.x) >> (_wgslsmith_clamp_u32(~15481u, 4294967295u, countOneBits(1u)) % 32u), 7393u), 12u)], global3.c, global3.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_8(_wgslsmith_f_op_f32(func_7(func_6(select(vec2<i32>(-35064i, global3.d.x), vec2<i32>(global3.d.x, 1i), global3.a), func_1(), global3.d | vec2<i32>(global3.d.x, -2147483647i)), func_3(func_6(global3.d, Struct_2(global3.a.x), vec2<i32>(u_input.e, global3.d.x)), select(vec4<bool>(global3.a.x, global3.c, global3.a.x, global3.a.x), vec4<bool>(global3.c, global3.c, global3.c, global3.a.x), vec4<bool>(true, true, true, global3.a.x)), Struct_2(global3.c), ~30039u).x)), _wgslsmith_div_u32(global1.x, reverseBits(u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1562f) - vec2<f32>(global2[_wgslsmith_index_u32(0u, 12u)], -885f))))), u_input.a, 2147483647i < (_wgslsmith_clamp_i32(u_input.b, u_input.d, -38506i) & (0i << (_wgslsmith_mod_u32(global1.x, 59403u) % 32u))));
    var var_1 = !select(!(!(!vec3<bool>(true, true, global3.a.x))), !(!select(vec3<bool>(global3.c, global3.a.x, var_0.c), vec3<bool>(global3.c, var_0.c, global3.c), vec3<bool>(true, global3.c, global3.c))), !global3.a.x);
    var_1 = vec3<bool>(var_0.c, true, !(!(!(global3.a.x | global3.a.x))));
    let var_2 = var_0;
    let var_3 = 0i;
    var var_4 = !(!vec4<bool>(true, all(vec4<bool>(true, false, var_2.c, false)), true, 1f >= func_2(0i).b));
    global3 = Struct_1(global3.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-682f)) * global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(39680u, global1.x), 12u)]) * var_2.a.b), 295f), any(!vec2<bool>(func_2(u_input.e).a.x, any(vec2<bool>(false, var_4.x)))), firstTrailingBit(var_0.a.d));
    let var_5 = !var_1.x;
    var var_6 = _wgslsmith_clamp_vec3_i32((max(vec3<i32>(global3.d.x, global3.d.x, -1i), vec3<i32>(-2147483647i, var_2.b, -2147483647i)) & (vec3<i32>(var_2.b, global3.d.x, -30507i) | _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.d, var_0.a.d.x), vec3<i32>(var_0.a.d.x, -26064i, 22819i)))) >> (~_wgslsmith_div_vec3_u32(~global1.www, vec3<u32>(1u, 24226u, u_input.c.x)) % vec3<u32>(32u)), vec3<i32>(var_0.a.d.x, _wgslsmith_dot_vec2_i32(~func_6(global3.d, Struct_2(var_1.x), var_2.a.d).d, select(global3.d, vec2<i32>(23857i, -1i), var_5)), global3.d.x), reverseBits(vec3<i32>(-1i) * -(~vec3<i32>(var_3, var_0.b, var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(func_2(var_0.b).b, -118f, _wgslsmith_f_op_f32(func_7(Struct_1(var_1.xz, 300f, var_0.c, vec2<i32>(u_input.d, u_input.a)), global1.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 12u)], var_2.a.b, -1141f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, var_0.a.b, global3.b) + vec3<f32>(-737f, var_2.a.b, global2[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(561f, global2[_wgslsmith_index_u32(10154u, 12u)], global3.b), vec3<f32>(global0.x, 594f, -1063f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(global1.x, 12u)], global0.x, global2[_wgslsmith_index_u32(global1.x, 12u)]) + vec3<f32>(1201f, var_0.a.b, -102f)), true)), !(1u < u_input.c.x))), select(vec3<bool>(true, all(vec3<bool>(var_5, true, var_4.x)), true), var_4.yxw, max(0i, var_2.a.d.x) == -u_input.e))), var_2.a.d.x, vec2<u32>(reverseBits(min(70714u, abs(u_input.c.x))), u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(~60274u, ~global1.x, ~u_input.c.x), _wgslsmith_add_vec3_u32(global1.xzx >> (u_input.c % vec3<u32>(32u)), global1.yxz)));
}

