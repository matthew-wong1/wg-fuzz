struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(2147483647i, i32(-2147483648), i32(-2147483648), -1i, 25547i, 1i, -1i, -28683i, 66407i, 35957i, i32(-2147483648), 33155i, -39889i, -18144i, 1i, 32648i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    return vec2<i32>(u_input.a, select(global0[_wgslsmith_index_u32(4294967295u, 17u)], 0i, !select(true, false, arg_0.c.a)) << (~11519u % 32u));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = !(!(true | (arg_1.x && (arg_1.x & false))));
    let var_1 = Struct_3(arg_2);
    let var_2 = Struct_1(!any(select(vec3<bool>(true, arg_1.x, arg_1.x), !vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x)), arg_2, func_3(Struct_2(Struct_1(true, arg_2, ~vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 17u)], global0[_wgslsmith_index_u32(var_1.a, 17u)])), Struct_1(false, var_1.a, ~vec2<i32>(u_input.a, u_input.a)), Struct_1(true, arg_2, countOneBits(vec2<i32>(u_input.a, -45815i))), Struct_1(any(arg_1.xx), ~arg_2, _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_2, 17u)], 1i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 17u)], u_input.a))))));
    global0 = array<i32, 17>();
    var var_3 = -49527i;
    return all(arg_1);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1979f, 685f, -1085f, 808f) * vec4<f32>(927f, -782f, -971f, -512f)))))), vec3<bool>(true, !(true | all(vec3<bool>(false, false, true))), any(vec3<bool>(true, true, true))), _wgslsmith_sub_u32(firstLeadingBit(firstLeadingBit(1u)), 0u));
    var_0 = !all(vec4<bool>(true, true, !(u_input.a == u_input.a), true));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-161f, -725f) + 1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1840f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1022f))))))));
    var_1 = -869f;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-329f - _wgslsmith_f_op_f32(-898f * -114f)), 532f), -109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1972f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-930f * 640f) + -251f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-301f)) + _wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1395f, 1086f, 1737f, 1488f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-727f, -994f, -1000f, -662f) - vec4<f32>(-350f, 162f, 1294f, 157f)))))));
    return StorageBuffer(_wgslsmith_mult_u32(1u ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(15036u, 4294967295u, 50208u, 30035u)), vec4<u32>(27849u, 1u, 0u, 43774u)), 1u), ~vec2<u32>(1u, ~firstLeadingBit(7607u)), firstTrailingBit(~vec4<u32>(~11907u, _wgslsmith_sub_u32(4294967295u, 0u), ~77784u, 41385u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(var_2.x + var_2.x))) * _wgslsmith_f_op_vec3_f32(var_2.yxy - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wxx), vec3<f32>(var_2.x, var_2.x, -1037f)))), 5333i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 17>();
    var var_0 = ~vec4<i32>(2147483647i, 2544i, abs(-global0[_wgslsmith_index_u32(~4294967295u, 17u)]), ~(~firstTrailingBit(-70302i)));
    global0 = array<i32, 17>();
    let var_1 = abs(_wgslsmith_add_vec4_i32(-vec4<i32>(~u_input.a, global0[_wgslsmith_index_u32(~3456u, 17u)], -26388i, 0i), vec4<i32>(18849i, global0[_wgslsmith_index_u32(~(~78588u), 17u)], firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(28448u, 17u)], 180i) << (vec2<u32>(34229u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a, var_0.x)))));
    global0 = array<i32, 17>();
    var_0 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(~(~1i), 0i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_1.x, u_input.a)), ~vec2<i32>(var_1.x, -1i)), abs(46609i | var_0.x))), ~_wgslsmith_add_vec4_i32(var_1, firstTrailingBit(firstTrailingBit(var_1))));
    let x = u_input.a;
    s_output = func_1();
}

