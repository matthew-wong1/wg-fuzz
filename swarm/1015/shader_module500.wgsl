struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(0i, 7864i, -1i, 5849i, -6433i, 30720i, i32(-2147483648), -1i, -6605i, 2147483647i, 1i, 65385i, 0i);

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, true, false, true, true, false, false, true, true, true, false, false, false, true, true, true, true, true, false, false, true, false, true, false, false, true, false, true, true, false);

var<private> global2: array<vec3<u32>, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1018f, 1253f), _wgslsmith_f_op_f32(step(466f, 1475f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 422f)) - _wgslsmith_f_op_f32(f32(-1f) * -1264f)))));
    global0 = array<i32, 13>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1902f)), _wgslsmith_f_op_f32(min(-1000f, var_0)))))));
    var var_2 = global2[_wgslsmith_index_u32(~1u, 31u)];
    var_2 = firstTrailingBit((global2[_wgslsmith_index_u32(~1u, 31u)] ^ _wgslsmith_mult_vec3_u32(reverseBits(global2[_wgslsmith_index_u32(1u, 31u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.x, var_2.x, 36127u), global2[_wgslsmith_index_u32(var_2.x, 31u)]))) ^ ~(~global2[_wgslsmith_index_u32(var_2.x, 31u)] ^ countOneBits(global2[_wgslsmith_index_u32(var_2.x, 31u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f * 489f));
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 13>();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-935f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1064f - -563f) - _wgslsmith_f_op_f32(func_3()))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global1 = array<bool, 31>();
    var var_0 = -vec3<i32>(_wgslsmith_add_i32(u_input.a, -select(2147483647i, arg_1, global1[_wgslsmith_index_u32(13249u, 31u)])), u_input.a | 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(14699i, u_input.a, -1i), vec3<i32>(arg_1, arg_1, 0i)), u_input.a), abs(-vec2<i32>(global0[_wgslsmith_index_u32(1u, 13u)], arg_1))));
    global1 = array<bool, 31>();
    var var_1 = Struct_1(-191f);
    var var_2 = select(vec2<bool>(~var_0.x == _wgslsmith_div_i32(var_0.x, -2147483647i), any(!select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)])))), !(!vec2<bool>(global1[_wgslsmith_index_u32(~0u, 31u)], global1[_wgslsmith_index_u32(max(22591u, 1u), 31u)])), any(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(46254u, 31u)], true, global1[_wgslsmith_index_u32(14029u, 31u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(142250u, 31u)], false, global1[_wgslsmith_index_u32(8922u, 31u)])), !select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(16574u, 31u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(48284u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), false), select(select(vec3<bool>(global1[_wgslsmith_index_u32(41349u, 31u)], global1[_wgslsmith_index_u32(17081u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(28742u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(15850u, 31u)]), global1[_wgslsmith_index_u32(4294967295u, 31u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(24536u, 31u)], global1[_wgslsmith_index_u32(11169u, 31u)], false), vec3<bool>(global1[_wgslsmith_index_u32(100056u, 31u)], global1[_wgslsmith_index_u32(15717u, 31u)], true), false), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], true, global1[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(31342u, 31u)]))))));
    return _wgslsmith_mult_i32(~min(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(36299i, arg_1, 27767i), vec3<i32>(u_input.a, arg_1, 0i)), vec3<i32>(u_input.a, -42787i, arg_1) << (vec3<u32>(4294967295u, 2067u, 4294967295u) % vec3<u32>(32u))), firstLeadingBit(-1i)), firstLeadingBit(_wgslsmith_div_i32(~max(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(32301u, 13u)]), max(_wgslsmith_sub_i32(0i, arg_1), global0[_wgslsmith_index_u32(1u, 13u)]))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec3<u32>, 31>();
    var var_0 = max(~func_4(func_2(), countOneBits(global0[_wgslsmith_index_u32(~2678u, 13u)])), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)] ^ global2[_wgslsmith_index_u32(0u, 31u)])), ~_wgslsmith_div_u32(34791u, 12982u)), 13u)]);
    var var_1 = vec2<bool>(global1[_wgslsmith_index_u32(~firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1045u, 4294967295u, 20705u), global2[_wgslsmith_index_u32(0u, 31u)]))), 31u)], min(abs(u_input.a ^ global0[_wgslsmith_index_u32(4294967295u, 13u)]), 0i) >= -2147483647i);
    let var_2 = func_2();
    var_0 = (-59043i << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, 55955u, 77921u, 44010u)), vec4<u32>(1u, 46203u, 24844u, 32621u)) % 32u)) ^ -24136i;
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    global2 = array<vec3<u32>, 31>();
    global0 = array<i32, 13>();
    global1 = array<bool, 31>();
    let var_0 = _wgslsmith_sub_i32(u_input.a, -u_input.a);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(arg_1.a)));
    return StorageBuffer(~(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, global0[_wgslsmith_index_u32(0u, 13u)]), vec2<i32>(u_input.a, 40386i)))), vec2<f32>(var_1.a, _wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, arg_2) & select(vec4<u32>(11288u, arg_2, arg_2, arg_2), vec4<u32>(31724u, 90682u, arg_2, arg_2), global1[_wgslsmith_index_u32(arg_2, 31u)]), ~vec4<u32>(32875u, 1u, arg_2, arg_2) << (vec4<u32>(arg_2, 0u, 110671u, arg_2) % vec4<u32>(32u))), firstTrailingBit(global0[_wgslsmith_index_u32(1u, 13u)]), select(global2[_wgslsmith_index_u32(arg_2, 31u)], global2[_wgslsmith_index_u32(firstTrailingBit(arg_2), 31u)], true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(525f, -1687f)), vec2<f32>(-587f, -652f)))));
    let var_1 = ~(~_wgslsmith_sub_i32(-1709i, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~20639u, _wgslsmith_mod_u32(27380u, 2821u)), 13u)]));
    global2 = array<vec3<u32>, 31>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(max(-1000f, -1000f))), var_0.x, var_0.x);
    let x = u_input.a;
    s_output = func_5(any(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(85838u, 31u)], false, global1[_wgslsmith_index_u32(14344u, 31u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(9346u, 31u)], false, global1[_wgslsmith_index_u32(4294967295u, 31u)], false), vec4<bool>(global1[_wgslsmith_index_u32(8946u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(14202u, 31u)]), false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], true, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]))), Struct_1(-1015f), ~(33067u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 99957u, 27840u, 40618u), vec4<u32>(20807u, 22176u, 82944u, 69265u)), _wgslsmith_dot_vec2_u32(vec2<u32>(12166u, 84110u), vec2<u32>(64305u, 0u))) % 32u)), func_1());
}

