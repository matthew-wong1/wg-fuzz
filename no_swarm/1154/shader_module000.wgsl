struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(0u, 9411u, 21596u, 10598u), vec4<u32>(53860u, 0u, 0u, 4294967295u), vec4<u32>(31363u, 65132u, 1u, 35473u), vec4<u32>(0u, 105185u, 31353u, 32169u), vec4<u32>(9214u, 0u, 1u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4537u), vec4<u32>(57434u, 48669u, 1u, 38512u), vec4<u32>(0u, 43379u, 1u, 1u), vec4<u32>(1u, 1u, 58412u, 24812u), vec4<u32>(2243u, 15883u, 102767u, 0u), vec4<u32>(4294967295u, 34894u, 17352u, 46142u), vec4<u32>(79640u, 23871u, 55815u, 50772u), vec4<u32>(4294967295u, 7686u, 77733u, 11236u), vec4<u32>(0u, 38u, 4294967295u, 58555u), vec4<u32>(35389u, 4294967295u, 0u, 1u), vec4<u32>(17757u, 0u, 0u, 0u), vec4<u32>(2906u, 79560u, 4294967295u, 1u), vec4<u32>(4294967295u, 5893u, 4294967295u, 6326u), vec4<u32>(0u, 4294967295u, 1640u, 1u), vec4<u32>(13658u, 1009u, 60923u, 4294967295u), vec4<u32>(4294967295u, 1u, 30667u, 17767u), vec4<u32>(50571u, 1u, 74983u, 1u), vec4<u32>(31942u, 46505u, 1u, 16877u), vec4<u32>(1u, 31314u, 0u, 57091u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    var var_0 = ~(~(~max(min(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 67006u)), vec3<u32>(1u, 1u, 22489u))));
    let var_1 = true;
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    var var_2 = Struct_2(Struct_1(-_wgslsmith_mod_i32(-u_input.b.x, -63480i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-346f, -145f)) - _wgslsmith_f_op_f32(457f * -1229f)) - _wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(step(513f, 460f)))), 0u));
    return Struct_2(var_2.a);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_3(~_wgslsmith_mult_vec2_u32((vec2<u32>(u_input.c, 7434u) ^ vec2<u32>(10904u, 47774u)) | _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.a.c), vec2<u32>(4294967295u, var_0.a.c)), vec2<u32>(firstLeadingBit(4294967295u), 110532u & arg_0.a.c)));
    let var_2 = Struct_2(func_2().a);
    var var_3 = func_2().a;
    let var_4 = select(!vec4<bool>(var_2.a.c != _wgslsmith_mod_u32(113406u, 46564u), !any(vec2<bool>(false, true)), !any(vec2<bool>(false, true)), all(vec4<bool>(false, true, false, true)) && (var_2.a.b > var_0.a.b)), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false)))), select(false, ~12296u < func_2().a.c, select(false, true, false) && true), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), true), !(1397f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(967f, arg_1)) * _wgslsmith_f_op_f32(-var_0.a.b))));
    return _wgslsmith_clamp_u32(~(_wgslsmith_div_u32(func_2().a.c, var_1.a.x << (var_1.a.x % 32u)) ^ 43908u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_2.a.c, var_3.c), var_1.a.x), ~var_0.a.c), reverseBits(~(1u & var_1.a.x)));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    return _wgslsmith_clamp_u32(~(~(6038u | u_input.c) & func_3(func_2(), _wgslsmith_f_op_f32(round(-104f)), u_input.d.x)), u_input.c, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(338f < _wgslsmith_f_op_f32(floor(-493f))), vec2<bool>((1u == ~u_input.c) != all(vec2<bool>(true, true)), true & select(u_input.c <= 47354u, true, all(vec3<bool>(false, true, true)))));
    var_0 = _wgslsmith_add_u32(func_3(func_2(), 1f, 2147483647i), u_input.c);
    var_0 = ~u_input.c;
    var_0 = 1u;
    var_0 = _wgslsmith_mult_u32(33858u, ~abs(u_input.c << (0u % 32u))) & u_input.c;
    var_0 = ~(~u_input.c | (~(~1u) ^ _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, 1u, u_input.c), ~u_input.c)));
    var var_1 = ~_wgslsmith_div_i32(reverseBits(min(~u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.d.wyz, vec3<i32>(u_input.d.x, -1i, 14814i)))), u_input.d.x);
    var var_2 = 1u;
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_i32(2147483647i ^ u_input.b.x, firstLeadingBit(u_input.a)), _wgslsmith_add_i32(u_input.a, u_input.a), false) << ((_wgslsmith_mod_u32(~19830u, 1u) ^ u_input.c) % 32u), _wgslsmith_div_vec3_u32(~vec3<u32>(7775u, 18824u, 4294967295u), _wgslsmith_sub_vec3_u32(select(max(vec3<u32>(1u, 10181u, 43307u), vec3<u32>(4294967295u, 62861u, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), ~vec3<u32>(u_input.c, 4294967295u, 71265u) >> (vec3<u32>(48783u, 4294967295u, 49310u) % vec3<u32>(32u)))), vec4<i32>(-2147483647i, abs(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.b.x), ~_wgslsmith_mod_i32(u_input.d.x, 2147483647i)), _wgslsmith_mult_vec2_i32(max(~(-vec2<i32>(-37430i, u_input.b.x)), vec2<i32>(u_input.d.x, u_input.b.x)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8426i, 11696i, -31481i, -2192i), vec4<i32>(-1185i, u_input.d.x, u_input.b.x, -2147483647i)), 2147483647i)));
}

