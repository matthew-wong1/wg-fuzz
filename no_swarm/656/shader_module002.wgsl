struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<bool, 5>;

var<private> global2: Struct_1 = Struct_1(41530u, i32(-2147483648), -1i, vec4<f32>(920f, 712f, -1000f, 1060f), 2147483647i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global2 = Struct_1(min(max(~1u, ~4294967295u), global2.a), -_wgslsmith_clamp_i32(0i, ~abs(-1i), 36487i), 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(787f, _wgslsmith_f_op_f32(f32(-1f) * -588f), global2.d.x, _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_vec4_f32(ceil(global2.d)), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(global2.d.x * global2.d.x)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(global2.d)))))), 1i);
    global1 = array<bool, 5>();
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b, min(select(u_input.b, u_input.b, global0[_wgslsmith_index_u32(global2.a, 5u)]), u_input.b) << (vec3<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(global2.a, u_input.b.x)), firstLeadingBit(global2.a)) % vec3<u32>(32u))), _wgslsmith_sub_i32(u_input.a.x, abs(reverseBits(global2.e))), -2147483647i, vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(715f, global2.d.x, global1[_wgslsmith_index_u32(4294967295u, 5u)]))), _wgslsmith_f_op_f32(-466f - _wgslsmith_div_f32(global2.d.x, -502f)))), -220f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.d.x, -680f), 237f)), global2.d.x))), -51637i);
    let var_0 = Struct_3(vec2<u32>(35275u, 0u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f - global2.d.x) + global2.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1311f), _wgslsmith_div_f32(global2.d.x, global2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1073f)))))), -239f, -(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.a, u_input.a)));
    global2 = Struct_1(global2.a, ~(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-38648i, -6707i, -2147483647i), _wgslsmith_div_i32(u_input.a.x, -1i))), _wgslsmith_mult_i32(min(-(~u_input.a.x), ~var_0.d.x), -_wgslsmith_clamp_i32(-13795i, global2.e, var_0.d.x) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(78751u, 1u, global2.a, global2.a), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 29587u, global2.a, var_0.a.x), vec4<u32>(23982u, 42059u, 18290u, var_0.a.x))) % 32u)), global2.d, u_input.a.x);
    return true;
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    var var_0 = vec3<bool>(!all(!vec3<bool>(global1[_wgslsmith_index_u32(global2.a, 5u)], global0[_wgslsmith_index_u32(global2.a, 5u)], true)) & false, func_3() | global1[_wgslsmith_index_u32(~max(_wgslsmith_sub_u32(45603u, 894u), _wgslsmith_add_u32(65479u, 0u)), 5u)], false || any(arg_0));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x - -2923f) + -1999f))), _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(-global2.d.x)), !(global1[_wgslsmith_index_u32(49510u, 5u)] || global1[_wgslsmith_index_u32(0u, 5u)]))) <= global2.d.x;
    var var_2 = u_input.c;
    let var_3 = (global2.a ^ min(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, u_input.b.x), u_input.b.zy), _wgslsmith_clamp_u32(global2.a ^ u_input.c.x, var_2.x, 1u))) < 31515u;
    var var_4 = Struct_4(Struct_2(vec4<u32>(var_2.x, var_2.x, ~countOneBits(34412u), global2.a & var_2.x)));
    return ~(_wgslsmith_add_i32(-58963i, global2.e) & abs(global2.c));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 5>();
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, global2.a), u_input.c), func_4(vec2<bool>(func_3(), true)), _wgslsmith_clamp_i32(u_input.a.x, global2.c, _wgslsmith_div_i32(u_input.a.x, i32(-1i) * -25783i)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2.d * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1155f, global2.d.x, global2.d.x, 410f) + global2.d)))))), -firstTrailingBit(global2.e));
    let var_1 = Struct_3(u_input.b.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, var_0.d.x, -633f), var_0.d.xxx, global0[_wgslsmith_index_u32(var_0.a, 5u)])), _wgslsmith_f_op_vec3_f32(var_0.d.xxz - vec3<f32>(-484f, arg_1.x, 524f))))))), arg_1.x, vec2<i32>(countOneBits(-1i), u_input.a.x));
    return Struct_2(~countOneBits(~(vec4<u32>(var_1.a.x, 109052u, var_0.a, 17151u) >> (vec4<u32>(69484u, u_input.c.x, global2.a, var_0.a) % vec4<u32>(32u)))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(vec2<u32>(11165u, abs(u_input.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)), global2.d.x, global2.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, global2.d.x, global2.d.x) - vec3<f32>(global2.d.x, global2.d.x, -605f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(536f, -369f, 1053f)))))), _wgslsmith_f_op_f32(max(639f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-138f - global2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x)))))), u_input.a);
    var_0 = Struct_3(~firstTrailingBit(_wgslsmith_sub_vec2_u32(select(var_0.a, var_0.a, vec2<bool>(arg_2, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 71588u), vec2<u32>(1u, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global2.d.zxw, _wgslsmith_f_op_vec3_f32(-global2.d.xzy), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(var_0.a.x, 5u)], true), 0i < var_0.d.x))))), -1016f, ~u_input.a);
    global1 = array<bool, 5>();
    let var_1 = Struct_2(arg_1.a.a & _wgslsmith_add_vec4_u32(arg_1.a.a, select(arg_1.a.a << (arg_1.a.a % vec4<u32>(32u)), arg_1.a.a, select(vec4<bool>(arg_2, true, true, global1[_wgslsmith_index_u32(var_0.a.x, 5u)]), vec4<bool>(arg_0, false, global1[_wgslsmith_index_u32(4294967295u, 5u)], false), vec4<bool>(global0[_wgslsmith_index_u32(25819u, 5u)], arg_0, false, false)))));
    var var_2 = func_2(select(!select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global1[_wgslsmith_index_u32(633u, 5u)], arg_0), select(vec4<bool>(true, global1[_wgslsmith_index_u32(34803u, 5u)], global1[_wgslsmith_index_u32(global2.a, 5u)], global1[_wgslsmith_index_u32(var_0.a.x, 5u)]), vec4<bool>(arg_0, true, global0[_wgslsmith_index_u32(22384u, 5u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(arg_1.a.a.x, 5u)], true))), vec4<bool>(any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(9659u, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(2968u, 5u)], arg_2), vec2<bool>(arg_2, arg_2))), !(false && global0[_wgslsmith_index_u32(global2.a, 5u)]), -11213i >= global2.e, true), any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, arg_0, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.xy)) * _wgslsmith_f_op_vec2_f32(trunc(var_0.b.xz)))));
    return Struct_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.a.x, u_input.c.x) >> (u_input.c % vec2<u32>(32u))), (vec2<u32>(4294967295u, global2.a) ^ var_0.a) >> (~vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) >> ((1u & arg_1.a.a.x) % 32u), ~(-(~var_0.d.x) | firstLeadingBit(i32(-1i) * -1i)), ~(-36714i), global2.d, global2.e << (global2.a % 32u));
}

