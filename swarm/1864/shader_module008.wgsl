struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 579f;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(-41981i, 0u);

var<private> global3: array<bool, 28>;

var<private> global4: Struct_1 = Struct_1(-23083i, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    var var_0 = 510f;
    global3 = array<bool, 28>();
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, _wgslsmith_clamp_u32(22803u, global4.b, ~(~global4.b))), u_input.b.yx);
    global0 = 237f;
    let var_2 = vec4<bool>(any(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(27170u, 28u)], global3[_wgslsmith_index_u32(global2.b, 28u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], true))), false, select(all(vec4<bool>(false, global3[_wgslsmith_index_u32(global2.b, 28u)], true, global3[_wgslsmith_index_u32(0u, 28u)])), global3[_wgslsmith_index_u32(countOneBits(global4.b), 28u)], true), global3[_wgslsmith_index_u32(countOneBits(global4.b), 28u)] == (global2.a < global4.a))), false, false, (true && (u_input.a <= abs(global2.a))) || global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(global4.b, 0u) >> (19486u % 32u)), 28u)]);
    return vec3<f32>(620f, -914f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f + global1.x) - global1.x)));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 + global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-929f - global1.x) * _wgslsmith_f_op_f32(global1.x + arg_0))), _wgslsmith_f_op_vec2_f32(abs(global1.xz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zz + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-768f, arg_0), vec2<f32>(683f, 130f), global3[_wgslsmith_index_u32(0u, 28u)]))), global1.yz) + _wgslsmith_f_op_vec2_f32(global1.xy - vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, arg_0)), _wgslsmith_f_op_f32(-arg_0)))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1059f, 339f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, -684f, arg_0)))), _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1080f, global1.x)), vec3<f32>(2084f, -121f, 1000f)))), !select(!vec3<bool>(false, global3[_wgslsmith_index_u32(global2.b, 28u)], false), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], true, global3[_wgslsmith_index_u32(14508u, 28u)]), vec3<bool>(global3[_wgslsmith_index_u32(global4.b, 28u)], global3[_wgslsmith_index_u32(global4.b, 28u)], global3[_wgslsmith_index_u32(u_input.b.x, 28u)]), false), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 28u)], global3[_wgslsmith_index_u32(15533u, 28u)], global3[_wgslsmith_index_u32(45307u, 28u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)], false), true)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(892f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - var_0.x) + _wgslsmith_f_op_f32(abs(-456f))), -371f)));
    global4 = Struct_1(global4.a, ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, global2.b, 12401u, global2.b) | vec4<u32>(77111u, global2.b, u_input.b.x, global2.b)), select(~vec4<u32>(16079u, u_input.b.x, 4294967295u, global4.b), vec4<u32>(60038u, global2.b, global4.b, global2.b), select(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], true, global3[_wgslsmith_index_u32(global2.b, 28u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], true, true, global3[_wgslsmith_index_u32(global2.b, 28u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(global4.b, 28u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 28u)])))));
    var var_1 = Struct_1(~global2.a, 0u ^ _wgslsmith_mod_u32(~global2.b, (30204u << (0u % 32u)) >> (0u % 32u)));
    let var_2 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~var_1.b, firstTrailingBit(1u), 0u) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 18126u, var_1.b, 2480u), ~vec4<u32>(var_1.b, 36542u, global4.b, u_input.b.x)), max(vec4<u32>(global2.b, global2.b, u_input.b.x, 41422u) >> (vec4<u32>(37587u, global4.b, global2.b, 29859u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.b, global4.b, 4294967295u), vec4<u32>(1u, global2.b, 23843u, global4.b)))) % 32u), global2.b);
    return _wgslsmith_clamp_i32(global2.a, global4.a, var_1.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = _wgslsmith_div_f32(global1.x, 846f);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) + _wgslsmith_f_op_f32(min(global1.x, global1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.x + -901f), _wgslsmith_f_op_f32(898f + 1189f), global3[_wgslsmith_index_u32(global2.b & 0u, 28u)]))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - 600f), global1.x))));
    global0 = global1.x;
    let var_1 = u_input.b.xy;
    global1 = _wgslsmith_f_op_vec3_f32(-var_0);
    return Struct_1(firstTrailingBit(~(~(-1i))), ~15700u);
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    global2 = func_4(vec2<i32>(countOneBits(-7250i), func_2(-702f) & (firstTrailingBit(global2.a) << (global4.b % 32u))), Struct_1(arg_1, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, global2.b), ~max(59269u, global4.b))), vec3<u32>(26858u, 28594u, max(73986u, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), 4294967295u | global4.b, 26697u))));
    global4 = Struct_1(global2.a, ~_wgslsmith_mod_u32(~_wgslsmith_mod_u32(4294967295u, global2.b), ~(~4294967295u)));
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -723f);
    var_0 = !all(select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 28u)], arg_0, false, false), vec4<bool>(arg_0, arg_0, true, global3[_wgslsmith_index_u32(global2.b, 28u)]), arg_0), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], true, global3[_wgslsmith_index_u32(global2.b, 28u)]), vec4<bool>(arg_0, arg_0, false, arg_0), false), global3[_wgslsmith_index_u32(u_input.b.x, 28u)] | global3[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(true, false && arg_0, true, arg_0), true));
    return Struct_1(~(-5486i), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2.b, 1799u, global4.b)), ~vec3<u32>(global4.b, max(23772u, global2.b), abs(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (-2147483647i >> (~_wgslsmith_div_u32(38333u, abs(global2.b)) % 32u)) & 1i;
    let var_1 = -global4.a;
    var var_2 = _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -747f)))))));
    global4 = func_1(var_0 != (-firstLeadingBit(global4.a) >> (~global2.b % 32u)), firstLeadingBit(_wgslsmith_mult_i32(~(-4775i >> (0u % 32u)), var_1)));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(ceil(554f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.c, u_input.c)), min(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -2147483647i), u_input.c), func_2(global1.x), ~u_input.a), -u_input.c));
}

