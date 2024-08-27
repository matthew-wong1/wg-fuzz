struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(0u, 20299u, 38257u, 8731u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(50300u);

var<private> global2: array<vec4<i32>, 18>;

var<private> global3: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global4.x, -765f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f + arg_0))))));
    var var_0 = countOneBits(_wgslsmith_sub_vec2_i32(~(-vec2<i32>(1i, 7280i)), ~(~vec2<i32>(u_input.c, -2147483647i)))) >> (u_input.b.yy % vec2<u32>(32u));
    var var_1 = vec2<u32>(global1.a, 14721u);
    var var_2 = Struct_1(firstTrailingBit(-(vec3<i32>(u_input.a, u_input.a, u_input.c) >> (vec3<u32>(global1.a, global0[_wgslsmith_index_u32(global1.a, 5u)], 43395u) % vec3<u32>(32u)))), vec4<bool>(!(~19207u < (1352u ^ arg_1.a)), !all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), false, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1255f, -614f) - vec2<f32>(799f, arg_0)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.x, 1000f), vec2<f32>(global4.x, 134f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.x, 508f))))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-859f))))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.c, var_0.x), var_0.x), select(-vec2<i32>(var_0.x, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -2070i), vec2<i32>(0i, var_0.x)), vec2<bool>(false, true))), ~vec2<i32>(abs(var_0.x), -var_0.x)), u_input.c);
    var_2 = Struct_1(var_2.a, vec4<bool>(false, var_2.b.x, false, false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 685f) - _wgslsmith_f_op_f32(trunc(var_2.c.x)))), arg_0), -(_wgslsmith_clamp_vec2_i32(var_2.d, ~var_2.d, firstTrailingBit(var_2.d)) & ~firstTrailingBit(vec2<i32>(-2147483647i, u_input.c))), firstTrailingBit(-(~var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * global4.x)) * _wgslsmith_f_op_f32(trunc(-1930f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1934f) - 1551f) + _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_f_op_f32(f32(-1f) * -2100f)))) > arg_0;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec4<f32> {
    global2 = array<vec4<i32>, 18>();
    let var_0 = vec3<bool>(any(!vec4<bool>(arg_2, false, true, arg_0)) & !arg_2, !(!func_3(_wgslsmith_f_op_f32(-global4.x), arg_1)), true);
    var var_1 = countOneBits(((_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -37826i, 2147483647i), vec3<i32>(2147483647i, u_input.a, arg_3), vec3<i32>(arg_3, 55898i, arg_3)) << (u_input.b.zyz % vec3<u32>(32u))) ^ vec3<i32>(-2304i, firstTrailingBit(62466i), arg_3)) & (_wgslsmith_div_vec3_i32(vec3<i32>(-26842i, arg_3, 1i), vec3<i32>(u_input.c, -49253i, u_input.c)) | ~(vec3<i32>(-35294i, arg_3, u_input.a) ^ vec3<i32>(0i, arg_3, u_input.c))));
    global4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1162f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 520f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) - vec2<f32>(global4.x, global4.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -656f)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, global4.x), vec2<f32>(global4.x, global4.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1950f, 183f), vec2<f32>(-1361f, global4.x)))))))));
    global1 = arg_1;
    return vec4<f32>(1000f, global4.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-416f - -983f)) - -618f))), global4.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.x + -971f), _wgslsmith_f_op_f32(step(global4.x, -1000f)), -1725f, _wgslsmith_f_op_f32(f32(-1f) * -2157f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(true, arg_1, false, 48321i))))))));
    global2 = array<vec4<i32>, 18>();
    let var_1 = Struct_1(vec3<i32>(8421i, -39213i, _wgslsmith_add_i32(~u_input.c, firstLeadingBit(arg_0.x))), vec4<bool>(true, true, true, true), vec2<f32>(global4.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(var_0.x, -1089f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-var_0.x)))))), ~(-arg_0.yy) ^ arg_2.zw, arg_0.x);
    var var_2 = var_1.d.x;
    var var_3 = var_1;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-vec3<i32>(8629i, -1i, func_1(vec3<i32>(u_input.c, -19015i, 1i), Struct_2(4294967295u), global2[_wgslsmith_index_u32(u_input.b.x, 18u)] ^ vec4<i32>(u_input.a, u_input.c, 0i, 1i))), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)] > 0u, u_input.b.x < global0[_wgslsmith_index_u32(6288u, 5u)], true), vec4<bool>(false, true, true, true), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, false, all(vec3<bool>(false, true, false))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global4.x <= 752f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(654f, -236f) * vec2<f32>(185f, global4.x)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(634f, -266f)))))), ~((min(vec2<i32>(-14322i, u_input.a), vec2<i32>(2147483647i, 11807i)) ^ vec2<i32>(u_input.a, u_input.c)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(6615i, u_input.c), vec2<i32>(1i, 1i), vec2<i32>(u_input.a, u_input.c) ^ vec2<i32>(-43170i, u_input.c))), countOneBits(u_input.c | 14377i));
    let var_1 = var_0.a ^ var_0.a;
    var var_2 = Struct_2(~(global0[_wgslsmith_index_u32(4294967295u, 5u)] & ~_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(4294967295u, 5u)])));
    var var_3 = var_0.c;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(930f, var_0.c.x, -865f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1680f, var_0.c.x) + vec3<f32>(-1165f, 178f, 164f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, var_0.c.x, var_0.c.x)))))));
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1700f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-3109f, _wgslsmith_f_op_f32(-762f - 1668f)), _wgslsmith_f_op_f32(trunc(var_4.x))), var_0.b.x))));
    let var_6 = Struct_1(var_1, var_0.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(700f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_f32(floor(-184f))))), !(!(!var_0.b.zy)))), ~_wgslsmith_sub_vec2_i32(var_1.xy, -(~vec2<i32>(2147483647i, u_input.c))), 58792i);
    var_0 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5130u, global0[_wgslsmith_index_u32(var_2.a, 5u)], 1u, global0[_wgslsmith_index_u32(global1.a, 5u)]), min(u_input.b, u_input.b)), _wgslsmith_mod_vec4_u32(u_input.b, u_input.b)) >> (~u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(~(max(global2[_wgslsmith_index_u32(22629u, 18u)], global2[_wgslsmith_index_u32(80145u, 18u)]) | _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_1.x, 3711i, 14350i), global2[_wgslsmith_index_u32(var_2.a, 18u)])), vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(var_6.e), 1i), min(var_0.d.x >> (var_2.a % 32u), _wgslsmith_add_i32(var_1.x, u_input.c)), func_1(vec3<i32>(-1i, 9634i, var_0.a.x), Struct_2(global1.a), -global2[_wgslsmith_index_u32(var_2.a, 18u)]), var_0.a.x)), ~vec2<u32>(firstTrailingBit(u_input.b.x), ~global0[_wgslsmith_index_u32(0u, 5u)]) ^ vec2<u32>(~var_2.a | _wgslsmith_sub_u32(global1.a, 2054u), _wgslsmith_mult_u32(0u << (u_input.b.x % 32u), 4294967295u)));
}

