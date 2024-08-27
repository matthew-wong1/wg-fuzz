struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 13> = array<u32, 13>(4294967295u, 73563u, 63919u, 4294967295u, 50000u, 19585u, 73294u, 0u, 1u, 1u, 32732u, 4294967295u, 0u);

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false));

var<private> global3: Struct_1 = Struct_1(vec4<f32>(243f, 805f, 360f, 478f), 42305u, true, vec2<i32>(-65052i, 19328i), vec2<u32>(13009u, 29523u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_3(arg_3.b.a.a.x, Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_div_f32(240f, -906f), arg_3.a, 1000f), global3.b, global0.c, abs(~vec2<i32>(arg_0.x, 75262i)), arg_3.b.a.e)));
    let var_1 = arg_3;
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-811f, _wgslsmith_f_op_f32(exp2(arg_3.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a.a.x + global3.a.x))), -1320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(484f + -474f), 105f)))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.e.x, global0.e.x, 36420u), vec4<u32>(global3.b, 1u, 18003u, 100601u)) | arg_3.b.a.b, 42460u, 66173u) & 41519u, true, min(select(vec2<i32>(~global3.d.x, _wgslsmith_div_i32(13515i, -1i)), arg_3.b.a.d & var_0.b.a.d, true), _wgslsmith_div_vec2_i32(select(var_1.b.a.d, max(vec2<i32>(var_1.b.a.d.x, arg_0.x), arg_0), -1999f > var_0.a), arg_3.b.a.d)), ~var_0.b.a.e);
    var var_2 = select(!vec3<bool>(var_1.b.a.c, global3.c, true), !vec3<bool>(!all(vec4<bool>(var_1.b.a.c, arg_3.b.a.c, false, var_1.b.a.c)), all(!vec3<bool>(arg_3.b.a.c, true, var_1.b.a.c)), !all(vec3<bool>(arg_3.b.a.c, arg_3.b.a.c, false))), vec3<bool>(!all(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(51436u, var_1.b.a.b), 3u)]), false, !((global1[_wgslsmith_index_u32(66983u, 13u)] >> (0u % 32u)) <= global3.b)));
    global1 = array<u32, 13>();
    return reverseBits(4294967295u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<u32> {
    global0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-1058f - global0.a.x), _wgslsmith_f_op_f32(1692f + -784f), -294f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(985f, -2159f, 1015f, -848f)) * global3.a)))), func_3(-(vec2<i32>(-1i) * -vec2<i32>(arg_2.x, -1i)), -65547i, vec2<bool>(!(!global3.c), global0.c), Struct_3(global3.a.x, Struct_2(arg_3.a))), arg_3.a.c, vec2<i32>(global0.d.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.d.x << (31370u % 32u), min(29632i, arg_0.x)), -1i)), vec2<u32>(~global1[_wgslsmith_index_u32(1u, 13u)], max(~(~global3.b), 6756u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -906f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(657f, arg_3.a.a.x) - _wgslsmith_f_op_f32(1000f + global3.a.x))), global3.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, _wgslsmith_f_op_f32(select(-599f, -997f, global0.c)), _wgslsmith_f_op_f32(-322f * _wgslsmith_f_op_f32(round(global0.a.x))))), select(vec3<bool>(false, _wgslsmith_f_op_f32(global0.a.x - -1000f) < _wgslsmith_f_op_f32(arg_3.a.a.x * -863f), true), vec3<bool>(!global0.c, false, true), !(!all(vec2<bool>(global0.c, global3.c))))));
    global2 = array<vec4<bool>, 3>();
    var var_1 = min(~vec4<u32>(global0.b, _wgslsmith_sub_u32(firstLeadingBit(622u), reverseBits(arg_3.a.b)), global3.b, global3.b), firstLeadingBit(_wgslsmith_mod_vec4_u32(~(vec4<u32>(arg_3.a.b, 0u, global3.b, 18100u) ^ vec4<u32>(arg_3.a.e.x, 7973u, 9402u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(86528u, 13u)], 4294967295u, 1u), ~vec4<u32>(global0.b, global1[_wgslsmith_index_u32(446u, 13u)], global3.e.x, arg_3.a.e.x)))));
    let var_2 = Struct_5(Struct_2(arg_3.a));
    return countOneBits(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global0.b, var_2.a.a.b, 14534u), min(vec3<u32>(var_2.a.a.b, global0.b, global3.e.x), var_1.xww)), vec3<u32>(1u, var_1.x, var_2.a.a.b) ^ abs(var_1.xww), ~(~var_1.wyy)), vec3<u32>(firstLeadingBit(4294967295u), ~func_3(arg_2, var_2.a.a.d.x, vec2<bool>(global3.c, var_2.a.a.c), Struct_3(arg_3.a.a.x, Struct_2(var_2.a.a))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.e.x, 22534u, 1u) & vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 61119u, 19324u, 56205u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a.a.e.x, global3.e.x, 55680u, var_1.x), vec4<u32>(0u, var_1.x, var_2.a.a.b, 1u))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = ~46182u;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(func_2(vec4<i32>(-1i, 2147483647i, u_input.a, -20079i), vec4<i32>(global3.d.x, global0.d.x, global3.d.x, global0.d.x), vec2<i32>(-22163i, global0.d.x), Struct_2(Struct_1(global0.a, global0.b, true, vec2<i32>(u_input.a, global0.d.x), global3.e))), vec3<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 55806u, global1[_wgslsmith_index_u32(40511u, 13u)]))), select(~(vec3<u32>(arg_0, 1u, global3.e.x) | vec3<u32>(arg_0, 7771u, 0u)), reverseBits(vec3<u32>(4294967295u, global3.e.x, 16828u)), true)), ~firstTrailingBit(reverseBits(~vec3<u32>(73544u, var_0, arg_0))));
    var var_2 = global3.d.x;
    let var_3 = _wgslsmith_sub_i32(global0.d.x, _wgslsmith_clamp_i32(8354i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(global0.d), global0.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, global0.d.x), vec4<i32>(u_input.a, global3.d.x, global0.d.x, u_input.a))), u_input.a));
    var var_4 = ~_wgslsmith_mult_u32(arg_0, 6190u << (global3.e.x % 32u)) | var_0;
    return Struct_2(Struct_1(vec4<f32>(global3.a.x, global0.a.x, global3.a.x, global3.a.x), arg_0, !all(vec4<bool>(true, global0.c, true, arg_1.x)), abs(~select(vec2<i32>(-9042i, global3.d.x), vec2<i32>(global0.d.x, global3.d.x), vec2<bool>(arg_1.x, global3.c))), _wgslsmith_clamp_vec2_u32(~reverseBits(vec2<u32>(global0.e.x, global3.e.x)), ~(~global0.e), reverseBits(func_2(vec4<i32>(global0.d.x, -12791i, 75285i, -39467i), vec4<i32>(-61649i, global3.d.x, -1i, -2147483647i), global3.d, Struct_2(Struct_1(vec4<f32>(-304f, 682f, 1219f, global3.a.x), 17803u, true, global3.d, vec2<u32>(4294967295u, arg_0)))).zx))));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = -global3.d.x;
    return Struct_2(arg_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(func_1(global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(~50669u, 13u)]), 13u)], vec2<bool>(global0.c, true))));
    global1 = array<u32, 13>();
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_1(~1u, vec2<bool>(true, true)).a.a), vec4<f32>(1991f, 183f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1180f), global0.a.x), global0.a.x))));
    global2 = array<vec4<bool>, 3>();
    let var_2 = func_4(Struct_5(func_1(var_0.a.e.x, !select(vec2<bool>(false, false), vec2<bool>(global0.c, true), true)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(max(~global1[_wgslsmith_index_u32(1u, 13u)], min(var_2.b, global0.e.x))));
}

