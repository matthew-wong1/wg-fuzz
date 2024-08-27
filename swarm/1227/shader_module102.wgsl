struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-1000f, 869f), vec4<f32>(-204f, 1000f, 1834f, -538f), -32383i);

var<private> global2: array<bool, 32>;

var<private> global3: vec4<i32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global0 = array<vec4<f32>, 26>();
    return vec4<i32>(1i >> (0u % 32u), global3.x, 1i, _wgslsmith_div_i32(global3.x, global1.c));
}

fn func_3() -> vec4<bool> {
    global3 = _wgslsmith_mult_vec4_i32(-select(vec4<i32>(global3.x, 13151i, -28796i, global3.x) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, global3.x, -17735i, 0i) ^ vec4<i32>(global1.c, u_input.a.x, -8213i, -12633i), global4.x), -((vec4<i32>(u_input.a.x, u_input.a.x, -32082i, global3.x) << (vec4<u32>(28344u, u_input.b, 14380u, u_input.b) % vec4<u32>(32u))) ^ abs(vec4<i32>(-1i, -1i, global3.x, global1.c)))) | (firstTrailingBit(min(~vec4<i32>(global3.x, global3.x, -2147483647i, u_input.a.x), countOneBits(vec4<i32>(-46451i, -2147483647i, global1.c, global1.c)))) & (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global1.c, global1.c, -21785i)));
    global0 = array<vec4<f32>, 26>();
    let var_0 = Struct_1(select(~(~u_input.a), u_input.a, true), _wgslsmith_f_op_f32(round(global1.a.x)), reverseBits(vec4<u32>(firstTrailingBit(firstLeadingBit(67962u)), u_input.b, u_input.b, _wgslsmith_mod_u32(min(50787u, u_input.b), ~u_input.b))));
    let var_1 = ~select(var_0.c.xxw, select(~(~var_0.c.ywy), ~var_0.c.xyw << (vec3<u32>(u_input.b, 1u, var_0.c.x) % vec3<u32>(32u)), all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], true, true))), !global2[_wgslsmith_index_u32(reverseBits(~var_0.c.x), 32u)]);
    let var_2 = Struct_2(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1101f, -143f)) + global1.a.x), all(select(vec3<bool>(global4.x, global2[_wgslsmith_index_u32(var_0.c.x, 32u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 32u)], false, false), vec3<bool>(global4.x, global2[_wgslsmith_index_u32(4294967295u, 32u)], false)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global1.b, vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(global1.b.x)), global1.b.x, _wgslsmith_f_op_f32(abs(642f))), false)))), global1.c & firstTrailingBit(-_wgslsmith_div_i32(global3.x, -13689i)));
    return !(!vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 32u)], !(var_2.b.x == var_2.a.x), select(global4.x, global2[_wgslsmith_index_u32(85414u, 32u)], global4.x) | false, select(true, all(vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 32u)], global4.x, true, global4.x)), false)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    global3 = select(reverseBits(-(~vec4<i32>(global3.x, -1i, arg_0, arg_0))), func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, -344f) - global1.b.xx)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global0[_wgslsmith_index_u32(u_input.b, 26u)], vec4<f32>(1000f, -258f, -1000f, global1.b.x))))), 0i)), select(vec4<bool>(global4.x, false, any(!vec2<bool>(true, global4.x)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 32u)], global4.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 32u)], true, global4.x)))), func_3(), !vec4<bool>(true || global4.x, !global2[_wgslsmith_index_u32(u_input.b, 32u)], true, global2[_wgslsmith_index_u32(~0u, 32u)])));
    global3 = vec4<i32>(_wgslsmith_sub_i32((28389i & arg_0) & 1i, ~abs(-19082i)) >> (78448u % 32u), 53711i, ~1i, ~_wgslsmith_add_i32(~max(-1i, 1i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.x, 0i, arg_0, u_input.a.x), vec4<i32>(33999i, global3.x, u_input.a.x, -2147483647i)), select(vec4<i32>(-1i, 0i, global3.x, u_input.a.x), vec4<i32>(arg_0, 19453i, -4184i, global3.x), vec4<bool>(false, global2[_wgslsmith_index_u32(13239u, 32u)], true, global2[_wgslsmith_index_u32(u_input.b, 32u)])))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-global1.a), global0[_wgslsmith_index_u32(u_input.b, 26u)], -1i >> (~_wgslsmith_clamp_u32(~1u, u_input.b, abs(63794u)) % 32u));
    var var_0 = Struct_1(vec3<i32>(global3.x, -32612i, reverseBits(_wgslsmith_sub_i32(49671i, -53864i)) << (u_input.b % 32u)), _wgslsmith_f_op_f32(max(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x))))), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.b, 28306u) >> (vec4<u32>(0u, u_input.b, u_input.b, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(35538u, 38175u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b))))));
    global0 = array<vec4<f32>, 26>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), 1608f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.b, global0[_wgslsmith_index_u32(u_input.b, 26u)], true)) + global0[_wgslsmith_index_u32(var_0.c.x, 26u)])))), ~_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -2147483647i), u_input.a) | ~18866i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global3.x);
    var var_0 = vec3<bool>(all(vec4<bool>(global4.x != !global2[_wgslsmith_index_u32(60351u, 32u)], true, global2[_wgslsmith_index_u32(38105u, 32u)], global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(u_input.b)), 32u)])), global2[_wgslsmith_index_u32(~(~u_input.b), 32u)], global4.x);
    var var_1 = u_input.a.xy;
    let var_2 = u_input.b;
    global3 = firstTrailingBit(_wgslsmith_sub_vec4_i32(func_2(Struct_2(global1.b.zw, global1.b, global3.x)), countOneBits(vec4<i32>(-38044i, 0i, ~(-2147483647i), ~25302i))));
    var var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(var_2 | var_2, ~(~_wgslsmith_add_u32(u_input.b, var_2)), ~(56775u ^ var_2)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 39009u, var_2 << (4294967295u % 32u)), vec3<u32>(var_2 << (var_2 % 32u), firstLeadingBit(69362u), ~59014u)));
    let var_4 = select(vec4<bool>(select(false, any(vec2<bool>(global4.x, false)), false), global2[_wgslsmith_index_u32(~39455u, 32u)], _wgslsmith_sub_u32(~42518u, var_3.x & 39626u) <= var_3.x, true), !(!func_3()), !(!(all(vec4<bool>(var_0.x, true, var_0.x, var_0.x)) && false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, abs(u_input.a.yx), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(ceil(global1.b.x))), 849f)))));
}

