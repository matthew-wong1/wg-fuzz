struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: i32 = 1i;

var<private> global2: Struct_5;

var<private> global3: i32 = 8958i;

var<private> global4: array<u32, 9>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, arg_0.b.x, 1483f, arg_1)))), global2.b);
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -24055i, 27832i, -43226i), ~vec4<i32>(-1i, 0i, 0i, -2147483647i), abs(vec4<i32>(0i, 1i, 30010i, -38444i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 2147483647i, 29267i, 38431i), vec4<i32>(-1i) * -vec4<i32>(1i, -1i, 1i, -1i))), -15035i, 11513i);
    global4 = array<u32, 9>();
    var_1 = ~(~vec3<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(var_1.x, -1i, -var_1.x), var_1.x));
    var_0 = Struct_5(vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 - global2.a.x), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1312f, 972f) * -213f)), min(4294967295u, 20782u));
    return ~vec3<i32>(var_1.x ^ 13181i, -1i, _wgslsmith_clamp_i32(80239i, var_1.x | 66777i, var_1.x));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = select((vec3<u32>(abs(4294967295u), u_input.b, arg_0.b ^ global2.b) | (abs(vec3<u32>(25590u, global2.b, 70702u)) << (vec3<u32>(1734u, 10013u, 1u) % vec3<u32>(32u)))) ^ (vec3<u32>(global4[_wgslsmith_index_u32(~0u, 9u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, u_input.b), u_input.a), 9u)], ~global2.b) >> (~firstLeadingBit(vec3<u32>(u_input.b, arg_0.b, 28696u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, global2.b, u_input.a.x), vec3<u32>(6072u, 8937u, u_input.b), vec3<bool>(true, true, true)) | ~vec3<u32>(global2.b, 38855u, global2.b), vec3<u32>(select(4294967295u, u_input.a.x, false), _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 9u)], 9u)], arg_0.b), 9471u), ~(vec3<u32>(1u, 743u, arg_0.b) << (vec3<u32>(11731u, arg_0.b, arg_0.b) % vec3<u32>(32u)))) & vec3<u32>(~_wgslsmith_add_u32(global2.b, arg_0.b), global4[_wgslsmith_index_u32(~16137u, 9u)] ^ 101650u, ~(~1u)), true);
    var var_1 = Struct_4(~(~(4294967295u << (arg_0.b % 32u))), arg_0.a, vec4<u32>(firstTrailingBit(~abs(global4[_wgslsmith_index_u32(28577u, 9u)])), abs(0u), ~1u, abs(max(33926u, firstTrailingBit(35822u)))), ~var_0);
    return -select(vec3<i32>(_wgslsmith_sub_i32(countOneBits(-1i), 618i), 96359i, -_wgslsmith_div_i32(-52051i, 1i)), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1645i, 1i), vec3<i32>(-2147483647i, 14214i, 0i)), i32(-1i) * -1i, _wgslsmith_clamp_i32(-4681i, -38210i, -87541i))), any(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 32u)], true), !global0[_wgslsmith_index_u32(4294967295u, 32u)])));
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(!vec2<bool>(select(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 32u)])), global0[_wgslsmith_index_u32(~global2.b, 32u)], false), !global0[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 9u)], 32u)] != false, true)), true));
    global3 = arg_0.x;
    var var_1 = select(vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~u_input.b << (global2.b % 32u)), 9u)], 32u)], any(vec2<bool>(var_0.b.x, global0[_wgslsmith_index_u32(12867u, 32u)])) || var_0.b.x), select(vec2<bool>(true, true), var_0.a, vec2<bool>(true, 1669f <= global2.a.x)), global0[_wgslsmith_index_u32(4294967295u, 32u)]);
    var_1 = vec2<bool>(false, true);
    global1 = _wgslsmith_mod_i32(reverseBits(min(arg_0.x, _wgslsmith_sub_i32(arg_0.x, 1i))), ~(-2147483647i));
    return !vec4<bool>(true, all(vec3<bool>(true, false, var_1.x & var_0.b.x)), var_0.a.x | any(vec3<bool>(true, true, true)), true);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1309f, -518f, 1438f, -117f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2796f, global2.a.x, -197f, global2.a.x) - vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1257f, 1000f, global2.a.x, global2.a.x), vec4<f32>(-1741f, global2.a.x, global2.a.x, global2.a.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x), vec4<f32>(global2.a.x, -673f, global2.a.x, global2.a.x), vec4<bool>(true, false, true, true)))))), ~global4[_wgslsmith_index_u32(u_input.a.x, 9u)]);
    let var_1 = 1714f;
    let var_2 = _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(-2147483647i, -8442i, arg_1)), ~_wgslsmith_div_vec3_i32(func_2(Struct_4(17876u, var_0.a, vec4<u32>(u_input.a.x, var_0.b, u_input.b, global2.b), vec3<u32>(arg_2.x, 4294967295u, 4294967295u)), -1124f), vec3<i32>(-1i) * -vec3<i32>(arg_1, arg_1, arg_1)));
    let var_3 = Struct_2(select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(27600u, 32u)], global0[_wgslsmith_index_u32(global2.b, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true), vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, global0[_wgslsmith_index_u32(global2.b, 32u)]), !(!global0[_wgslsmith_index_u32(4904u, 32u)])), vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(0u)), 32u)], arg_0), any(func_4(func_3(var_0, Struct_2(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], true)))))), vec2<bool>(true, true | (true | (true | arg_0))));
    var var_4 = ~var_2;
    return Struct_4(arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_div_f32(-238f, -210f)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(-431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * -1000f)), var_0.a.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_0.b), var_0.b, ~41448u, _wgslsmith_mult_u32(102912u, u_input.a.x)), vec4<u32>(31445u, 1u, 44168u, var_0.b) & (vec4<u32>(4294967295u, var_0.b, 13267u, 4294967295u) << (vec4<u32>(1u, 0u, arg_2.x, 1u) % vec4<u32>(32u)))), abs(~vec4<u32>(arg_2.x, 44874u, 1u, global2.b)) ^ _wgslsmith_div_vec4_u32(max(vec4<u32>(var_0.b, global2.b, arg_2.x, 0u), vec4<u32>(0u, u_input.b, 22691u, arg_2.x)), vec4<u32>(arg_2.x, 25552u, 4294967295u, u_input.b))), ~vec3<u32>(~4294967295u, 0u, 43181u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(-36245i, -11905i), vec2<i32>(-2147483647i, 1i), vec2<bool>(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 9u)], 32u)], false)), -vec2<i32>(28880i, 31020i)) < abs(1i), reverseBits(-1i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(199f);
}

