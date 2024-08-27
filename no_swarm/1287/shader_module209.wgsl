struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(230f);

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(210f, 500f);

var<private> global3: vec3<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global0 = Struct_1(-668f);
    global1 = Struct_1(arg_0.a);
    return arg_0;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = func_2(Struct_1(global0.a));
    let var_2 = arg_1;
    let var_3 = reverseBits(~(_wgslsmith_add_vec2_i32(global3.yy & global3.xx, -global3.zz) << (vec2<u32>(firstTrailingBit(63812u), select(u_input.e.x, u_input.e.x, arg_0.x)) % vec2<u32>(32u))));
    var var_4 = func_2(Struct_1(global1.a));
    return func_2(Struct_1(831f));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec4<i32>) -> bool {
    global0 = Struct_1(-1251f);
    var var_0 = func_3(!select(select(select(vec2<bool>(false, arg_1), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), false)), vec2<bool>(true, true), vec2<bool>(global1.a < global2.x, -801f <= global1.a)), func_2(Struct_1(global0.a)), -1i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a)));
    let var_2 = !(abs(75334u & select(arg_0.x, arg_0.x, arg_1)) > ~(~54949u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(min(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, u_input.e.x)) & (u_input.c ^ vec3<u32>(u_input.e.x, u_input.e.x, 16096u)), ~vec3<u32>(u_input.e.x, 32978u, u_input.c.x)), 1330u);
    var_0 = u_input.e.wx;
    var var_1 = func_1(vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(95236u, ~abs(var_0.x)), u_input.c.x << ((_wgslsmith_dot_vec3_u32(u_input.e.ywz, u_input.c) ^ 45337u) % 32u), _wgslsmith_dot_vec2_u32(u_input.e.wy, u_input.c.xy)), !(!(u_input.e.x > 1u)), vec4<i32>(_wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(-58957i, global3.x)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global3.x, global3.x, u_input.d), vec3<i32>(-2147483647i, -25161i, 2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global3.x, -1i, u_input.a), vec3<i32>(global3.x, 36777i, u_input.b))), -2703i, global3.x) & countOneBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d, global3.x, global3.x, u_input.a), vec4<i32>(0i, global3.x, global3.x, -2147483647i))));
    var var_2 = 4294967295u;
    var var_3 = ~(select(firstLeadingBit(vec3<i32>(global3.x, 0i, 15778i)), -(~vec3<i32>(1i, global3.x, global3.x)), all(vec4<bool>(false, true, true, false))) << (_wgslsmith_sub_vec3_u32(min(~vec3<u32>(var_0.x, u_input.c.x, 0u), u_input.e.yyx), vec3<u32>(~0u, min(107757u, 1u), _wgslsmith_div_u32(0u, u_input.e.x))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(50109u, vec3<i32>(var_3.x, -countOneBits(-var_3.x), u_input.b), _wgslsmith_clamp_u32(21869u, u_input.e.x, select(abs(1u), abs(u_input.c.x) ^ abs(9594u), all(vec4<bool>(true, true, true, true)))), vec3<i32>(~1i, -1i, ~1206i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2601f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)))))));
}

