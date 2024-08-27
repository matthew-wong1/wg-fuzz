struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_4 = Struct_4(0i, vec3<i32>(i32(-2147483648), 2147483647i, 0i), 1525f, Struct_2(vec4<u32>(51424u, 1u, 66188u, 87629u), -1000f, Struct_1(1u, 1u, vec3<f32>(1365f, -1074f, -176f), 1u)));

var<private> global2: array<i32, 1> = array<i32, 1>(1i);

var<private> global3: vec4<bool>;

var<private> global4: array<vec4<f32>, 26>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_mod_vec2_u32(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.d.c.a, 0u), ~u_input.b.xy)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(global1.d.a.zwz, vec3<u32>(global1.d.c.b, 3065u, global1.d.a.x), vec3<u32>(u_input.a.x, 2125u, 4294967295u)), firstLeadingBit(vec3<u32>(1u, 4294967295u, u_input.a.x))), vec3<u32>(~26478u, global1.d.c.d & global1.d.c.a, ~9308u)), 14743u));
    let var_1 = Struct_3(global1.d.c);
    global4 = array<vec4<f32>, 26>();
    global3 = select(vec4<bool>(true, global3.x, min(var_1.a.a, var_1.a.b >> (var_0.x % 32u)) <= 70906u, true), select(select(vec4<bool>(any(global3.xyz), global3.x, true, global3.x), !vec4<bool>(global3.x, false, global3.x, true), !all(vec4<bool>(false, false, false, global3.x))), vec4<bool>(true, global3.x && any(vec4<bool>(true, global3.x, false, true)), !(global1.c >= global1.c), !any(vec2<bool>(global3.x, true))), true), vec4<bool>(false, true, true, all(vec4<bool>(true, true, true, true)) & global3.x));
    global4 = array<vec4<f32>, 26>();
    return min(select(max(vec4<i32>(54058i, -4808i, global2[_wgslsmith_index_u32(global1.d.a.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), vec4<i32>(global2[_wgslsmith_index_u32(3228u, 1u)], global1.b.x, 63505i, global2[_wgslsmith_index_u32(5947u, 1u)])), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0.x, global0.x, global2[_wgslsmith_index_u32(0u, 1u)], global0.x), vec4<i32>(global2[_wgslsmith_index_u32(23395u, 1u)], 78562i, 7923i, global1.b.x) & vec4<i32>(1i, global1.a, 1i, -26027i)), select(select(vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(false, false, global3.x, global3.x), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, global3.x, false), vec4<bool>(true, global3.x, global3.x, global3.x), true), vec4<bool>(true, true, true, true))), vec4<i32>(-(~(-26887i)), 1i, -8669i, global0.x)) & max(vec4<i32>(firstTrailingBit(16529i), reverseBits(global1.a), 16122i | _wgslsmith_sub_i32(global0.x, global2[_wgslsmith_index_u32(var_0.x, 1u)]), ~global2[_wgslsmith_index_u32(3430u, 1u)] & -global0.x), select(vec4<i32>(-1i) * -vec4<i32>(global1.a, global2[_wgslsmith_index_u32(var_1.a.b, 1u)], global2[_wgslsmith_index_u32(global1.d.c.d, 1u)], -15415i), abs(-vec4<i32>(global2[_wgslsmith_index_u32(global1.d.a.x, 1u)], global1.b.x, global0.x, global0.x)), global3.x));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = global1.b.xz;
    var var_1 = arg_0.x;
    global3 = !vec4<bool>(false, any(!select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(global3.x, global3.x, true, true))), !(firstTrailingBit(30701u) <= countOneBits(29359u)), global3.x);
    var var_2 = select(min(vec4<i32>(countOneBits(_wgslsmith_mod_i32(global0.x, -53080i)), global0.x, ~0i, -2147483647i), -(-vec4<i32>(2147483647i, var_0.x, 2147483647i, global0.x) & ~vec4<i32>(1i, -12042i, global0.x, -26657i))), min(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_mult_i32(0i, global2[_wgslsmith_index_u32(global1.d.a.x, 1u)]), global0.x, 2147483647i ^ var_0.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, global2[_wgslsmith_index_u32(arg_0.x, 1u)], 1i, var_0.x), -vec4<i32>(-9528i, 2147483647i, 1i, global1.a))), func_3()), select(vec4<bool>(false, any(vec3<bool>(global3.x, true, global3.x)), false, !(!global3.x)), select(!vec4<bool>(true, global3.x, true, global3.x), !vec4<bool>(global3.x, global3.x, false, false), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.d.c.c.x))) >= 670f));
    global0 = -firstLeadingBit(vec4<i32>(min(35946i >> (global1.d.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, -48689i, -1i), vec4<i32>(global0.x, var_2.x, -471i, global1.b.x))), _wgslsmith_div_i32(var_2.x | var_0.x, 1i), -1i, ~(-35442i)));
    return any(vec4<bool>(!((global1.d.c.c.x >= -769f) | (global3.x | false)), global3.x, global3.x, false));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.d.b))));
    var_0 = -502f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, global1.c) + _wgslsmith_f_op_f32(global1.d.c.c.x * global1.d.b))))) * -1107f);
    let var_1 = Struct_1(~36042u, ~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.xxx), _wgslsmith_f_op_vec3_f32(-global1.d.c.c), arg_0)))) - vec3<f32>(global1.d.b, arg_1.x, _wgslsmith_f_op_f32(1077f - _wgslsmith_f_op_f32(1000f * global1.c)))), ~(~(~_wgslsmith_clamp_u32(global1.d.c.a, 7849u, 63391u))));
    global1 = Struct_4(~(-(i32(-1i) * -global2[_wgslsmith_index_u32(1u, 1u)])), -_wgslsmith_div_vec3_i32(global0.zyw, vec3<i32>(-1i) * -vec3<i32>(global0.x, -54046i, 28682i)), _wgslsmith_f_op_f32(-var_1.c.x), global1.d);
    return !vec4<bool>(select(!all(vec4<bool>(arg_0, false, arg_2, arg_0)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0.x, global0.x), global0.zyx) < -7483i, (global0.x != global0.x) || arg_0), select(false, !(arg_2 & true), firstLeadingBit(global1.a) >= (global1.a ^ -29993i)), any(global3.yx), ((false & global3.x) || (false | global3.x)) & true);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    global3 = func_4(false, global4[_wgslsmith_index_u32(~(countOneBits(~1u) | _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.d.a.x, arg_2, arg_0.c.a), vec4<u32>(arg_1.x, 4294967295u, 1u, arg_2)), arg_0.c.a << (arg_1.x % 32u))), 26u)], func_2(abs(arg_1.xz)));
    global2 = array<i32, 1>();
    var var_0 = ~firstLeadingBit(firstTrailingBit(-_wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(-2147483647i, -8552i, -1i))));
    global4 = array<vec4<f32>, 26>();
    global0 = -vec4<i32>(~(-30353i), -2147483647i, abs(global0.x), ~34464i);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(7142u ^ ~func_1(Struct_2(vec4<u32>(45246u, 62370u, 1u, 23997u), 1348f, Struct_1(u_input.b.x, 1u, vec3<f32>(262f, global1.d.c.c.x, global1.c), global1.d.c.b)), ~global1.d.a.yyy, ~8012u), ~65591u);
    var var_1 = vec3<f32>(global1.d.b, _wgslsmith_f_op_f32(268f * _wgslsmith_f_op_f32(global1.d.b * global1.c)), _wgslsmith_f_op_f32(-global1.c));
    global2 = array<i32, 1>();
    global0 = abs(vec4<i32>(reverseBits(func_3().x), -2147483647i, 0i, -2147483647i));
    var var_2 = ~countOneBits(firstTrailingBit(~var_0)) ^ 14481u;
    let var_3 = global1.d;
    var var_4 = vec3<u32>(global1.d.c.d, 5486u, ~_wgslsmith_add_u32(var_3.c.d, global1.d.a.x & var_0) & max(~_wgslsmith_div_u32(0u, var_0), select(~var_0, 4294967295u, all(vec4<bool>(global3.x, true, true, false)))));
    global1 = Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(155f, global1.d.b)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1817f), _wgslsmith_f_op_f32(-global1.c))), Struct_2(countOneBits(abs(var_3.a) | (vec4<u32>(var_3.a.x, var_4.x, global1.d.c.a, 21903u) << (vec4<u32>(var_0, 43144u, 0u, 4294967295u) % vec4<u32>(32u)))), var_1.x, Struct_1(countOneBits(0u), ~1u, global1.d.c.c, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 39054u)))));
    var var_5 = vec2<i32>(global1.a, i32(-1i) * -global2[_wgslsmith_index_u32(u_input.a.x & _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(global1.d.a.x, 28293u, 4294967295u)), 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.c.yx, 4294967295u, vec2<f32>(var_3.c.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b - 145f)), -217f)));
}

