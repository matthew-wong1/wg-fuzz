struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
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

var<private> global0: array<i32, 22> = array<i32, 22>(-1i, 0i, -4181i, 1i, 1i, 12486i, 8557i, -34110i, 58463i, 26186i, -30789i, 2147483647i, 10228i, -61470i, 26482i, -1i, -34334i, -47207i, -1i, i32(-2147483648), 2147483647i, 2147483647i);

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 6081u, 32720u, 0u, 4294967295u, 52095u, 1u, 1u, 108640u, 0u, 4294967295u, 6062u, 47320u, 60157u, 0u, 4294967295u, 0u, 72264u, 4294967295u, 34485u);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(36837i, -2981i), -480f, vec2<u32>(0u, 47136u), vec4<f32>(1000f, 624f, -153f, 769f), vec3<i32>(19448i, 0i, 25177i));

var<private> global3: u32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec2<bool> {
    return !vec2<bool>(true, false & any(vec2<bool>(true, true)));
}

fn func_3() -> bool {
    global0 = array<i32, 22>();
    global2 = Struct_1(select(vec2<i32>(_wgslsmith_mod_i32(813i, global0[_wgslsmith_index_u32(~4294967295u, 22u)]), u_input.c), vec2<i32>(countOneBits(-u_input.c), 17317i ^ min(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.x, 20u)], 22u)], -16816i)), true), global2.d.x, ~global2.c, global2.d, firstLeadingBit(vec3<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, global2.e.x), 1i, _wgslsmith_dot_vec3_i32(global2.e, global2.e)), global0[_wgslsmith_index_u32(u_input.b, 22u)])));
    let var_0 = 52446u;
    let var_1 = Struct_1(vec2<i32>(global2.a.x, ~(-21901i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d.x))), reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(select(~28391u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b), func_1(vec4<u32>(1u, u_input.b, global2.c.x, u_input.b), vec2<u32>(10304u, global1[_wgslsmith_index_u32(u_input.b, 20u)])).x), 20u)], ~global2.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-279f)) - _wgslsmith_div_f32(-1410f, -823f)) - global2.b), 1592f, _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(global2.b - global2.b)), _wgslsmith_f_op_f32(exp2(global2.b))), _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, 25036i ^ _wgslsmith_sub_i32(global2.e.x, global0[_wgslsmith_index_u32(var_0, 22u)]), ~global2.e.x), vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(global2.e), ~global2.e), max(global0[_wgslsmith_index_u32(~1u, 22u)], -2147483647i), select(select(-9926i, 0i, false), -2147483647i, true))));
    var var_2 = vec2<bool>(true & (any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) & (~10716i >= _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(var_1.c.x, 22u)]))), any(!select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))));
    return !select(any(select(vec4<bool>(false, true, var_2.x, true), select(vec4<bool>(true, var_2.x, false, true), vec4<bool>(false, true, true, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true)), !var_2.x)), all(!vec2<bool>(var_2.x, var_2.x)), select(true, _wgslsmith_f_op_f32(min(global2.d.x, -1853f)) <= -340f, -1040i >= var_1.a.x));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = Struct_1(~vec2<i32>(-2147483647i, -6708i), _wgslsmith_f_op_f32(arg_0 * 1090f), min(~global2.c | global2.c, _wgslsmith_add_vec2_u32(select(global2.c, _wgslsmith_clamp_vec2_u32(global2.c, global2.c, global2.c), vec2<bool>(true, true)), vec2<u32>(global2.c.x, 4294967295u) & global2.c)), global2.d, global2.e);
    global2 = Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-159f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - 518f)) - _wgslsmith_f_op_f32(sign(global2.d.x))), vec2<u32>(select(global1[_wgslsmith_index_u32(~abs(global2.c.x), 20u)], firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 20u)], 20u)] >> (global1[_wgslsmith_index_u32(u_input.b, 20u)] % 32u)), func_3()), min(firstTrailingBit(~1302u), select(_wgslsmith_mult_u32(0u, u_input.b), 0u, -379f < arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1254f, 1379f, _wgslsmith_f_op_f32(-global2.d.x), -772f))), vec3<i32>(_wgslsmith_div_i32(-(0i & global2.a.x), 1i >> (firstTrailingBit(0u) % 32u)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 22u)], 1i));
    global0 = array<i32, 22>();
    let var_0 = Struct_2(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(71131u, global1[_wgslsmith_index_u32(global2.c.x, 20u)], u_input.b), vec3<u32>(12604u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], 73511u))), 22u)], 3908i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_0, arg_0))) - _wgslsmith_f_op_f32(min(-249f, -729f))), global2.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b, 1700f, arg_0, arg_0))))), global2.e), Struct_1(u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1795f * _wgslsmith_f_op_f32(max(-131f, -324f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global2.d.x, global2.b))))), _wgslsmith_sub_vec2_u32(vec2<u32>(26360u, 4294967295u) | (global2.c << (global2.c % vec2<u32>(32u))), global2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d - global2.d)), (vec3<i32>(2147483647i, -756i, 36822i) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.x, 20u)], 20u)], 9980u, global2.c.x) % vec3<u32>(32u))) ^ global2.e), select(func_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, global2.c.x, global1[_wgslsmith_index_u32(global2.c.x, 20u)]), vec4<u32>(global2.c.x, 1u, u_input.b, u_input.b)), ~countOneBits(global2.c)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(548f * global2.d.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), false))));
    let var_1 = _wgslsmith_f_op_f32(var_0.a.d.x + arg_0);
    return Struct_2(Struct_1(vec2<i32>(var_0.a.a.x, abs(-2147483647i)), _wgslsmith_f_op_f32(ceil(var_1)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.c.x, var_0.a.c.x), ~vec2<u32>(1u, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 467f, var_1, 602f)), _wgslsmith_f_op_vec4_f32(global2.d - vec4<f32>(var_1, global2.b, var_1, global2.b)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, 526f, var_0.b.d.x, -1603f))), ~var_0.a.e), var_0.b, true);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.e.x, global2.e.x) >> (arg_2.a.c % vec2<u32>(32u)), select(reverseBits(arg_1.a.a), arg_2.a.e.xx, vec2<bool>(true, false)), vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~34881u, firstLeadingBit(u_input.b)), 22u)], -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(994f - _wgslsmith_f_op_f32(arg_1.a.b + arg_2.b.d.x))))), firstTrailingBit(func_2(global2.d.x).b.c & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global2.c, vec2<u32>(18419u, 52545u)), arg_0.a.c)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(663f, arg_2.a.d.x, _wgslsmith_f_op_f32(-func_2(arg_1.b.d.x).b.b), _wgslsmith_f_op_f32(2096f - _wgslsmith_f_op_f32(floor(arg_1.a.d.x)))))), _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_clamp_i32(1i, arg_1.a.e.x, 67766i), -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 22u)], arg_3.x), ~(u_input.c | -44584i)), arg_3));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1.a.d.x)), arg_0.b.b))));
    let var_2 = arg_0.a;
    global2 = Struct_1(vec2<i32>(0i, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b - var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -677f))), 1000f)), var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.d)) * _wgslsmith_f_op_vec4_f32(var_2.d * var_0.d)))), global2.e);
    global3 = ~(~var_0.c.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 20>();
    let var_0 = !select(func_1(~firstLeadingBit(vec4<u32>(4294967295u, 78669u, 36586u, global1[_wgslsmith_index_u32(30129u, 20u)])), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(77157u, global2.c.x)), ~global2.c)), func_1(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.c.x, 4294967295u, 18986u, 10705u), vec4<u32>(1u, 14572u, u_input.b, 6560u)), vec2<u32>(~14021u, 1u)), vec2<bool>(false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true))));
    global2 = func_4(func_2(global2.b), func_2(-438f), Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_add_vec2_u32(max(global2.c, global2.c), vec2<u32>(global1[_wgslsmith_index_u32(u_input.b, 20u)], 69832u)), func_2(_wgslsmith_f_op_f32(-global2.d.x)).b.d, global2.e), func_2(-384f).a, _wgslsmith_dot_vec2_i32(max(vec2<i32>(1i, u_input.c), u_input.a), _wgslsmith_sub_vec2_i32(global2.a, vec2<i32>(-1i, global0[_wgslsmith_index_u32(global2.c.x, 22u)]))) >= -31902i), reverseBits(global2.e));
    global2 = Struct_1(vec2<i32>(global2.a.x & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 22u)], 5385i), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.x, 20u)], 22u)])), _wgslsmith_mult_i32(u_input.a.x, global2.a.x)), -_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global2.e.x, 1i, 2147483647i), vec4<i32>(-11797i, 2147483647i, 9607i, 1i)), firstTrailingBit(vec4<i32>(-55558i, global2.e.x, -1i, -1i)))), func_2(func_4(Struct_2(func_4(Struct_2(Struct_1(global2.e.zx, -1051f, vec2<u32>(1u, 86385u), global2.d, global2.e), Struct_1(u_input.a, -1348f, global2.c, vec4<f32>(global2.b, global2.d.x, 812f, global2.b), global2.e), false), Struct_2(Struct_1(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(36827u, 22u)]), global2.b, global2.c, global2.d, vec3<i32>(global2.e.x, global0[_wgslsmith_index_u32(15725u, 22u)], 43397i)), Struct_1(vec2<i32>(41477i, global0[_wgslsmith_index_u32(68766u, 22u)]), 726f, global2.c, vec4<f32>(global2.d.x, -614f, -250f, 1057f), vec3<i32>(-6129i, u_input.c, -1i)), true), Struct_2(Struct_1(vec2<i32>(0i, 1i), global2.d.x, global2.c, global2.d, vec3<i32>(-2147483647i, global2.a.x, -74176i)), Struct_1(global2.e.zx, -506f, global2.c, global2.d, global2.e), false), vec3<i32>(u_input.c, -1i, global0[_wgslsmith_index_u32(u_input.b, 22u)])), Struct_1(vec2<i32>(u_input.a.x, u_input.c), -604f, global2.c, global2.d, global2.e), var_0.x), func_2(global2.b), Struct_2(Struct_1(u_input.a, 1558f, global2.c, vec4<f32>(664f, -1804f, -521f, 1201f), global2.e), func_2(-666f).a, var_0.x), vec3<i32>(countOneBits(1i), global2.e.x ^ global0[_wgslsmith_index_u32(47751u, 22u)], -2147483647i)).b).b.b, global2.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(func_4(Struct_2(Struct_1(u_input.a, global2.b, vec2<u32>(u_input.b, u_input.b), vec4<f32>(2600f, global2.d.x, global2.b, 307f), vec3<i32>(-37409i, 2147483647i, global2.a.x)), Struct_1(u_input.a, -1000f, global2.c, vec4<f32>(-689f, -619f, global2.d.x, global2.b), global2.e), false), Struct_2(Struct_1(vec2<i32>(-21952i, -3511i), global2.d.x, global2.c, global2.d, global2.e), Struct_1(global2.e.zx, global2.d.x, vec2<u32>(u_input.b, 37605u), vec4<f32>(-315f, global2.d.x, 1968f, -1000f), global2.e), true), Struct_2(Struct_1(global2.e.xz, global2.d.x, global2.c, global2.d, global2.e), Struct_1(global2.a, global2.d.x, global2.c, vec4<f32>(global2.d.x, global2.d.x, global2.d.x, global2.d.x), global2.e), var_0.x), vec3<i32>(u_input.a.x, 0i, u_input.c)).d, vec4<f32>(global2.b, global2.b, 1043f, 205f), !vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(global2.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.d))), vec4<bool>(true, var_0.x, false, var_0.x))), -global2.e);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -975f);
    var var_2 = func_2(func_2(-792f).a.b);
    var var_3 = func_2(-794f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.d.zx);
}

