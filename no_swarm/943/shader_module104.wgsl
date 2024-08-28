struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: i32,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: array<bool, 9> = array<bool, 9>(false, true, false, false, false, false, false, true, false);

var<private> global2: array<f32, 26>;

var<private> global3: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(1i, -40851i, 80145i, -1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = u_input.e.zx << (~abs(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(arg_0, arg_0), arg_0)) % vec2<u32>(32u));
    var_0 = u_input.e.xx;
    let var_1 = vec2<u32>(1u, u_input.b);
    var_0 = vec2<i32>(-10961i, 1i);
    let var_2 = 1u;
    return -_wgslsmith_mod_vec3_i32(~u_input.e.wyx, _wgslsmith_sub_vec3_i32(~u_input.e.xwz, firstTrailingBit(u_input.e.xzy & vec3<i32>(-1i, var_0.x, 0i))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> vec3<i32> {
    global3 = array<vec4<i32>, 1>();
    global3 = array<vec4<i32>, 1>();
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1198f))), 1299f)))));
    let var_2 = !arg_0.x;
    return vec3<i32>(abs(max(var_0.x, arg_2.a.x)), u_input.d, u_input.e.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32) -> vec2<i32> {
    global0 = array<vec4<u32>, 29>();
    var var_0 = 10797i;
    global3 = array<vec4<i32>, 1>();
    global3 = array<vec4<i32>, 1>();
    let var_1 = select(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.a, u_input.b), abs(vec3<u32>(0u, 0u, u_input.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(53194u, 3306u, 16608u), vec3<u32>(u_input.b, u_input.a, u_input.b))), firstLeadingBit(vec3<u32>(u_input.b, 23067u, 60991u))), vec3<u32>(u_input.b, u_input.b, max(1u, u_input.b)), vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a, 9u)], true, !(1i == _wgslsmith_add_i32(u_input.e.x, u_input.d))));
    return firstTrailingBit(vec2<i32>(-_wgslsmith_clamp_i32(~arg_0.x, 2513i, -88538i << (var_1.x % 32u)), -(~(-1757i))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global2 = array<f32, 26>();
    let var_0 = Struct_1(select(_wgslsmith_div_vec4_i32(~global3[_wgslsmith_index_u32(19066u, 1u)], -global3[_wgslsmith_index_u32(1u, 1u)]), vec4<i32>(-1i) * -global3[_wgslsmith_index_u32(u_input.b, 1u)], !global1[_wgslsmith_index_u32(arg_1.a.x, 9u)] || true) & ~(vec4<i32>(-2147483647i, u_input.d, 34419i, u_input.c) >> (vec4<u32>(arg_1.a.x, 4294967295u, u_input.a, 34633u) % vec4<u32>(32u))), reverseBits(max(u_input.e.xxy, u_input.e.wxy)), func_4(min(~u_input.e.zzw, func_3(vec2<bool>(true, true), arg_0.x && true, Struct_1(global3[_wgslsmith_index_u32(1u, 1u)], u_input.e.wyx, vec2<i32>(u_input.e.x, 708i), arg_1.a.x, global1[_wgslsmith_index_u32(u_input.a, 9u)]))), 1f), arg_1.a.x, !any(select(!arg_0.zx, select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 9u)], arg_0.x), arg_0.xz, arg_0.xy), global1[_wgslsmith_index_u32(abs(1u), 9u)])));
    let var_1 = countOneBits(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 1i), _wgslsmith_mod_vec2_i32(var_0.a.wx, u_input.e.xw) & var_0.c)));
    let var_2 = vec2<i32>(-16389i, _wgslsmith_add_i32(_wgslsmith_div_i32(i32(-1i) * -33623i, var_1.x), _wgslsmith_sub_i32(u_input.e.x, 0i) << (var_0.d % 32u))) & max(~_wgslsmith_clamp_vec2_i32(abs(u_input.e.yw), vec2<i32>(-1i, var_1.x), ~var_1), ~_wgslsmith_add_vec2_i32(var_0.b.yx >> (arg_1.a % vec2<u32>(32u)), vec2<i32>(u_input.d, -47551i) ^ vec2<i32>(u_input.d, var_0.a.x)));
    let var_3 = _wgslsmith_mod_vec3_u32(~select(~(~vec3<u32>(0u, 25503u, u_input.b)), vec3<u32>(41229u, u_input.a, _wgslsmith_add_u32(4294967295u, arg_1.a.x)), vec3<bool>(false, false, var_0.a.x >= -1i)), vec3<u32>(u_input.a, 1u >> (~u_input.b % 32u), var_0.d));
    return _wgslsmith_clamp_u32(80189u, arg_1.a.x, abs(min(~_wgslsmith_mult_u32(26397u, 44609u), var_0.d)));
}

