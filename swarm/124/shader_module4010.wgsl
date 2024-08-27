struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

var<private> global2: array<bool, 17>;

var<private> global3: Struct_4;

var<private> global4: array<i32, 30> = array<i32, 30>(25441i, -1i, -1i, -1597i, -1i, 2147483647i, 2147483647i, -26566i, 1i, 0i, -26229i, 3528i, -43720i, 1i, i32(-2147483648), -34163i, i32(-2147483648), 43444i, 21028i, -1i, -1i, -1i, 40192i, 0i, 621i, -1i, 7586i, 1i, -22438i, 8594i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_4(arg_2.a);
    let var_1 = arg_2;
    global4 = array<i32, 30>();
    var var_2 = Struct_4(Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(arg_2.b.x, 17u)]), _wgslsmith_mult_i32(-(~0i), arg_0)));
    var var_3 = _wgslsmith_f_op_f32(sign(2226f));
    return reverseBits(35132u);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    global3 = Struct_4(Struct_1(vec2<bool>(!all(global0.a.a), global3.a.a.x), abs(-1i)));
    let var_1 = global0.a.a.x;
    var var_2 = Struct_3(Struct_2(global0.a, vec4<u32>(~(u_input.b.x & 4294967295u), _wgslsmith_mod_u32(abs(u_input.b.x), ~51297u), ~u_input.b.x >> (1u % 32u), firstTrailingBit(func_3(var_0, -1366f, Struct_2(Struct_1(global0.a.a, global4[_wgslsmith_index_u32(0u, 30u)]), vec4<u32>(16851u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-58388i, var_0, u_input.a, -1i), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], true, false, true), global2[_wgslsmith_index_u32(60272u, 17u)])))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 4315i, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.b, -2147483647i), vec2<i32>(global4[_wgslsmith_index_u32(0u, 30u)], 658i)), var_0), vec4<i32>(31083i, -1i, global4[_wgslsmith_index_u32(u_input.b.x, 30u)] << (55889u % 32u), -1i)), vec4<bool>(true, true, true, true), true), max(abs(vec3<u32>(1u, 1u, 1u)), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(-934f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1078f, -260f)))), _wgslsmith_f_op_f32(floor(667f)), _wgslsmith_f_op_f32(ceil(-1403f))), Struct_2(Struct_1(vec2<bool>(true, all(vec2<bool>(true, global3.a.a.x))), reverseBits(1i << (u_input.b.x % 32u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(42451u, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, 8258u, 9888u, 80948u)), vec4<i32>(u_input.a, 66956i, _wgslsmith_clamp_i32(global0.a.b ^ -2147483647i, abs(-19435i), ~(-43067i)), -global3.a.b), vec4<bool>(!all(vec4<bool>(true, true, global0.a.a.x, global0.a.a.x)), global0.a.a.x, global3.a.a.x, global0.a.a.x), !global3.a.a.x));
    global4 = array<i32, 30>();
    return Struct_2(Struct_1(vec2<bool>((u_input.b.x & var_2.b.x) <= abs(37310u), !any(var_2.a.d)), 1i), firstTrailingBit(~min(vec4<u32>(u_input.b.x, u_input.b.x, 36547u, var_2.d.b.x), var_2.d.b)), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.a.b, -1i), abs(vec2<i32>(u_input.a, 14988i))), select(~global3.a.b, var_0, true), ~34160i << (_wgslsmith_add_u32(86836u, u_input.b.x) % 32u)), _wgslsmith_div_i32(-43637i, _wgslsmith_mult_i32(49343i, global0.a.b)), _wgslsmith_mult_i32(abs(~global0.a.b), 16308i), global4[_wgslsmith_index_u32(var_2.a.b.x, 30u)]), var_2.d.d, (firstTrailingBit(1u) <= (_wgslsmith_sub_u32(12293u, u_input.b.x) | 4294967295u)) || any(var_2.a.d.yzy));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = ~arg_2.a.c.wxz & (arg_2.d.c.xxx & ~abs(~arg_2.a.c.wwx));
    global3 = Struct_4(global3.a);
    let var_1 = firstTrailingBit(max(countOneBits(arg_2.d.c.wyx), -vec3<i32>(arg_1, u_input.a, global0.a.b)) | vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-49260i, 0i, u_input.a), _wgslsmith_mult_i32(global0.a.b, 1i)), 1i, -var_0.x));
    var var_2 = arg_2;
    var var_3 = 1000f;
    return arg_2;
}

