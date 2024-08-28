struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -227f, 1000f);

var<private> global1: array<f32, 19>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<u32> = vec4<u32>(0u, 11337u, 0u, 1u);

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 115753u), 43015i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(vec3<bool>(!(global4.a.x || global2.x) & true, -6753i != _wgslsmith_sub_i32(3402i, _wgslsmith_add_i32(global4.c, u_input.a)), global2.x), select(global4.b, vec2<u32>(6194u, global4.b.x), global2.xx), _wgslsmith_sub_i32(max(0i, -u_input.a) ^ u_input.c.x, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(2073i, 25484i), u_input.a)));
    var var_1 = Struct_1(!var_0.a, global3.wz, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i) << ((global3.ww ^ global4.b) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(-1i, 2147483647i), i32(-1i) * -50149i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(52740i, u_input.a), vec2<i32>(var_0.c, global4.c))));
    let var_2 = !vec4<bool>(any(vec4<bool>(!global2.x, global4.a.x, false, global4.a.x)), !select(false, global1[_wgslsmith_index_u32(var_0.b.x, 19u)] > global0.x, any(var_0.a)), !(!var_1.a.x), any(!vec4<bool>(global2.x, var_1.a.x, global2.x, var_0.a.x)));
    let var_3 = ~_wgslsmith_mod_vec2_i32(~countOneBits(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(1i, global4.c), vec2<i32>(u_input.a, var_1.c))), vec2<i32>(countOneBits(global4.c), _wgslsmith_sub_i32(select(-1380i, 1i, false), -27618i)));
    let var_4 = _wgslsmith_mod_vec4_i32(~_wgslsmith_add_vec4_i32(~select(vec4<i32>(var_1.c, 31486i, 2754i, var_0.c), vec4<i32>(18582i, 1i, 2463i, var_1.c), var_2), _wgslsmith_add_vec4_i32(vec4<i32>(-28595i, -21129i, var_1.c, global4.c), vec4<i32>(10614i, u_input.b, -1i, -2147483647i)) << (firstLeadingBit(vec4<u32>(global4.b.x, 31747u, 1u, 23653u)) % vec4<u32>(32u))), ~(-vec4<i32>(-14250i, ~1i, countOneBits(var_0.c), 0i)));
    return select(~(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36525u, 42694u, global3.x, 46880u), vec4<u32>(1u, 77858u, 4294967295u, 6770u)), countOneBits(vec4<u32>(58491u, global4.b.x, 4294967295u, 1u)))), vec4<u32>(_wgslsmith_mult_u32(4294967295u, ~var_1.b.x) | max(~0u, var_0.b.x), var_0.b.x, abs(4294967295u) | abs(~global3.x), firstTrailingBit(9461u) & var_0.b.x), true);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global4.b.x, 19u)], global0.x);
    let var_1 = ~func_3();
    global1 = array<f32, 19>();
    global2 = vec3<bool>(!global4.a.x, !(var_0 == -1787f), select(false, select(false, global2.x, all(select(vec4<bool>(global4.a.x, global2.x, true, true), vec4<bool>(global4.a.x, arg_0.a.x, global2.x, global4.a.x), vec4<bool>(global2.x, true, false, false)))), !any(global4.a)));
    global2 = global4.a;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> bool {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(-105f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(-1071f * global1[_wgslsmith_index_u32(13686u, 19u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) + _wgslsmith_f_op_f32(max(-476f, 203f)))) + _wgslsmith_f_op_f32(ceil(1000f))));
    var var_1 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_1.c, ~arg_1.c), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3634i, arg_0.c, -14954i), vec3<i32>(arg_1.c, 17128i, 29926i)), 0i, arg_1.c)), -((arg_2 << (~global3.yzy % vec3<u32>(32u))) ^ arg_2));
    return true;
}

