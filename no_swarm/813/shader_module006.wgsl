struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 1>;

var<private> global2: u32 = 14604u;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), true, -50340i));

var<private> global4: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<u32>) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1012f))), _wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-678f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a - global4.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) - _wgslsmith_f_op_f32(-global0.a))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> vec4<f32> {
    var var_0 = select(vec3<bool>(true, !(!all(vec2<bool>(false, true))), true), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(true, false, true))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), !any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)));
    global0 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -812f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(1069f - -104f)) * -1548f), -803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-688f - _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(u_input.c.x, 0u, 1156u, u_input.a))).x))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(344f, ~_wgslsmith_clamp_i32(u_input.d >> ((u_input.a << (u_input.c.x % 32u)) % 32u), _wgslsmith_div_i32(u_input.b, 1i) | _wgslsmith_mult_i32(arg_2.b, 0i), _wgslsmith_clamp_i32(arg_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 16327i, u_input.b, u_input.d), vec4<i32>(-7464i, -1i, arg_0.a.x, arg_2.b)), arg_0.c)));
    var var_1 = u_input.c;
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(695f, -1070f, var_0.a, 1135f) * vec4<f32>(198f, global0.a, 405f, -378f))) * _wgslsmith_f_op_vec4_f32(func_2(vec4<u32>(20736u, u_input.a, global1[_wgslsmith_index_u32(var_1.x, 1u)], 59735u)))), Struct_2(382f, -(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(floor(475f)))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.a, 1000f, 361f, 175f))), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, -1330f, var_0.a, -1205f), vec4<f32>(arg_2.a, 303f, 1000f, var_0.a))))), Struct_2(_wgslsmith_f_op_f32(max(global4.x, -1000f)), var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1630f))));
    let var_2 = reverseBits(~(~select(~vec3<u32>(global1[_wgslsmith_index_u32(var_1.x, 1u)], var_1.x, 0u), vec3<u32>(4294967295u, 23481u, var_1.x) >> (vec3<u32>(u_input.a, var_1.x, 1u) % vec3<u32>(32u)), false)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1147f, -695f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1191f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, arg_2.a, global4.x, global0.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, 1860f, -1491f, var_0.a) + vec4<f32>(769f, arg_2.a, 1499f, var_0.a))) * _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(global1[_wgslsmith_index_u32(58884u, 1u)], 0u, 1u, 4294967295u)) ^ ~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 1u)], 1u)], 4294967295u, 1581u)))));
    return vec4<i32>(_wgslsmith_mod_i32(-1i, arg_0.c ^ reverseBits(~1i)), -_wgslsmith_mod_i32(-u_input.d & (arg_0.a.x << (48989u % 32u)), -19780i), max(-23681i, -1i), _wgslsmith_dot_vec3_i32(arg_0.a, -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1i, -1i), arg_0.a >> (vec3<u32>(67476u, var_1.x, u_input.c.x) % vec3<u32>(32u)), arg_0.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(~(-arg_0.x) | -7637i, ~(-2147483647i), ~26466i);
    var var_1 = all(vec4<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, false, true, true))), all(vec4<bool>(true, u_input.a > global1[_wgslsmith_index_u32(0u, 1u)], false, true)), !(true && all(vec2<bool>(false, false))), all(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))))));
    let var_2 = arg_1;
    global3 = array<Struct_1, 1>();
    let var_3 = ~(select(firstTrailingBit(~u_input.a), ~(~u_input.a), select(any(vec3<bool>(false, false, false)), true, true)) ^ _wgslsmith_add_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(56689u), 1u)], 1u)]), u_input.c.x));
    return Struct_2(-1487f, _wgslsmith_dot_vec3_i32(reverseBits(arg_0.wxx), arg_0.xyw) & _wgslsmith_mult_i32(~_wgslsmith_sub_i32(0i, 23841i), firstLeadingBit(func_1(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], false, arg_2).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, global0.a, -1406f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, -1053f, 1121f, 1782f) - vec4<f32>(318f, 2234f, -900f, -1375f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, global0.a, 1796f, -421f), vec4<f32>(global4.x, -1000f, global0.a, 699f)) * vec4<f32>(157f, global4.x, global4.x, -1003f)) + vec4<f32>(699f, _wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(973f, 764f), _wgslsmith_div_f32(global0.a, global0.a)))));
    let var_0 = func_4(vec4<i32>(-1i, max(_wgslsmith_mod_i32(10356i, global0.b) << (5843u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d, 1i, 2147483647i) << (vec4<u32>(103929u, global1[_wgslsmith_index_u32(1u, 1u)], u_input.a, global1[_wgslsmith_index_u32(1u, 1u)]) % vec4<u32>(32u)), func_1(global3[_wgslsmith_index_u32(u_input.a, 1u)], true, Struct_2(-137f, u_input.d)))), ~func_1(Struct_1(vec3<i32>(1i, global0.b, u_input.b), false, global0.b), true, Struct_2(global0.a, u_input.e)).x, 0i), Struct_2(global0.a, 3318i), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global4.x))), global0.b));
    let var_1 = _wgslsmith_clamp_vec4_i32(~min(-reverseBits(vec4<i32>(global0.b, -2147483647i, u_input.e, -30113i)), -vec4<i32>(global0.b, var_0.b, 7135i, -15719i)), firstLeadingBit(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-7079i, global0.b), _wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_clamp_i32(49069i, var_0.b, var_0.b)), (27994i | var_0.b) ^ u_input.b)), -((_wgslsmith_div_vec4_i32(vec4<i32>(-11174i, u_input.e, -30234i, -10155i), vec4<i32>(u_input.e, 1i, global0.b, -40488i)) & max(vec4<i32>(global0.b, global0.b, -2147483647i, -2147483647i), vec4<i32>(var_0.b, 0i, -41230i, var_0.b))) >> ((vec4<u32>(52371u, u_input.c.x, u_input.c.x, global1[_wgslsmith_index_u32(u_input.a, 1u)]) ^ (vec4<u32>(0u, u_input.a, 35656u, global1[_wgslsmith_index_u32(u_input.c.x, 1u)]) >> (vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 79963u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a));
    let var_3 = global4.x;
    var var_4 = max(firstLeadingBit(var_0.b), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(countOneBits(min(var_1, var_1)), vec4<i32>(1i, -1i, firstTrailingBit(_wgslsmith_mult_i32(global0.b, global0.b)), u_input.e)));
}

