struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<bool>, 27>;

var<private> global2: array<bool, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_3) -> vec4<f32> {
    global0 = arg_3.a.a.x;
    global1 = array<vec3<bool>, 27>();
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(arg_3.b.c.x, 27u)], _wgslsmith_f_op_vec4_f32(arg_2.b.b * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.b.x)), _wgslsmith_f_op_f32(-1437f * arg_3.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_2.b.b.x, 453f)), arg_3.b.c, arg_3.b.d, vec4<u32>(0u, _wgslsmith_div_u32(arg_2.b.e.x, ~(5004u << (0u % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.e.x, 1709u), min(arg_3.a.c.yz, arg_2.b.e.xy)), arg_3.a.e.x));
    var var_1 = abs(-countOneBits(abs(arg_3.a.d)) >> (u_input.a.x % 32u));
    var var_2 = ~(-2147483647i) & var_0.d;
    return var_0.b;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.d & 1u;
    return Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.b & ~1u, 27u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(-303f, -142f, 751f), !vec4<bool>(global2[_wgslsmith_index_u32(108785u, 4u)], global2[_wgslsmith_index_u32(u_input.c.x, 4u)], global2[_wgslsmith_index_u32(9319u, 4u)], global2[_wgslsmith_index_u32(u_input.d, 4u)]), Struct_3(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1083f, -589f, -2406f, -1000f), vec3<u32>(u_input.b, 4294967295u, 55033u), -1i, u_input.c), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], true), vec4<f32>(1896f, -1106f, 1000f, 646f), u_input.c.zww, -1i, u_input.c)), Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.d, 27u)], vec4<f32>(1457f, -1000f, -947f, -580f), u_input.c.yzx, 1064i, vec4<u32>(u_input.b, 52420u, u_input.d, 0u)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 27u)], vec4<f32>(-191f, 1108f, 1000f, -1737f), vec3<u32>(1u, u_input.d, 1u), 1i, vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.b)))))), u_input.c.xyy, _wgslsmith_mod_i32(firstTrailingBit(-1i) ^ reverseBits(-2147483647i), 18085i), u_input.c), Struct_1(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -597f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + 1000f) + -195f), 489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-858f - -594f) - _wgslsmith_f_op_f32(-229f * -346f))), u_input.c.zwx, countOneBits(1i), u_input.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    var var_0 = 39951u;
    let var_1 = func_2();
    var var_2 = 31839u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1804f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 669f);
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(709f)), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(func_1(u_input.c.wx, Struct_2(vec3<f32>(1225f, -139f, -160f), 12888i), Struct_3(Struct_1(vec3<bool>(false, true, false), vec4<f32>(221f, var_0.x, var_0.x, 1000f), vec3<u32>(45135u, 1u, 11551u), -2147483647i, u_input.c), Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(16989u, 4u)]), vec4<f32>(722f, var_0.x, -1162f, var_0.x), u_input.c.yxz, 2147483647i, u_input.c)), vec4<i32>(34109i, 39717i, -1i, 2147483647i))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x)), 2147483647i);
    let var_2 = func_2();
    var var_3 = u_input.c.zw;
    var var_4 = reverseBits(u_input.b);
    var var_5 = global2[_wgslsmith_index_u32(u_input.d, 4u)] | any(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), var_2.a.a.x)));
    var var_6 = var_2;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_vec2_f32(floor(var_1.a.zy)))) - var_1.a.xx);
    var var_7 = var_6.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(1u, 0u), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.b.d ^ var_1.b, var_7.d, var_1.b), vec3<i32>(-1i) * -abs(vec3<i32>(var_6.a.d, var_1.b, -51896i)), -reverseBits(vec3<i32>(-20382i, 1i, 6913i))), var_6.a.b.x);
}

