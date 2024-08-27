struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(4294967295u, 84946u, 60091u), vec3<u32>(19817u, 0u, 99112u), vec3<u32>(6582u, 4294967295u, 71348u), vec3<u32>(61044u, 41158u, 0u), vec3<u32>(0u, 36310u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 13940u), vec3<u32>(29794u, 33007u, 33417u), vec3<u32>(17781u, 18705u, 14055u), vec3<u32>(4294967295u, 13978u, 53149u), vec3<u32>(49402u, 36510u, 0u), vec3<u32>(1u, 6704u, 19558u));

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global2 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_div_vec3_i32(abs(select(vec3<i32>(u_input.a.x, -29164i, 1i), vec3<i32>(0i, -1i, 0i), vec3<bool>(true, true, true))), select(abs(u_input.a) << (u_input.b.wyw % vec3<u32>(32u)), u_input.a, select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)))) | u_input.a;
    return _wgslsmith_f_op_f32(abs(arg_0.x));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1307f - 973f))))) == _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-450f, -280f)), 857f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(935f, 249f)))));
    var var_1 = Struct_2(vec3<bool>(var_0, true, false), 12617u);
    var_1 = Struct_2(select(var_1.a, var_1.a, !var_1.a), u_input.b.x);
    let var_2 = Struct_2(!var_1.a, ~_wgslsmith_add_u32(~(~24110u), 0u));
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 35623u, 4294967295u << (abs(0u) % 32u), u_input.c) | vec4<u32>(min(16301u, var_2.b), _wgslsmith_add_u32(99821u, var_2.b), ~(~0u), min(4294967295u >> (u_input.d.x % 32u), var_2.b)), vec4<u32>(_wgslsmith_sub_u32(var_1.b, _wgslsmith_div_u32(1u, u_input.d.x)) << (var_1.b % 32u), _wgslsmith_dot_vec4_u32(u_input.b, abs(u_input.b | vec4<u32>(0u, 4294967295u, 95956u, var_1.b))), ~_wgslsmith_div_u32(global0.x, _wgslsmith_mult_u32(0u, var_2.b)), ~select(_wgslsmith_clamp_u32(36448u, global0.x, 31447u), var_2.b, true)));
    return Struct_2(!vec3<bool>(var_2.a.x, select(true, 2147483647i <= u_input.a.x, true), false && all(var_1.a)), var_1.b);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    global2 = array<Struct_1, 10>();
    global0 = vec3<u32>(~(_wgslsmith_div_u32(_wgslsmith_div_u32(72086u, 3159u), ~var_0.b) | var_0.b), ~min(var_0.b, 30325u), _wgslsmith_sub_u32(func_2().b, 4294967295u) & _wgslsmith_clamp_u32(~u_input.b.x, global0.x, 18299u));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, 92834u) << (var_0.b % 32u), 1u) >> (var_0.b % 32u);
    let var_2 = var_0.a.x && all(select(!(!vec4<bool>(var_0.a.x, true, true, false)), vec4<bool>(any(vec4<bool>(var_0.a.x, var_0.a.x, true, false)), var_0.a.x || var_0.a.x, var_0.a.x != false, true), var_0.a.x));
    return StorageBuffer(~(~reverseBits(vec4<u32>(var_1, 4294967295u, 0u, 27887u))), _wgslsmith_f_op_f32(591f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, -935f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-694f, _wgslsmith_f_op_f32(f32(-1f) * -691f)) * _wgslsmith_f_op_f32(-1212f + _wgslsmith_f_op_f32(-802f + 568f))))), _wgslsmith_mod_i32(~(-2147483647i), (u_input.a.x >> (u_input.b.x % 32u)) << (u_input.c % 32u)) & (abs(_wgslsmith_div_i32(2147483647i, 7576i)) >> (~(1u >> (var_1 % 32u)) % 32u)), _wgslsmith_sub_i32(-_wgslsmith_div_i32(u_input.a.x, -1962i) ^ u_input.a.x, u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

