struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(50400u, vec2<f32>(-1359f, 1019f), false, false), Struct_4(1u, vec2<f32>(857f, 1498f), false, false), Struct_4(86688u, vec2<f32>(-1000f, 783f), false, false), Struct_4(0u, vec2<f32>(946f, -367f), true, true), Struct_4(0u, vec2<f32>(-2175f, 913f), false, false), Struct_4(39532u, vec2<f32>(1000f, -840f), false, true), Struct_4(14060u, vec2<f32>(727f, -259f), false, true), Struct_4(38616u, vec2<f32>(379f, 1290f), false, false), Struct_4(1u, vec2<f32>(593f, 240f), true, false), Struct_4(1u, vec2<f32>(1035f, 1065f), false, true), Struct_4(55600u, vec2<f32>(566f, 603f), false, true), Struct_4(59682u, vec2<f32>(512f, 1672f), false, true), Struct_4(44465u, vec2<f32>(-820f, -570f), true, false));

var<private> global1: array<i32, 20> = array<i32, 20>(22133i, -18562i, 1i, 0i, 2147483647i, 0i, 28720i, 1i, -18721i, 1i, 44608i, 41593i, -12953i, -5801i, -1i, i32(-2147483648), 18432i, 2147483647i, i32(-2147483648), 0i);

var<private> global2: i32 = -1i;

var<private> global3: array<bool, 14>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    global1 = array<i32, 20>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x));
    var var_1 = arg_2;
    return 0u & _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(arg_0), ~min(0u, 107970u)), ~_wgslsmith_dot_vec3_u32(var_1.b.b, reverseBits(vec3<u32>(28298u, 1u, arg_2.b.a.a))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_1 {
    global3 = array<bool, 14>();
    global0 = array<Struct_4, 13>();
    let var_0 = -2147483647i;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-446f, -249f, 992f))) + vec3<f32>(1f, 1f, 1f)))), Struct_2(Struct_1(select(1476u | arg_1.x, _wgslsmith_mod_u32(1u, arg_1.x), any(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_1.x, 14u)], true, false))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-561f)), -2018f, -1961f, _wgslsmith_div_f32(1055f, 1423f))), ~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 0u), vec3<u32>(26181u, arg_1.x, 65619u)))));
    var var_2 = 1i;
    return Struct_1(func_3(~4294967295u, arg_1.x, Struct_3(vec3<f32>(-1116f, var_1.b.a.b.x, 1140f), Struct_2(var_1.b.a, vec3<u32>(arg_1.x, 4294967295u, var_1.b.b.x))), !select(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.x, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<bool>(true, true, global3[_wgslsmith_index_u32(33301u, 14u)]), vec3<bool>(false, true, true))) & 4294967295u, _wgslsmith_f_op_vec4_f32(trunc(var_1.b.a.b)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_2(u_input.a, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 0u), ~vec2<u32>(4294967295u, 30550u))));
    let var_1 = vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-26012i, -38706i) << (vec2<u32>(var_0.a, arg_0) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(22827i, -33177i), vec2<i32>(-1i, u_input.b))), abs(abs(vec2<i32>(u_input.a.x, u_input.b))))), u_input.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(~3083u, 20u)] << (47360u % 32u)), 6400i, _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(countOneBits(u_input.b), _wgslsmith_sub_i32(u_input.a.x, u_input.b)))));
    global3 = array<bool, 14>();
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    return select(var_0.a, var_0.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-502f - -841f), -892f)))))), _wgslsmith_f_op_f32(step(-451f, 996f))));
    let var_1 = vec2<bool>(!global3[_wgslsmith_index_u32(func_1(_wgslsmith_sub_u32(77610u, 1u)), 14u)], !any(select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(global3[_wgslsmith_index_u32(54279u, 14u)], false, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, abs(func_3(_wgslsmith_mod_u32(0u, 4294967295u), ~1u, Struct_3(vec3<f32>(-835f, -1134f, -1324f), Struct_2(Struct_1(24793u, vec4<f32>(1725f, -424f, -1114f, -682f)), vec3<u32>(1u, 96190u, 2215u))), select(vec3<bool>(global3[_wgslsmith_index_u32(48960u, 14u)], false, false), vec3<bool>(true, true, global3[_wgslsmith_index_u32(55587u, 14u)]), global3[_wgslsmith_index_u32(17202u, 14u)]))) << (19791u % 32u), ~(min(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x, -1i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 20u)], u_input.a.x, 1i)), vec3<i32>(62816i, global1[_wgslsmith_index_u32(64202u, 20u)], -1i) >> (vec3<u32>(4294967295u, 44850u, 29562u) % vec3<u32>(32u))) | vec3<i32>(u_input.b, 1i, global1[_wgslsmith_index_u32(19327u, 20u)] >> (0u % 32u))));
}

