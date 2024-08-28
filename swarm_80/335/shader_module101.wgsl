struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(36580u, 4294967295u, 106917u, 30972u), Struct_1(4294967295u, vec4<i32>(1i, i32(-2147483648), -7563i, 0i), vec4<i32>(i32(-2147483648), -14240i, 34731i, -11270i)), -267f);

var<private> global2: f32;

var<private> global3: vec4<u32>;

var<private> global4: f32 = -1045f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.c, 1000f))) - _wgslsmith_f_op_f32(1f - global1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(global1.c - global1.c)))))));
    var var_1 = arg_1.zz;
    global2 = global1.c;
    global4 = global1.c;
    let var_2 = _wgslsmith_div_f32(715f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.c, global1.c), _wgslsmith_f_op_f32(f32(-1f) * -485f), false)));
    return arg_1.x || (_wgslsmith_f_op_f32(-var_2) == _wgslsmith_f_op_f32(-global1.c));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = max(global3.yz, ~_wgslsmith_add_vec2_u32(global1.a.ww, global3.yy));
    global1 = Struct_2(~global1.a, Struct_1(var_0.x, vec4<i32>(~(-global1.b.c.x), abs(0i), -(~(-3020i)), _wgslsmith_mod_i32(~u_input.e, u_input.e)), -global1.b.b), global1.c);
    let var_1 = reverseBits(global1.b.b.x);
    global4 = -1351f;
    let var_2 = Struct_3(select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(global1.b.c), firstLeadingBit(global1.b.c), firstLeadingBit(vec4<i32>(var_1, var_1, var_1, 8386i))), abs(global1.b.c) >> (~global1.a % vec4<u32>(32u))), -(global1.b.c.x >> (global1.a.x % 32u)), !(!select(false, false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1620f + global1.c), -347f)), arg_0), vec3<bool>(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, false))), func_3(global1.b, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec4<bool>(true, true, true, true)), true));
    return global1.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> f32 {
    let var_0 = !arg_0.x;
    global2 = -569f;
    global0 = ~2148i;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1074f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-746f))))) + arg_1.b.x);
    var var_1 = select(!arg_0.zz, select(arg_0.xx, arg_1.c.xy, vec2<bool>(var_0, !(var_0 | var_0))), 1u > global3.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-264f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (true || (_wgslsmith_dot_vec3_u32(global1.a.wzw ^ global1.a.xwz, ~global3.wyw) >= ~global3.x)) | true;
    var_0 = !any(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, -310f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-770f, -2460f) - vec2<f32>(global1.c, global1.c)))) + vec2<f32>(-206f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.c, -1000f)))))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * _wgslsmith_f_op_f32(var_1.x - global1.c)), global1.c)), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c)))), true));
    var var_3 = global1.c;
    global0 = 51524i;
    let var_4 = Struct_1(min(12099u, ~(global1.a.x & global3.x)), vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.c), global1.b.b.wy), ~vec2<i32>(u_input.e, global1.b.b.x)), u_input.e, u_input.e, u_input.c), abs(_wgslsmith_mult_vec4_i32(global1.b.b, global1.b.b) ^ _wgslsmith_div_vec4_i32(global1.b.c, vec4<i32>(8005i, 0i, global1.b.b.x, u_input.e))) << (global1.a % vec4<u32>(32u)));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.c, -1780f), vec2<f32>(-580f, global1.c))) + vec2<f32>(_wgslsmith_f_op_f32(global1.c + 658f), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_3(u_input.e, vec2<f32>(var_1.x, global1.c), vec3<bool>(true, false, false))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), global1.c)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, 622f) * vec2<f32>(global1.c, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_4.c.x, u_input.c), ~var_4.b.x), vec3<i32>(_wgslsmith_mod_i32(2147483647i, var_4.c.x), ~(-global1.b.c.x), var_4.c.x)));
}

