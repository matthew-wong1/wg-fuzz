struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: array<i32, 27> = array<i32, 27>(-2496i, -6779i, 0i, 1i, -1i, -1i, 1i, -3840i, 8667i, -67545i, -3393i, 3740i, -1963i, 62140i, 2147483647i, i32(-2147483648), 19435i, -1i, i32(-2147483648), 17944i, 0i, 1i, -19500i, 2267i, -16139i, 42469i, 60292i);

var<private> global2: array<u32, 12> = array<u32, 12>(1u, 4294967295u, 4294967295u, 21386u, 0u, 35872u, 0u, 29801u, 21442u, 1u, 18027u, 1u);

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(2147483647i, -3515i), -830f), Struct_1(vec2<i32>(i32(-2147483648), 0i), -869f), Struct_1(vec2<i32>(-1i, 2147483647i), 1399f), Struct_1(vec2<i32>(-1i, -11008i), -469f), Struct_1(vec2<i32>(1i, -1i), -2665f), Struct_1(vec2<i32>(45538i, 0i), 794f), Struct_1(vec2<i32>(-4323i, 0i), 1000f), Struct_1(vec2<i32>(19866i, -496i), -351f), Struct_1(vec2<i32>(6468i, -33716i), 1251f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), -446f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = true;
    return global2[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) | vec3<u32>(arg_1, 9975u, 1u), abs(abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14620u, 12u)], 12u)], arg_1, arg_1)))), 10881u), (~u_input.a.x >> (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, global2[_wgslsmith_index_u32(1u, 12u)]), u_input.a.x | 40664u) % 32u)) ^ ~_wgslsmith_sub_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(arg_1, 12u)], arg_1), _wgslsmith_clamp_u32(u_input.a.x, arg_1, arg_1))), 12u)];
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    global2 = array<u32, 12>();
    global3 = array<Struct_1, 10>();
    var var_0 = abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(any(arg_0), select(global2[_wgslsmith_index_u32(1u, 12u)], 4294967295u, true), global3[_wgslsmith_index_u32(84646u, 10u)], _wgslsmith_mult_vec3_i32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 20u)], global0[_wgslsmith_index_u32(0u, 20u)])), u_input.a.x << (_wgslsmith_sub_u32(45542u, u_input.a.x) % 32u)) | _wgslsmith_mult_u32(abs(abs(1u)), global2[_wgslsmith_index_u32(~1u | global2[_wgslsmith_index_u32(94227u, 12u)], 12u)]), 12u)]);
    var var_1 = vec4<bool>(!(false && (arg_1 <= _wgslsmith_f_op_f32(arg_1 + arg_1))), true, false, all(!(!select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, arg_0.x, false), true))));
    var var_2 = Struct_1(vec2<i32>(~(~global1[_wgslsmith_index_u32(0u ^ u_input.a.x, 27u)]), 2147483647i), _wgslsmith_div_f32(arg_1, arg_1));
    return Struct_1(~vec2<i32>(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.a.x, 20u)] & global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], 20u)], vec3<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 27u)], 1680i, -2147483647i)), -11222i), -1838f);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>, arg_3: f32) -> bool {
    var var_0 = Struct_2(~(~arg_0.a), max(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), 80930u, reverseBits(0u), 1u), ~(~vec4<u32>(25531u, 33267u, u_input.a.x, 1u))), reverseBits(_wgslsmith_mult_vec4_u32(min(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72776u, 12u)], 12u)], 12u)], 50343u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 49351u, u_input.a.x)), reverseBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, 45085u))))), global0[_wgslsmith_index_u32(4294u, 20u)]);
    let var_1 = var_0.b.xxz;
    global0 = array<vec3<i32>, 20>();
    global2 = array<u32, 12>();
    let var_2 = all(select(vec3<bool>(!arg_2.x, !(-244f < arg_3), arg_2.x), !vec3<bool>(arg_2.x, true, arg_2.x), any(arg_2) && true));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(17705u, global2[_wgslsmith_index_u32(0u, 12u)], u_input.a.x))), vec3<u32>(select(1u, ~global2[_wgslsmith_index_u32(41249u, 12u)], false), ~(~global2[_wgslsmith_index_u32(1u, 12u)]), global2[_wgslsmith_index_u32(0u, 12u)]));
    let var_1 = vec3<bool>(all(vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), true, func_3(func_1(vec2<bool>(false, false), 1671f), max(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, false), _wgslsmith_f_op_f32(round(1629f))))), any(vec3<bool>(false, all(vec2<bool>(true, false)), true)) | true, false);
    var var_2 = !(!vec3<bool>(all(vec4<bool>(true, true, true, true)), var_1.x, all(select(var_1, var_1, var_1))));
    var var_3 = global3[_wgslsmith_index_u32(51962u, 10u)];
    var_2 = vec3<bool>(all(!(!vec4<bool>(true, var_2.x, var_2.x, true))) && (global2[_wgslsmith_index_u32(4294967295u, 12u)] <= global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a.x), 12u)]), 12u)]), !((abs(var_3.a.x) ^ (global1[_wgslsmith_index_u32(9926u, 27u)] << (0u % 32u))) < _wgslsmith_dot_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], 1i, -972i, -64760i), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], var_3.a.x, var_3.a.x, var_3.a.x))), select(var_1.x, true, true | !any(var_1)));
    var var_4 = Struct_2(var_3.a, ~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(21738u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], u_input.a.x), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)], u_input.a.x)) >> (vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], u_input.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)], 12u)]) % vec4<u32>(32u))) >> (~vec4<u32>(_wgslsmith_mod_u32(58739u, global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), u_input.a.x, global2[_wgslsmith_index_u32(1u, 12u)], 13252u ^ global2[_wgslsmith_index_u32(u_input.a.x, 12u)]) % vec4<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(~(var_3.a.x | var_3.a.x), var_3.a.x, var_3.a.x), firstTrailingBit(var_3.a.x), -(~(38781i ^ var_3.a.x))));
    global2 = array<u32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(select(vec3<i32>(var_3.a.x, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(8736u, 27u)]), vec3<i32>(-432i, 32500i, var_3.a.x), var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.b)))));
}

