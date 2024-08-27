struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<i32>(39279i, 19220i), Struct_1(1u, vec3<f32>(-953f, -1212f, -668f)));

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, false, true, false, true, false, false, false, true, false, true, false, false, true, false, true, true, true, false, false);

var<private> global2: bool;

var<private> global3: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_2(-(countOneBits(global3.a) & _wgslsmith_mod_vec3_i32(reverseBits(u_input.b.wyy), u_input.b.xyy)));
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.b.x))), -583f) + _wgslsmith_f_op_vec3_f32(min(global0.b.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0)), _wgslsmith_f_op_vec3_f32(-global0.b.b))))));
    var var_2 = reverseBits(min(global0.a.x | min(_wgslsmith_clamp_i32(-4030i, u_input.b.x, -1i), firstTrailingBit(u_input.b.x)), global3.a.x & 43516i));
    var var_3 = arg_0.x;
    return _wgslsmith_mod_vec3_i32(firstTrailingBit(~(-var_0.a)), select(vec3<i32>(u_input.b.x, -1i, -20951i >> (~u_input.a % 32u)), max(-(vec3<i32>(-2147483647i, 0i, u_input.b.x) | u_input.b.zwz), reverseBits(vec3<i32>(u_input.c, global3.a.x, 0i) << (u_input.d.zww % vec3<u32>(32u)))), u_input.b.x <= -u_input.c));
}

fn func_3(arg_0: f32) -> vec2<i32> {
    var var_0 = !select(vec2<bool>(global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.d.x, 0u)), 22u)], all(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], true), vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 22u)]))), vec2<bool>(true, (true || global1[_wgslsmith_index_u32(u_input.d.x, 22u)]) || select(false, false, false)), global1[_wgslsmith_index_u32(~abs(~global0.b.a), 22u)]);
    var var_1 = Struct_3(global0.a.x, ~_wgslsmith_sub_i32(abs(global0.a.x) << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, u_input.b))));
    var var_2 = global0.b.b.x;
    let var_3 = select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], true, true, any(vec2<bool>(select(false, true, var_0.x), all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 22u)], false, true))))), select(!(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(668u, 22u)], true))), select(!(!vec4<bool>(var_0.x, true, true, false)), select(!vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(45597u, 22u)], var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(108009u, 22u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(39844u, 22u)], global1[_wgslsmith_index_u32(11433u, 22u)], var_0.x), false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(global0.b.a, 22u)], var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, global1[_wgslsmith_index_u32(global0.b.a, 22u)]), global1[_wgslsmith_index_u32(global0.b.a, 22u)]), select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(24677u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0.b.a, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(38056u, 22u)], true, false)))), any(vec4<bool>(!var_0.x, false | var_0.x, true, all(vec4<bool>(var_0.x, true, false, global1[_wgslsmith_index_u32(4294967295u, 22u)]))))), true);
    let var_4 = _wgslsmith_sub_u32(~(~4294967295u), ~firstLeadingBit(~u_input.a)) ^ ~38535u;
    return global3.a.yz << (~max(u_input.d.xz, abs(countOneBits(vec2<u32>(global0.b.a, 17080u)))) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    var var_0 = !select(vec3<bool>(global1[_wgslsmith_index_u32(31680u, 22u)], false, global1[_wgslsmith_index_u32(1u, 22u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)] & false, false, -839f > global0.b.b.x), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(0u), global0.b.a), 22u)] && all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(2753u, 22u)], true))));
    var var_1 = Struct_2(vec3<i32>(1i, 2147483647i, ~arg_0.a));
    var_1 = Struct_2(var_1.a);
    let var_2 = Struct_4((abs(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, 1i), u_input.b.zx)) ^ -(~global0.a)) | _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a, -1i), firstTrailingBit(-global3.a.yy)), Struct_1(reverseBits(~min(36007u, global0.b.a)), _wgslsmith_f_op_vec3_f32(global0.b.b + global0.b.b)));
    let var_3 = vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(abs(vec4<i32>(37540i, 2147483647i, u_input.b.x, -2147483647i)), select(vec4<i32>(global0.a.x, arg_0.b, 52124i, arg_0.a), u_input.b, vec4<bool>(true, false, true, false)) & ~vec4<i32>(var_2.a.x, 16662i, global3.a.x, var_2.a.x));
    return Struct_4(func_3(626f), global0.b);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = !(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_3.b.a ^ 4294967295u, 22u)], true, 61731u == arg_3.b.a, false && arg_0)));
    return Struct_4(~(vec2<i32>(arg_1.x, -global3.a.x) & _wgslsmith_div_vec2_i32(firstTrailingBit(arg_1.xz), arg_1.yy)), Struct_1(~_wgslsmith_mult_u32(1u, ~4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.b.b * vec3<f32>(global0.b.b.x, -303f, -542f)) * global0.b.b)));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global3 = Struct_2(u_input.b.yzx);
    var var_0 = min(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.x, reverseBits(_wgslsmith_add_i32(4645i, arg_0.a.x))), vec2<i32>(func_2(Struct_3(u_input.c, -1i)).a.x, func_2(Struct_3(global0.a.x, 322i)).a.x & ~(-1i))), abs(vec2<i32>(arg_0.a.x, func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(339f, global0.b.b.x, -805f) - global0.b.b), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 22u)], false)).x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1938f, _wgslsmith_f_op_f32(-624f - 1732f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), global0.b.b.x));
    var var_2 = Struct_3(~(-2147483647i), _wgslsmith_div_i32(~(-14057i), -global0.a.x));
    global2 = global1[_wgslsmith_index_u32(arg_0.b.a, 22u)];
    return Struct_1(~global0.b.a, arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = firstLeadingBit(0u);
    var var_1 = global0.a;
    global1 = array<bool, 22>();
    var var_2 = -(~(~vec2<i32>(u_input.b.x, var_1.x)));
    let var_3 = func_5(func_4(!any(!vec3<bool>(false, global1[_wgslsmith_index_u32(global0.b.a, 22u)], global1[_wgslsmith_index_u32(u_input.d.x, 22u)])), abs(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1402f, global0.b.b.x, global0.b.b.x) - global0.b.b), vec3<bool>(true, global1[_wgslsmith_index_u32(global0.b.a, 22u)], true))), _wgslsmith_f_op_f32(round(global0.b.b.x)), func_2(Struct_3(var_1.x, -1i))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(615f, -534f)) - _wgslsmith_f_op_f32(-global0.b.b.x))), -125f) + global0.b.b.x);
    let var_5 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -60538i, global0.a.x), abs(vec3<i32>(var_1.x, u_input.b.x, -55187i))), ~_wgslsmith_div_i32(u_input.b.x, var_1.x), global3.a.x << (var_3.a % 32u)), ~vec3<i32>(firstLeadingBit(5105i), -var_1.x, 9288i)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0.b.a & ~u_input.a) & _wgslsmith_dot_vec3_u32(u_input.d.zwz, ~u_input.d.wwz), u_input.d ^ ~(~(~u_input.d)), _wgslsmith_f_op_f32(abs(716f)));
}

