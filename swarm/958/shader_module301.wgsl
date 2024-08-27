struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, -29558i, 61037i, 23710i);

var<private> global1: array<bool, 10>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> u32 {
    return 8636u;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_u32(u_input.d.x, u_input.b);
    var var_1 = arg_0;
    var var_2 = Struct_2(max(vec4<i32>(countOneBits(6699i), _wgslsmith_div_i32(u_input.c, u_input.a.x), _wgslsmith_div_i32(-1i, -43324i), abs(arg_0.a.x)), vec4<i32>(arg_0.a.x >> (19367u % 32u), firstLeadingBit(40736i), var_1.a.x, 1i)) ^ -abs(~vec4<i32>(u_input.c, u_input.a.x, 39370i, -2147483647i)), arg_0, u_input.b, any(vec4<bool>(true | global1[_wgslsmith_index_u32(1u ^ u_input.b, 10u)], global1[_wgslsmith_index_u32(~(~1u), 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(abs(countOneBits(u_input.b)), 10u)])));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-372f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f * -1091f)), 269f) - vec4<f32>(322f, 1204f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(139f, -134f)), _wgslsmith_f_op_f32(min(872f, 1046f))), -551f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var_2 = Struct_2(vec4<i32>(15696i, arg_0.a.x, global0.x, var_2.a.x), var_2.b, 10637u, var_2.d);
    return _wgslsmith_add_i32(abs(min((9730i ^ var_2.b.a.x) >> (1u % 32u), -(~(-19557i)))), ~reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.a, vec4<i32>(-15710i, u_input.a.x, global0.x, global0.x)), vec4<i32>(-1i, -20742i, arg_0.a.x, arg_0.a.x))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    global1 = array<bool, 10>();
    var var_0 = u_input.d;
    global0 = ~vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, ~(-u_input.a.x)), -3356i, select(func_3(arg_0.b), _wgslsmith_mult_i32(~u_input.c, ~(-2347i)), arg_0.d), ~u_input.c);
    let var_1 = !(!(!(true & any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global1[_wgslsmith_index_u32(17126u, 10u)], true, true)))));
    var_0 = firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~(~u_input.d), u_input.d), vec3<u32>(u_input.b, max(reverseBits(var_0.x), func_1()), 16240u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(-1i, 2147483647i, _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(u_input.c, i32(-1i) * -1i) ^ global0.x), u_input.c);
    var var_0 = Struct_2(~vec4<i32>(_wgslsmith_mult_i32(1i, global0.x), _wgslsmith_mod_i32(36944i, -1i), u_input.a.x, global0.x) & vec4<i32>(-2147483647i, 0i, global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.x), vec2<i32>(u_input.c, u_input.c))), Struct_1(vec2<i32>(_wgslsmith_add_i32(-1i, abs(u_input.a.x)), -_wgslsmith_mod_i32(9465i, global0.x))), func_1(), !all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(6189u, 10u)], true), global1[_wgslsmith_index_u32(4294967295u, 10u)])));
    var_0 = func_2(Struct_2(-(vec4<i32>(-6498i, global0.x, -16040i, -2147483647i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, var_0.c, 54808u), vec4<u32>(var_0.c, var_0.c, u_input.d.x, u_input.b)) % vec4<u32>(32u))), var_0.b, var_0.c, true), ~(~reverseBits(func_1())));
    var_0 = func_2(Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.x, 20950i, u_input.a.x), vec4<i32>(global0.x, -12502i, global0.x, global0.x) & vec4<i32>(-2147483647i, global0.x, 30673i, var_0.a.x)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a.x, 1i), 1i), global0.x, -2147483647i), func_2(func_2(Struct_2(vec4<i32>(global0.x, global0.x, -5530i, global0.x), Struct_1(vec2<i32>(u_input.a.x, u_input.c)), u_input.d.x, true), _wgslsmith_sub_u32(u_input.d.x, 4294967295u)), ~countOneBits(1u)).b, reverseBits(4294967295u), !var_0.d), 73354u);
    let var_1 = vec3<bool>(-(~u_input.a.x) < global0.x, any(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.c, 10u)], true, global1[_wgslsmith_index_u32(u_input.b, 10u)]), select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 10u)], var_0.d), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.c, 10u)], true), true), select(vec3<bool>(true, var_0.d, global1[_wgslsmith_index_u32(u_input.d.x, 10u)]), vec3<bool>(true, true, true), true)), !select(vec3<bool>(global1[_wgslsmith_index_u32(75137u, 10u)], false, var_0.d), vec3<bool>(var_0.d, false, false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_0.c, 10u)])), !vec3<bool>(true, var_0.d, false))), true & (4294967295u <= (_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) ^ 66245u)));
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(~(~(~1u)), 4294967295u ^ countOneBits(_wgslsmith_mod_u32(var_0.c, var_0.c))), u_input.d.x, 14651u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xx, ~countOneBits(_wgslsmith_sub_i32(~global0.x, _wgslsmith_mult_i32(-1i, -1i))), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -826f), -310f, 1597f));
}

