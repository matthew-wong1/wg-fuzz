struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_3,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(18250i, 0i, 0i, -40757i, 28060i, 0i, 1443i, 0i);

var<private> global1: Struct_5;

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(-340f, 1000f, 0u, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_4) -> f32 {
    let var_0 = ~reverseBits(~arg_0.b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(1225f + -825f), -2209f, global1.a.x, any(vec4<bool>(!(!global3.d), true, arg_0.c.c, !all(arg_3.a.zy))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -287f) + _wgslsmith_f_op_f32(sign(global3.b)))))), 158f, global1.b.x, global1.d);
    global0 = array<i32, 8>();
    let var_3 = Struct_2(all(vec2<bool>(global2.c, select(arg_3.c.x, true, all(vec4<bool>(true, arg_0.c.c, arg_0.d, false))))), true, Struct_1(-410f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b))))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1.b.yzz, vec3<u32>(global3.c, global2.e.x, 55461u)), 0u), any(!arg_3.c.xy)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1454f - var_2.a));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, _wgslsmith_f_op_f32(select(-639f, 1126f, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f) - global1.c.a), _wgslsmith_f_op_f32(func_3(Struct_5(global1.b, global1.b, global1.c, global3.d, global2.b), _wgslsmith_f_op_f32(311f - global2.a), vec4<f32>(195f, 955f, global2.b.x, global2.a), Struct_4(vec3<bool>(false, true, true), vec4<f32>(746f, global1.c.b.x, 575f, -524f), vec3<bool>(true, false, global3.d), global3.a))))));
    let var_1 = Struct_5(global1.a | ~global1.a, global1.b, global1.c, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, global2.b.x, global1.c.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-584f, global1.e.x, -331f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(397f, global3.a, global3.a))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.b.x, var_0.x))))), global1.e.x, ~(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9599u, global1.a.x, 4294967295u), vec3<u32>(var_1.c.e.x, global2.e.x, 56205u)), 42442u) >> ((global2.e.x ^ ~var_1.a.x) % 32u)), all(select(select(!vec4<bool>(global3.d, global1.d, true, false), vec4<bool>(true, global1.c.c, false, global2.c), global3.d), !select(vec4<bool>(false, true, false, true), vec4<bool>(global2.c, global2.c, false, false), global2.c), vec4<bool>(var_1.e.x != global2.a, false, true, global2.c))));
    var_2 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b))) * 172f)), 1u, var_1.c.c);
    var var_3 = 957f;
    return _wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-450f, _wgslsmith_f_op_f32(471f - global1.e.x), 1f)) * global1.e));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_5(vec4<u32>(34460u, global3.c, ((global2.e.x | global3.c) | 74010u) & _wgslsmith_mult_u32(~31108u, global2.e.x), ~_wgslsmith_div_u32(select(global1.b.x, 4294967295u, global2.c), ~35207u)), global1.b, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(max(global1.e.x, global2.a))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a)))), global2.b, ~(~17045u) == _wgslsmith_clamp_u32(global2.e.x, 3129u, ~4294967295u), global0[_wgslsmith_index_u32(20156u, 8u)], ~_wgslsmith_sub_vec2_u32(global2.e >> (global2.e % vec2<u32>(32u)), vec2<u32>(4294967295u, global3.c) | global1.a.yz)), global1.d & false, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_2()))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_vec3_f32(func_2()).x), 4200f, (1383u << (~(global2.e.x | global2.e.x) % 32u)) ^ 1u, global2.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_f32(max(var_1.b, var_1.a)), 0u, any(select(select(vec3<bool>(global2.c, false, var_0.d), vec3<bool>(false, global2.c, global2.c), select(vec3<bool>(true, false, global3.d), vec3<bool>(global1.d, var_1.d, true), global2.c)), select(vec3<bool>(true, global1.d, var_1.d), vec3<bool>(var_1.d, false, var_1.d), var_1.d), !select(vec3<bool>(var_1.d, var_0.c.c, true), vec3<bool>(false, global1.c.c, global3.d), false))));
    let var_3 = Struct_5(~vec4<u32>(firstTrailingBit(global1.b.x), var_0.a.x, var_0.b.x, firstLeadingBit(~var_0.c.e.x)), vec4<u32>(~global3.c, reverseBits(0u), var_0.b.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(17358u, select(global1.b.x, global2.e.x, false)), 1u)), Struct_3(var_0.c.a, var_0.e, global2.c | (_wgslsmith_f_op_f32(abs(-859f)) == _wgslsmith_f_op_f32(var_1.a * var_1.a)), _wgslsmith_mult_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d, var_0.c.d, global0[_wgslsmith_index_u32(var_0.c.e.x, 8u)], -2147483647i), vec4<i32>(u_input.a.x, 1i, var_0.c.d, -47735i))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global2.e.x), vec3<u32>(0u, global2.e.x, 58677u)), 8u)]), vec2<u32>(global3.c, 0u)), global3.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2304f, -849f, -1035f)) - vec3<f32>(global3.a, var_2.a, global3.b))))));
    let var_4 = select(all(!vec2<bool>(all(vec2<bool>(true, true)), var_3.d)), all(!(!vec3<bool>(false, var_2.d, true))), !var_2.d);
    return vec4<i32>(~(~firstTrailingBit(u_input.a.x & -2147483647i)), ~(i32(-1i) * -global0[_wgslsmith_index_u32(29373u, 8u)]), ~global0[_wgslsmith_index_u32(countOneBits(var_1.c), 8u)], u_input.b);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> Struct_5 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(any(select(!vec3<bool>(global2.c, global2.c, arg_2), select(vec3<bool>(false, global1.c.c, global3.d), vec3<bool>(true, true, arg_2), vec3<bool>(global1.c.c, global1.c.c, true)), vec3<bool>(false, global1.c.c, true))), all(select(!vec2<bool>(global2.c, true), select(vec2<bool>(true, global1.d), vec2<bool>(true, true), vec2<bool>(false, arg_2)), !vec2<bool>(global2.c, false)))), select(select(!select(vec2<bool>(global1.d, false), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(-1377f == global2.a, !global2.c)), select(!vec2<bool>(true, global2.c), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, false)), false)), vec2<bool>(_wgslsmith_div_f32(-1483f, arg_0) == -144f, 1i > _wgslsmith_clamp_i32(-1i, 18048i, -1773i))));
    let var_1 = -26786i;
    return Struct_5(global1.a, ~(~select(max(global1.a, vec4<u32>(1u, 0u, global1.a.x, 22403u)), vec4<u32>(global1.c.e.x, arg_1, global3.c, 49118u) & vec4<u32>(global2.e.x, 50011u, global2.e.x, global3.c), var_0.x)), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), arg_0)) >= global1.e.x, _wgslsmith_f_op_vec3_f32(-global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.a) + global2.b.x))), global1.a.x & _wgslsmith_sub_u32(1131u, global3.c), firstTrailingBit(global0[_wgslsmith_index_u32(69227u, 8u)]) > u_input.b, countOneBits(-select(-vec4<i32>(-21970i, 0i, global0[_wgslsmith_index_u32(global2.e.x, 8u)], global1.c.d), func_1(), global2.e.x < 0u)));
    global3 = Struct_1(_wgslsmith_div_f32(global2.a, global2.b.x), 1f, global2.e.x, true);
    global2 = func_4(global2.b.x, _wgslsmith_div_u32(global3.c, global1.c.e.x), true, (min(~vec4<i32>(global2.d, global2.d, -3211i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], -47490i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(global3.c, 8u)], -11044i, global0[_wgslsmith_index_u32(4294967295u, 8u)]))) ^ vec4<i32>(abs(global1.c.d), -global0[_wgslsmith_index_u32(global1.a.x, 8u)], select(-160i, global2.d, global1.d), global0[_wgslsmith_index_u32(~global3.c, 8u)])) & ~((vec4<i32>(35657i, global2.d, global1.c.d, 1i) >> (vec4<u32>(global2.e.x, global2.e.x, 34798u, global2.e.x) % vec4<u32>(32u))) >> ((vec4<u32>(global1.b.x, global1.c.e.x, 0u, 4294967295u) << (vec4<u32>(4294967295u, global3.c, 9950u, global2.e.x) % vec4<u32>(32u))) % vec4<u32>(32u)))).c;
    var var_0 = Struct_5(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(global1.a, global1.a << (vec4<u32>(86341u, global3.c, global2.e.x, 11993u) % vec4<u32>(32u))), ~global1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(17414u ^ ~global1.a.x, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(global2.e, vec2<u32>(4294967295u, 46692u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global2.e, global1.b.wx), ~global2.e.x), _wgslsmith_dot_vec2_u32(reverseBits(global1.b.yx), max(global2.e, global1.c.e))), abs(vec4<u32>(41213u, ~24546u, global1.a.x << (12791u % 32u), ~72355u)), min(global1.a, _wgslsmith_add_vec4_u32(global1.b, vec4<u32>(global1.b.x, 30804u, 4294967295u, 1u)) | ~global1.a)), global1.c, !select(!(true != global3.d), global1.c.c, !select(false, global3.d, false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, 923f) + global3.b)), _wgslsmith_f_op_vec3_f32(global2.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, 524f, 1204f))), vec3<bool>(true, (global3.d | true) != global1.d, true))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(global2.b.x - global3.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.e.x)) * _wgslsmith_f_op_f32(-var_0.c.b.x)))), var_0.e.x);
    var_0 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2.a)), -1433f)), 45632u, !(!(!any(vec3<bool>(global3.d, global3.d, true)))), _wgslsmith_sub_vec4_i32(max(vec4<i32>(-3452i, ~39164i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 18592i), vec2<i32>(1i, global1.c.d)), -19617i), reverseBits(vec4<i32>(-1i, global2.d, global1.c.d, var_0.c.d))), countOneBits(_wgslsmith_sub_vec4_i32(~vec4<i32>(-27559i, -1i, 31250i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-31556i, global0[_wgslsmith_index_u32(global1.b.x, 8u)], u_input.b, 9473i), vec4<i32>(1i, 44618i, 2147483647i, global1.c.d))))));
    var var_2 = Struct_4(!select(vec3<bool>(global2.c, false, true), select(select(vec3<bool>(global3.d, false, true), vec3<bool>(true, false, false), true), vec3<bool>(global3.d, global1.d, global3.d), !var_0.c.c), !vec3<bool>(global2.c, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -603f, global3.a, global1.e.x) - vec4<f32>(global1.e.x, 201f, 2122f, var_0.e.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(647f, global2.b.x, -512f, var_0.e.x) - vec4<f32>(global1.e.x, 1194f, 1577f, global1.c.a)))))), !vec3<bool>(!global1.c.c == global1.c.c, !global3.d, global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(func_3(func_4(1325f, global2.e.x, global2.c, vec4<i32>(global0[_wgslsmith_index_u32(global2.e.x, 8u)], var_0.c.d, 1i, -39i)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_vec4_f32(vec4<f32>(1079f, global2.b.x, 489f, global1.c.b.x), vec4<f32>(408f, global1.c.a, global1.e.x, global1.c.b.x)), Struct_4(vec3<bool>(true, false, true), vec4<f32>(-281f, global2.b.x, global2.b.x, global2.a), vec3<bool>(false, false, global2.c), global3.a))))));
    var var_3 = select(vec4<u32>(_wgslsmith_add_u32(abs(0u) << (min(global2.e.x, var_0.b.x) % 32u), global1.c.e.x), _wgslsmith_clamp_u32(firstLeadingBit(abs(61552u)), _wgslsmith_add_u32(global2.e.x, 4294967295u) >> (func_4(777f, 1u, false, vec4<i32>(global1.c.d, global0[_wgslsmith_index_u32(var_0.b.x, 8u)], -2147483647i, 19856i)).b.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.c.e.x, 11017u, global1.b.x), global1.b), 1u, global3.c)), ~func_4(_wgslsmith_f_op_f32(global1.c.a * global3.a), ~global3.c, global3.d == global3.d, max(vec4<i32>(-30161i, -7975i, 2147483647i, -2147483647i), vec4<i32>(29026i, 20837i, var_0.c.d, global2.d))).c.e.x, 0u | countOneBits(func_4(var_0.e.x, 12358u, false, vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 1i)).a.x)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(global1.a >> (vec4<u32>(4294967295u, var_0.a.x, global1.a.x, 42176u) % vec4<u32>(32u)), ~global1.a), func_4(244f, _wgslsmith_mult_u32(8288u, global3.c), false, vec4<i32>(-1i, 0i, var_0.c.d, var_0.c.d) ^ vec4<i32>(-2147483647i, -60101i, 0i, -43689i)).a), vec4<bool>(false, true, all(vec3<bool>(global2.c || true, !global1.d, true)), all(!vec2<bool>(false, global2.c))));
    let x = u_input.a;
    s_output = StorageBuffer(select(-vec2<i32>(~u_input.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, 22530u, global2.e.x), var_0.b.ywz), 8u)]), -(~vec2<i32>(-5236i, 0i) | ~vec2<i32>(19112i, global1.c.d)), select(select(vec2<bool>(true, global1.c.c), select(vec2<bool>(global3.d, var_2.c.x), var_2.c.zz, var_0.d), !var_2.c.yz), var_2.c.yz, true)));
}