fn func_5(arg_0: bool) -> Struct_2 {
    return Struct_2(vec2<u32>(43582u << (~reverseBits(u_input.b) % 32u), 3168u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(u_input.e, func_1(firstLeadingBit(~vec2<u32>(u_input.b, 29734u))), vec2<i32>(u_input.c, -1i), 66399u, true), Struct_3(u_input.b, !vec4<bool>(-1080f == global2[_wgslsmith_index_u32(23617u, 26u)], true, !global1[_wgslsmith_index_u32(18745u, 9u)], false), !vec2<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 9u)])), false), func_5(reverseBits(0u) == func_2(vec3<bool>(false, global1[_wgslsmith_index_u32(58118u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), Struct_2(vec2<u32>(u_input.a, 26701u))))), ~0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1490f, global2[_wgslsmith_index_u32(5979u, 26u)])) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(0u, 26u)]))))), Struct_3(~u_input.a, vec4<bool>(!(!global1[_wgslsmith_index_u32(u_input.a, 9u)]), true, true, true), !select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(26572u, 9u)]), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]))), Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(4294967295u, 0u)))));
    var var_1 = Struct_5(Struct_1(vec4<i32>(u_input.e.x, var_0.a.c.x, countOneBits(var_0.a.b.x), countOneBits(u_input.e.x)) & -vec4<i32>(2147483647i, 28120i, var_0.a.c.x, var_0.c), select(var_0.a.b, select(_wgslsmith_add_vec3_i32(var_0.a.b, vec3<i32>(var_0.a.b.x, u_input.c, -2147483647i)), u_input.e.xzx, var_0.e.b.ywx), true), u_input.e.zz, 81353u, true), Struct_3(u_input.a, select(vec4<bool>(!var_0.a.e, var_0.e.b.x, false, 1045f > var_0.d.x), vec4<bool>(var_0.c < u_input.c, var_0.e.c.x, var_0.b.c.x, var_0.e.b.x || false), false), var_0.b.b.wy, Struct_2(reverseBits(vec2<u32>(u_input.b, u_input.a)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.c, ~(~u_input.d)), func_1(firstTrailingBit(vec2<u32>(12537u, 92360u)) ^ abs(vec2<u32>(4294967295u, var_0.b.d.a.x))).x, -(~_wgslsmith_clamp_i32(25821i, 28966i, var_0.c))), _wgslsmith_f_op_vec2_f32(ceil(var_0.d)), Struct_3(61817u, !select(vec4<bool>(true, false, true, var_0.a.e), select(var_0.b.b, var_0.b.b, var_0.b.b), select(vec4<bool>(false, var_0.b.b.x, true, var_0.b.c.x), var_0.b.b, vec4<bool>(var_0.b.b.x, false, global1[_wgslsmith_index_u32(34934u, 9u)], true))), var_0.b.b.xx, var_0.e.d));
    var var_2 = var_1.b;
    var var_3 = var_0;
    var_3 = var_0;
    let var_4 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(var_1.a.d, 1u)]);
}

