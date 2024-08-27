struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(0i, 69627i, -1i), vec3<i32>(29911i, 2147483647i, -20541i), vec3<i32>(-7952i, -1571i, i32(-2147483648)), vec3<i32>(-1i, -7886i, 14384i), vec3<i32>(1i, 0i, 34294i), vec3<i32>(i32(-2147483648), 19095i, -7071i), vec3<i32>(25315i, 2147483647i, 0i), vec3<i32>(1i, -43911i, -24724i), vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<i32>(1i, -65664i, -1i), vec3<i32>(2147483647i, i32(-2147483648), -4031i), vec3<i32>(2147483647i, -23228i, 29660i), vec3<i32>(-33882i, -12355i, 9300i), vec3<i32>(1i, i32(-2147483648), 30502i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 41117i), vec3<i32>(-1i, -56776i, 58917i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    global0 = array<vec3<i32>, 17>();
    var var_0 = arg_3;
    global0 = array<vec3<i32>, 17>();
    let var_1 = !arg_3.a.b;
    let var_2 = vec2<u32>(~abs(~(~arg_3.a.c)), ~arg_2.a.c);
    return firstLeadingBit(1u);
}

fn func_2() -> vec3<bool> {
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zx & vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zx), ~(~_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(0u, 4294967295u))), _wgslsmith_sub_u32(55082u & ~u_input.b.x, func_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1401f), Struct_2(Struct_1(vec4<u32>(u_input.b.x, 23470u, 0u, u_input.b.x), false, 0u)), Struct_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x), false, u_input.b.x)))), ~(~max(u_input.b.x, u_input.b.x))) << (vec4<u32>(~0u, u_input.b.x, abs(min(u_input.b.x, u_input.b.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)), ~select(vec4<u32>(u_input.b.x, 873u, 87799u, 1u), vec4<u32>(4294967295u, 43299u, u_input.b.x, 0u), false))) % vec4<u32>(32u));
    var var_1 = vec4<i32>(reverseBits(u_input.a.x), _wgslsmith_mod_i32(reverseBits(-99051i & (-813i ^ u_input.a.x)), firstTrailingBit(~u_input.a.x)), firstTrailingBit(-u_input.a.x), min(_wgslsmith_sub_i32(-(~u_input.a.x), -(u_input.a.x >> (u_input.b.x % 32u))), u_input.a.x));
    global0 = array<vec3<i32>, 17>();
    var_1 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1.x, max(abs(-6452i), var_1.x)), 1i), u_input.a.x, var_1.x, reverseBits(2147483647i));
    global0 = array<vec3<i32>, 17>();
    return select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !vec3<bool>(true, select(true, true, true), true), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true)));
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<i32>, 17>();
    let var_0 = !all(select(func_2(), vec3<bool>(false, true, true), true)) & any(vec4<bool>(false, all(vec4<bool>(false, false, false, false)), true, true));
    let var_1 = u_input.b;
    global0 = array<vec3<i32>, 17>();
    var var_2 = -vec4<i32>(-u_input.a.x << (abs(4294967295u) % 32u), abs(43176i), _wgslsmith_dot_vec2_i32(u_input.a, firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x))) << (u_input.b.x % 32u), _wgslsmith_add_i32(u_input.a.x, -(~45817i)));
    return Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, 78471u)), select(abs(vec4<u32>(4294967295u, var_1.x, var_1.x, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, 100216u, 49961u), vec4<u32>(1u, 0u, u_input.b.x, 61961u)), select(vec4<bool>(true, false, false, var_0), vec4<bool>(false, var_0, var_0, false), true))), abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(41462u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, var_1.x, var_1.x), true), vec4<u32>(1u, u_input.b.x, 32215u, var_1.x))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 18180u, 1u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9696u, 0u, 19596u), vec4<u32>(u_input.b.x, 76061u, 4294967295u, 29213u))), ~(vec4<u32>(1u, u_input.b.x, u_input.b.x, var_1.x) & vec4<u32>(var_1.x, u_input.b.x, 46335u, 28564u)), vec4<bool>(all(vec2<bool>(false, var_0)), any(vec4<bool>(false, var_0, var_0, var_0)), var_0, true))), true, select(firstTrailingBit(_wgslsmith_sub_u32(abs(var_1.x), var_1.x)), 4294967295u, !var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(select(true, true, true), true, !(true | all(vec4<bool>(true, true, true, true))), false);
    var var_1 = Struct_2(func_1());
    global0 = array<vec3<i32>, 17>();
    let var_2 = Struct_2(var_1.a);
    var var_3 = any(var_0.xww);
    let var_4 = ~(~var_2.a.a);
    let var_5 = select(var_0.xzz, vec3<bool>(false, true, any(func_2()) && (true && !var_0.x)), false);
    var_3 = true;
    var_0 = !vec4<bool>(!var_1.a.b, var_0.x, true | !any(vec2<bool>(true, var_2.a.b)), false);
    let x = u_input.a;
    s_output = StorageBuffer(0u, 628f);
}

