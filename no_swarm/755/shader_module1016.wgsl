struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-695f, 2691f), vec4<i32>(59946i, 25134i, 9962i, 0i), vec2<i32>(1i, 440i), vec2<bool>(false, false), 1802f);

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i) * -vec3<i32>(-46820i, -61639i, u_input.c), -abs(vec3<i32>(global0.b.x, u_input.b, u_input.e))) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, min(global0.c.x, 2147483647i), u_input.e & 6299i), vec3<i32>(global0.b.x, global0.c.x, -2147483647i)), global0.b.zzz);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, global0.d)))))), -vec4<i32>(-var_0.x, -u_input.b, _wgslsmith_add_i32(global0.b.x, -37212i), -1i), ~(select(var_0.yy, vec2<i32>(var_0.x, 7553i), any(vec3<bool>(global0.d.x, arg_2.x, true))) & _wgslsmith_clamp_vec2_i32(firstTrailingBit(global0.b.zy), -vec2<i32>(global0.b.x, u_input.b), global0.c)), select(select(vec2<bool>(false, arg_2.x & true), global0.d, arg_2.x), vec2<bool>(true, true), arg_2), global0.a.x);
    var var_1 = ~countOneBits(vec2<u32>(~_wgslsmith_add_u32(arg_0, arg_0), _wgslsmith_mod_u32(4294967295u, 0u & arg_0)));
    let var_2 = _wgslsmith_f_op_vec2_f32(global0.a + global0.a);
    var var_3 = Struct_2(abs(~min(_wgslsmith_clamp_vec4_u32(arg_1, arg_1, vec4<u32>(arg_0, 1u, 135676u, 1u)), select(vec4<u32>(26748u, arg_0, 1u, 1u), arg_1, vec4<bool>(global0.d.x, arg_2.x, arg_2.x, false)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_1.x), 29u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b.a.x)) + global0.a.x));
}

fn func_2(arg_0: f32) -> f32 {
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    var var_0 = ~vec3<i32>(global0.b.x, _wgslsmith_mult_i32(global0.c.x, 0i), -u_input.e);
    global0 = global1[_wgslsmith_index_u32(0u, 29u)];
    var var_1 = Struct_2(reverseBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, u_input.d, 45u, 0u), firstLeadingBit(vec4<u32>(1u, 4294967295u, 1u, 77652u)))), Struct_1(global0.a, vec4<i32>(3332i, var_0.x, _wgslsmith_mult_i32(u_input.c, -2147483647i), 1i) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.e, u_input.e, 1i, u_input.e)), global0.c, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<u32>(14188u, u_input.a, 0u, u_input.d), global0.d)) * _wgslsmith_f_op_f32(-global0.a.x)))));
    return var_1.b.e;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e, _wgslsmith_f_op_f32(func_2(-307f)), arg_3.d.x)));
    let var_1 = Struct_2(~_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(20183u, 15553u, 0u, u_input.d), abs(vec4<u32>(4631u, 4294967295u, u_input.d, u_input.a)), !vec4<bool>(false, false, arg_2.d.x, true)), vec4<u32>(u_input.a ^ u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(62105u, 1u, u_input.a, u_input.a), vec4<u32>(28261u, 646u, 55319u, 0u)), _wgslsmith_clamp_u32(18079u, u_input.d, 55326u), ~u_input.a), vec4<u32>(u_input.a >> (76602u % 32u), _wgslsmith_sub_u32(u_input.d, u_input.a), 26410u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(0u, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(arg_3.a, global0.a))))), abs(arg_3.b), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.c, 29094i), arg_1.c), vec2<i32>(-16765i, arg_1.b.x)), max(global0.b.zx, select(vec2<i32>(0i, global0.c.x), vec2<i32>(arg_1.c.x, arg_1.b.x), vec2<bool>(arg_2.d.x, arg_1.d.x)))), arg_3.d, _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(floor(627f)), true))));
    var var_2 = ~(-2147483647i);
    let var_3 = ~reverseBits(u_input.d);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(250f)))))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 29>();
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(780f, global1[_wgslsmith_index_u32(31482u, 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)], Struct_1(vec2<f32>(global0.a.x, -1834f), global0.b, global0.c, vec2<bool>(false, true), 385f))), _wgslsmith_f_op_f32(-1491f - -1000f)))), vec4<i32>(u_input.c, ~min(8688i, global0.c.x & 8899i), global0.b.x, -_wgslsmith_div_i32(-2147483647i, 10411i) >> (_wgslsmith_sub_u32(abs(u_input.a), ~u_input.a) % 32u)), _wgslsmith_sub_vec2_i32(abs(abs(_wgslsmith_clamp_vec2_i32(global0.b.zx, global0.c, vec2<i32>(-18108i, 10669i)))), ~countOneBits(global0.b.zz ^ global0.b.wy)), global0.d, _wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * 645f) + 1139f))));
    global1 = array<Struct_1, 29>();
    global0 = global1[_wgslsmith_index_u32(~abs(u_input.a), 29u)];
    var var_0 = Struct_2(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(0u, 16733u, 8759u, u_input.a)) | vec4<u32>(47921u, u_input.a, ~58690u, u_input.d), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, 7014u, u_input.a), vec4<u32>(1u, 4294967295u, 21186u, u_input.d)), select(vec4<u32>(13499u, u_input.d, u_input.d, 1u), vec4<u32>(u_input.a, u_input.a, 16502u, u_input.a), vec4<bool>(false, global0.d.x, global0.d.x, true)), global0.d.x)), global1[_wgslsmith_index_u32(~u_input.a, 29u)]);
    let var_1 = Struct_1(global0.a, countOneBits(vec4<i32>(~(28441i >> (var_0.a.x % 32u)), _wgslsmith_add_i32(-global0.c.x, u_input.c), global0.b.x, u_input.e)), firstLeadingBit(global0.c), !select(select(vec2<bool>(var_0.b.d.x, global0.d.x), !vec2<bool>(false, global0.d.x), global0.d.x), select(global0.d, select(vec2<bool>(var_0.b.d.x, var_0.b.d.x), var_0.b.d, global0.d), global0.d), vec2<bool>(select(true, var_0.b.d.x, global0.d.x), true)), 462f);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.b.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, -377f) + vec2<f32>(global0.a.x, 149f)), any(vec4<bool>(false, var_0.b.d.x, var_1.d.x, var_1.d.x))))))), firstLeadingBit(global0.b | select(vec4<i32>(global0.c.x, -12870i, u_input.b, 23544i), vec4<i32>(var_1.b.x, 980i, 1i, var_0.b.b.x), false)) >> (var_0.a % vec4<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.b.b, -global0.b) ^ 1i, ~(-(i32(-1i) * -7709i))), vec2<bool>(var_1.d.x, var_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -606f));
    let var_2 = vec2<bool>(var_0.b.d.x, false);
    let var_3 = Struct_2(var_0.a, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(4294967295u, u_input.d, u_input.a, 4294967295u), -1647f, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(select(25329i, -2147483647i, var_1.d.x), firstLeadingBit(global0.c.x), 1i, _wgslsmith_add_i32(-4745i, -37872i)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.b.c.x, var_3.b.c.x, global0.c.x, 2147483647i), var_0.b.b, vec4<i32>(u_input.b, var_3.b.b.x, 2147483647i, -2147483647i))), var_0.b.b.x));
}

