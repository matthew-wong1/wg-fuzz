struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(44229u, 29120u, 36064u);

var<private> global1: bool;

var<private> global2: Struct_5 = Struct_5(Struct_4(Struct_2(vec3<i32>(794i, 19518i, i32(-2147483648)))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-150f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -668f)) + 2720f));
    global2 = arg_3;
    global2 = Struct_5(Struct_4(Struct_2(vec3<i32>(global2.a.a.a.x, -arg_3.a.a.a.x, arg_3.a.a.a.x << (arg_0.x % 32u)))));
    let var_1 = arg_0;
    let var_2 = true;
    return arg_3;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~u_input.a, firstTrailingBit(u_input.a), arg_0), reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_0, 30391u), vec3<u32>(4294967295u, 4294967295u, 33848u)))) & _wgslsmith_mod_vec3_u32(vec3<u32>(880u, 42344u, _wgslsmith_mod_u32(~u_input.a, ~30527u)), firstTrailingBit(~vec3<u32>(global0.x, 1u, 8880u)));
    let var_1 = func_2(var_0 | _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(arg_0, global0.x, u_input.a)), firstLeadingBit(vec3<u32>(15580u, 4294967295u, arg_0))), ~var_0), ((-vec3<i32>(global2.a.a.a.x, global2.a.a.a.x, global2.a.a.a.x) | func_2(var_0, vec3<i32>(global2.a.a.a.x, global2.a.a.a.x, -1i), global2.a.a.a.x, Struct_5(Struct_4(global2.a.a))).a.a.a) | vec3<i32>(_wgslsmith_clamp_i32(global2.a.a.a.x, -54002i, 0i), global2.a.a.a.x, -10285i << (u_input.a % 32u))) >> (var_0 % vec3<u32>(32u)), _wgslsmith_div_i32(-39798i, _wgslsmith_mult_i32(firstTrailingBit(global2.a.a.a.x), global2.a.a.a.x)), func_2(var_0, _wgslsmith_div_vec3_i32(global2.a.a.a, global2.a.a.a), _wgslsmith_dot_vec2_i32(~(-global2.a.a.a.xz), -func_2(vec3<u32>(arg_0, arg_0, 4870u), global2.a.a.a, 22186i, Struct_5(global2.a)).a.a.a.yy), func_2(var_0, -(~global2.a.a.a), -2147483647i, Struct_5(Struct_4(global2.a.a)))));
    var var_2 = var_0.x;
    let var_3 = arg_0;
    var_2 = ~u_input.a;
    return ~_wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(70551u, 3380u), global0.xy, true)), global0.xz) >> (4294967295u % 32u);
}

fn func_1(arg_0: Struct_3) -> i32 {
    global2 = func_2(vec3<u32>(global0.x, 24103u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 27765u, global0.x, u_input.a)), vec4<u32>(61661u, u_input.a, global0.x, 0u)), ~_wgslsmith_clamp_u32(1u, u_input.a, 33583u))), global2.a.a.a, global2.a.a.a.x, Struct_5(Struct_4(global2.a.a)));
    var var_0 = ~_wgslsmith_div_vec2_i32(global2.a.a.a.xx, global2.a.a.a.zx);
    global0 = vec3<u32>(3150u, global0.x, 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-597f, 446f, 821f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(111f, arg_0.a, -1000f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(268f, arg_0.a, arg_0.a), vec3<f32>(arg_0.a, arg_0.a, -291f))) + vec3<f32>(1377f, -384f, arg_0.a)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, arg_0.a) - vec3<f32>(-1167f, arg_0.a, 692f)))))));
    let var_2 = ~(~(u_input.a ^ firstTrailingBit(func_3(u_input.a))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (false == any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), true))) & (0i < global2.a.a.a.x);
    let var_1 = max(func_1(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(561f + 677f)))), global2.a.a.a.x);
    let var_2 = global0.x;
    global0 = vec3<u32>(2297u ^ _wgslsmith_sub_u32(~(~0u), abs(u_input.a) << (abs(global0.x) % 32u)), 0u, _wgslsmith_mult_u32(max(~4294967295u, u_input.a) >> (~(global0.x ^ 1u) % 32u), ~(~0u ^ global0.x)));
    let var_3 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -784f) + -1300f)));
    var var_4 = Struct_1(any(select(vec2<bool>(var_0, var_0), vec2<bool>(global0.x < 1u, true), vec2<bool>(true, true))), global0.x < global0.x, reverseBits(vec3<u32>(0u, u_input.a, global0.x)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3, var_3)), _wgslsmith_f_op_f32(f32(-1f) * -552f)) + var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, var_3, var_3, var_3)), vec4<f32>(var_3, -1278f, -140f, -130f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3, -922f, 954f, -637f))))))), vec4<i32>(-21202i, global2.a.a.a.x, abs(1i), -24107i));
}

