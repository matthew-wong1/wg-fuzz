struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<bool, 5> = array<bool, 5>(false, true, true, true, false);

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global4: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: f32) -> bool {
    global2 = array<vec2<bool>, 14>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, global4.x, u_input.a.x), 0u), firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, arg_1), u_input.a.zx, vec2<u32>(1u, 4337u))) | vec2<u32>(_wgslsmith_sub_u32(3333u, u_input.b.x), u_input.b.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xxy, vec3<u32>(min(1u, global4.x), u_input.a.x, 15509u)), vec3<u32>(_wgslsmith_clamp_u32(40521u, global4.x, 4294967295u) ^ _wgslsmith_mult_u32(u_input.a.x, u_input.b.x), 1u, _wgslsmith_dot_vec2_u32(max(u_input.a.ww, u_input.a.wx), vec2<u32>(arg_1, 1u)))), firstLeadingBit(vec4<i32>(1i, (u_input.c << (75957u % 32u)) | _wgslsmith_mod_i32(-2334i, -1i), min(1i, 15798i), ~(u_input.c << (0u % 32u)))), abs(-abs(firstLeadingBit(vec4<i32>(u_input.c, u_input.c, 0i, 21348i)))), vec2<i32>(u_input.c, (i32(-1i) * -1i) | _wgslsmith_add_i32(u_input.c, u_input.c)));
    let var_1 = global0[_wgslsmith_index_u32(global4.x, 5u)];
    global3 = select(vec4<bool>((_wgslsmith_clamp_u32(var_0.b.x, arg_1, 27204u) >= ~u_input.a.x) || any(select(vec4<bool>(true, global3.x, false, true), vec4<bool>(arg_0.x, false, false, false), true)), arg_0.x, true, true), arg_0, !(!(!arg_0)));
    var var_2 = arg_0.x;
    return global1[_wgslsmith_index_u32(1u, 5u)];
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_2) -> u32 {
    global3 = vec4<bool>(global3.x, !(!(!global3.x)), func_3(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(global4.x, 5u)], true, false, arg_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 5u)], false, arg_0.x), vec4<bool>(global3.x, arg_0.x, global1[_wgslsmith_index_u32(arg_2.a.x, 5u)], arg_0.x)), vec4<bool>(false, true, false, true), !global3.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(global4.x, 35807u)), ~(~vec2<u32>(4294967295u, arg_2.a.x))), -182f), !(!select(true, arg_0.x, global3.x)));
    var var_0 = Struct_1(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 17694u), vec2<u32>(arg_2.a.x, 47448u)), u_input.b.x) ^ (_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, arg_2.a.x), max(u_input.a.xx, vec2<u32>(global4.x, 4294967295u))) ^ (u_input.a.yy >> (~vec2<u32>(u_input.b.x, arg_2.a.x) % vec2<u32>(32u)))), ~u_input.a.xyx, vec4<i32>(max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, arg_2.b), -arg_2.b), 35252i), ~14707i, _wgslsmith_div_i32(-12207i, _wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b, arg_2.b, -15297i), vec3<i32>(arg_2.b, 2147483647i, u_input.c)))), arg_2.b), (vec4<i32>(~2147483647i, -1i, arg_2.b, u_input.c) | vec4<i32>(1i, _wgslsmith_sub_i32(-10695i, 0i), 2147483647i & arg_2.b, -35316i)) ^ abs(vec4<i32>(arg_2.b >> (u_input.b.x % 32u), max(arg_2.b, arg_2.b), 4358i, ~1i)), vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(-1i, -2147483647i)));
    var var_1 = arg_1;
    global3 = select(vec4<bool>(false, false, true, global3.x), !(!vec4<bool>(global3.x & global1[_wgslsmith_index_u32(var_0.b.x, 5u)], global3.x, true, arg_0.x)), !select(!vec4<bool>(false, false, global3.x, global3.x), select(select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(29304u, 5u)], false, false), vec4<bool>(global3.x, global3.x, arg_0.x, true)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(36941u, 5u)], false, arg_0.x), vec4<bool>(arg_0.x, false, true, global3.x), arg_0.x), vec4<bool>(true, global3.x, global1[_wgslsmith_index_u32(var_0.b.x, 5u)], global3.x)), all(vec2<bool>(arg_0.x, false))));
    let var_2 = Struct_3(!select(!(!vec4<bool>(global3.x, true, true, false)), vec4<bool>(true, all(vec4<bool>(global1[_wgslsmith_index_u32(21174u, 5u)], true, true, true)), func_3(vec4<bool>(global3.x, true, false, global3.x), u_input.a.x, arg_1), arg_0.x), false), Struct_1(arg_2.a, ~u_input.a.wzz, ~(~vec4<i32>(u_input.c, 0i, arg_2.b, u_input.c)), vec4<i32>(firstLeadingBit(-1i), var_0.e.x << ((global4.x >> (u_input.a.x % 32u)) % 32u), _wgslsmith_add_i32(-31211i, 1i), min(1i, max(var_0.d.x, u_input.c))), _wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(var_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, 2147483647i, -2147483647i, var_0.d.x), vec4<i32>(-1i, u_input.c, -2147483647i, -54728i))), reverseBits(select(vec2<i32>(1i, -1i), vec2<i32>(17264i, arg_2.b), global2[_wgslsmith_index_u32(4979u, 14u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(-29661i, -2147483647i), var_0.d.yx))), firstTrailingBit(vec3<i32>(~countOneBits(20451i), -2147483647i, 11984i)));
    return ~5699u;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global1 = array<bool, 5>();
    let var_0 = Struct_1(_wgslsmith_mult_vec2_u32(u_input.a.wz, _wgslsmith_add_vec2_u32(select(vec2<u32>(4294967295u, 31096u), vec2<u32>(u_input.b.x, u_input.b.x), false), vec2<u32>(1u, u_input.b.x))) & vec2<u32>(4294967295u, func_2(select(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], vec2<bool>(global3.x, global1[_wgslsmith_index_u32(22282u, 5u)]), true), _wgslsmith_f_op_f32(select(991f, -637f, true)), Struct_2(u_input.b.zz, 0i))), _wgslsmith_sub_vec3_u32(reverseBits(~(~vec3<u32>(0u, 0u, u_input.b.x))), u_input.a.xyz), vec4<i32>(u_input.c, 11370i << (0u % 32u), _wgslsmith_clamp_i32(~u_input.c, _wgslsmith_mult_i32(u_input.c, 0i), 32920i), u_input.c), firstLeadingBit(firstLeadingBit(~vec4<i32>(51778i, u_input.c, 34479i, u_input.c)) ^ -(vec4<i32>(-1i, u_input.c, u_input.c, u_input.c) >> (vec4<u32>(u_input.b.x, 1248u, u_input.a.x, u_input.b.x) % vec4<u32>(32u)))), ~(-((vec2<i32>(u_input.c, u_input.c) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) | select(vec2<i32>(-45478i, -2147483647i), vec2<i32>(33601i, u_input.c), global2[_wgslsmith_index_u32(u_input.a.x, 14u)]))));
    global1 = array<bool, 5>();
    let var_1 = var_0.c;
    let var_2 = Struct_1(vec2<u32>(countOneBits(abs(~41779u)), max(27368u, 18964u)), vec3<u32>(global4.x, _wgslsmith_div_u32(~(1u ^ var_0.a.x), var_0.b.x), _wgslsmith_clamp_u32(firstTrailingBit(max(u_input.b.x, 54889u)), global4.x, 4294967295u)), vec4<i32>(~abs(-1i), 2147483647i, var_1.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(var_1.xxx), var_0.c.yzx)), -vec4<i32>(var_0.d.x, 22422i, -4060i, _wgslsmith_mult_i32(2147483647i, -u_input.c)), vec2<i32>(min(-_wgslsmith_dot_vec4_i32(var_0.d, var_0.c), _wgslsmith_dot_vec2_i32(reverseBits(var_0.c.zy), abs(var_0.c.zy))), firstTrailingBit(1i)));
    return !global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u >> (0u % 32u), firstLeadingBit(~(~u_input.a.x)), var_0.a.x), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(firstLeadingBit(vec2<i32>(u_input.c, ~8488i)) << (u_input.a.wy % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(step(173f, _wgslsmith_f_op_f32(ceil(517f))));
    global1 = array<bool, 5>();
    let var_2 = Struct_1(u_input.b.yz, vec3<u32>(global4.x, ~_wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(28436u, 4294967295u)) & 1u, u_input.b.x), ~vec4<i32>(~select(13019i, u_input.c, global1[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 41012i, 23560i) & vec3<i32>(var_0.x, 23779i, 26455i), firstLeadingBit(vec3<i32>(u_input.c, var_0.x, u_input.c))), var_0.x, abs(_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(0i, u_input.c)))), reverseBits(abs(vec4<i32>(-u_input.c, 29305i, u_input.c, var_0.x))), vec2<i32>(var_0.x, abs(u_input.c)));
    global2 = array<vec2<bool>, 14>();
    var var_3 = Struct_3(vec4<bool>(true, func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-485f, 474f, global0[_wgslsmith_index_u32(global4.x, 5u)], 1230f)))), global3.x, any(vec3<bool>(func_1(vec4<f32>(-603f, -1774f, 230f, global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), func_1(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(34387u, 5u)], 590f, var_1)), !global3.x))), Struct_1(u_input.b.xx, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, var_2.b.x, 4294967295u), vec3<u32>(var_2.b.x, u_input.b.x, 23434u)) | var_2.b, vec4<i32>(1i, 1i, _wgslsmith_div_i32(var_2.d.x >> (58570u % 32u), _wgslsmith_clamp_i32(var_0.x, var_2.e.x, var_0.x)), i32(-1i) * -53945i), select(max(var_2.d >> (u_input.a % vec4<u32>(32u)), var_2.d ^ vec4<i32>(-5502i, u_input.c, var_2.c.x, var_2.e.x)), vec4<i32>(1i, _wgslsmith_add_i32(-2147483647i, 5057i), ~var_2.c.x, i32(-1i) * -1i), var_1 <= _wgslsmith_div_f32(var_1, 1299f)), var_2.d.wy), vec3<i32>(u_input.c, -7960i, min(-2147483647i, -21601i)));
    global2 = array<vec2<bool>, 14>();
    var var_4 = vec2<bool>(global1[_wgslsmith_index_u32(var_3.b.a.x, 5u)], true | var_3.a.x);
    global0 = array<f32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(17182u, 5u)]))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.b.x, var_2.b.x), 5u)]))));
}

