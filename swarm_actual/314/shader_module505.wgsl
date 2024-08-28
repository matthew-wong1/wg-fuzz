struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 25> = array<i32, 25>(2147483647i, 44299i, -19928i, -1i, -2069i, -1i, -14676i, 42093i, 2147483647i, 2147483647i, 36271i, 2147483647i, i32(-2147483648), 19621i, 12091i, 0i, 1571i, -1i, 2147483647i, 105585i, -19831i, i32(-2147483648), -19396i, 2147483647i, 2147483647i);

var<private> global2: array<Struct_1, 3>;

var<private> global3: array<i32, 6>;

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global4 = !(!(!vec3<bool>(any(vec3<bool>(global4.x, global4.x, global4.x)), global4.x, global4.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(737f * global0.x), 790f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, 510f)) + vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1286f))), global4.xy))));
    var var_0 = global2[_wgslsmith_index_u32(arg_0.a, 3u)];
    var var_1 = Struct_1(var_0.a);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(57396u, var_1.a), vec2<u32>(arg_0.a, var_0.a)) ^ var_1.a, var_0.a), ~countOneBits(firstLeadingBit(firstTrailingBit(vec2<u32>(67960u, var_0.a)))));
    return 4294967295u;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)), global0.x)))) >= -702f;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 472f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(867f, 168f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 1328f)))))));
    var var_2 = var_0;
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(4294967295u << (0u % 32u)) << (_wgslsmith_add_u32(~0u, func_3(global2[_wgslsmith_index_u32(0u, 3u)])) % 32u), ~1u), _wgslsmith_mult_vec3_u32(max(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(95010u, 24033u, 1u), vec3<u32>(28430u, 67035u, 4294967295u))), ~(~vec3<u32>(13953u, 0u, 4294967295u))) << (~vec3<u32>(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(17916u, 44042u, 0u), vec3<u32>(0u, 0u, 1u)), 1u) % vec3<u32>(32u))), 6u)];
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 9320u >> (~firstTrailingBit(firstTrailingBit(0u)) % 32u)), 3u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -2319f)), _wgslsmith_f_op_f32(ceil(-1090f)))), _wgslsmith_f_op_f32(ceil(1429f))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), 1199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -163f))));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(arg_3), 45148u), 3u)];
    global4 = vec3<bool>(all(vec4<bool>(false, any(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_0, global4.x), vec3<bool>(true, arg_1, global4.x))), true, false)), arg_1, global4.x);
    global3 = array<i32, 6>();
    global1 = array<i32, 25>();
    return !vec3<bool>(-2147483647i != ~select(27970i, 1i, true), !(global0.x >= -1885f) & false, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    global3 = array<i32, 6>();
    global4 = select(!vec3<bool>(true, _wgslsmith_clamp_u32(4294967295u, 5344u, 1u) > _wgslsmith_mod_u32(64772u, 1u), true), select(select(!(!vec3<bool>(false, global4.x, global4.x)), !select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(false, global4.x, true), vec3<bool>(global4.x, true, global4.x)), vec3<bool>(global4.x, global1[_wgslsmith_index_u32(30844u, 25u)] != u_input.a, true)), func_1((global4.x == global4.x) == (global1[_wgslsmith_index_u32(0u, 25u)] < 0i), select(any(vec2<bool>(global4.x, false)), u_input.a < u_input.a, true), Struct_1(1u), Struct_1(~139091u)), global4.x), !func_1(global4.x, select(false, false, global4.x) & true, Struct_1(~68530u), global2[_wgslsmith_index_u32(1u, 3u)]));
    let var_0 = global4.xx;
    global2 = array<Struct_1, 3>();
    var var_1 = _wgslsmith_add_u32(20118u & _wgslsmith_dot_vec4_u32(vec4<u32>(~12697u, _wgslsmith_clamp_u32(7680u, 0u, 64165u), ~4294967295u, _wgslsmith_div_u32(4294967295u, 4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u)), 57270u);
    var var_2 = select(select(select(!vec4<bool>(true, var_0.x, false, true), !(!vec4<bool>(var_0.x, false, var_0.x, false)), !select(vec4<bool>(true, false, global4.x, var_0.x), vec4<bool>(global4.x, true, var_0.x, global4.x), vec4<bool>(var_0.x, true, global4.x, var_0.x))), vec4<bool>(false, select(all(vec3<bool>(true, true, true)), !global4.x, false), global4.x, true), true), !select(select(vec4<bool>(var_0.x, true, true, true), !vec4<bool>(true, global4.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, global4.x)), !(!vec4<bool>(var_0.x, false, global4.x, global4.x)), select(select(vec4<bool>(false, true, global4.x, var_0.x), vec4<bool>(global4.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, true, true)), !vec4<bool>(var_0.x, false, var_0.x, true), !vec4<bool>(var_0.x, true, false, var_0.x))), !vec4<bool>(var_0.x, var_0.x, true, select(false, u_input.a < 0i, all(vec2<bool>(var_0.x, global4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(34180u, 31854u), 25u)], u_input.a) << (min(~100701u, 1u) % 32u), reverseBits(abs(-1i ^ u_input.a))), -5154i, 4641u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -709f, global0.x) + vec3<f32>(global0.x, global0.x, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-920f, 334f, global0.x)))))));
}

