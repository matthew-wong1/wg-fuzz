struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(768f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_add_u32(~1u, min(u_input.a, 30984u));
    var_0 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 47538u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 28983u, u_input.a)), min(vec4<u32>(u_input.a, 4294967295u, 42592u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), u_input.a & u_input.a) >> (abs(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(63772u, 25410u, 0u), vec3<u32>(u_input.a, 0u, u_input.a)))) % 32u);
    var var_1 = max(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(u_input.a >> (1u % 32u), ~u_input.a, ~u_input.a, _wgslsmith_mult_u32(u_input.a, 2457u))), abs(vec4<u32>(4294967295u, 36623u, u_input.a, u_input.a)) >> (vec4<u32>(~1u, u_input.a, _wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_clamp_u32(u_input.a, u_input.a, 49314u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 34034u, 1u, 31317u)), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 50028u) % vec3<u32>(32u)), vec3<u32>(12973u, u_input.a, 0u)), ~_wgslsmith_mult_u32(19432u, 20921u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(72451u, 1u, u_input.a, u_input.a) >> (vec4<u32>(1u, 0u, 6670u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 1u, 0u, u_input.a)))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(20466u) << (1u % 32u), var_1.x), vec2<u32>(4294967295u, _wgslsmith_add_u32(1u, 32758u)));
    var_1 = firstTrailingBit(firstLeadingBit(~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, 73773u), vec4<u32>(1u, var_1.x, 7528u, var_1.x)))));
    return !(!(true & ((var_1.x | u_input.a) < select(24455u, u_input.a, false))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec4<bool>(true, true, reverseBits(_wgslsmith_mod_u32(~u_input.a, ~u_input.a)) < ~u_input.a, !func_3());
    var var_1 = ~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u ^ u_input.a, 5857u, u_input.a, _wgslsmith_mult_u32(u_input.a, 27589u)), reverseBits(vec4<u32>(u_input.a, 0u, 0u, u_input.a) & vec4<u32>(20728u, u_input.a, 49u, 47598u))));
    var_1 = vec4<u32>(abs(~countOneBits(_wgslsmith_div_u32(1u, var_1.x))), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_1.x, 1u, u_input.a)), min(vec3<u32>(u_input.a, var_1.x, u_input.a), vec3<u32>(67382u, var_1.x, 5038u))), var_1.zyx), var_1.x, _wgslsmith_add_u32(4294967295u, u_input.a) & abs(~reverseBits(1u)));
    var var_2 = Struct_1(vec4<bool>(!(arg_0 != 1581f), var_0.x, false || var_0.x, !(!(4294967295u >= u_input.a))), vec2<i32>(1i, -2643i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f + -541f) * global0[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-278f)), _wgslsmith_f_op_f32(f32(-1f) * -814f))), global0[_wgslsmith_index_u32(var_1.x, 1u)])));
    return Struct_1(select(var_0, vec4<bool>(true, false, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(select(var_2.a.wyy, vec3<bool>(false, var_2.a.x, true), true))), !var_2.a), ~_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(23274i, u_input.c.x, 26110i), vec3<i32>(u_input.b.x, 31388i, 28185i)), _wgslsmith_sub_i32(-1i, -1i)), -abs(vec2<i32>(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), 133f, 2029f, 1694f), _wgslsmith_f_op_vec4_f32(-var_2.c))));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<u32>) -> i32 {
    global0 = array<f32, 1>();
    var var_0 = ~vec3<u32>(arg_3.x, abs(14649u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4375u, 0u), arg_3.wz, true) ^ abs(arg_3.xw), vec2<u32>(firstTrailingBit(0u), ~1u)));
    let var_1 = 2147483647i;
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    return var_1;
}

