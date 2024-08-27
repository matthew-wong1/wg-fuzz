struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_3 = Struct_3(Struct_1(4294967295u, true, vec2<u32>(63248u, 1u)));

var<private> global2: array<vec3<i32>, 14>;

var<private> global3: array<f32, 26>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<bool>(true, global1.a.b, true);
    let var_1 = -321f;
    global2 = array<vec3<i32>, 14>();
    global1 = Struct_3(global1.a);
    let var_2 = _wgslsmith_sub_i32(1i >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(global1.a.a, u_input.a), countOneBits(u_input.b), vec2<bool>(false, false)), vec2<u32>(~42006u, 68540u << (global1.a.c.x % 32u))) % 32u), -1i >> (~abs(~u_input.b.x) % 32u));
    return global1.a;
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~max(vec4<u32>(arg_0, u_input.a, 4294967295u, 4294967295u), vec4<u32>(2754u, arg_0, 1u, 38617u)), ~vec4<u32>(1u, 4294967295u, 0u, arg_0) << (countOneBits(vec4<u32>(arg_0, 59257u, 1u, global1.a.c.x)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~arg_0 << (1u % 32u), 0u, u_input.a), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global1.a.c.x, 34444u, 4294967295u, global1.a.c.x)) << (firstLeadingBit(vec4<u32>(global1.a.a, arg_0, u_input.a, global1.a.c.x)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, arg_0, arg_0, arg_0) ^ vec4<u32>(global1.a.a, u_input.a, global1.a.c.x, u_input.a)))));
    let var_1 = Struct_3(func_2());
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1778f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1300f - 1429f))));
    var var_3 = 53181u;
    var_3 = firstTrailingBit(var_0.x);
    return ~(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec4_u32(var_0, var_0) ^ 1u) << (_wgslsmith_mult_u32(var_0.x, 12696u) % 32u));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    let var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.a.a, 26u)] * global3[_wgslsmith_index_u32(91654u, 26u)]))))), -1637f);
    var var_2 = Struct_2(var_0.a.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, global1.a.a), 26u)], global3[_wgslsmith_index_u32(max(31344u, arg_0.a.c.x), 26u)], -732f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global1.a.c.x, 26u)], -1251f))))));
    global2 = array<vec3<i32>, 14>();
    return _wgslsmith_mod_i32(arg_1, -select(min(16761i, arg_1), ~arg_1, false)) < arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_1(~1u, vec2<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.a.a, 26u)] + global3[_wgslsmith_index_u32(4294967295u, 26u)]), -178f), firstLeadingBit(-vec3<i32>(0i, -2147483647i, 24488i))) >= _wgslsmith_mult_u32(global1.a.a, _wgslsmith_clamp_u32(~0u, ~u_input.b.x, u_input.a)));
    let var_1 = vec3<f32>(_wgslsmith_div_f32(-384f, _wgslsmith_f_op_f32(-1f)), -685f, global3[_wgslsmith_index_u32(41034u, 26u)]);
    global3 = array<f32, 26>();
    let var_2 = vec4<bool>(false, func_3(Struct_3(global1.a), firstTrailingBit(i32(-1i) * -58342i) & 1i), var_0, all(select(select(!vec3<bool>(false, false, var_0), vec3<bool>(var_0, false, var_0), select(vec3<bool>(false, global1.a.b, global1.a.b), vec3<bool>(var_0, var_0, var_0), false)), vec3<bool>(false, global1.a.b, true), func_3(Struct_3(global1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 1i, 1i), vec4<i32>(-1i, -11894i, 8545i, -1i))))));
    let var_3 = reverseBits(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mod_i32(37966i, 6402i)), _wgslsmith_mod_i32(-17445i >> (u_input.a % 32u), 1i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(32473i, -19707i, 16166i), global2[_wgslsmith_index_u32(20783u, 14u)] & global2[_wgslsmith_index_u32(120709u, 14u)]), ~abs(-59082i))));
    var var_4 = Struct_3(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.b.x, ~_wgslsmith_add_vec3_u32(abs(abs(vec3<u32>(17000u, u_input.b.x, 16740u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 105669u), vec3<u32>(1u, u_input.b.x, global1.a.a))));
}

