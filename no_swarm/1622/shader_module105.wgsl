struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -29244i;

var<private> global1: Struct_1 = Struct_1(5435u, vec4<bool>(false, false, false, true));

var<private> global2: vec2<f32>;

var<private> global3: array<bool, 11> = array<bool, 11>(true, true, true, true, false, false, false, true, false, false, true);

var<private> global4: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    global1 = Struct_1(1u, !vec4<bool>(!(u_input.c.x >= u_input.a.x), any(vec4<bool>(true, true, arg_1.b.x, true)), any(select(global1.b, vec4<bool>(global3[_wgslsmith_index_u32(16142u, 11u)], arg_1.b.x, global1.b.x, true), true)), false));
    global3 = array<bool, 11>();
    var var_0 = arg_1.b.wzx;
    let var_1 = _wgslsmith_div_vec3_i32(max(global4.xxz, firstTrailingBit(global4.xxx)), firstLeadingBit(~(vec3<i32>(-41919i, global4.x, global4.x) << (u_input.a % vec3<u32>(32u)))));
    global3 = array<bool, 11>();
    return vec4<i32>(1i, _wgslsmith_mult_i32(-(~44420i & var_1.x), -1i), reverseBits(global4.x), var_1.x);
}

fn func_2(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = global1.b.x;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, -1000f), vec2<f32>(global2.x, global2.x), global1.b.wy)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1377f, -512f), vec2<f32>(global2.x, -1088f), global1.b.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1187f, 151f), vec2<f32>(global2.x, global2.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1495f) + vec2<f32>(global2.x, global2.x)))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1200f, _wgslsmith_f_op_f32(f32(-1f) * -339f)) * vec2<f32>(var_1.x, _wgslsmith_f_op_f32(round(global2.x))))));
    let var_2 = arg_0.zx | ~u_input.c.xz;
    return -max(-func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1193f, -473f, global2.x)), Struct_1(1u, global1.b), firstLeadingBit(9109u)), vec4<i32>(-u_input.b.x & 1i, ~(~76231i), -1i, reverseBits(firstTrailingBit(-2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global4 = (_wgslsmith_add_vec4_i32(vec4<i32>(-39954i, global4.x, 43644i, 1i) >> (vec4<u32>(59644u, 56001u, 45616u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global4.x, global4.x, 23442i) & vec4<i32>(u_input.b.x, -9365i, -5530i, u_input.d), min(vec4<i32>(global4.x, u_input.b.x, -1i, 14086i), vec4<i32>(global4.x, -25584i, global4.x, 77702i)))) ^ select(reverseBits(vec4<i32>(0i, global4.x, global4.x, u_input.e) >> (vec4<u32>(u_input.c.x, 64489u, global1.a, 1u) % vec4<u32>(32u))), max(func_2(vec3<u32>(0u, arg_0.a, arg_0.a)), min(vec4<i32>(1i, 1i, u_input.b.x, 28406i), vec4<i32>(global4.x, 2147483647i, 1i, 27860i))), select(vec4<bool>(global1.b.x, true, false, false), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(true, arg_1.x, true, true), global1.b), vec4<bool>(true, true, true, true)))) | vec4<i32>(i32(-1i) * -u_input.e, global4.x, _wgslsmith_sub_i32(u_input.d >> (~arg_2.a % 32u), u_input.e), 1i);
    let var_0 = Struct_1(abs(1u), arg_0.b);
    var var_1 = Struct_1(~56160u, !select(arg_2.b, select(select(vec4<bool>(global3[_wgslsmith_index_u32(96938u, 11u)], false, global3[_wgslsmith_index_u32(arg_0.a, 11u)], false), vec4<bool>(true, false, true, true), arg_0.b.x), arg_2.b, select(arg_0.b, global1.b, vec4<bool>(false, global1.b.x, true, global1.b.x))), !vec4<bool>(arg_0.b.x, arg_1.x, true, false)));
    var var_2 = arg_2;
    var var_3 = u_input.b;
    return Struct_1(_wgslsmith_add_u32(select(0u, global1.a, arg_1.x), _wgslsmith_mod_u32(max(~145821u, u_input.c.x << (2358u % 32u)), (arg_2.a & global1.a) | 49468u)), vec4<bool>(global1.b.x, all(select(vec4<bool>(global3[_wgslsmith_index_u32(77796u, 11u)], var_0.b.x, false, true), vec4<bool>(false, global1.b.x, global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(arg_0.a, 11u)]), !vec4<bool>(false, true, arg_2.b.x, true))), true, !arg_2.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec2<bool> {
    global0 = func_3(vec3<f32>(442f, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(max(250f, global2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-global2.x)))), Struct_1(firstTrailingBit(arg_0.a), !vec4<bool>(all(vec2<bool>(global1.b.x, false)), select(global1.b.x, global1.b.x, false), any(vec4<bool>(arg_0.b.x, global3[_wgslsmith_index_u32(20888u, 11u)], true, false)), arg_1.b.x)), ~_wgslsmith_dot_vec2_u32(max(u_input.c.zy | vec2<u32>(91992u, 76518u), vec2<u32>(46292u, 114961u)), select(u_input.a.yy, ~vec2<u32>(4294967295u, 2846u), vec2<bool>(arg_3, true)))).x;
    var var_0 = u_input.b;
    global3 = array<bool, 11>();
    global4 = vec4<i32>(global4.x, global4.x << (func_1(arg_0, vec2<bool>(u_input.d < 0i, global3[_wgslsmith_index_u32(1u, 11u)]), func_1(Struct_1(70737u, vec4<bool>(arg_0.b.x, false, global1.b.x, false)), arg_1.b.xz, func_1(arg_1, global1.b.zw, arg_1))).a % 32u), 47857i & (_wgslsmith_clamp_i32(func_3(vec3<f32>(global2.x, arg_2, -646f), Struct_1(0u, vec4<bool>(true, false, true, arg_3)), u_input.c.x).x, ~global4.x, -global4.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 114223u, arg_1.a, arg_1.a), vec4<u32>(arg_0.a, 32434u, global1.a, arg_0.a) & vec4<u32>(global1.a, 4294967295u, 0u, 25329u)) % 32u)), select(1i, 2147483647i, select(!(!arg_1.b.x), any(select(arg_0.b, vec4<bool>(arg_0.b.x, true, false, global3[_wgslsmith_index_u32(35841u, 11u)]), arg_0.b)), false)));
    let var_1 = arg_1;
    return var_1.b.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 11>();
    global0 = min(_wgslsmith_clamp_i32(-18028i, global4.x << (14388u % 32u), -1i), _wgslsmith_dot_vec2_i32(select(-u_input.b, vec2<i32>(u_input.d, 1i) ^ vec2<i32>(-62173i, -31474i), func_4(Struct_1(u_input.c.x, global1.b), func_1(Struct_1(10031u, vec4<bool>(true, false, global1.b.x, global1.b.x)), global1.b.yz, Struct_1(0u, global1.b)), -2029f, global4.x < u_input.e)), select(select(-vec2<i32>(1i, 0i), vec2<i32>(u_input.d, 11342i), vec2<bool>(global1.b.x, true)), reverseBits(func_3(vec3<f32>(global2.x, global2.x, 1256f), Struct_1(1u, vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 11u)], global3[_wgslsmith_index_u32(global1.a, 11u)], global1.b.x, false)), global1.a).yx), func_4(func_1(Struct_1(global1.a, global1.b), vec2<bool>(false, false), Struct_1(34880u, global1.b)), Struct_1(global1.a, vec4<bool>(global3[_wgslsmith_index_u32(41092u, 11u)], false, global1.b.x, global3[_wgslsmith_index_u32(global1.a, 11u)])), _wgslsmith_f_op_f32(f32(-1f) * -2020f), all(global1.b.yxw)))));
    global4 = firstLeadingBit(-(~min(vec4<i32>(-1i, global4.x, global4.x, u_input.e) << (vec4<u32>(11870u, 4294967295u, u_input.a.x, 50854u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-42485i, 21460i, 62558i, -2147483647i), vec4<i32>(u_input.e, 2979i, 22550i, u_input.d)))));
    global0 = ~(-1i);
    let var_0 = Struct_1(u_input.a.x, global1.b);
    let var_1 = -1000f;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, var_1) - vec2<f32>(246f, var_1))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1622f, 238f) + vec2<f32>(1423f, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~func_1(Struct_1(4294967295u, global1.b), select(vec2<bool>(var_0.b.x, global3[_wgslsmith_index_u32(74318u, 11u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 11u)]), var_2.b.x), Struct_1(5719u, var_2.b)).a, ~(firstLeadingBit(var_0.a) >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u))), 0u, u_input.c.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), ~(-_wgslsmith_sub_i32(firstTrailingBit(u_input.d), global4.x)));
}