fn func_1() -> vec4<i32> {
    global0 = array<f32, 1>();
    var var_0 = 69365i;
    let var_1 = vec2<i32>(-func_4(any(vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 0i), vec4<f32>(1699f, global0[_wgslsmith_index_u32(48065u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], -1112f)), func_2(global0[_wgslsmith_index_u32(1u, 1u)])), vec4<bool>(true, true, true, true), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, 44639u, u_input.a, 12604u))), max(_wgslsmith_sub_i32(i32(-1i) * -15929i, -u_input.c.x), ~u_input.b.x) & -2147483647i);
    global0 = array<f32, 1>();
    var var_2 = Struct_1(!(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.d, vec2<i32>(_wgslsmith_mod_i32(var_1.x, var_1.x), func_2(global0[_wgslsmith_index_u32(u_input.a, 1u)]).b.x)), ~vec2<i32>(var_1.x, _wgslsmith_sub_i32(1733i, var_1.x)), _wgslsmith_sub_vec2_i32(u_input.c, u_input.b ^ func_2(113f).b)), vec4<f32>(-540f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14083u, 1u)] * 1682f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 1u)] * global0[_wgslsmith_index_u32(1u, 1u)])) * global0[_wgslsmith_index_u32(19505u, 1u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(func_2(-174f).c.x)))), global0[_wgslsmith_index_u32(u_input.a, 1u)]));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(~2147483647i, select(-9114i, var_1.x ^ var_1.x, true), min(-33491i, var_1.x), 8244i) >> (min(~abs(vec4<u32>(0u, 25675u, u_input.a, 4294967295u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 61289u, u_input.a, u_input.a)), ~vec4<u32>(1u, 32335u, 4294967295u, u_input.a))) % vec4<u32>(32u)), vec4<i32>(~(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_div_i32(8389i, u_input.c.x), abs(-33894i), -2147483647i), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, var_2.b.x, u_input.c.x, 0i), vec4<i32>(-716i, 13712i, 2147483647i, -12588i))), 13307i, u_input.d.x), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, abs(1i), _wgslsmith_div_i32(1i, var_2.b.x), -14273i), min(firstLeadingBit(-vec4<i32>(0i, -2147483647i, u_input.c.x, -7238i)), min(~vec4<i32>(0i, u_input.c.x, u_input.d.x, u_input.c.x), vec4<i32>(var_2.b.x, -57947i, 0i, -59662i) & vec4<i32>(var_2.b.x, 2147483647i, var_1.x, 0i))), abs(~vec4<i32>(43259i, var_1.x, u_input.d.x, var_2.b.x)) | _wgslsmith_div_vec4_i32(vec4<i32>(-324i, var_2.b.x, 2147483647i, var_2.b.x), -vec4<i32>(1i, -1i, var_1.x, -2958i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 1>();
    var var_0 = func_1();
    var var_1 = true;
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-12876i, var_0.x, u_input.b.x)), ~vec3<i32>(-2147483647i, 2147483647i, u_input.b.x)), var_0.x, i32(-1i) * -(u_input.d.x >> (7822u % 32u)), func_2(_wgslsmith_f_op_f32(538f + 715f)).b.x);
    let var_3 = true;
    let var_4 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(reverseBits(u_input.a), 1u)])) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a >> (u_input.a % 32u), 1u)] * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])))), func_2(_wgslsmith_f_op_f32(1302f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 1u)] - 771f) + global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a), 1u)]))));
    let var_5 = Struct_1(select(!func_2(var_4.a.c.x).a, !vec4<bool>(any(vec4<bool>(true, true, var_4.a.a.x, false)), all(var_4.b.a), true, all(vec2<bool>(var_4.a.a.x, var_4.b.a.x))), var_4.a.a), var_4.a.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(var_4.b.c)), var_4.a.c, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(61608i, 22030i, 16805i, var_5.b.x), var_2), 0i), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, u_input.a, 1091u)), vec3<u32>(4294967295u, 23687u, 0u)), 10829u, u_input.a, _wgslsmith_mult_u32(u_input.a, 50749u))));
}

