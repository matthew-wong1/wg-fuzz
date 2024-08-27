struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(i32(-2147483648), -7284i, 2147483647i, -16144i, 1i, -7013i, 1i, 0i, -1i, -5876i, i32(-2147483648), -38324i, 0i, 0i, -5479i, -1i, 11026i, 2147483647i, -27198i, -45124i, -12420i, 52557i);

var<private> global1: i32;

var<private> global2: vec4<i32>;

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 1i, 0i, -22307i);

var<private> global4: i32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<i32> {
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_0 = Struct_1(global2.wyz, _wgslsmith_div_u32(5185u, 1u), global2.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f));
    global4 = -1i;
    return vec4<i32>(_wgslsmith_mod_i32(59248i, _wgslsmith_add_i32(-1i >> (var_0.b % 32u), global2.x)) & 17385i, 1i, countOneBits(-1i), countOneBits(var_0.c));
}

fn func_3() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-582f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-681f * -277f), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1107f)) - 552f)))), _wgslsmith_f_op_f32(trunc(-315f)));
    let var_1 = Struct_4(Struct_1(global2.xxz, abs(~94724u) & ~(~u_input.a.x), 0i), Struct_3(var_0.x), Struct_1(-_wgslsmith_mult_vec3_i32(func_2().wyy, func_2().wwx), u_input.a.x, select(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.x, global3.x, 11530i, 2147483647i), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 13677i, global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), ~global2.x, false)), Struct_1(global2.zwy, select(101964u, 1u, var_0.x > 819f) >> (4294967295u % 32u), global3.x), _wgslsmith_mult_i32(global2.x, global2.x));
    global2 = min((vec4<i32>(~global0[_wgslsmith_index_u32(var_1.a.b, 22u)], global2.x, global2.x, select(global2.x, -2147483647i, true)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -26854i, global0[_wgslsmith_index_u32(7244u, 22u)], var_1.d.a.x), vec4<i32>(-4054i, global2.x, 2147483647i, -17736i))) << ((_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.b, u_input.a.x, var_1.a.b, 1u), vec4<u32>(29523u, 40163u, 0u, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 40442u) << (vec4<u32>(var_1.a.b, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) & abs(~vec4<u32>(var_1.a.b, u_input.a.x, var_1.c.b, 18102u))) % vec4<u32>(32u)), vec4<i32>(i32(-1i) * -1i, -38064i, _wgslsmith_dot_vec3_i32(var_1.c.a, countOneBits(countOneBits(vec3<i32>(global3.x, 0i, var_1.e)))), firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.a.b, var_1.c.b, u_input.a.x), vec4<u32>(var_1.d.b, 45780u, 1u, u_input.a.x)) << (var_1.d.b % 32u), 22u)])));
    global1 = max(_wgslsmith_sub_i32(global2.x, global2.x), ~(~_wgslsmith_clamp_i32(-1i, 2068i, global0[_wgslsmith_index_u32(0u, 22u)]))) | reverseBits(min(i32(-1i) * -29475i, -32719i));
    global0 = array<i32, 22>();
    return 34188i;
}

fn func_1() -> vec2<bool> {
    global1 = 25068i;
    global3 = min(min(_wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(-39067i, global2.x, global3.x, global3.x)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, global0[_wgslsmith_index_u32(0u, 22u)], global2.x, 33136i), -vec4<i32>(global0[_wgslsmith_index_u32(1u, 22u)], global2.x, 6676i, 2147483647i)), func_2()), vec4<i32>(_wgslsmith_mult_i32(select(global3.x, 0i, true), abs(2147483647i)), -global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global2.x, global2.x)), vec4<i32>(firstLeadingBit(global2.x), -1i, func_3() << (~4294967295u % 32u), select(-global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true)) | ~select(vec4<i32>(global3.x, -17929i, -43472i, global3.x), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, global3.x, -16008i, global2.x), vec4<i32>(global3.x, global3.x, global2.x, -13081i)), select(false, true, false)));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-929f * 1353f)));
    var var_1 = ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(~(~18140u), u_input.a.x), abs(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x & u_input.a.x)), ~firstTrailingBit(0u));
    let var_2 = Struct_1(global2.yxy, u_input.a.x, -global2.x);
    return vec2<bool>(false, 0i == _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(global2.x, var_2.a.x)), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(35968u, 22u)] | -2147483647i, _wgslsmith_dot_vec2_i32(var_2.a.zx, vec2<i32>(-31558i, global2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = abs(reverseBits(-23898i));
    global1 = -12352i;
    global0 = array<i32, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1675f, 383f), vec2<f32>(-2095f, 249f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1265f, 895f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1020f, -295f), vec2<f32>(-334f, 636f), false)), func_1())))));
    var var_1 = Struct_4(Struct_1(vec3<i32>((-35126i >> (u_input.a.x % 32u)) << (27950u % 32u), 2147483647i, -4532i), firstTrailingBit(~u_input.a.x & (u_input.a.x >> (u_input.a.x % 32u))), 0i), Struct_3(_wgslsmith_f_op_f32(floor(-627f))), Struct_1(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -15414i, global3.x), func_2().x, 1i), firstTrailingBit(0u), ~(abs(-32771i) >> (countOneBits(1u) % 32u))), Struct_1(abs(vec3<i32>(global2.x, ~global0[_wgslsmith_index_u32(4294967295u, 22u)], abs(global0[_wgslsmith_index_u32(70806u, 22u)]))), 84644u, ~global3.x << (30458u % 32u)), global3.x);
    let var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-653f + var_2.a)) * var_2.a)));
}

