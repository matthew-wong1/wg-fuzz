struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-51107i), Struct_2(3652i), Struct_2(0i), Struct_2(-9470i), Struct_2(-28032i), Struct_2(2147483647i), Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(14733i), Struct_2(-34881i), Struct_2(2147483647i), Struct_2(13572i), Struct_2(2441i), Struct_2(-2307i), Struct_2(5473i), Struct_2(12855i), Struct_2(0i), Struct_2(-9778i), Struct_2(21296i), Struct_2(19391i), Struct_2(2147483647i), Struct_2(1i), Struct_2(7629i));

var<private> global2: i32;

var<private> global3: i32;

var<private> global4: array<i32, 5> = array<i32, 5>(0i, -38050i, 68410i, i32(-2147483648), 0i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = true;
    let var_1 = !any(select(vec4<bool>(true, true, select(true, false, false), false), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), 1i < global4[_wgslsmith_index_u32(4294967295u, 5u)]), any(vec4<bool>(false, false, true, false))));
    let var_2 = max(select(vec2<i32>(-global0.a, u_input.c), -_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, 0i), vec2<i32>(global4[_wgslsmith_index_u32(182376u, 5u)], -2147483647i)), vec2<bool>(true, true)) ^ ~(-vec2<i32>(-18413i, global0.a)), ~countOneBits(~vec2<i32>(0i, 1i)) >> (~(~countOneBits(vec2<u32>(u_input.a, 8333u))) % vec2<u32>(32u)));
    var var_3 = Struct_1(select(vec3<bool>(true, var_1, var_1), !select(select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, false), var_1), select(vec3<bool>(var_1, false, false), vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_1, false)), vec3<bool>(var_1, true, var_1)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, var_1), vec3<bool>(var_1, false, var_1)), !vec3<bool>(var_1, var_1, var_1), select(vec3<bool>(true, var_1, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, false)))), ~(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 28532u, 33534u), vec3<u32>(arg_0.x, u_input.a, u_input.a)) << ((vec3<u32>(arg_0.x, arg_0.x, 13520u) & vec3<u32>(arg_0.x, 80037u, 0u)) % vec3<u32>(32u))) >> ((vec3<u32>(arg_0.x, _wgslsmith_clamp_u32(31524u, u_input.b.x, u_input.b.x), 4294967295u) << (max(vec3<u32>(u_input.b.x, 25227u, u_input.b.x) & vec3<u32>(u_input.a, arg_0.x, 76364u), vec3<u32>(51335u, arg_0.x, u_input.a) << (vec3<u32>(10048u, u_input.b.x, 22159u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), -1848f);
    global0 = Struct_2(abs(select(global4[_wgslsmith_index_u32(firstLeadingBit(reverseBits(u_input.a)), 5u)], i32(-1i) * -1i, true)));
    return var_3.a.x;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(-vec2<i32>(2147483647i << (arg_1 % 32u), ~1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-106f, arg_0))))), max(u_input.b, _wgslsmith_mod_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u))))), Struct_2(-global0.a), Struct_3(reverseBits(-vec2<i32>(global0.a, -2147483647i)) ^ -_wgslsmith_sub_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(1u, 5u)], u_input.c), vec2<i32>(global0.a, global0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_0))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))), abs(max(vec2<u32>(62034u, 0u), u_input.b) | u_input.b)), func_3(~(~vec2<u32>(1u, arg_1))) | !(!any(vec3<bool>(true, true, true))));
    let var_1 = Struct_1(vec3<bool>(all(!vec2<bool>(var_0.d, var_0.d)), true, select(false, var_0.d, true) && var_0.d), ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.b.x, arg_1, var_0.a.c.x)), min(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(u_input.a, 1u, var_0.c.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - arg_0)))));
    var var_2 = Struct_4(var_0.c, Struct_2(~reverseBits(2147483647i | global0.a)), Struct_3(var_0.c.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_0.c.b)), _wgslsmith_f_op_vec2_f32(step(var_0.c.b, vec2<f32>(256f, -1000f))))), reverseBits(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(4294967295u, 1u), u_input.b))), ~abs(-81680i) > ~(_wgslsmith_add_i32(1i, u_input.c) ^ _wgslsmith_sub_i32(2501i, u_input.c)));
    var var_3 = Struct_4(Struct_3(~_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global4[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec2<i32>(2147483647i, u_input.c), var_2.a.a), _wgslsmith_mult_vec2_i32(var_2.c.a, var_2.c.a)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1396f)))), select(~(~u_input.b), ~vec2<u32>(var_2.c.c.x, u_input.b.x), vec2<bool>(false, true))), Struct_2(~(global0.a >> (~var_2.c.c.x % 32u))), Struct_3(var_2.c.a, var_2.c.b, ~var_0.c.c), !(_wgslsmith_f_op_f32(sign(var_0.a.b.x)) < _wgslsmith_div_f32(arg_0, var_0.c.b.x)));
    global0 = Struct_2(-22686i & min(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(7508i, var_3.b.a, 2147483647i)), vec3<i32>(-18335i, var_0.a.a.x, 22317i)), var_2.a.a.x));
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2009f * -364f) * _wgslsmith_f_op_f32(ceil(826f))))), u_input.a), ~(~vec3<u32>(~4294967295u, 4294967295u, 0u << (1u % 32u))), _wgslsmith_f_op_f32(sign(716f)));
    let var_1 = Struct_4(Struct_3(vec2<i32>(arg_0, firstTrailingBit(-u_input.c)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1035f, var_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-185f, 438f) - vec2<f32>(-1390f, 1266f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, var_0.c) * vec2<f32>(var_0.c, -831f))))), ~u_input.b), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.b.yx | (vec2<u32>(1u, arg_1) | u_input.b), vec2<u32>(u_input.b.x, ~var_0.b.x)), 23u)], Struct_3(abs(abs(~vec2<i32>(global0.a, arg_0))), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -487f)), vec2<u32>(4294967295u, _wgslsmith_div_u32(max(1u, u_input.b.x), 1u))), var_0.a.x);
    return Struct_3(var_1.a.a, var_1.c.b, _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(4294967295u, arg_1), vec2<u32>(var_1.c.c.x, 13328u), var_1.d), countOneBits(vec2<u32>(1u, arg_1))), var_1.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(abs(global4[_wgslsmith_index_u32(~firstTrailingBit(30167u), 5u)]), 27509u & u_input.a), global1[_wgslsmith_index_u32(~countOneBits(firstLeadingBit(3666u)) & ~max(u_input.a, u_input.a), 23u)], func_1(_wgslsmith_add_i32(max(global0.a, 14617i), 0i), 2635u), !(!any(vec3<bool>(true, true, false))));
    global0 = Struct_2(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.a, global4[_wgslsmith_index_u32(101868u, 5u)], u_input.c), -vec4<i32>(u_input.c, global0.a, global0.a, -1i)), global0.a), 2147483647i, global4[_wgslsmith_index_u32(max(~(u_input.b.x >> (var_0.a.c.x % 32u)), _wgslsmith_sub_u32(var_0.c.c.x, var_0.a.c.x)), 5u)]));
    let var_1 = vec2<i32>(7307i, -2147483647i);
    var var_2 = Struct_4(Struct_3(var_1, _wgslsmith_f_op_vec2_f32(var_0.c.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b.x, var_0.c.b.x), var_0.a.b, vec2<bool>(true, false))) - var_0.a.b)), ~countOneBits(u_input.b | u_input.b)), Struct_2(6198i), Struct_3(min(select(vec2<i32>(var_1.x, 0i) >> (var_0.a.c % vec2<u32>(32u)), var_0.c.a, select(var_0.d, var_0.d, var_0.d)), vec2<i32>(13407i, u_input.c)), vec2<f32>(473f, var_0.c.b.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, var_0.c.c.x), select(u_input.b, var_0.c.c, vec2<bool>(false, true)))), var_0.d);
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_2.a.c.x, abs(~(~(u_input.b.x >> (21544u % 32u))))), 23u)];
    let var_4 = var_2.c;
    var var_5 = var_2.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-51548i, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.a, _wgslsmith_mod_i32(var_3.a, var_3.a), -2147483647i, var_4.a.x), vec4<i32>(1i | var_4.a.x, -var_4.a.x, _wgslsmith_mod_i32(var_1.x, var_1.x), ~u_input.c), vec4<i32>(2147483647i, var_4.a.x, 36498i, u_input.c) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, global4[_wgslsmith_index_u32(var_4.c.x, 5u)], -17884i, -1i), vec4<i32>(1i, 2147483647i, 1i, u_input.c))), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(71106u, countOneBits(1u), 7466u, _wgslsmith_div_u32(4294967295u, 4294967295u))), select(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1425u, var_4.c.x, 15640u, var_4.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(45162u, 4294967295u, 4294967295u, 25452u), vec4<u32>(0u, var_0.a.c.x, u_input.a, 94109u)), ~vec4<u32>(4294967295u, var_0.a.c.x, 1u, 1u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_4.c.x, u_input.b.x, 29377u, 93121u), vec4<u32>(var_2.c.c.x, 4294967295u, 51311u, 1u)), min(vec4<u32>(var_4.c.x, 70755u, 9921u, 1u), vec4<u32>(1u, 1u, var_4.c.x, var_4.c.x))), !var_2.d)));
}

