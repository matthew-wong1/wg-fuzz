struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(0u, Struct_4(56269u), true, 1584f);

var<private> global1: array<Struct_5, 21>;

var<private> global2: array<Struct_5, 1>;

var<private> global3: Struct_5;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = global0.c;
    global4 = Struct_1(global4.d, 72498u, global4.c, true);
    let var_1 = global0.b;
    let var_2 = Struct_5(5598u, Struct_4(countOneBits(select(~116316u, 1u, false))), global0.c, -1141f);
    var var_3 = global2[_wgslsmith_index_u32(0u, 1u)];
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, reverseBits(~select(4294967295u, 4294967295u, global0.c))), 37911u);
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_5(70843u, global3.b, false, _wgslsmith_f_op_f32(-1742f * arg_1));
    global0 = Struct_5(42086u, Struct_4(global0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + -1075f) - _wgslsmith_f_op_f32(434f + global0.d))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1943f) + _wgslsmith_f_op_f32(-598f - _wgslsmith_f_op_f32(var_0.d - 492f))), _wgslsmith_f_op_f32(floor(global3.d)));
    let var_1 = 4294967295u;
    global3 = Struct_5(max(func_3(), _wgslsmith_mod_u32(0u, reverseBits(0u) | _wgslsmith_div_u32(61731u, global3.a))), var_0.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    let var_2 = ~(-u_input.c);
    return Struct_2(~u_input.a);
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global2 = array<Struct_5, 1>();
    global0 = global2[_wgslsmith_index_u32(0u, 1u)];
    var var_0 = Struct_3(Struct_1(global0.c, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, global0.a) & vec4<u32>(17566u, 29154u, global0.a, 96099u), vec4<u32>(4294967295u, global4.b, 9235u, global0.a))), _wgslsmith_mod_vec3_u32(~min(global4.c, vec3<u32>(global3.b.a, global3.b.a, u_input.a.x)), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(global4.c, u_input.a), _wgslsmith_mod_vec3_u32(u_input.a, global4.c))), false), func_2(!global4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x, u_input.a.x < 0u)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1231f * -888f)))), Struct_1(true, global0.a | (global3.b.a & abs(4294967295u)), vec3<u32>(17938u, 1u << (global3.b.a % 32u), 1u) ^ ~(~u_input.a), any(select(vec4<bool>(global3.c, global4.d, false, global3.c), select(vec4<bool>(false, global4.d, global0.c, false), vec4<bool>(false, false, global3.c, false), global3.c), false))), reverseBits(vec4<i32>(~(-1i | u_input.b), u_input.c.x, max(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(-2147483647i, -39048i)), u_input.b), -u_input.c.x ^ 21462i)), Struct_1(true, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global4.b, u_input.a.x, 13514u), vec4<u32>(0u, 1u, global4.c.x, global4.b))), max(select(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), u_input.a, 1993f > global0.d), u_input.a ^ _wgslsmith_mult_vec3_u32(vec3<u32>(0u, global3.b.a, 9104u), u_input.a)), true));
    var_0 = Struct_3(Struct_1(global0.c, ~global3.b.a, ~u_input.a, 45674i <= var_0.d.x), var_0.b, var_0.c, vec4<i32>(1i, reverseBits(var_0.d.x), var_0.d.x, select(firstTrailingBit(2147483647i), 1i, global3.d == _wgslsmith_div_f32(796f, 526f))), Struct_1(global0.c, global3.b.a, vec3<u32>(abs(~global4.b), u_input.a.x, var_0.c.c.x), select(global4.a, all(!vec4<bool>(global3.c, global0.c, false, false)), false)));
    global0 = Struct_5(var_0.c.c.x | _wgslsmith_sub_u32(~75470u, ~global3.b.a), Struct_4(~u_input.a.x), global4.a, 2388f);
    return var_0.d.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<bool>) -> vec3<u32> {
    global2 = array<Struct_5, 1>();
    global2 = array<Struct_5, 1>();
    global1 = array<Struct_5, 21>();
    let var_0 = global2[_wgslsmith_index_u32(global3.b.a, 1u)];
    var var_1 = _wgslsmith_f_op_f32(-var_0.d);
    return vec3<u32>(~_wgslsmith_div_u32(arg_1.a.x, global0.a), reverseBits(u_input.a.x), global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1402f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)) + 1427f));
    var var_1 = global3.d;
    global3 = global1[_wgslsmith_index_u32(0u, 21u)];
    let var_2 = Struct_2(firstTrailingBit(func_4(func_1(vec3<f32>(global0.d, global3.d, 1000f)), func_2(global0.c, 1277f), global3.b, vec4<bool>(true, true, global0.c, false)) & (~vec3<u32>(1u, 0u, 27529u) >> (vec3<u32>(global3.a, 44130u, 1u) % vec3<u32>(32u)))));
    global1 = array<Struct_5, 21>();
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, _wgslsmith_div_f32(649f, global3.d), _wgslsmith_f_op_f32(global3.d - global0.d)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(407f, global0.d, -1356f) - vec3<f32>(global0.d, global3.d, 185f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d, global0.d, 1121f), vec3<f32>(207f, -309f, global3.d), vec3<bool>(global4.d, global0.c, false))), vec3<bool>(global0.c, false, global4.a))), vec3<bool>(false | global3.c, all(vec4<bool>(global4.d, true, global0.c, global3.c)), true))), vec3<f32>(_wgslsmith_f_op_f32(-global3.d), global0.d, _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(step(global3.d, global0.d)))))));
    var var_4 = ~1u << (global0.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_div_i32(1i, -u_input.c.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, global3.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1293f) * vec2<f32>(global0.d, -309f))), !(global4.a & false))))), global0.d, (u_input.c.x & 1i) & -firstTrailingBit(i32(-1i) * -47978i), global3.d);
}