fn func_6(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(func_2(select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(arg_0.a, 5u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(global2.a, 5u)], global1[_wgslsmith_index_u32(8325u, 5u)])), vec4<bool>(u_input.a.x > -34078i, true, false, global0[_wgslsmith_index_u32(global2.a, 5u)]), select(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(33810u, 5u)], global1[_wgslsmith_index_u32(global2.a, 5u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(global2.a, 5u)], true, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(global2.d.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(646f, -134f) - vec2<f32>(-159f, arg_0.d.x))))))));
    let var_1 = vec3<i32>(~(firstLeadingBit(abs(arg_0.e)) >> (arg_0.a % 32u)), _wgslsmith_add_i32(3343i, arg_0.e), u_input.a.x);
    var_0 = Struct_4(Struct_2(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, arg_0.a, arg_0.a, u_input.b.x)) ^ ~vec4<u32>(var_0.a.a.x, 1u, 11319u, u_input.c.x), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, arg_0.a, var_0.a.a.x), vec4<u32>(u_input.b.x, u_input.c.x, 6804u, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.x, var_0.a.a.x, 4294967295u, 69287u), vec4<u32>(69966u, u_input.c.x, u_input.b.x, arg_0.a)), min(50333u, var_0.a.a.x), _wgslsmith_add_u32(arg_0.a, arg_0.a)))));
    global0 = array<bool, 5>();
    let var_2 = Struct_2(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, u_input.b.x, 0u, 4294967295u) & abs(vec4<u32>(47972u, 67569u, 36055u, 0u))), vec4<u32>(~var_0.a.a.x, firstLeadingBit(1u), global2.a, _wgslsmith_sub_u32(var_0.a.a.x, ~4294967295u))));
    return ~vec3<u32>(4294967295u, reverseBits(_wgslsmith_dot_vec3_u32(var_0.a.a.xyy, vec3<u32>(var_2.a.x, 4294967295u, 42228u))), firstTrailingBit(~4294967295u)) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, var_2.a.x, 0u, countOneBits(var_2.a.x)), vec4<u32>(var_2.a.x, var_0.a.a.x, ~4294967295u, 4294967295u << (0u % 32u))), abs(min(48789u, ~u_input.b.x)), 55053u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: i32) -> Struct_1 {
    let var_0 = func_6(func_5(!(_wgslsmith_div_i32(global2.e, global2.e) != -33335i), Struct_4(func_2(vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 5u)], true, true), vec2<f32>(449f, arg_1.x))), any(vec4<bool>(true, global0[_wgslsmith_index_u32(abs(13805u), 5u)], all(vec4<bool>(global0[_wgslsmith_index_u32(global2.a, 5u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 5u)])), all(vec2<bool>(true, true))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.xx);
    let var_2 = vec4<u32>(~(~firstLeadingBit(49622u)), ~func_2(vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 5u)], global1[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false), vec2<f32>(arg_1.x, var_1.x)).a.x ^ ~1u, 1u, ~0u) ^ vec4<u32>(1u, arg_2.x, u_input.b.x, 0u);
    let var_3 = var_2;
    var var_4 = u_input.a.x;
    return Struct_1(func_6(Struct_1(~func_5(false, Struct_4(Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, var_2.x))), global1[_wgslsmith_index_u32(4294967295u, 5u)]).a, _wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_add_i32(global2.c, 2147483647i)), _wgslsmith_dot_vec3_i32(arg_0, -arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global2.d.x, var_1.x, 189f) * vec4<f32>(-787f, -1000f, arg_1.x, arg_1.x))), max(arg_3, firstTrailingBit(arg_3)))).x, 2147483647i, -2147483647i, global2.d, -_wgslsmith_dot_vec3_i32(arg_0, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-103044i, u_input.a.x, 2364i), vec3<i32>(u_input.a.x, 29200i, u_input.a.x) & vec3<i32>(50253i, global2.c, global2.e)), -vec3<i32>(7277i, -2147483647i, u_input.a.x)) ^ max(firstLeadingBit(~vec3<i32>(2147483647i, 54101i, global2.e)), countOneBits(vec3<i32>(90644i, u_input.a.x, global2.c) << (u_input.b % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.d.x)), -398f, global2.d.x))), u_input.b.xy, u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<i32>(global2.b, 0i, u_input.a.x), vec3<f32>(global2.d.x, var_0.d.x, global2.d.x), countOneBits(u_input.b.yy), -var_0.c).d.x + global2.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.x))))));
    global1 = array<bool, 5>();
    var var_2 = firstLeadingBit(vec4<u32>(~(~(~1u)), 1u, 1u, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(~1u, 4294967295u, abs(u_input.c.x)))));
    global2 = func_5(any(select(vec2<bool>(true, true), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 5u)]), !global1[_wgslsmith_index_u32(global2.a & 4294967295u, 5u)])), Struct_4(Struct_2(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 101898u), vec4<u32>(u_input.c.x, 0u, 0u, 0u))))), !(!all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(var_0.a, 5u)]))));
    var var_3 = _wgslsmith_f_op_f32(max(-303f, func_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.b, -1i, u_input.a.x), vec3<i32>(u_input.a.x, global2.e, -2147483647i)), ~1i, func_1(vec3<i32>(u_input.a.x, global2.e, u_input.a.x), vec3<f32>(-268f, global2.d.x, var_0.d.x), vec2<u32>(u_input.b.x, 1u), 24509i).c) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c, -2147483647i, -3010i), ~vec3<i32>(global2.b, var_0.c, global2.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -542f)), func_1(~vec3<i32>(2147483647i, 1i, 32185i), _wgslsmith_f_op_vec3_f32(-global2.d.xwy), var_2.zx, 18113i).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.d.x)) + var_0.d.x)), var_2.wx, -13395i).d.x));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(countOneBits(reverseBits(vec4<u32>(15239u, 38151u, global2.a, 0u))), reverseBits(select(vec4<u32>(73145u, var_2.x, var_0.a, var_0.a), vec4<u32>(var_2.x, 0u, 4294967295u, 67052u), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 5u)], var_4, global1[_wgslsmith_index_u32(global2.a, 5u)]))), false), ~(~vec4<u32>(23583u, var_0.a, u_input.b.x, var_0.a)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, global2.a, var_2.x, u_input.c.x), vec4<u32>(51371u, 3401u, var_2.x, 30256u), vec4<u32>(54827u, global2.a, 4294967295u, 94797u))), var_0.d.x, _wgslsmith_mod_vec2_i32(abs(~vec2<i32>(var_0.e, global2.b)), min(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(24649i, 38421i) & vec2<i32>(var_0.b, 51629i), select(u_input.a, u_input.a, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], true))))), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(1i, reverseBits(-58844i), func_5(false, Struct_4(Struct_2(vec4<u32>(55477u, 1u, global2.a, u_input.c.x))), global1[_wgslsmith_index_u32(40091u, 5u)]).e, global2.b)), countOneBits(~(vec4<i32>(1i, 0i, global2.c, global2.c) >> (vec4<u32>(global2.a, u_input.c.x, 0u, var_0.a) % vec4<u32>(32u))))), select(var_2.wwy | _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, var_0.a, u_input.c.x)), ~var_2.yww, _wgslsmith_clamp_vec3_u32(var_2.zyw, var_2.yzw, u_input.b)), vec3<u32>(_wgslsmith_mod_u32(var_0.a, global2.a), ~var_0.a << (2164u % 32u), _wgslsmith_mod_u32(~var_2.x, ~var_0.a)), vec3<bool>(~global2.b == -22208i, true, false)));
}

