struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 10420i;

var<private> global1: array<f32, 20>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    return -30066i;
}

fn func_2() -> vec2<u32> {
    let var_0 = vec4<i32>(-2147483647i, firstLeadingBit(1i), -_wgslsmith_sub_i32(1i, u_input.a.x), ~1i);
    var var_1 = Struct_2(global2.c.x);
    global3 = array<Struct_2, 20>();
    global3 = array<Struct_2, 20>();
    global2 = Struct_1(select(var_0.xw, vec2<i32>(max(var_0.x, i32(-1i) * -12493i), _wgslsmith_div_i32(func_3(vec2<f32>(global1[_wgslsmith_index_u32(83984u, 20u)], -483f)), global2.a.x)), select(vec2<bool>(true, var_0.x > u_input.a.x), vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(global2.c.x, global2.c.x, true))))), !(!var_1.a) | global2.c.x, vec2<bool>(true && !all(vec3<bool>(global2.c.x, true, global2.b)), false));
    return vec2<u32>(1u, 1u);
}

fn func_1() -> vec4<f32> {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yz ^ min(vec2<i32>(global2.a.x, 1i), u_input.a.zy), -global2.a << (func_2() % vec2<u32>(32u))), vec2<i32>(u_input.a.x, global2.a.x)), any(vec4<bool>(global2.b, true, any(!vec3<bool>(global2.c.x, global2.c.x, global2.c.x)), u_input.a.x <= -global2.a.x)), vec2<bool>(global2.c.x, true));
    global1 = array<f32, 20>();
    let var_1 = _wgslsmith_sub_i32(i32(-1i) * -var_0.a.x, -(~2147483647i));
    var var_2 = var_0;
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(24942i, -7793i)), _wgslsmith_sub_i32(global2.a.x, 11377i)), firstTrailingBit(var_2.a)), reverseBits(var_2.a.x)), firstTrailingBit(_wgslsmith_clamp_i32(-7601i, -(~var_1), var_2.a.x)));
    return vec4<f32>(651f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(73820u, 20u)]))) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-213f, 1f)) * -878f), any(!(!vec2<bool>(var_0.b, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f - _wgslsmith_f_op_f32(max(999f, global1[_wgslsmith_index_u32(2415u, 20u)]))) + global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 39422u), vec3<u32>(4294967295u, 21388u, 18513u)), _wgslsmith_div_u32(1u, 4294967295u)), 20u)])), -1622f);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>) -> u32 {
    return ~func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(max(~20137u, func_4(true, _wgslsmith_f_op_vec4_f32(func_1()))), 20u)];
    let var_1 = ~global2.a;
    let var_2 = Struct_1(~_wgslsmith_clamp_vec2_i32(var_1 | select(var_1, vec2<i32>(var_1.x, var_1.x), vec2<bool>(var_0.a, false)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(2147483647i, u_input.a.x), _wgslsmith_div_vec2_i32(vec2<i32>(global2.a.x, 0i), vec2<i32>(1395i, -2147483647i)), vec2<i32>(1i, 1i)), -vec2<i32>(var_1.x, var_1.x)), !global2.b, select(vec2<bool>(true, _wgslsmith_f_op_f32(trunc(376f)) < -1000f), select(select(!vec2<bool>(global2.b, true), select(global2.c, vec2<bool>(true, global2.c.x), true), !global2.c), global2.c, global2.b), vec2<bool>(!global2.b, all(select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, true, false, var_0.a))))));
    global0 = 63561i;
    global0 = 14556i;
    global1 = array<f32, 20>();
    let var_3 = Struct_1(vec2<i32>(u_input.a.x, global2.a.x), true, !select(select(global2.c, vec2<bool>(false, var_0.a), !vec2<bool>(var_2.b, global2.c.x)), global2.c, vec2<bool>(false, true)));
    global0 = var_1.x;
    global0 = -38536i;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -3010i, var_2.a.x), ~(-vec3<i32>(14636i, u_input.a.x, -3012i)), vec3<i32>(~global2.a.x, var_3.a.x, _wgslsmith_add_i32(-45352i, var_1.x))), min(-max(u_input.a.ywy, u_input.a.yww), abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a.x, 24124i, 1i), u_input.a.wxz)))), reverseBits(61511u));
}

