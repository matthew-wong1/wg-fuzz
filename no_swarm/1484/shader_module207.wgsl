struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 60703u, 0u), vec3<u32>(4294967295u, 4294967295u, 2034u), vec3<u32>(1u, 0u, 27659u), vec3<u32>(18616u, 4294967295u, 10194u), vec3<u32>(49923u, 69243u, 2365u));

var<private> global1: array<i32, 18>;

var<private> global2: vec3<u32>;

var<private> global3: array<u32, 20>;

var<private> global4: vec3<f32> = vec3<f32>(-1600f, 989f, -1000f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>) -> u32 {
    let var_0 = vec2<u32>(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global2.x, max(~global3[_wgslsmith_index_u32(23851u, 20u)], _wgslsmith_mod_u32(global2.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32640u, 20u)], 20u)]))), 20u)], global2.x);
    global3 = array<u32, 20>();
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, var_0.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], 26865u), vec4<u32>(1u, 111239u, 0u, 0u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], u_input.c, 12651u, var_0.x), vec4<u32>(16099u, 0u, global2.x, 0u), vec4<u32>(u_input.c, u_input.a.x, 42894u, global2.x))) & ~_wgslsmith_add_vec4_u32(~vec4<u32>(global2.x, 33433u, 41400u, 27347u), ~vec4<u32>(global3[_wgslsmith_index_u32(var_0.x, 20u)], 0u, global2.x, u_input.c)), vec4<u32>(u_input.c, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 112098u, var_0.x), ~global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 5u)]), ~(~u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), global0[_wgslsmith_index_u32(var_0.x, 5u)]), global3[_wgslsmith_index_u32(4294967295u, 20u)], min(u_input.c, 4294967295u)), vec3<u32>(~89105u, global2.x, min(30761u, global3[_wgslsmith_index_u32(var_0.x, 20u)]))), global2.x));
    let var_2 = -(~_wgslsmith_add_i32(_wgslsmith_mult_i32(-3919i, global1[_wgslsmith_index_u32(u_input.c, 18u)]) & 1i, global1[_wgslsmith_index_u32(global2.x, 18u)]));
    var var_3 = countOneBits(abs(global0[_wgslsmith_index_u32(4294967295u, 5u)]));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = u_input.b;
    let var_1 = i32(-1i) * -max(0i, u_input.d);
    var var_2 = Struct_2(Struct_1(1u, -987f), Struct_1(_wgslsmith_mult_u32(~2619u | ~u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(136250u, global2.x), 20u)]), 819f), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(floor(702f))), Struct_1(577u, _wgslsmith_f_op_f32(floor(global4.x))), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1488f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-var_2.b.b)) + arg_0.x);
    let var_4 = Struct_2(Struct_1(global3[_wgslsmith_index_u32(~func_3(vec4<bool>(true, false, true, false), -u_input.e.zz), 20u)], _wgslsmith_f_op_f32(-653f * global4.x)), Struct_1(7744u, 1291f), Struct_1(global3[_wgslsmith_index_u32((_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global2.x) << (~13253u % 32u)) ^ ~var_2.b.a, 20u)], var_2.d.b), Struct_1(~countOneBits(countOneBits(u_input.a.x)), _wgslsmith_f_op_f32(-1020f * -429f)), var_2.c.b);
    return _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(~(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, -28493i, u_input.e.x), vec4<i32>(var_1, global1[_wgslsmith_index_u32(1u, 18u)], 400i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), max(vec4<i32>(u_input.d, 0i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 20u)], 18u)], 36762i), vec4<i32>(-25856i, 57332i, u_input.b, var_1)))), -(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.e.xy, vec2<i32>(-26082i, global1[_wgslsmith_index_u32(27859u, 18u)])), min(-1304i, global1[_wgslsmith_index_u32(21680u, 18u)]))), ~(-u_input.b));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(arg_0.a, Struct_1(abs(~(~global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-427f - _wgslsmith_div_f32(1493f, -1012f)))), reverseBits(~1i) > _wgslsmith_clamp_i32(1i, 1i, global1[_wgslsmith_index_u32(select(62898u | arg_1.x, _wgslsmith_clamp_u32(13885u, u_input.c, 1u), arg_0.c), 18u)]));
    global3 = array<u32, 20>();
    let var_1 = abs(vec3<i32>(i32(-1i) * -38438i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(23581u, 0u), 18u)], u_input.b));
    var var_2 = !vec3<bool>(!(!any(vec2<bool>(var_0.c, true))), select(~83756u, 0u, arg_0.c) >= ~global2.x, true);
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, global4.x, -344f) * vec3<f32>(arg_0.b.b, arg_0.b.b, -671f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1226f, global4.x, 708f) + vec3<f32>(798f, 563f, arg_0.b.b)))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1418f, var_0.b.b, -1763f))))));
    return Struct_2(var_0.b, arg_0.b, var_0.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -481f))), var_0.b.b))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec4<u32> {
    let var_0 = arg_1.b;
    let var_1 = arg_2.x;
    global2 = ~(~_wgslsmith_mult_vec3_u32(abs(~global0[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 52004u, 4294967295u), global0[_wgslsmith_index_u32(~arg_3.x, 5u)])));
    var var_2 = func_4(Struct_3(vec2<i32>(_wgslsmith_clamp_i32(2147483647i, ~150i, func_2(global4.zx)), var_1), Struct_1(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u & var_0.a, 20u)], _wgslsmith_sub_u32(global2.x, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.b)) - arg_1.e)), all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, false), arg_0)) != arg_0), ~vec2<u32>(~(u_input.a.x ^ 2950u), ~_wgslsmith_mult_u32(4294967295u, 1u)));
    global1 = array<i32, 18>();
    return ~_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, 52980u, ~global3[_wgslsmith_index_u32(61547u ^ u_input.c, 20u)], 4294967295u), _wgslsmith_mult_vec4_u32(firstLeadingBit(firstLeadingBit(vec4<u32>(68463u, global2.x, global2.x, 0u))), ~vec4<u32>(1u, global3[_wgslsmith_index_u32(u_input.c, 20u)], 4294967295u, var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_vec4_i32(~(~vec4<i32>(u_input.b, -622i, u_input.d, global1[_wgslsmith_index_u32(33858u, 18u)])), ~(~vec4<i32>(-653i, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 7625i, 1i))) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 22216u, global3[_wgslsmith_index_u32(u_input.c, 20u)], 3845u) >> (vec4<u32>(37800u, 1u, 4294967295u | u_input.a.x, global2.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~func_1(true, Struct_2(Struct_1(64891u, 474f), Struct_1(global2.x, 1635f), Struct_1(68940u, 924f), Struct_1(0u, global4.x), global4.x), vec4<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 20u)], 18u)], u_input.b, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 0i), global2.yy), ~countOneBits(vec4<u32>(0u, global3[_wgslsmith_index_u32(54204u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], u_input.a.x)))) % vec4<u32>(32u));
    global2 = vec3<u32>(firstTrailingBit(~(~(~global2.x))), _wgslsmith_add_u32(u_input.c, ~global3[_wgslsmith_index_u32(func_3(vec4<bool>(false, false, false, false), var_0.yw), 20u)] | 243u), ~0u);
    global0 = array<vec3<u32>, 5>();
    global0 = array<vec3<u32>, 5>();
    var var_1 = -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e.xy, u_input.e.yz), _wgslsmith_add_vec2_i32(-(var_0.yx >> (vec2<u32>(49657u, global2.x) % vec2<u32>(32u))), u_input.e.zx << (~vec2<u32>(u_input.c, 105000u) % vec2<u32>(32u))));
    var var_2 = global2.x;
    global1 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f + _wgslsmith_f_op_f32(f32(-1f) * -585f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(715f, 476f), global4.x))), _wgslsmith_div_u32(~(~4086u), _wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)])) | ~(~u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(round(global4.x))), ~(~(~select(global2.x, u_input.c, true))), global4.x);
}

