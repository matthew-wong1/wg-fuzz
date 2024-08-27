struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec3<u32>, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    var var_0 = true;
    var var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-1f));
    let var_3 = 1000f;
    var var_4 = global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.b), 23u)];
    return var_4.a.x;
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(-595f);
    var var_1 = ~min(vec2<u32>((u_input.b ^ u_input.b) ^ 1u, ~firstTrailingBit(u_input.a)), select(min(vec2<u32>(73869u, u_input.b), vec2<u32>(u_input.b, 0u)), ~vec2<u32>(1u, u_input.a), _wgslsmith_div_u32(u_input.b, u_input.b) <= 98233u));
    let var_2 = 4294967295u;
    var var_3 = Struct_2(2078f);
    return reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, u_input.a), vec3<u32>(647u, 4294967295u, 28693u)), 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, u_input.a, 0u, u_input.b), vec4<u32>(var_1.x, u_input.b, var_1.x, var_2))) >> (vec4<u32>(~_wgslsmith_add_u32(var_2, var_2), 1u, var_2, ~func_3(global1[_wgslsmith_index_u32(0u, 23u)], vec4<f32>(1055f, var_3.a, global0[_wgslsmith_index_u32(7879u, 20u)], 533f), Struct_2(-1000f), u_input.d)) % vec4<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mod_u32(arg_1, select(firstLeadingBit(arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 46484u), vec2<u32>(u_input.b, 5157u)), all(vec4<bool>(true, false, true, true)))), _wgslsmith_mult_u32(max(20878u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), countOneBits(arg_2))), firstTrailingBit(_wgslsmith_div_u32(~arg_1, abs(arg_1)))), select(~func_2().x, _wgslsmith_mod_u32(~arg_1, countOneBits(83718u)), true)), 23u)];
    var var_1 = select(select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), !any(vec4<bool>(false, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec3<bool>(false, true, false))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), 844f == var_0.b.x), true), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), false, false)), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)))), vec4<bool>(true || all(vec2<bool>(true, false)), select(true, false, true), true, !(!(var_0.a.x == 62485u))));
    global1 = array<Struct_1, 23>();
    global0 = array<f32, 20>();
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_add_u32(78868u, u_input.b), arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1662f))), global0[_wgslsmith_index_u32(max(4294967295u, arg_0) & ~arg_1, 20u)], _wgslsmith_f_op_f32(trunc(1f)))));
    return Struct_2(var_0.b.x);
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = func_4(_wgslsmith_add_u32(arg_1, ~select(~u_input.b, arg_1, any(vec2<bool>(true, true)))), arg_1, _wgslsmith_dot_vec4_u32(func_2(), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(31908u, arg_1, u_input.b, 46050u)), vec4<u32>(u_input.b, ~4287u, ~1u, u_input.a ^ 11420u))));
    global2 = array<vec3<u32>, 22>();
    global2 = array<vec3<u32>, 22>();
    let var_1 = var_0;
    var var_2 = any(!(!(!vec3<bool>(false, arg_0, arg_0))));
    return ~(~4294967295u) << (u_input.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(-764f)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 20u)])) + var_0.a) * _wgslsmith_f_op_f32(-var_0.a))));
    var var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-512f, 1198f, -1000f) - vec3<f32>(var_0.a, var_1.a, -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1416f, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, func_1(any(vec3<bool>(true, false, true)), max(u_input.b, 0u))), 20u)]), abs(u_input.a), select(abs(vec4<i32>(-2147483647i, u_input.c.x, u_input.d.x, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-23383i, 0i, 1i, 2147483647i), vec4<i32>(0i, u_input.d.x, u_input.c.x, 0i)), true) & u_input.d);
}

