struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(238f, -460f, -534f, -448f, -1907f, 1010f, 1356f, -1982f, 166f, -1000f, -365f, -409f, 869f, 1357f, -871f, 734f, -547f, 1456f, -1709f, -672f);

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global1 = Struct_1(vec3<u32>(global1.a.x, 4294967295u, global1.a.x));
    var var_0 = u_input.c.wx;
    var var_1 = select(false, any(global2.xww), all(arg_0.zz));
    var var_2 = Struct_3(Struct_1(select(~global1.a, global1.a, _wgslsmith_add_i32(-19898i, -1i) > (-11575i << (u_input.d.x % 32u)))));
    var var_3 = -u_input.e;
    return ~_wgslsmith_add_i32(~u_input.e, -2147483647i) >= (u_input.a.x & (u_input.e ^ u_input.a.x));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> bool {
    var var_0 = arg_0.a;
    let var_1 = vec4<i32>(~abs(select(-1i, firstLeadingBit(u_input.a.x), arg_1.x || false)), firstLeadingBit(2147483647i), -2147483647i, u_input.a.x);
    var var_2 = Struct_3(arg_0.a);
    var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.x, 20u)] - global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 20u)] + global0[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~var_0.a.x, 20u)], _wgslsmith_f_op_f32(round(-610f))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1452f, -1911f, global0[_wgslsmith_index_u32(0u, 20u)]))) * vec3<f32>(613f, -583f, -1355f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(var_2.a.a.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], 864f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-150f, global0[_wgslsmith_index_u32(135908u, 20u)], global0[_wgslsmith_index_u32(var_0.a.x, 20u)]))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], -1694f) + vec3<f32>(global0[_wgslsmith_index_u32(25802u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(u_input.b.x, 20u)])) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(498f, -997f, -948f), vec3<f32>(global0[_wgslsmith_index_u32(var_2.a.a.x, 20u)], -1296f, -493f), false))), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-139f, 449f, -513f), vec3<f32>(-706f, global0[_wgslsmith_index_u32(75475u, 20u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 20u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-424f, -3958f, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]) * vec3<f32>(-2348f, -216f, -487f)))), global2.x)));
    return select(arg_1.x, false, any(!(!vec3<bool>(global2.x, global2.x, arg_1.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> StorageBuffer {
    global2 = !select(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.x) < -1000f, func_2(!vec4<bool>(false, global2.x, global2.x, false)), func_3(Struct_3(Struct_1(vec3<u32>(arg_0.x, 1u, global1.a.x))), global2.xy), global2.x), !vec4<bool>(true, func_2(vec4<bool>(global2.x, false, global2.x, true)), global2.x, true), vec4<bool>(true, true, all(global2.zx), !select(global2.x, true, global2.x)));
    let var_0 = Struct_1(vec3<u32>(select(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1.a.x, 1u, 20528u)), global1.a >> (vec3<u32>(u_input.d.x, 9443u, arg_0.x) % vec3<u32>(32u))), _wgslsmith_div_u32(~4294967295u, ~u_input.b.x), func_3(Struct_3(Struct_1(vec3<u32>(u_input.c.x, u_input.b.x, global1.a.x))), select(global2.zy, global2.zx, global2.zz))), global1.a.x, ~1u));
    global1 = var_0;
    var var_1 = Struct_2(select(max(abs(49709i), arg_2.x), reverseBits(arg_2.x), select(true, global2.x, global2.x) & any(vec2<bool>(false, true))) >> (1u % 32u), var_0, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(42705u, ~global1.a.x), 20u)], _wgslsmith_sub_u32(~1u, 1u), Struct_1(arg_0));
    var_1 = Struct_2(-_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.x, u_input.a.x, var_1.a, var_1.a), countOneBits(vec4<i32>(u_input.e, 1417i, var_1.a, var_1.a))), abs(vec4<i32>(var_1.a, u_input.a.x, -11858i, 17917i) & vec4<i32>(u_input.e, var_1.a, -2147483647i, var_1.a))), Struct_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.c.wzw, global1.a), ~select(vec3<u32>(16256u, u_input.d.x, var_0.a.x), vec3<u32>(var_1.e.a.x, u_input.d.x, var_0.a.x), global2.x), vec3<u32>(32171u, 41041u, var_0.a.x) ^ global1.a)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - -1095f)), arg_1.x), 916f)), _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(39534u, firstTrailingBit(0u), var_0.a.x, ~u_input.b.x)), Struct_1(var_1.e.a));
    return StorageBuffer(vec4<u32>(u_input.b.x, ~_wgslsmith_add_u32(40755u, u_input.c.x), 40951u, (var_1.e.a.x ^ 35501u) | ~1u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(max(~var_1.e.a.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, var_1.e.a.x, global1.a.x, 0u))) ^ 1u, 20u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(2084f, -1000f, -170f) + arg_1.wyy))), arg_1.zww), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(arg_1.yxx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-771f, global0[_wgslsmith_index_u32(46866u, 20u)], -1079f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(198f, arg_1.x, -575f), vec3<f32>(-1000f, var_1.c, 741f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -734f;
    var var_1 = ~(~(~vec2<u32>(0u, 4294967295u)));
    var var_2 = Struct_3(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(abs(u_input.c), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), ~(~0u), _wgslsmith_dot_vec4_u32(vec4<u32>(82365u, var_1.x, 5307u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(28174u, 4294967295u, 18926u, 0u), vec4<u32>(var_1.x, global1.a.x, 62513u, var_1.x))))));
    let var_3 = var_2.a;
    var_1 = var_3.a.zx >> (~u_input.d % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_1(~(~u_input.c.xxy), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-517f, 327f, -475f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.x, 9393u), vec2<u32>(var_2.a.a.x, 1u)), 20u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 20u)] + 105f), _wgslsmith_f_op_f32(1349f - global0[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(round(1382f)), -774f)))), vec3<i32>(~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mod_i32(15295i, u_input.e)), firstLeadingBit(countOneBits(0i)), 0i));
}

