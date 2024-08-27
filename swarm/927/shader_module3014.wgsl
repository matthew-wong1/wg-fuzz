struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1;

var<private> global2: u32 = 35884u;

var<private> global3: vec2<u32> = vec2<u32>(20267u, 0u);

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = arg_0.yzx;
    var var_1 = Struct_1(vec2<i32>(1i, 3940i), u_input.c, !(!var_0.zx), select(_wgslsmith_sub_u32(~global1.b, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.b, 31972u, global1.d), vec3<u32>(global1.b, 1u, 1u), vec3<u32>(global1.b, global1.d, global1.b)), vec3<u32>(global1.b, 0u, global1.d) ^ vec3<u32>(64189u, global1.d, u_input.c))), global1.b, true));
    var_1 = Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_mult_i32(55461i, var_1.a.x), global1.a.x), _wgslsmith_clamp_vec2_i32(global1.a, -select(global1.a, var_1.a, vec2<bool>(var_1.c.x, var_0.x)), _wgslsmith_mult_vec2_i32(-var_1.a, u_input.b.yx >> (vec2<u32>(u_input.a, global1.d) % vec2<u32>(32u))))), firstLeadingBit(reverseBits(_wgslsmith_mult_u32(global1.d, 0u))) >> ((_wgslsmith_sub_u32(u_input.a, 4294967295u) << (_wgslsmith_add_u32(9097u, 4294967295u << (var_1.d % 32u)) % 32u)) % 32u), var_0.xx, 0u);
    var var_2 = var_1.c.x;
    global2 = global1.d;
    return arg_0.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.b, countOneBits(~reverseBits(vec3<i32>(arg_0.x, -15647i, arg_0.x))) ^ countOneBits(select(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, -1i, -70716i), u_input.b, u_input.b), vec3<bool>(false, true, false))), u_input.b);
    let var_1 = func_2(vec4<bool>(!(true || any(vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, global0.x))), arg_1.c.x, global0.x, select(false && (global1.c.x && arg_1.c.x), global1.c.x, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, -1000f)), vec2<f32>(-562f, -791f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(544f, -1224f), vec2<f32>(335f, 265f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 455f))))));
    let var_2 = global4[_wgslsmith_index_u32(~u_input.a, 12u)];
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(18364u, 4294967295u, arg_1.b, 4294967295u), vec4<u32>(11895u, var_2.d, 0u, global3.x) & vec4<u32>(arg_1.b, 1u, 23066u, 1u)), ~vec4<u32>(firstTrailingBit(1u), ~u_input.c, ~1u, 1u)), ~vec4<u32>(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, var_2.b, 4294967295u, 646u), vec4<u32>(4294967295u, 0u, u_input.c, 1264u)), 1u), arg_1.b, ~_wgslsmith_mult_u32(1u, 1u))), 12u)];
    var var_4 = Struct_1(-countOneBits(arg_0), var_2.d, vec2<bool>(var_2.c.x, true), var_2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-525f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(floor(436f)))), _wgslsmith_f_op_f32(1000f * -483f))))), _wgslsmith_f_op_f32(func_1(~firstLeadingBit(~u_input.b.xx), Struct_1(u_input.b.yz, reverseBits(u_input.c), vec2<bool>(true, true), _wgslsmith_mod_u32(~u_input.a, _wgslsmith_mod_u32(global1.d, 4294967295u))))));
    global4 = array<Struct_1, 12>();
    global2 = global3.x << (~1u % 32u);
    global0 = !global1.c;
    var var_2 = Struct_1(u_input.b.xy, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global1.b, 48515u, global1.b), 4294967295u) << (~_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global3.x), _wgslsmith_div_u32(global3.x, 80242u)) % 32u), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(global1.c, global1.c, vec2<bool>(true, global1.c.x)), vec2<bool>(true, true)), global1.c), 1u);
    global4 = array<Struct_1, 12>();
    let var_3 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), 60465u);
}

