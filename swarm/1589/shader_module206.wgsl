struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(true, -22980i, 0u, 17777u, -701f), 300f), Struct_2(Struct_1(true, 1i, 61827u, 22787u, 679f), -592f), Struct_2(Struct_1(false, 33082i, 0u, 4294967295u, 414f), -1225f), Struct_2(Struct_1(true, 0i, 50142u, 4294967295u, 242f), 1000f), Struct_2(Struct_1(true, 0i, 1u, 1u, -112f), -325f), Struct_2(Struct_1(true, -16560i, 20681u, 16953u, -1000f), -264f), Struct_2(Struct_1(false, i32(-2147483648), 31503u, 27713u, 1588f), -1158f), Struct_2(Struct_1(false, i32(-2147483648), 2814u, 4294967295u, 171f), -1257f), Struct_2(Struct_1(true, 9098i, 4294967295u, 4294967295u, 390f), 1346f), Struct_2(Struct_1(true, 69806i, 1u, 15663u, -142f), 1000f), Struct_2(Struct_1(true, -29638i, 51926u, 38047u, -258f), -1770f), Struct_2(Struct_1(true, 1i, 4294967295u, 74324u, -294f), -1031f), Struct_2(Struct_1(false, i32(-2147483648), 29210u, 0u, 1314f), -480f), Struct_2(Struct_1(false, 0i, 1u, 6640u, -361f), 1158f), Struct_2(Struct_1(false, 2147483647i, 4294967295u, 0u, -608f), 1456f), Struct_2(Struct_1(true, -5647i, 49265u, 49934u, 245f), 1921f), Struct_2(Struct_1(true, -1i, 15005u, 76081u, -1380f), -1000f), Struct_2(Struct_1(true, 2147483647i, 4294967295u, 1u, -1812f), -614f), Struct_2(Struct_1(true, i32(-2147483648), 4294967295u, 58975u, 1000f), -2378f), Struct_2(Struct_1(false, 93609i, 1u, 4243u, -212f), -810f), Struct_2(Struct_1(true, -1i, 0u, 1u, 2099f), 669f), Struct_2(Struct_1(false, 46481i, 1u, 4294967295u, 464f), -1062f));

var<private> global1: array<f32, 29>;

var<private> global2: array<u32, 18>;

var<private> global3: Struct_1 = Struct_1(false, 1i, 14248u, 0u, 495f);

