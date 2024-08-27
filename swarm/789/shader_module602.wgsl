struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(1i, 1239i, 24067i, 1689i, i32(-2147483648), 9697i, -234i, 297i, -2361i, 2147483647i, 40893i, 1i, 15494i);

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false));

var<private> global2: array<vec3<bool>, 5>;

var<private> global3: array<Struct_1, 8>;

var<private> global4: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec4<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), !(any(vec2<bool>(true, false)) && false) & true, all(vec3<bool>(true, all(vec3<bool>(true, true, false)), true)) || any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), global2[_wgslsmith_index_u32(reverseBits(u_input.b), 5u)])), (1391f >= _wgslsmith_f_op_f32(sign(-1415f))) && select(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true)), true));
    var var_1 = 2147483647i << (~u_input.b % 32u);
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1187f, -2160f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, 231f) + vec2<f32>(-1189f, -532f)), vec2<f32>(-124f, 1109f), var_0.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1153f * 1631f), _wgslsmith_f_op_f32(1807f + 866f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, 504f))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global4 = vec3<i32>(~global4.x, -1i, 1i);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-686f * arg_0.a), arg_0.a)))), arg_1.a);
    global4 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.e >> (u_input.b % 32u), global0[_wgslsmith_index_u32(70058u, 13u)] | u_input.a, select(-2147483647i, 1i, arg_1.b.x))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, 0i, u_input.a), -vec3<i32>(arg_1.c.x, u_input.a, -32644i)), max(vec3<i32>(52251i, 1i, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<i32>(u_input.a, 3653i, -2147483647i)) ^ vec3<i32>(u_input.a, 0i, 34008i))) | ~(~vec3<i32>(12962i << (u_input.b % 32u), _wgslsmith_add_i32(arg_0.e, 2147483647i), firstTrailingBit(-11651i)));
    let var_1 = vec4<i32>(u_input.a, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(48707i, -16796i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, 23432i)), global4.xy)), u_input.a, -arg_0.e);
    var var_2 = vec4<u32>(52695u, u_input.b, 48200u, ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(47045u, 73608u, u_input.b), abs(vec3<u32>(u_input.b, 63290u, u_input.b))), ~u_input.b | 4294967295u));
    return _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~firstLeadingBit(u_input.b), abs(_wgslsmith_mod_u32(1u, 1u))), _wgslsmith_div_vec2_u32(countOneBits(var_2.wx & vec2<u32>(4294967295u, u_input.b)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, u_input.b), vec2<u32>(13466u, 1u))))), var_2.wz);
}

fn func_2(arg_0: u32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(724f, vec3<bool>(true, true, true), -select(global4.xz << (func_3(Struct_1(1753f, global1[_wgslsmith_index_u32(arg_0, 21u)], global4.yz, 2758f, -25369i), Struct_1(812f, vec3<bool>(arg_1, arg_1, arg_1), vec2<i32>(u_input.a, -1i), -159f, 43403i)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, -35995i, global4.x), vec3<i32>(u_input.a, 3496i, 27108i)), ~u_input.a), vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(false, arg_1, arg_1, false)))), 837f, min(-2147483647i, 0i));
    var var_1 = Struct_1(-1402f, vec3<bool>(arg_1, true, true), select(-_wgslsmith_mod_vec2_i32(vec2<i32>(global4.x, global0[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_mod_vec2_i32(global4.zy, global4.yy)), ~abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 0i)), select(select(vec2<bool>(true, true), !var_0.b.xz, select(var_0.b.yy, var_0.b.xz, var_0.b.zy)), !vec2<bool>(arg_1, arg_1), var_0.b.yx)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a - 1718f)))))), -2147483647i);
    global3 = array<Struct_1, 8>();
    let var_2 = vec4<bool>(arg_1, false, !(!var_1.b.x), arg_1);
    global0 = array<i32, 13>();
    return global3[_wgslsmith_index_u32(u_input.b, 8u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> vec3<f32> {
    let var_0 = !select(select(select(vec4<bool>(false, arg_1.b.x, arg_1.b.x, arg_1.b.x), !vec4<bool>(true, true, arg_1.b.x, false), any(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), !vec4<bool>(false, true, true, arg_1.b.x), arg_1.b.x), vec4<bool>(arg_1.b.x, !func_2(5575u, arg_1.b.x).b.x, arg_1.b.x && (arg_1.b.x || true), arg_1.b.x), vec4<bool>(true, true, !(arg_0 > u_input.b), true));
    global2 = array<vec3<bool>, 5>();
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 50184u), 8u)];
    global2 = array<vec3<bool>, 5>();
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, var_1.d) - vec3<f32>(var_1.a, 393f, -443f)) + arg_2)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(arg_2)))) - vec3<f32>(623f, arg_1.d, _wgslsmith_f_op_f32(f32(-1f) * -442f)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1825f, -1094f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -1293f))))), _wgslsmith_f_op_f32(-arg_2.x), arg_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, abs(~u_input.b)), 8u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1()))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1605f, 2204f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, -812f)), vec2<f32>(var_0.a, var_0.d))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(898f))))), var_0.b, vec2<i32>(global4.x, _wgslsmith_add_i32(var_0.e, _wgslsmith_sub_i32(~(-2147483647i), u_input.a))), 432f, _wgslsmith_add_i32(global4.x, -1i));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b >> (u_input.b % 32u), 9485u), 8u)];
    let var_4 = var_0.e > -1i;
    var var_5 = _wgslsmith_f_op_vec3_f32(func_4(u_input.b, func_2(select(_wgslsmith_mult_u32(u_input.b, 4294967295u), ~abs(1u), false || var_0.b.x), false), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), -500f, _wgslsmith_f_op_f32(f32(-1f) * -193f)))), -_wgslsmith_dot_vec2_i32(firstLeadingBit(-var_0.c), ~vec2<i32>(45535i, 51394i))));
    let var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(floor(var_5.x)))), 892f, false));
    var var_7 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(u_input.b)), ~firstLeadingBit(~(~vec3<u32>(46083u, u_input.b, u_input.b))), vec3<u32>(~u_input.b << (u_input.b % 32u), u_input.b, _wgslsmith_mod_u32(~u_input.b >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 0u, u_input.b)), ~vec3<u32>(46992u, 1u, u_input.b)))));
}

