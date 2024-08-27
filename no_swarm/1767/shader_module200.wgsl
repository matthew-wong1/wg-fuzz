struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec4<i32>(-1i, 0i, 1404i, 34087i), vec4<bool>(false, true, true, true), Struct_1(vec2<f32>(-319f, -1000f), 1000f, 2147483647i), Struct_1(vec2<f32>(-1923f, 1072f), 2575f, 2147483647i)));

var<private> global3: array<u32, 10> = array<u32, 10>(1u, 35024u, 71000u, 54203u, 4294967295u, 83751u, 52032u, 19028u, 1u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_5(vec2<u32>(4294967295u, reverseBits(17446u)), -global0.d.c, select(select(select(select(global1.c, vec2<bool>(false, false), global0.c.x), global0.c, global1.c), !(!vec2<bool>(global1.c.x, false)), global0.c), select(!vec2<bool>(global0.c.x, true), global0.c, !(!global0.c.x)), all(vec3<bool>(global0.e.x > 1i, !global0.c.x, true))), global0.d, vec4<i32>(min((u_input.c.x << (global3[_wgslsmith_index_u32(global1.a.x, 10u)] % 32u)) | 1i, ~(~(-1i))), 26871i, _wgslsmith_div_i32(0i, ~global1.b), -2147483647i));
    let var_1 = global2[_wgslsmith_index_u32(59912u, 1u)];
    let var_2 = all(vec3<bool>(true, global1.c.x, ~(~1u) < global3[_wgslsmith_index_u32(u_input.a, 10u)]));
    var var_3 = var_0;
    let var_4 = -vec2<i32>(u_input.c.x, ~_wgslsmith_mult_i32(-79094i | global1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.e.x, global1.b), vec2<i32>(var_3.d.c, -24259i))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a.x, 1f, _wgslsmith_f_op_f32(f32(-1f) * -368f), var_3.d.b) * _wgslsmith_div_vec4_f32(vec4<f32>(-797f, var_3.d.a.x, -1000f, global1.d.b), vec4<f32>(-367f, -1014f, global0.d.a.x, var_3.d.b))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.b, var_3.d.a.x, 468f, global0.d.a.x) * vec4<f32>(-310f, var_1.d.b, 1000f, 659f)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(273f, global0.d.b, var_0.d.a.x, var_3.d.b) - vec4<f32>(global1.d.b, -1622f, var_0.d.a.x, global0.d.b)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, var_3.d.a.x, 656f, var_3.d.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d.a.x, -997f, -384f, var_3.d.b))), !vec4<bool>(var_2, var_0.c.x, var_0.c.x, var_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-521f, global0.d.b, true)), _wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(-var_3.d.a.x), _wgslsmith_f_op_f32(sign(global1.d.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(977f, var_1.c.a.x, global0.d.b, 851f), vec4<f32>(-733f, -629f, 694f, 290f), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b, -1442f, global1.d.a.x, var_3.d.a.x))))));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> vec2<bool> {
    global2 = array<Struct_2, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(726f, global1.d.b, arg_0.d.b, global0.d.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(709f, arg_0.d.a.x, arg_0.d.a.x, global1.d.b))))));
    let var_1 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(u_input.a, 48062u) & firstTrailingBit(global3[_wgslsmith_index_u32(firstTrailingBit(42906u) & firstTrailingBit(~global0.a.x), 10u)]), 10u)], 1u)];
    var var_2 = global1.c.x;
    global2 = array<Struct_2, 1>();
    return !select(vec2<bool>(var_1.b.x, false), var_1.b.zz, global1.c);
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec4<u32> {
    global1 = Struct_5(_wgslsmith_add_vec2_u32(~abs(global1.a) ^ firstLeadingBit(u_input.b), select(~global0.a, ~vec2<u32>(global0.a.x, global3[_wgslsmith_index_u32(133991u, 10u)]), global1.c.x)), global1.d.c, select(global0.c, select(global1.c, !select(global0.c, global0.c, global0.c.x), vec2<bool>(!global1.c.x, true)), all(func_2(Struct_5(vec2<u32>(global1.a.x, 13770u), global1.d.c, vec2<bool>(global1.c.x, false), Struct_1(vec2<f32>(arg_1.x, 874f), 228f, global1.b), vec4<i32>(global0.b, global1.d.c, -46603i, global0.b)), u_input.b.x))), global0.d, vec4<i32>(-1i, global1.e.x, -92319i, _wgslsmith_sub_i32(firstLeadingBit(-35911i), 2147483647i) >> (firstTrailingBit(~0u) % 32u)));
    global0 = Struct_5(abs(vec2<u32>(4294967295u, firstLeadingBit(reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)])))), -global1.e.x, global0.c, global1.d, firstLeadingBit(~(-vec4<i32>(u_input.c.x, global1.d.c, -16993i, -26827i))));
    return ~select(_wgslsmith_mult_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(67025u, 10u)], 0u, 4294967295u, u_input.a), vec4<u32>(global1.a.x, 4294967295u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42229u, 10u)], 10u)])), vec4<u32>(59681u, global1.a.x, 1u, u_input.b.x), select(vec4<bool>(false, false, global1.c.x, arg_0), vec4<bool>(false, global0.c.x, global0.c.x, false), arg_0)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(11643u, 66816u, 1u, 0u), vec4<u32>(global1.a.x, global0.a.x, 24048u, 52643u), vec4<u32>(global0.a.x, global3[_wgslsmith_index_u32(4294967295u, 10u)], 18140u, global1.a.x))), vec4<u32>(1u, 2954u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.a.x, 1u), 10u)], max(global1.a.x, ~global1.a.x)), !select(select(vec4<bool>(false, arg_0, global1.c.x, true), vec4<bool>(global0.c.x, arg_0, global0.c.x, arg_0), false), vec4<bool>(arg_0, false, false, false), vec4<bool>(global1.c.x, global0.c.x, global0.c.x, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~global0.e.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.d.a.x * global1.d.b)), vec2<f32>(global0.d.b, _wgslsmith_div_f32(global1.d.a.x, 1673f))))), vec3<u32>(_wgslsmith_div_u32(34016u, _wgslsmith_div_u32(32786u, ~u_input.b.x)), _wgslsmith_div_u32(abs(~51184u), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global1.a.x), vec4<u32>(0u, 52941u, 0u, global3[_wgslsmith_index_u32(global1.a.x, 10u)]))), _wgslsmith_div_u32(global0.a.x, _wgslsmith_mult_u32(countOneBits(117319u), _wgslsmith_div_u32(0u, global0.a.x)))));
}

