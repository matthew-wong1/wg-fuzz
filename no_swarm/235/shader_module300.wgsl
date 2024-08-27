struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global1 = array<Struct_1, 14>();
    var var_0 = -vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.a.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 1i)), vec4<i32>(u_input.a.x << (arg_0.x % 32u), ~(-8851i), u_input.a.x, u_input.a.x)), u_input.a.x, 7866i);
    global0 = false;
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(any(vec3<bool>(true, false, false)) || any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true));
    var_0 = abs(-_wgslsmith_add_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, var_0.x, var_0.x), vec4<i32>(-1i, var_0.x, u_input.a.x, u_input.a.x))), min(~vec4<i32>(var_0.x, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-87351i, var_0.x, 1i, u_input.a.x) | vec4<i32>(-1i, var_0.x, 1i, u_input.a.x))));
    return var_0.x;
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 14>();
    var var_0 = select(vec2<u32>(~_wgslsmith_mod_u32(1u >> (u_input.b % 32u), firstLeadingBit(u_input.b)), u_input.b), vec2<u32>(0u, _wgslsmith_div_u32(4294967295u, 4294967295u)), vec2<bool>(true, true && all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))));
    var_0 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(max(u_input.b, u_input.b), 33126u & var_0.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(10933u, 4294967295u))) << (~_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, 1u), vec2<u32>(var_0.x, u_input.b), false), vec2<u32>(52689u, var_0.x) << (vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = ~select(vec2<i32>(func_3(vec3<u32>(35337u, u_input.b, var_0.x)) << (9558u % 32u), ~u_input.a.x), -_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(8627i, u_input.a.x), vec2<i32>(0i, u_input.a.x)), -u_input.a, firstTrailingBit(u_input.a)), false);
    let var_2 = u_input.a.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-251f))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<bool>, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_div_f32(-764f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) * _wgslsmith_f_op_f32(step(-138f, 1110f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1464f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) - _wgslsmith_f_op_f32(step(-914f, _wgslsmith_f_op_f32(sign(118f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1374f)))), -694f));
    var var_1 = var_0.zx;
    var var_2 = Struct_1(1451f, true);
    let var_3 = global1[_wgslsmith_index_u32(26237u, 14u)];
    let var_4 = arg_3.x;
    return 1181f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 14>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 14u)];
    global0 = var_0.b;
    let var_1 = _wgslsmith_mult_vec3_i32(-(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(1i, 2147483647i, -1i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~(-1i), u_input.a.x), ~(~vec3<i32>(-9444i, 2147483647i, u_input.a.x))));
    let var_2 = ~abs(vec4<i32>(reverseBits(var_1.x), ~(var_1.x ^ u_input.a.x), 71160i, firstTrailingBit(~(-28956i))));
    var var_3 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_f32(-var_0.a)) > _wgslsmith_f_op_f32(func_1(select(true, false, u_input.a.x == u_input.a.x), true, !(!vec2<bool>(var_0.b, var_0.b)), ~(vec4<i32>(3115i, 0i, 1i, var_2.x) >> (vec4<u32>(u_input.b, 0u, u_input.b, 1u) % vec4<u32>(32u))))));
    var var_4 = ~(~(~(~vec2<u32>(u_input.b, 0u))) >> (((abs(vec2<u32>(u_input.b, u_input.b)) | abs(vec2<u32>(5397u, 1u))) >> (select(~vec2<u32>(23659u, u_input.b), countOneBits(vec2<u32>(u_input.b, 4294967295u)), true) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(var_2.zzx, var_2.xyz), var_1.x);
}

