struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 0i;

var<private> global2: array<u32, 21>;

var<private> global3: Struct_1;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    return -13878i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0.b, (_wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(global2[_wgslsmith_index_u32(global3.b.x, 21u)], global2[_wgslsmith_index_u32(global3.a.x, 21u)], u_input.b)) >> (vec3<u32>(1u, 1u, 32934u) % vec3<u32>(32u))) ^ ~select(arg_0.b, vec3<u32>(global2[_wgslsmith_index_u32(global3.b.x, 21u)], 13707u, 4294967295u), false)) & global2[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(min(arg_0.b.x, 4294967295u), _wgslsmith_div_u32(0u, u_input.b))), 21u)];
    global1 = select(min(-2147483647i, -25332i), _wgslsmith_mod_i32(-24384i, arg_0.d), all(vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)))));
    let var_1 = arg_0;
    let var_2 = false;
    return _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(abs(countOneBits(arg_0.a.x)), 21u)], global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_0.a & (vec2<u32>(var_0, 4294967295u) & vec2<u32>(4294967295u, 46206u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(global3.a.x, u_input.b), vec2<u32>(4294967295u, 1u), vec2<bool>(var_2, var_2)), global3.a))), 21u)]);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = func_4(arg_0, ~(_wgslsmith_add_i32(arg_0.d, ~arg_0.d) & func_3(Struct_1(arg_0.a, arg_0.b, -532f, -1i), arg_0, arg_0, Struct_1(vec2<u32>(1u, 4294967295u), arg_0.b, global3.c, -23586i))));
    global2 = array<u32, 21>();
    var var_1 = ~(-_wgslsmith_clamp_i32(arg_0.d, _wgslsmith_mult_i32(global3.d, u_input.a.x), global3.d));
    return 1u;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(0u, 1u), ~(~26492u) >> (max(~arg_1.b.x, 25114u) % 32u)), arg_1.b, -102f, -(~u_input.a.x));
    let var_2 = arg_1;
    var var_3 = global3.d;
    let var_4 = _wgslsmith_add_vec3_i32(u_input.a.yww, _wgslsmith_clamp_vec3_i32((vec3<i32>(-1i) * -var_0.zyw) ^ u_input.a.www, var_0.zzy, vec3<i32>(_wgslsmith_add_i32(2147483647i, -19082i), ~global3.d, 63728i) | var_0.wwz));
    return Struct_1(vec2<u32>(~_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(1u, 21u)], func_2(var_2, false), ~var_1.a.x), min(arg_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33907u, global3.b.x, var_2.a.x), vec4<u32>(global2[_wgslsmith_index_u32(23833u, 21u)], 28124u, 1u, 1u)) ^ 0u)), min(vec3<u32>(1u, 17582u, abs(_wgslsmith_clamp_u32(73253u, 0u, 1u))), select(firstLeadingBit(var_2.b >> (var_1.b % vec3<u32>(32u))), abs(firstTrailingBit(vec3<u32>(4294967295u, 28572u, var_2.b.x))), !all(vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(arg_0.x - 1205f), 0i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(-max(arg_0.d, arg_1.d) << (abs(26872u) % 32u), ~_wgslsmith_div_i32(~(-27333i), ~(-2147483647i))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_1(vec2<f32>(1038f, global3.c), Struct_1(vec2<u32>(global2[_wgslsmith_index_u32(1u, 21u)], 1u), vec3<u32>(0u, u_input.b, global3.a.x), global3.c, 5594i)), func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(137f, 1000f))), func_1(vec2<f32>(791f, -1060f), Struct_1(vec2<u32>(1811u, 4294967295u), vec3<u32>(u_input.b, global3.b.x, u_input.b), -634f, u_input.a.x))), vec3<bool>(true, true, true)) & firstLeadingBit(abs(u_input.a.x)), global2[_wgslsmith_index_u32(0u, 21u)], global3.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(440f + global3.c), global3.c, _wgslsmith_f_op_f32(floor(global3.c)), _wgslsmith_f_op_f32(f32(-1f) * -1141f))))), global3.c);
}

