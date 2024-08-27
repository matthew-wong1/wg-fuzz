struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, 1521f, 910f, -2275f);

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 12>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(true, false, false, true));

var<private> global4: array<f32, 14> = array<f32, 14>(-112f, -205f, -247f, 169f, 475f, 691f, -1000f, 1000f, -1140f, 869f, -1703f, -2601f, -747f, -460f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    global0 = vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.x))))), _wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1418f, global4[_wgslsmith_index_u32(u_input.c.x, 14u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(22888u, 14u)])), _wgslsmith_f_op_f32(sign(642f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 14u)], 596f, global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(u_input.c.x, 14u)]), vec4<f32>(-1000f, global0.x, global0.x, global0.x), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, -1293f, 1000f, global4[_wgslsmith_index_u32(0u, 14u)]))))))));
    let var_0 = ~u_input.c;
    var var_1 = !(!select(arg_1.a.wx, global3.a.zy, select(select(global1.a.xw, global1.a.yx, global3.a.zw), select(vec2<bool>(arg_1.a.x, true), vec2<bool>(false, arg_0.a.x), global1.a.zw), true)));
    global0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4[_wgslsmith_index_u32(u_input.a, 14u)], global0.x, -867f, 1406f), vec4<f32>(453f, 1000f, -2033f, global0.x), false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(149f, global4[_wgslsmith_index_u32(4294967295u, 14u)], 1146f, 204f)))))))));
    return global3.a.zw;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 763f)) + -241f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(72684u, 14u)] + 263f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), arg_1);
    let var_2 = any(!(!func_3(arg_0, arg_0, Struct_1(global1.a))));
    let var_3 = vec2<u32>(~1u, _wgslsmith_add_u32(u_input.b, ~min(~1u, 10029u)));
    var var_4 = abs(_wgslsmith_mod_i32(-abs(43746i), -62580i));
    return ~u_input.b;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1244f)), _wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(func_2(Struct_1(global3.a), vec2<i32>(arg_1.x, 33861i), global0.yw, 2203f), 14u)])), !global3.a.x | (global3.a.x | false)))), _wgslsmith_f_op_f32(f32(-1f) * -1016f), 793f, global0.x);
    var var_0 = Struct_1(vec4<bool>(!(!(global1.a.x & false)), !(_wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(min(-1000f, 1902f))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1133f) == _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(0u, 14u)]))));
    var var_1 = reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a >> (abs(u_input.b) % 32u), ~select(1u, u_input.c.x, true), u_input.b, ~_wgslsmith_add_u32(9861u, u_input.b)), min(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, u_input.c), vec4<u32>(u_input.b, u_input.b, 42645u, u_input.b)), abs(select(vec4<u32>(0u, 54698u, 4294967295u, 15406u), u_input.c, global3.a.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.yw), max(~u_input.c.x, 0u), _wgslsmith_add_u32(u_input.a >> (0u % 32u), _wgslsmith_mod_u32(1u, u_input.c.x)), ~u_input.c.x)));
    var var_2 = Struct_1(vec4<bool>(false, true, false && all(global3.a), all(vec2<bool>(arg_0, !global1.a.x))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.zzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.wyz)) + global0.xzw)));
    return _wgslsmith_f_op_f32(775f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f * var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 14>();
    var var_0 = !(!global1.a.zwz);
    let var_1 = -807f;
    let var_2 = _wgslsmith_div_vec2_i32(~(-(~(vec2<i32>(u_input.d.x, -1081i) | vec2<i32>(2147483647i, 11540i)))), u_input.d.yz ^ firstLeadingBit(~u_input.d.zw));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_1(true, u_input.d.yzw)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(u_input.b, 14u)])))), -2645f), global4[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 14u)]))))));
    var var_4 = true;
    var_0 = global3.a.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, ~u_input.a, u_input.b), firstTrailingBit(vec3<u32>(u_input.c.x, u_input.a, 16491u)), u_input.c.xxx), ~(~(~vec3<u32>(u_input.b, 27789u, u_input.c.x))), 4294967295u, var_2, u_input.b);
}