fn func_1(arg_0: bool) -> Struct_3 {
    var var_0 = 4294967295u;
    return func_4(_wgslsmith_dot_vec2_u32(u_input.b.yy, ~u_input.b.yy ^ (u_input.b.yy ^ vec2<u32>(30895u, u_input.b.x))) | ~4294967295u, -17522i, Struct_3(func_2(), _wgslsmith_mod_vec3_u32(~vec3<u32>(73502u, 1u, u_input.b.x), vec3<u32>(abs(4294967295u), max(8533u, u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-312f, -1071f, true))), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1558f, -1827f)) + 1594f)), Struct_2(global0.a, ~vec4<u32>(u_input.b.x, 4294967295u, 5557u, 47553u), _wgslsmith_sub_vec4_i32(func_2().c, vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 30u)], -1i, -31797i, -72981i)), !vec4<bool>(false, true, arg_0, global3.a.a.x), true)));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = arg_0.c.zx;
    let var_1 = u_input.b.yz;
    let var_2 = arg_0.a.a;
    global3 = Struct_4(func_1(func_2().d.x).d.a);
    let var_3 = arg_0.d;
    return Struct_4(Struct_1(global3.a.a, _wgslsmith_mod_i32(87062i, _wgslsmith_sub_i32(func_1(false).d.c.x, -27821i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(global3.a.a.x), func_2().b.xww, global3.a);
    let var_1 = Struct_3(Struct_2(var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 35663u, 0u, 4294967295u) | (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u) >> (vec4<u32>(u_input.b.x, 1230u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(u_input.b.x, u_input.b.x << (69291u % 32u), _wgslsmith_sub_u32(82481u, u_input.b.x), 0u)), ~vec4<i32>(var_0.a.b, global0.a.b, -34292i, global3.a.b) & vec4<i32>(-40157i, global0.a.b, var_0.a.b, u_input.a >> (1u % 32u)), !vec4<bool>(false, global3.a.a.x, !var_0.a.a.x, false), _wgslsmith_f_op_f32(-355f * _wgslsmith_f_op_f32(select(338f, -2082f, global2[_wgslsmith_index_u32(43656u, 17u)]))) <= _wgslsmith_f_op_f32(select(2309f, _wgslsmith_f_op_f32(step(1821f, -1784f)), true))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(global0.a.a.x).c)), Struct_2(var_0.a, vec4<u32>(countOneBits(u_input.b.x), u_input.b.x ^ 50481u, _wgslsmith_clamp_u32(5630u, 0u, u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, 52453u)) ^ vec4<u32>(func_3(21680i, 302f, Struct_2(Struct_1(global0.a.a, global3.a.b), vec4<u32>(74682u, u_input.b.x, 23510u, u_input.b.x), vec4<i32>(1i, global0.a.b, global4[_wgslsmith_index_u32(u_input.b.x, 30u)], global4[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec4<bool>(global3.a.a.x, true, false, var_0.a.a.x), false)), ~1u, 11797u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(70039u, u_input.b.x, u_input.b.x))), ~(-(vec4<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.b.x, 30u)], global4[_wgslsmith_index_u32(u_input.b.x, 30u)], 1i) << (vec4<u32>(u_input.b.x, 36266u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))), vec4<bool>(true, all(vec3<bool>(true, var_0.a.a.x, global3.a.a.x)), !all(vec3<bool>(true, global0.a.a.x, global3.a.a.x)), _wgslsmith_mult_i32(-41325i, var_0.a.b) == ~var_0.a.b), !var_0.a.a.x));
    var var_2 = !var_1.a.d;
    let var_3 = !var_1.a.d.xwx;
    var var_4 = vec4<i32>(-1i) * -reverseBits(abs(vec4<i32>(-11386i, u_input.a, 41542i, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.b, vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-448f, var_1.c.x)) + _wgslsmith_f_op_f32(-1082f - 338f))), -966f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-209f, _wgslsmith_f_op_f32(round(766f))))), _wgslsmith_f_op_f32(-var_1.c.x)));
}

