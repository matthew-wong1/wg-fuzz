struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: bool;

var<private> global3: f32 = 682f;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    var var_0 = -13848i;
    var var_1 = global1[_wgslsmith_index_u32(~51110u, 13u)];
    let var_2 = global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b)), 9u)];
    global2 = !(true | !(select(true, false, false) | all(vec2<bool>(arg_1.a, true))));
    global4 = array<Struct_1, 9>();
    return _wgslsmith_div_u32(max(u_input.a, ~60639u), countOneBits(firstLeadingBit(~arg_3.x)) ^ min(max(u_input.a, arg_3.x) >> (~4294967295u % 32u), 4294967295u));
}

fn func_2() -> Struct_1 {
    let var_0 = abs(~u_input.b.xy);
    return Struct_1(true);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> i32 {
    global2 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1058f - 803f), _wgslsmith_f_op_f32(-700f + -1000f)))) >= _wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-257f))))));
    global1 = array<Struct_1, 13>();
    global2 = any(!vec2<bool>(all(vec3<bool>(false, false, true)), !any(vec4<bool>(arg_2.a, arg_2.a, true, true))));
    var var_0 = abs(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, firstTrailingBit(u_input.b.x)), 6u)], _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(u_input.b.x, 91405u)), 6u)], -min(vec4<i32>(arg_0, arg_0, -2147483647i, arg_0), global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec4<i32>(~(-1i), -arg_0, 1i, 2147483647i))));
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(min(u_input.a, (~u_input.a & ~u_input.a) << (u_input.b.x % 32u)), 13u)], max(-2147483647i, var_0.x), var_0.xyx, vec2<u32>(u_input.b.x, ~select(~14614u, 4294967295u, true)));
    return i32(-1i) * -8881i;
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1((arg_1 < 0i) & true), 31612i, vec3<i32>(~((-1i ^ arg_0) >> (~0u % 32u)), ~arg_0, arg_0), ~min(u_input.b.yx, select(u_input.b.zz, vec2<u32>(4294967295u, 1u), vec2<bool>(false, false))));
    let var_2 = global4[_wgslsmith_index_u32(1u, 9u)];
    global4 = array<Struct_1, 9>();
    var_0 = Struct_1(var_1.a.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = Struct_1(any(vec4<bool>(false, false | any(vec3<bool>(false, true, true)), true, any(vec2<bool>(false, true)))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 7039u, u_input.b.x), _wgslsmith_add_vec4_u32(~vec4<u32>(13862u, u_input.a, u_input.b.x, u_input.b.x) >> ((~vec4<u32>(u_input.a, u_input.b.x, 95852u, 44776u) & ~vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, func_1(1613f, global4[_wgslsmith_index_u32(u_input.a, 9u)], 1215f, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.a, _wgslsmith_sub_u32(u_input.a, 48328u)), vec4<u32>(u_input.a, ~u_input.a, 4294967295u, ~u_input.b.x)))), 13u)];
    var var_3 = firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -_wgslsmith_mod_i32(-1i, 2147483647i)) >> (u_input.b.x % 32u));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2893f);
    var var_4 = u_input.b.x < 4294967295u;
    var_2 = func_4(16911i, abs(func_3(_wgslsmith_div_i32(-10594i, ~1i), var_2.a, func_2())));
    global0 = array<vec4<i32>, 6>();
    var_2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x), u_input.b.yy, _wgslsmith_sub_vec2_u32(abs(~vec2<u32>(1u, u_input.a)), vec2<u32>(5851u, max(u_input.b.x, 7955u))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 491i) << (vec2<u32>(u_input.a, 34987u) % vec2<u32>(32u)), vec2<i32>(31444i, 1i)), _wgslsmith_sub_i32(~11480i, ~2147483647i)) & countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-91938i, 39512i, -9971i, -1i), vec4<i32>(-28378i, -2147483647i, 17560i, -2147483647i), true), abs(global0[_wgslsmith_index_u32(0u, 6u)]))));
}

