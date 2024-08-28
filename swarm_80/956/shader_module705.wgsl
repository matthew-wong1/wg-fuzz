struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), 1059f, false);

var<private> global1: i32;

var<private> global2: array<u32, 13> = array<u32, 13>(9657u, 0u, 13581u, 0u, 0u, 0u, 0u, 0u, 4085u, 4294967295u, 4294967295u, 5120u, 4294967295u);

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = ~3943u;
    let var_1 = arg_0.c;
    let var_2 = select(u_input.b << ((_wgslsmith_dot_vec3_u32(vec3<u32>(32535u, 15105u, 4294967295u) | vec3<u32>(arg_0.a.x, 4294967295u, 29355u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 74305u), vec3<u32>(4294967295u, 1u, u_input.c.x))) & arg_0.a.x) % 32u), -2147483647i, true);
    var var_3 = u_input.a.zy;
    var var_4 = Struct_1(select(arg_0.a, vec2<u32>(13442u, _wgslsmith_dot_vec3_u32(vec3<u32>(67832u, global2[_wgslsmith_index_u32(u_input.d.x, 13u)], u_input.d.x), vec3<u32>(4294967295u, u_input.d.x, 0u))), vec2<bool>(any(vec2<bool>(false, var_1)), true)) << (vec2<u32>(~_wgslsmith_sub_u32(arg_0.a.x, 7829u), global3.x) % vec2<u32>(32u)), 1004f, var_1);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = countOneBits(reverseBits(-vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.a.x, max(u_input.b, 2147483647i))));
    let var_1 = vec4<bool>(true, !all(!vec3<bool>(false, true, global0.c)), any(!func_3(Struct_1(vec2<u32>(global0.a.x, global3.x), 1096f, global0.c), _wgslsmith_f_op_vec3_f32(arg_0 - arg_0))), (1u > _wgslsmith_div_u32(u_input.c.x, ~71376u)) || !global0.c);
    let var_2 = Struct_1(vec2<u32>(u_input.d.x, global3.x), 929f, !var_1.x);
    global2 = array<u32, 13>();
    global0 = Struct_1(vec2<u32>(~30216u, global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_2.b))))), func_3(Struct_1(vec2<u32>(u_input.c.x, ~7663u), 1157f, all(!var_1)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-597f, -1401f, -813f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1237f, 221f, global0.b)))))))).x);
    return Struct_1(var_2.a, global0.b, u_input.b < -2147483647i);
}

fn func_1() -> Struct_1 {
    var var_0 = select(global3.x, u_input.d.x, (_wgslsmith_f_op_f32(-global0.b) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f + 905f) + -399f)) | (global0.b != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1489f, global0.b))) * vec3<f32>(-688f, 2536f, _wgslsmith_f_op_f32(global0.b + 1095f)))));
    var var_2 = var_1;
    return Struct_1(vec2<u32>(~69122u << (var_1.a.x % 32u), firstLeadingBit(5852u & _wgslsmith_add_u32(var_2.a.x, var_2.a.x))), _wgslsmith_div_f32(-630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b - 246f))) + var_2.b)), !var_1.c);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    global1 = min(u_input.b, -(~(u_input.b | 10638i)) | -countOneBits(-2147483647i));
    let var_0 = -vec3<i32>(-1i >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(arg_0.a.x, 13u)], global3.x), vec3<u32>(26421u, 1399u, 4294967295u))) % 32u), -17022i, -2147483647i);
    var var_1 = firstLeadingBit(firstLeadingBit(-vec2<i32>(~56211i, ~u_input.a.x)));
    let var_2 = -1i;
    let var_3 = firstLeadingBit(_wgslsmith_div_vec2_u32(arg_0.a, ~max(vec2<u32>(u_input.d.x, global0.a.x), vec2<u32>(0u, global0.a.x)) << (~vec2<u32>(global3.x, 57831u) % vec2<u32>(32u))));
    return reverseBits(~arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(-32527i);
    let var_0 = -(u_input.a ^ firstTrailingBit(vec3<i32>(9039i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 0i)));
    let var_1 = 49884u;
    let var_2 = ~_wgslsmith_add_vec2_u32(func_4(func_1()), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global3.x, 1u), vec2<u32>(var_1, global3.x)), u_input.d), vec2<u32>(u_input.d.x, global2[_wgslsmith_index_u32(~4294967295u, 13u)])));
    global3 = ~(~(~max(u_input.d << (var_2 % vec2<u32>(32u)), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(var_0.x, _wgslsmith_mod_i32(reverseBits(0i), u_input.a.x)), ~(~(-var_0.x)), var_0.x, ~(-1i | firstLeadingBit(var_0.x))), u_input.a.yz);
}

