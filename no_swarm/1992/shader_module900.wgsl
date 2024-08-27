struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    var var_0 = vec4<bool>(false, u_input.d.x <= ~(~global0.a.c.b.x | firstLeadingBit(arg_1.x)), false, arg_2);
    var var_1 = arg_2;
    var_0 = global0.b;
    var_1 = all(vec4<bool>(any(select(!global0.b.xw, select(vec2<bool>(true, false), vec2<bool>(global0.b.x, false), false), all(vec4<bool>(arg_2, true, true, global0.b.x)))), true | any(!var_0.yzw), _wgslsmith_dot_vec3_u32(vec3<u32>(18717u, 0u, 5674u) >> (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u)), min(global0.a.c.b.zyy, u_input.d)) < _wgslsmith_add_u32(_wgslsmith_mod_u32(5032u, 111156u), global0.a.c.b.x), all(!global0.b.xwz)));
    return -255f;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> Struct_3 {
    return Struct_3(Struct_2(~vec3<i32>(~u_input.a, _wgslsmith_dot_vec3_i32(global0.a.d, vec3<i32>(global0.a.a.x, global0.a.b, 2922i)), global0.a.a.x), ~u_input.a, Struct_1(_wgslsmith_f_op_f32(global0.a.c.a - 699f), firstTrailingBit(vec4<u32>(0u, 86783u, 64433u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(-296f, global0.a.c.b, global0.a.e, global0.a.e.yw), vec3<u32>(u_input.c, 95276u, global0.a.c.b.x), false, global0.a.c.b)), global0.c, 1f, _wgslsmith_f_op_f32(ceil(global0.a.c.c.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.e.x, global0.c))), _wgslsmith_f_op_vec2_f32(global0.a.e.yy - vec2<f32>(global0.c, -1516f))))), -(global0.a.d & global0.a.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.a.e - global0.a.e), global0.a.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a.c.c, global0.a.e)))), !(!(!global0.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-266f * 1494f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_3 {
    global0 = func_2(global0.b.x, select(vec3<bool>(global0.b.x, !(!global0.b.x), all(vec2<bool>(true, true))), global0.b.wyw, !vec3<bool>(true, global0.b.x, global0.b.x)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(true, !global0.b.zxx).a.c, ~vec3<u32>(firstTrailingBit(arg_0.b.x), min(0u, 27299u), arg_0.b.x), true, abs(~_wgslsmith_add_vec4_u32(arg_0.b, vec4<u32>(arg_1.x, 53374u, 4294967295u, arg_1.x))))));
    var var_1 = arg_0;
    var_1 = func_2(false, !global0.b.wxz).a.c;
    var_0 = -464f;
    return Struct_3(Struct_2(~abs(global0.a.a), u_input.b, arg_0, ~(~(~vec3<i32>(arg_2.x, arg_2.x, u_input.b))), _wgslsmith_f_op_vec4_f32(step(var_1.c, global0.a.c.c))), !(!select(global0.b, select(global0.b, vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), global0.b), !global0.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + -122f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(586f, var_1.b, global0.a.e, vec2<f32>(var_1.d.x, arg_3)), _wgslsmith_mult_vec3_u32(vec3<u32>(70361u, 1u, u_input.d.x), vec3<u32>(var_1.b.x, global0.a.c.b.x, 4294967295u)), true, _wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(global0.a.c.b.x, var_1.b.x, 2160u, arg_1.x)))), -2063f))));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = select(vec2<bool>(true, global0.c >= 1178f), func_2(true, !vec3<bool>(!global0.b.x, global0.b.x, false || arg_0.b.x)).b.zy, vec2<bool>(global0.b.x, arg_0.b.x == global0.b.x));
    global0 = arg_0;
    return select(true, var_0.x, arg_0.a.a.x >= -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(global0.a.c, ~vec2<u32>(select(4294967295u, u_input.c, true), 29020u), ~(~vec3<i32>(-15591i, global0.a.b, u_input.b) ^ vec3<i32>(u_input.a, global0.a.a.x, -53905i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))));
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = global0.b.x;
    let var_3 = global0.a;
    var var_4 = _wgslsmith_clamp_vec4_u32(min(global0.a.c.b, global0.a.c.b), var_3.c.b | _wgslsmith_mult_vec4_u32(firstLeadingBit(~global0.a.c.b), ~(vec4<u32>(var_3.c.b.x, var_3.c.b.x, 10550u, 1u) | vec4<u32>(3989u, 4294967295u, u_input.d.x, 73608u))), select(vec4<u32>(var_3.c.b.x | ~4294967295u, _wgslsmith_dot_vec4_u32(max(var_3.c.b, var_3.c.b), vec4<u32>(global0.a.c.b.x, 4294967295u, 10315u, var_3.c.b.x)), ~_wgslsmith_div_u32(1u, u_input.c), reverseBits(~global0.a.c.b.x)), vec4<u32>(1u, var_3.c.b.x, ~0u, u_input.d.x), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_3.c.c.x - _wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.a.c.c.x)))), 1277f, global0.c))), vec2<f32>(global0.a.e.x, var_3.c.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.e.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(532f)), -417f))), func_1(Struct_1(global0.c, vec4<u32>(var_3.c.b.x | global0.a.c.b.x, var_3.c.b.x, _wgslsmith_div_u32(48524u, var_3.c.b.x), min(global0.a.c.b.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_3.e)), vec4<f32>(1244f, 677f, var_3.c.c.x, 1334f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global0.a.e.xy, var_3.c.c.yw)))), ~select(countOneBits(global0.a.c.b.yy), func_2(global0.b.x, vec3<bool>(global0.b.x, global0.b.x, true)).a.c.b.yy, vec2<bool>(true, false)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_3.b, u_input.a), vec3<i32>(0i, 36705i, var_3.b)) & ~abs(vec3<i32>(-1i, global0.a.b, -1i)), global0.c).a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.e.x + _wgslsmith_f_op_f32(step(var_3.c.a, -1728f))))));
}