fn func_1() -> vec2<u32> {
    global2 = vec3<bool>(!(all(select(vec4<bool>(true, global4.a.x, global2.x, global4.a.x), vec4<bool>(true, true, false, global2.x), true)) & func_4(Struct_1(vec3<bool>(false, true, global2.x), global3.yz, 35179i), func_2(Struct_1(global4.a, vec2<u32>(global3.x, 4294967295u), global4.c)), select(vec3<i32>(-31314i, u_input.a, 1i), vec3<i32>(u_input.a, -8118i, -35000i), vec3<bool>(global2.x, global2.x, global2.x)), global3.x << (global4.b.x % 32u))), select(false, ~2147483647i < ~(-35407i | u_input.c.x), false), !global2.x | all(vec4<bool>(false, true, 2647f <= global1[_wgslsmith_index_u32(11265u, 19u)], all(vec3<bool>(global4.a.x, true, global2.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1169f, global0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(185f, global1[_wgslsmith_index_u32(global3.x, 19u)], global0.x), vec3<f32>(global1[_wgslsmith_index_u32(global3.x, 19u)], global0.x, -341f))), any(vec4<bool>(global2.x, global4.a.x, false, global2.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(1179u, 19u)], global0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(502f, -1570f, -371f)))))));
    let var_0 = Struct_1(global4.a, vec2<u32>(_wgslsmith_mult_u32(min(_wgslsmith_div_u32(1u, global3.x), 1u), 1u), 0u), global4.c);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-154f, global0.x, 884f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1118f, 1000f, global1[_wgslsmith_index_u32(var_0.b.x, 19u)]) - vec3<f32>(-1788f, global1[_wgslsmith_index_u32(global4.b.x, 19u)], global0.x)))))));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_0.b.x), func_3().x), 19u)], global0.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global0.x, global0.x), vec3<f32>(1223f, -968f, global1[_wgslsmith_index_u32(var_0.b.x, 19u)]))), vec3<f32>(-1649f, -1464f, global1[_wgslsmith_index_u32(2875u, 19u)]), var_0.a.x || true)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(117f, global0.x, global0.x), vec3<f32>(1165f, global0.x, -1909f)))))));
    return ~vec2<u32>(~max(_wgslsmith_clamp_u32(68484u, global4.b.x, 4294967295u), 1u), 1610u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<u32>(61154u, global4.b.x, max(~(~(~global3.x)), global4.b.x), global4.b.x);
    let var_0 = vec3<i32>((~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x) << (~global4.b.x % 32u)) & u_input.a, ~(-(u_input.b << (4294967295u % 32u))) >> (~0u % 32u), ~global4.c);
    global2 = vec3<bool>((_wgslsmith_dot_vec2_u32(func_1(), func_2(Struct_1(vec3<bool>(global4.a.x, false, global2.x), global3.ww, global4.c)).b) & global3.x) != ~abs(19212u), true, global2.x);
    var var_1 = global3.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-348f * global0.x), global0.x)), 501f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-645f, -1748f, -1672f)))));
    var var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(var_0.x, -2147483647i), u_input.a, -global4.c), firstLeadingBit(reverseBits(vec4<i32>(u_input.a, 8922i, global4.c, var_0.x)) >> (~vec4<u32>(global4.b.x, 1u, global4.b.x, global4.b.x) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global4.c | u_input.c.x, firstTrailingBit(0i)), select(vec2<i32>(1i, 0i), vec2<i32>(u_input.b, -3479i), global4.a.yz)), var_0.zy));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(28498u, 19u)], global0.x, 593f, -1011f) - vec4<f32>(global1[_wgslsmith_index_u32(global4.b.x, 19u)], global0.x, 595f, global0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 19u)], -738f, 340f) * vec4<f32>(global0.x, global0.x, 656f, -104f)))), select(!vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, global4.a.x, global4.a.x, global2.x), vec4<bool>(true, global4.a.x, true, global4.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-849f)), global0.x))), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global4.b.x, 19u)])))));
}