var<private> global4: vec3<u32> = vec3<u32>(11130u, 60046u, 12488u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = !select(!select(select(vec3<bool>(false, true, global3.a), vec3<bool>(arg_0.a.a, arg_1.a, arg_1.a), vec3<bool>(false, true, global3.a)), select(vec3<bool>(arg_0.a.a, arg_1.a, arg_0.a.a), vec3<bool>(true, false, arg_0.a.a), false), true), select(select(vec3<bool>(true, arg_0.a.a, arg_1.a), select(vec3<bool>(false, arg_0.a.a, false), vec3<bool>(false, arg_1.a, arg_0.a.a), vec3<bool>(false, arg_1.a, false)), select(vec3<bool>(true, arg_0.a.a, arg_0.a.a), vec3<bool>(global3.a, false, global3.a), true)), vec3<bool>(arg_0.a.a, true, true), true), select(select(!vec3<bool>(global3.a, arg_1.a, global3.a), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(false, global3.a, true), vec3<bool>(true, false, arg_0.a.a)), global3.b == global3.b), select(vec3<bool>(arg_1.a, false, arg_1.a), select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), false), false), arg_0.a.a));
    var var_1 = Struct_1(true, global3.b, (_wgslsmith_mult_u32(arg_0.a.d, u_input.a) | 27615u) ^ global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global4.xy, ~vec2<u32>(global3.c, global2[_wgslsmith_index_u32(1u, 18u)])), 0u), 18u)], ~select(63739u, firstTrailingBit(countOneBits(31700u)), all(!var_0.xz)), global3.e);
    return vec4<f32>(global3.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)])) * _wgslsmith_div_f32(-1086f, _wgslsmith_f_op_f32(floor(-411f)))), -1455f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-207f * -1686f) * _wgslsmith_f_op_f32(trunc(var_1.e)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(arg_2, Struct_1(!(!(arg_1.a.d < global4.x)), firstTrailingBit(~(-arg_2.a.b)), ~0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(65870u, 64040u), global4.zx) & 4294967295u, arg_1.b)));
    var var_1 = (min(vec4<i32>(~u_input.d, 8626i >> (global2[_wgslsmith_index_u32(arg_0, 18u)] % 32u), countOneBits(-32657i), -17696i), -(vec4<i32>(2147483647i, 1i, 50392i, -1i) & vec4<i32>(global3.b, arg_2.a.b, 65850i, 40326i))) ^ firstTrailingBit(max(_wgslsmith_div_vec4_i32(vec4<i32>(-16454i, global3.b, -17543i, u_input.b.x), vec4<i32>(2147483647i, global3.b, 2147483647i, 0i)), ~vec4<i32>(arg_2.a.b, 0i, -45679i, -4603i)))) ^ -(min(~vec4<i32>(global3.b, arg_2.a.b, u_input.d, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -39753i, -1985i, arg_1.a.b), vec4<i32>(-2147483647i, 1i, 2147483647i, -46979i))) | (countOneBits(vec4<i32>(-6238i, 2147483647i, arg_1.a.b, global3.b)) | countOneBits(vec4<i32>(global3.b, -1i, 0i, arg_3.a.b))));
    var_1 = _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-2147483647i, global3.b, 0i, 2147483647i)), ~vec4<i32>(u_input.b.x, arg_3.a.b, 0i, 0i)) | ~max(_wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_2.a.b, -35736i, var_1.x), vec4<i32>(0i, arg_1.a.b, arg_1.a.b, 31808i)), max(vec4<i32>(-17200i, 1i, u_input.d, var_1.x), vec4<i32>(0i, u_input.b.x, var_1.x, 0i))), vec4<i32>(abs(0i), u_input.d, (arg_2.a.b ^ _wgslsmith_add_i32(-2147483647i, arg_2.a.b)) >> (arg_0 % 32u), 0i));
    var var_2 = false;
    let var_3 = arg_2;
    return vec3<bool>(true, !arg_2.a.a, !(!global3.a));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~_wgslsmith_div_u32(0u, global3.d);
    global4 = vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.c), 0u), min(1u, global2[_wgslsmith_index_u32(1u, 18u)]), ~(~(~(~u_input.a))));
    global0 = array<Struct_2, 22>();
    let var_1 = !select(select(vec3<bool>(any(vec2<bool>(false, true)), true, true), !vec3<bool>(false, global3.a, global3.a), vec3<bool>(true, u_input.d >= global3.b, !global3.a)), !select(func_2(global2[_wgslsmith_index_u32(u_input.a, 18u)], Struct_2(Struct_1(true, global3.b, global3.d, var_0, -166f), global1[_wgslsmith_index_u32(4294967295u, 29u)]), global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<bool>(true, true, true), var_0 > 1u), select(func_2(~10945u, global0[_wgslsmith_index_u32(~global4.x, 22u)], Struct_2(Struct_1(false, 1i, global4.x, 12832u, global3.e), -1414f), global0[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(false, true, all(vec2<bool>(global3.a, global3.a))), !(!vec3<bool>(false, global3.a, true))));
    global4 = ~(~((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 13510u, global4.x), vec3<u32>(u_input.c, 0u, 0u)) << (vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global3.d, 75517u) % vec3<u32>(32u))) >> (vec3<u32>(~0u, firstTrailingBit(6148u), var_0) % vec3<u32>(32u))));
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(global3.c, global3.d, 0u)), reverseBits(abs(vec3<u32>(62397u, 16795u, u_input.c)))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 16466u, u_input.a) & vec3<u32>(1u, global3.c, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, global2[_wgslsmith_index_u32(0u, 18u)]), vec3<u32>(4294967295u, 1u, global3.d)), _wgslsmith_add_vec3_u32(vec3<u32>(32266u, u_input.c, 9552u), vec3<u32>(1u, u_input.c, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.e)))));
    var var_1 = ~abs(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-3136i, u_input.d, -25309i, -9786i), vec4<i32>(73928i, 44230i, global3.b, global3.b)), select(vec4<i32>(-25583i, u_input.b.x, u_input.d, -30838i), vec4<i32>(-1i, u_input.d, 1i, global3.b), false)), vec4<i32>(26056i, u_input.b.x, -global3.b, _wgslsmith_sub_i32(1i, 1i))));
    global2 = array<u32, 18>();
    global4 = ~_wgslsmith_div_vec3_u32(~vec3<u32>(0u, ~4294967295u, _wgslsmith_add_u32(global3.c, u_input.a)), func_1());
    let var_2 = vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(abs(u_input.c)), countOneBits(global3.c)), 18u)] & 81082u, ~max(~(~global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_mod_u32(4294967295u, global3.d)), 4294967295u);
    var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(9945i, -2147483647i, -34397i, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(global3.b, var_1.x, -39810i, var_1.x), vec4<i32>(1i, var_1.x, 2147483647i, global3.b)))), vec4<i32>(-(~u_input.d), abs(_wgslsmith_sub_i32(global3.b, u_input.d)), global3.b, countOneBits(var_1.x))), -50521i, ~_wgslsmith_mod_i32(global3.b, ~_wgslsmith_mult_i32(global3.b, global3.b)), 2147483647i);
    let var_3 = any(func_2(~(~9436u), global0[_wgslsmith_index_u32(~4294967295u, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.zy ^ ~vec2<u32>(global2[_wgslsmith_index_u32(103570u, 18u)], 12523u), vec2<u32>(_wgslsmith_sub_u32(7733u, var_2.x), _wgslsmith_mult_u32(global3.c, global2[_wgslsmith_index_u32(0u, 18u)]))), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global3.c | 4294967295u, 1u), 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(3821i, -1i, -1i, _wgslsmith_dot_vec2_i32(var_1.ww, vec2<i32>(u_input.d, -17245i)) >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.x << (global2[_wgslsmith_index_u32(3854u, 18u)] % 32u), 18u)], 18u)] % 32u)), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(global3.b, var_1.x, -32369i), 1i, _wgslsmith_mult_i32(global3.b, u_input.d)) ^ ~select(vec4<i32>(u_input.b.x, -35700i, -100056i, global3.b), vec4<i32>(global3.b, u_input.b.x, -11176i, 2147483647i), true)), vec3<i32>(_wgslsmith_mult_i32((i32(-1i) * -1i) & ~u_input.d, -17766i), -u_input.d, _wgslsmith_div_i32(-firstLeadingBit(0i), reverseBits(u_input.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1162f, _wgslsmith_f_op_f32(abs(var_0))), -512f, global3.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.e, var_0))), vec2<f32>(_wgslsmith_f_op_f32(step(-377f, global1[_wgslsmith_index_u32(u_input.c, 29u)])), -761f), vec2<bool>(all(vec2<bool>(global3.a, var_3)), true)))));
}

