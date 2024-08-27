struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: Struct_1 = Struct_1(true, vec2<u32>(1u, 4294967295u), vec2<f32>(295f, -856f), vec3<u32>(49506u, 34917u, 4294967295u), -47463i);

var<private> global2: array<i32, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_3(-559f);
    global1 = Struct_1(true, vec2<u32>(abs(select(1u, global1.d.x, true)) | 14180u, 59393u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.c * global1.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.c)) * vec2<f32>(-347f, -353f))) + global1.c), _wgslsmith_mult_vec3_u32(vec3<u32>(abs(_wgslsmith_sub_u32(1u, global1.d.x)), 1u, ~4294967295u), vec3<u32>(u_input.a, u_input.a, abs(0u)) ^ ~(~vec3<u32>(u_input.b.x, 116434u, global1.b.x))), global2[_wgslsmith_index_u32(abs(1u), 7u)]);
    global2 = array<i32, 7>();
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(-1117f, global1.c.x)), global1.c.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    global2 = array<i32, 7>();
    global2 = array<i32, 7>();
    let var_0 = Struct_2(arg_1, !select(!select(vec4<bool>(arg_0, global1.a, global1.a, true), vec4<bool>(true, true, global1.a, arg_1.a), false), vec4<bool>(arg_1.c.x < -1306f, global1.a, false, true), select(vec4<bool>(global1.a, arg_0, arg_0, false), !vec4<bool>(true, global1.a, arg_1.a, arg_1.a), select(vec4<bool>(arg_1.a, arg_1.a, global1.a, true), vec4<bool>(true, true, global1.a, true), vec4<bool>(arg_1.a, false, false, arg_1.a)))));
    let var_1 = -154f;
    global2 = array<i32, 7>();
    return -1684f;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    global1 = Struct_1(true, arg_3.d.zz, _wgslsmith_f_op_vec2_f32(-arg_3.c), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.d.x, max(select(u_input.a, 0u, false), 0u), 1416u), _wgslsmith_add_vec3_u32(global1.d, ~firstTrailingBit(global1.d))), firstTrailingBit(_wgslsmith_sub_i32(u_input.d.x, ~(-1i | global2[_wgslsmith_index_u32(global1.b.x, 7u)]))));
    global0 = array<Struct_1, 29>();
    let var_0 = -208f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.c.x, 707f)))))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(391f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1.c.x)))), _wgslsmith_f_op_f32(func_3(55890u != global1.d.x, Struct_1(arg_3.a, global1.d.zy, global1.c, arg_3.d, 6265i), arg_2)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, var_0))))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_1.zx), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_sub_vec3_u32(u_input.b.yyy, global1.d) >> (vec3<u32>(arg_3.d.x, arg_1, arg_3.b.x) % vec3<u32>(32u)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.x)) * -624f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) - _wgslsmith_f_op_f32(floor(1697f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-133f)), _wgslsmith_f_op_f32(ceil(264f)))))));
}

fn func_1() -> vec2<f32> {
    var var_0 = 44633u;
    var var_1 = global1.a;
    var var_2 = true;
    let var_3 = global1.a;
    let var_4 = Struct_1(!(global1.b.x > _wgslsmith_dot_vec2_u32(global1.d.xx, u_input.b.xy & u_input.b.yw)), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.yy, ~global1.d.zx), u_input.b.zw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global1.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c))), vec3<u32>(90484u, 1u, u_input.a), -12925i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, var_4, Struct_3(-170f))))), _wgslsmith_add_u32(u_input.c, countOneBits(1u) & global1.d.x), Struct_3(global1.c.x), var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-1319f * global1.c.x)) - _wgslsmith_div_f32(global1.c.x, 707f))));
    var var_1 = Struct_1(true, u_input.b.xz & global1.b, _wgslsmith_f_op_vec2_f32(func_1()), ~(u_input.b.xzx << (vec3<u32>(~47474u, 31229u, 1u) % vec3<u32>(32u))), firstTrailingBit(u_input.d.x | _wgslsmith_add_i32(-global2[_wgslsmith_index_u32(35746u, 7u)], 54470i)));
    var_1 = Struct_1(all(!(!select(vec3<bool>(var_1.a, var_1.a, global1.a), vec3<bool>(global1.a, global1.a, false), vec3<bool>(true, global1.a, true)))), ~select(~vec2<u32>(1u, global1.b.x) << (min(global1.b, var_1.d.xz) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(global1.d.xz, vec2<u32>(global1.b.x, 4294967295u)), var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(var_1.b.x, 0u, u_input.c))))), ~vec3<u32>(4294967295u, ~(72684u >> (global1.d.x % 32u)), ~global1.b.x), ~0i);
    var var_2 = ~global2[_wgslsmith_index_u32(~(var_1.d.x | u_input.c), 7u)];
    var var_3 = ~(u_input.b | ~_wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.b, u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~var_3.x));
}

