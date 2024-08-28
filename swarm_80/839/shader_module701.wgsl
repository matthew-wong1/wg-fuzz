struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 26> = array<u32, 26>(66054u, 93260u, 26580u, 943u, 37995u, 40169u, 29628u, 1u, 1u, 29081u, 37810u, 4294967295u, 4294967295u, 28085u, 6929u, 4294967295u, 24453u, 31756u, 4294967295u, 0u, 4294967295u, 73536u, 4294967295u, 1u, 4294967295u, 1u);

var<private> global2: vec2<u32> = vec2<u32>(1u, 31658u);

var<private> global3: Struct_1 = Struct_1(vec3<u32>(0u, 56110u, 1u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    return ~vec3<u32>(global3.a.x, ~(1u >> (~global1[_wgslsmith_index_u32(923u, 26u)] % 32u)), 18941u);
}

fn func_2() -> Struct_1 {
    let var_0 = reverseBits(abs(~vec3<i32>(-u_input.a.x, ~u_input.a.x, u_input.b)));
    var var_1 = ~_wgslsmith_div_u32(22632u, 4294967295u);
    global3 = Struct_1(reverseBits(global3.a >> (~_wgslsmith_div_vec3_u32(global3.a, vec3<u32>(global1[_wgslsmith_index_u32(1u, 26u)], 0u, 18436u)) % vec3<u32>(32u))));
    let var_2 = false;
    var var_3 = Struct_2(i32(-1i) * -_wgslsmith_div_i32(-14129i, firstTrailingBit(u_input.a.x)));
    return Struct_1(~(select(func_3(), select(vec3<u32>(0u, 76424u, global3.a.x), global3.a, vec3<bool>(false, false, var_2)), select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, false), vec3<bool>(false, true, var_2))) | global3.a));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    global2 = ~(~countOneBits(~(var_0.a.xx & vec2<u32>(global2.x, global3.a.x))));
    let var_1 = Struct_2(~_wgslsmith_mod_i32(-1i, -15106i));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-199f, _wgslsmith_div_f32(762f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(419f)) + _wgslsmith_f_op_f32(-1905f + 741f))), -848f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1197f, 1000f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-1057f - _wgslsmith_div_f32(var_2.x, var_2.x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1111f, -685f, false)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2.x))))), 1000f)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(true | !any(vec4<bool>(true, true, false, true)));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2195f);
    var var_1 = _wgslsmith_mult_i32(u_input.b, func_1());
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(6944i), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, select(1372i, 0i, true)), firstLeadingBit(2147483647i)));
    var var_3 = func_2();
    var var_4 = !select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), vec2<bool>(!(14510u != global1[_wgslsmith_index_u32(var_3.a.x, 26u)]), !any(vec4<bool>(true, true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1039f, -383f))))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(-465f)), _wgslsmith_div_f32(-1679f, _wgslsmith_f_op_f32(sign(-364f))))));
}

