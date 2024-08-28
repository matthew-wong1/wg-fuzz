struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_3 = Struct_3(589f, vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, true, true), false));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    global2 = global1.c;
    var var_0 = _wgslsmith_sub_u32(arg_0 | max(5255u, _wgslsmith_mult_u32(arg_0, u_input.d) ^ (23582u & arg_0)), ~0u);
    let var_1 = u_input.b.x;
    global0 = array<Struct_1, 3>();
    let var_2 = Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(-25582i, u_input.b.x, 32909i, var_1), vec4<i32>(arg_2.x, u_input.b.x, -2147483647i, var_1)) > reverseBits(_wgslsmith_sub_i32(~(-2147483647i), reverseBits(13100i))), global1.c.a.xy, (vec4<u32>(arg_0, 1u, 1u, u_input.e.x << (1u % 32u)) >> (vec4<u32>(_wgslsmith_mult_u32(17503u, arg_0), _wgslsmith_div_u32(37635u, 53261u), arg_0, ~u_input.d) % vec4<u32>(32u))) << (~vec4<u32>(arg_0, u_input.e.x, 66209u, u_input.c.x) % vec4<u32>(32u)), Struct_1(select(select(global1.c.a, select(arg_3.c.a, global2.a, global1.b.x), select(vec3<bool>(true, true, false), arg_3.b, global1.c.b)), select(arg_3.b, select(vec3<bool>(global1.c.a.x, arg_3.b.x, global1.c.b), vec3<bool>(arg_3.c.a.x, arg_3.b.x, arg_3.b.x), true), arg_1), vec3<bool>(global2.a.x, all(global1.b.yy), all(vec2<bool>(global2.a.x, global2.b)))), any(select(arg_3.b, !vec3<bool>(arg_1, arg_1, false), !global1.b.x))));
    return _wgslsmith_f_op_f32(round(-1362f));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    global1 = Struct_3(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-763f - 218f) - -1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))))), !global1.b, Struct_1(global1.b, global1.b.x | global1.b.x));
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-868f, _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(exp2(global1.a)))), _wgslsmith_f_op_f32(func_3(~54219u, false, countOneBits(u_input.b), Struct_3(-127f, global2.a, global0[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, 1304f), vec3<f32>(global1.a, 720f, -568f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1974f, -947f, 1000f)))));
    let var_1 = ~firstLeadingBit(arg_0);
    global2 = global1.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2018f, global1.a, var_0.x, 110f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-862f)) - var_0.x)), _wgslsmith_f_op_f32(ceil(-707f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec3<bool> {
    let var_0 = arg_0.x & _wgslsmith_mod_i32(-(~u_input.b.x), _wgslsmith_mult_i32((arg_0.x << (1u % 32u)) ^ _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(2147483647i, arg_0.x)), 38241i));
    global1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~arg_1.x << (_wgslsmith_sub_u32(4294967295u, 0u) % 32u), !global2.a.zy)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1763f + _wgslsmith_f_op_f32(ceil(global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(0u, global2.a.yx)) + 570f))), global1.b, Struct_1(global1.b, !global1.c.b));
    var var_1 = Struct_5(-1839f, 1u, ~0u, u_input.e.xww);
    return vec3<bool>(true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(((1u >> (u_input.d % 32u)) | ~u_input.d) >> (~1u % 32u), u_input.e.x, 1u, 0u);
    let var_1 = u_input.b.x;
    global1 = Struct_3(global1.a, func_1(_wgslsmith_clamp_vec2_i32(u_input.b.yx | firstTrailingBit(vec2<i32>(u_input.b.x, var_1)), vec2<i32>(u_input.b.x, select(94702i, 30021i, true)), u_input.b.zz), vec2<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, u_input.e.x, 1591u), 1u))), Struct_1(!(!select(global2.a, vec3<bool>(global2.b, false, global2.b), vec3<bool>(global1.b.x, global1.b.x, global1.c.a.x))), global2.b));
    global2 = global1.c;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, 892f))), global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, global1.a)) * _wgslsmith_f_op_f32(923f * -410f)) * -956f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -399f)));
    var var_3 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(653f * -824f) + _wgslsmith_f_op_f32(1096f + -1438f))) + 1f), _wgslsmith_f_op_f32(269f * _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) * global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0.yzy, max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), abs(var_0.yzx)), ~_wgslsmith_add_vec3_u32(u_input.e.wwy, vec3<u32>(u_input.e.x, 1u, 123637u)))), _wgslsmith_f_op_vec4_f32(round(var_2)), u_input.e.zzx, -334f, _wgslsmith_f_op_f32(global1.a * var_2.x));
}

