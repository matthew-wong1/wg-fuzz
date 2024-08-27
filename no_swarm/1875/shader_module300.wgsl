struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1985i, 3916i);

var<private> global1: vec3<bool>;

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, true, false, false, false, true, true, false, false, false, false, true);

var<private> global3: array<Struct_5, 23>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(~(~(~(~vec3<u32>(u_input.c, 86900u, 1u)))), _wgslsmith_div_i32(-2147483647i << (~(u_input.c >> (0u % 32u)) % 32u), -5783i << (u_input.c % 32u)), !select(global2[_wgslsmith_index_u32(countOneBits(~0u), 13u)], 4294967295u >= min(u_input.c, 1u), global1.x | global2[_wgslsmith_index_u32(40353u, 13u)]), u_input.c);
    global2 = array<bool, 13>();
    global2 = array<bool, 13>();
    let var_1 = u_input.b;
    global2 = array<bool, 13>();
    return true;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = Struct_5(Struct_3(arg_1, vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1171f), _wgslsmith_f_op_f32(-309f + arg_1)), 305f), Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(29962u, 72665u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, 64534u), vec3<u32>(0u, u_input.c, u_input.c))), reverseBits(-38365i), func_3(any(vec3<bool>(global2[_wgslsmith_index_u32(69530u, 13u)], arg_0, true))), _wgslsmith_mult_u32(36783u, 45808u)), 2147483647i, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) * arg_1))));
    global1 = vec3<bool>(all(select(vec3<bool>(all(vec2<bool>(false, false)), true, false), select(!vec3<bool>(global1.x, arg_0, true), vec3<bool>(arg_2, false, false), func_3(false)), !select(vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_2), true))), all(!(!vec4<bool>(false, true, true, arg_0))), func_3(all(vec4<bool>(select(global1.x, false, false), true, true, !arg_2))));
    var var_1 = u_input.a;
    global2 = array<bool, 13>();
    let var_2 = Struct_5(var_0.a);
    return firstLeadingBit(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.a.c.d, 26262u, u_input.c), ~(0u ^ var_2.a.c.d)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> vec2<i32> {
    global0 = vec2<i32>(arg_0, -(~(-global0.x)));
    global3 = array<Struct_5, 23>();
    global3 = array<Struct_5, 23>();
    global3 = array<Struct_5, 23>();
    var var_0 = true;
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x >> (u_input.c % 32u), 1i), u_input.b.yz, select(vec2<i32>(-arg_0, -arg_0), u_input.b.xz, global1.yz)) << (select(~vec2<u32>(~u_input.c, ~u_input.c), vec2<u32>(~func_2(global2[_wgslsmith_index_u32(u_input.c, 13u)], 743f, global2[_wgslsmith_index_u32(u_input.c, 13u)]), 22801u), global1.yy) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_5, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) * _wgslsmith_f_op_f32(floor(1363f))), 558f)));
    global0 = -func_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(-944f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(728f, 1223f)), _wgslsmith_mod_u32(u_input.c, 20736u) >= u_input.c)));
    let var_1 = ~(~vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(u_input.c), select(u_input.c, 51054u, false)), ~(~u_input.c), _wgslsmith_clamp_u32(u_input.c, u_input.c, 11492u), reverseBits(countOneBits(u_input.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(733f, var_0.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1544f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(reverseBits(_wgslsmith_div_u32(9736u, 90800u)), u_input.c), var_1.x), _wgslsmith_mod_vec2_i32(u_input.b.xz >> ((var_1.zy | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), var_1.zy)) % vec2<u32>(32u)), reverseBits(vec2<i32>(-1i, u_input.a) & (vec2<i32>(u_input.b.x, -11166i) ^ u_input.b.yy))), u_input.c, reverseBits(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(global0.x, 27498i)), -51133i, ~39739i << (var_1.x % 32u), -44370i)));
}

