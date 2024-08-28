struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, false, true, false, true, false, true, false, true, true, true, false, false, true, true, false, false, true, true, true, false, false, true, false, false, true, false);

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(0i), Struct_3(1i), Struct_3(14482i), Struct_3(1i), Struct_3(-1i), Struct_3(-1i), Struct_3(1i));

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 7> = array<bool, 7>(false, false, true, false, false, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 7u)];
    global3 = array<bool, 7>();
    return (firstLeadingBit(~u_input.c.xz) & countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, -45911i), ~u_input.c.xz))) ^ vec2<i32>(var_0.a, arg_0);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))))), Struct_1(!vec4<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)])), all(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 28u)], false, false)), global3[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(reverseBits(45151u), 28u)]), u_input.c.x, u_input.c.yxw, func_3(u_input.c.x) & -(u_input.c.ww << (vec2<u32>(7292u, u_input.a.x) % vec2<u32>(32u))), countOneBits(_wgslsmith_add_i32(2147483647i, firstLeadingBit(u_input.c.x)))), global3[_wgslsmith_index_u32(0u, 7u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * global2.x), _wgslsmith_f_op_f32(global2.x - global2.x))), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1008f * global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(528f - -1473f) + _wgslsmith_f_op_f32(min(-1722f, 270f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(219f, 227f)), _wgslsmith_f_op_f32(ceil(var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(819f)) + -523f), _wgslsmith_div_f32(var_0.d, global2.x)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-752f, 600f))), -464f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) * 568f)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1313f)), -174f, -543f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -624f), _wgslsmith_f_op_f32(var_0.a * var_0.d), !global0[_wgslsmith_index_u32(u_input.a.x, 28u)]))))));
    global1 = array<Struct_3, 7>();
    let var_2 = Struct_3(_wgslsmith_sub_i32(-37321i, 0i));
    let var_3 = var_0.b;
    return Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(abs(~(56693u << (u_input.b % 32u))), 7u)], true, any(var_3.a.ywx), all(vec2<bool>(var_3.a.x, true))), var_2.a, vec3<i32>(_wgslsmith_clamp_i32(countOneBits(var_0.b.d.x) ^ 17575i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(var_0.b.d.x, var_3.e, var_0.b.b, -11842i)), u_input.c)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_3.d.x, var_0.b.c.x << (u_input.a.x % 32u), i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a, -17333i, -18967i, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.e, -1i, var_3.d.x, 31791i), vec4<i32>(var_2.a, 2147483647i, 0i, u_input.c.x)))), _wgslsmith_dot_vec3_i32(max(var_3.c, vec3<i32>(var_3.d.x, var_3.e, -2147483647i)) ^ ~u_input.c.zyz, vec3<i32>(select(var_2.a, -24289i, true), 1i, reverseBits(-35933i)))), ~(~vec2<i32>(1i, -11160i)), 2147483647i);
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2();
    global3 = array<bool, 7>();
    var var_1 = u_input.a.x;
    global1 = array<Struct_3, 7>();
    var var_2 = ~(~(~reverseBits(u_input.a.x) & _wgslsmith_dot_vec3_u32(max(vec3<u32>(588u, 1u, 17204u), vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(37762u, u_input.a.x, 4294967295u), u_input.a.wxz))));
    return !select(var_0.a, vec4<bool>(true, !(!var_0.a.x), var_0.a.x, u_input.b < 1u), global0[_wgslsmith_index_u32(select(u_input.a.x, 28990u, select(1i, 10942i, global3[_wgslsmith_index_u32(0u, 7u)]) >= var_0.d.x), 28u)]);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(vec4<bool>(true, true, ~(~u_input.c.x) != u_input.c.x, global3[_wgslsmith_index_u32(~(~4294967295u), 7u)]), func_3(arg_0.d.x).x, vec3<i32>(arg_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(arg_0.b), ~arg_0.d.x), _wgslsmith_mult_vec2_i32(u_input.c.yw, vec2<i32>(arg_0.e, -915i))), ~(select(-9304i, -42044i, true) | ~arg_0.d.x)), -vec2<i32>(_wgslsmith_add_i32(u_input.c.x, arg_0.c.x) >> (countOneBits(1u) % 32u), u_input.c.x), 0i);
    global0 = array<bool, 28>();
    global0 = array<bool, 28>();
    let var_2 = arg_0;
    return global1[_wgslsmith_index_u32(4294967295u, 7u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 7>();
    global1 = array<Struct_3, 7>();
    let var_0 = func_4(Struct_1(!func_1(), _wgslsmith_clamp_i32(i32(-1i) * -39695i, u_input.c.x | -u_input.c.x, _wgslsmith_mult_i32(12046i, u_input.c.x)), vec3<i32>(-1i, ~1i, _wgslsmith_mult_i32(max(-2147483647i, u_input.c.x), u_input.c.x)), countOneBits(abs(u_input.c.zx)), ~u_input.c.x));
    global3 = array<bool, 7>();
    var var_1 = true;
    let var_2 = all(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(0u, 28u)], false, global0[_wgslsmith_index_u32(u_input.b, 28u)])))) != !((-1030f >= _wgslsmith_f_op_f32(-global2.x)) & true);
    global1 = array<Struct_3, 7>();
    var var_3 = 813f;
    let var_4 = vec2<i32>(select(2147483647i, -12598i, any(func_2().a.xz)), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zz, 4294967295u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1112f, _wgslsmith_div_f32(-1233f, global2.x), global2.x, _wgslsmith_f_op_f32(ceil(335f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 871f, global2.x, global2.x), vec4<f32>(-1324f, global2.x, global2.x, global2.x), vec4<bool>(var_2, true, global0[_wgslsmith_index_u32(1u, 28u)], false))))))));
}

