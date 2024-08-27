struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<f32>(902f, -496f, 455f));

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false, vec3<f32>(-1000f, 1428f, 122f)), Struct_1(false, vec3<f32>(1000f, 506f, 249f)), Struct_1(false, vec3<f32>(-1105f, -683f, -281f)));

var<private> global2: vec4<f32> = vec4<f32>(-1359f, -884f, -169f, -321f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(4268u >> (_wgslsmith_dot_vec3_u32(arg_2.b, ~countOneBits(vec3<u32>(u_input.d, u_input.d, u_input.c.x))) % 32u), 3u)];
    let var_1 = vec4<u32>(u_input.c.x, arg_2.b.x, _wgslsmith_mod_u32(~(~1u), arg_2.a), ~arg_2.b.x);
    let var_2 = var_0.b.x;
    var var_3 = arg_2;
    global0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-612f, arg_1.b.x, var_0.b.x) * vec3<f32>(-1494f, 235f, arg_1.b.x)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-650f, _wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(var_0.b.x - 736f), var_0.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1033f, -492f, -388f, global2.x), vec4<f32>(var_0.b.x, -749f, -662f, 483f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(700f, -1105f, var_0.b.x, -1000f) * vec4<f32>(global2.x, -269f, 1165f, 1814f))))) * vec4<f32>(_wgslsmith_f_op_f32(452f + global2.x), arg_1.b.x, 946f, -687f));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> f32 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-1080f * -866f), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_0.a.c, global1[_wgslsmith_index_u32(1u, 3u)], Struct_2(u_input.b.x, arg_0.a.b, -13392i), false)).x, _wgslsmith_f_op_f32(-global0.b.x)))), 1023f);
    var var_0 = vec3<bool>(global0.a, firstLeadingBit(countOneBits(_wgslsmith_sub_u32(arg_0.a.b.x, 353u))) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.b.x, 4294967295u, 3140u, 33176u), vec4<u32>(32453u, 1u, 4294967295u, arg_0.a.b.x) >> (~vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.d) % vec4<u32>(32u))), global0.a);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, firstLeadingBit(~(17261u & u_input.b.x))), 3u)];
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_2(0i, global1[_wgslsmith_index_u32(~u_input.b.x, 3u)], arg_0.a, all(vec3<bool>(var_1.a, false, global0.a)))).x, -255f, global2.x) + var_1.b));
    global1 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(var_2.b.x - arg_0.c);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(arg_2.a ^ arg_2.a, 4294967295u)), ~u_input.b.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(-arg_2.c, global1[_wgslsmith_index_u32(84124u, 3u)], arg_2, global0.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, global2.x, -895f, global0.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, arg_1.b.x, -479f, 1038f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 758f, global0.b.x, 252f)))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_0.c, arg_0.c, 254f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, 1000f, arg_1.b.x, -1822f)))))))));
    var var_1 = arg_1;
    var var_2 = u_input.a.ww;
    var var_3 = u_input.b.zyx;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(222f, _wgslsmith_f_op_f32(global0.b.x + 514f), 943f, _wgslsmith_f_op_f32(func_3(arg_0, _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.c, u_input.e, 1i), vec3<i32>(arg_2.c, -5402i, 22473i))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, global0.b.x, global2.x, -864f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-46879i, firstTrailingBit(8380i));
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_2(34250u, vec3<u32>(80186u, u_input.c.x, 4294967295u), 4804i), u_input.a.zyy, global2.x), global1[_wgslsmith_index_u32(~0u, 3u)], Struct_2(u_input.d, u_input.b.wyy, 1i))) + _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_i32(u_input.e, u_input.e), global1[_wgslsmith_index_u32(u_input.d, 3u)], Struct_2(u_input.d, vec3<u32>(64582u, u_input.c.x, u_input.b.x), u_input.e), !global0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_2(u_input.c.x, vec3<u32>(78012u, u_input.d, 0u), u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.e), global2.x), Struct_1(global0.a, vec3<f32>(1000f, global0.b.x, 614f)), Struct_2(u_input.c.x, u_input.b.yyz, 28933i)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2222f, global0.b.x, global0.b.x, global2.x), vec4<f32>(-209f, -2093f, 1000f, 1000f))), vec4<f32>(global2.x, 1295f, global0.b.x, -1348f), false)))), _wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 613f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(global2.x - global2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(Struct_2(u_input.c.x, vec3<u32>(35267u, u_input.d, 1u), 7612i), u_input.a.xwx, 1179f), global1[_wgslsmith_index_u32(u_input.c.x, 3u)], Struct_2(u_input.d, vec3<u32>(u_input.b.x, 88311u, u_input.c.x), u_input.a.x))).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 289f, global2.x, global0.b.x))))))));
    var_0 = u_input.a.x;
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(1018f, _wgslsmith_f_op_f32(422f * _wgslsmith_f_op_f32(1004f * _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(761f)), _wgslsmith_f_op_f32(global2.x + global2.x)))), _wgslsmith_f_op_f32(exp2(global2.x))), vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global0.b.x)))), _wgslsmith_f_op_f32(2266f - _wgslsmith_f_op_f32(-global0.b.x)), 428f));
    let var_1 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1137f + global0.b.x), var_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.yz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1872f, global2.x) - vec2<f32>(global2.x, -343f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1370f, -417f))), true)))), (_wgslsmith_mod_vec2_i32(~u_input.a.yz, reverseBits(u_input.a.zw)) ^ reverseBits(countOneBits(vec2<i32>(-22554i, var_1)))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~0u), u_input.b.xy) % vec2<u32>(32u)));
}

