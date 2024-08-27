struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(67268u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(4951u, 45109u), vec2<u32>(1u, 0u), vec2<u32>(1u, 1u));

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 18>;

var<private> global3: array<Struct_2, 3>;

var<private> global4: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(true)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)), Struct_2(Struct_1(false)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    global3 = array<Struct_2, 3>();
    global3 = array<Struct_2, 3>();
    global1 = Struct_4(vec3<u32>(global1.a.x, ~arg_2, ~(u_input.b.x ^ 1u)) << (vec3<u32>(1u, ~abs(arg_2), countOneBits(78293u) << (~global1.a.x % 32u)) % vec3<u32>(32u)), 58876i);
    global3 = array<Struct_2, 3>();
    var var_0 = u_input.b.zwz;
    return reverseBits(_wgslsmith_sub_u32(countOneBits(~1u), _wgslsmith_sub_u32(var_0.x, ~var_0.x >> (_wgslsmith_mult_u32(30985u, 24982u) % 32u))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-824f));
    var var_1 = ~(~func_3(_wgslsmith_sub_i32(max(-23614i, u_input.a), arg_0), 603f, u_input.b.x, vec2<f32>(var_0, _wgslsmith_f_op_f32(round(var_0)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * -183f));
    global0 = array<vec2<u32>, 5>();
    var var_3 = Struct_4(vec3<u32>(~arg_1.x, 18689u, _wgslsmith_clamp_u32(~max(0u, global1.a.x), arg_1.x, ~arg_1.x)), global1.b);
    return global3[_wgslsmith_index_u32(~global1.a.x, 3u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> i32 {
    var var_0 = -2023f;
    let var_1 = u_input.b;
    let var_2 = func_2(~global1.b, u_input.b.wxx);
    var var_3 = var_1.zwz | abs(global1.a);
    var var_4 = (1u << (var_3.x % 32u)) > _wgslsmith_add_u32(abs(var_3.x) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a.x, 4294967295u), var_1.x | var_1.x) % 32u), arg_2);
    return 42513i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(1u) >= global1.a.x);
    var var_1 = Struct_4(_wgslsmith_div_vec3_u32(u_input.b.wwx | _wgslsmith_add_vec3_u32(min(u_input.b.xxz, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), ~u_input.b.zww), abs(~vec3<u32>(1u, global1.a.x, 30719u)) << (~(~u_input.b.xyz) % vec3<u32>(32u))), _wgslsmith_mod_i32(-global1.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(10182i, 1i, 1i, 1i))) | max(_wgslsmith_sub_i32(abs(u_input.a), 1i), _wgslsmith_div_i32(-1i, func_1(Struct_1(var_0.a), vec4<bool>(false, true, false, var_0.a), 4294967295u))));
    var var_2 = Struct_1(!(!(!var_0.a)) | !all(select(vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.a, var_0.a, true, var_0.a), false)));
    let var_3 = ~vec2<i32>(~countOneBits(-2147483647i) >> (firstLeadingBit(105637u) % 32u), -1i);
    let var_4 = select(~12537u >= u_input.b.x, true, any(vec4<bool>(!select(false, true, true), _wgslsmith_mod_u32(var_1.a.x, 30875u) != _wgslsmith_mod_u32(u_input.b.x, 1u), false | var_2.a, false)));
    var var_5 = var_3;
    let var_6 = firstTrailingBit(abs(vec4<i32>(_wgslsmith_div_i32(firstTrailingBit(u_input.a), 1i), var_3.x, select(select(global1.b, global1.b, var_4), var_5.x, false), -func_1(Struct_1(true), vec4<bool>(var_4, true, var_0.a, var_2.a), 69960u))));
    var_2 = func_2(41206i, vec3<u32>(u_input.b.x, abs(_wgslsmith_dot_vec3_u32(u_input.b.wxx, global1.a)), _wgslsmith_dot_vec3_u32(u_input.b.zxz, vec3<u32>(u_input.b.x, var_1.a.x, u_input.b.x))) >> (var_1.a % vec3<u32>(32u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(1265f, -125f, ~vec4<i32>(1i, ~(-1i), -1i, var_1.b) << ((vec4<u32>(1u, global1.a.x, firstLeadingBit(14547u), var_1.a.x) | u_input.b) % vec4<u32>(32u)));
}

