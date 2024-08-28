struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -650f;

var<private> global1: bool;

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<f32, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec2<bool> {
    let var_0 = true;
    let var_1 = !arg_1;
    let var_2 = global2[_wgslsmith_index_u32(51784u, 19u)];
    var var_3 = global2[_wgslsmith_index_u32(~(~(~firstTrailingBit(min(45786u, 0u)))), 19u)];
    let var_4 = -730f;
    return !vec2<bool>(!var_1 | arg_1, !any(select(vec2<bool>(false, false), vec2<bool>(arg_1, var_0), vec2<bool>(false, true))));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(select(vec2<i32>(u_input.b.x, 69547i), u_input.b, func_3(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.a, 20358i, u_input.a), vec4<i32>(u_input.a, 24973i, u_input.b.x, 13234i)), true)), u_input.a, _wgslsmith_div_vec3_i32(firstLeadingBit(~(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x) >> (vec3<u32>(105787u, 4294967295u, 5820u) % vec3<u32>(32u)))), min(_wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.b.x, 35137i, -14855i), vec3<i32>(u_input.b.x, 31913i, u_input.b.x)), ~vec3<i32>(u_input.b.x, -65526i, 13681i)), abs(select(vec3<i32>(u_input.a, -1i, 12807i), vec3<i32>(29435i, u_input.b.x, u_input.a), vec3<bool>(false, false, true))))));
    global1 = !(!all(func_3(-vec4<i32>(-14802i, 316i, 0i, -47075i), false)));
    let var_1 = global2[_wgslsmith_index_u32(1u, 19u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f), -944f);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(547f, global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, 4294967295u)), 27u)]));
    return vec2<bool>(true, !(~(~u_input.a) >= var_1.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> vec3<i32> {
    var var_0 = 11348u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))))), global3[_wgslsmith_index_u32(5835u, 27u)]);
    global3 = array<f32, 27>();
    var var_2 = func_2();
    var var_3 = vec4<f32>(-236f, arg_0.x, 1202f, 2280f);
    return _wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, min(0i, arg_1.x), u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(79563u, 37941u, 4294967295u, 0u), ~vec4<u32>(16318u, 0u, 1u, 77080u)) % 32u)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 19>();
    var var_0 = ~func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1076f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(10913u, 27u)] - global3[_wgslsmith_index_u32(1u, 27u)]))), vec3<i32>(-1i) * -abs(vec3<i32>(u_input.a, u_input.a, -2147483647i)));
    global3 = array<f32, 27>();
    global3 = array<f32, 27>();
    global3 = array<f32, 27>();
    var var_1 = var_0.x < 79010i;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(~22178i, _wgslsmith_div_i32(~(-1i), abs(6620i)), -(i32(-1i) * -9826i)), vec3<i32>(u_input.a, 2147483647i, -2147483647i)) | vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, var_0.x, var_0.x), u_input.a), ~u_input.b.x, _wgslsmith_add_i32(24475i, select(-47427i, u_input.b.x, false)) | -min(u_input.a, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_i32(-var_2, var_2, vec3<i32>(u_input.a, var_2.x, -59913i) >> (vec3<u32>(0u, 47693u, 1378u) % vec3<u32>(32u))) & -var_2, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~4294967295u, 1u << (1u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(68622u, 1u, 1u), ~vec3<u32>(81701u, 5933u, 0u))), 27u)]), select(var_2.yx, firstTrailingBit(var_0.zy) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u)), vec2<bool>(true, true)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 1u, firstTrailingBit(5968u)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35126u), vec2<u32>(21117u, 1u))), 62424u), ~(~abs(45041u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(89536u, 27u)], global3[_wgslsmith_index_u32(24708u, 27u)], global3[_wgslsmith_index_u32(48073u, 27u)], 1014f)))))));
}

