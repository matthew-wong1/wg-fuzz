struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: i32;

var<private> global2: i32 = 27924i;

var<private> global3: array<vec2<bool>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_5(global0.x << (_wgslsmith_mult_u32(0u, ~min(1u, 1u)) % 32u), Struct_2(true), Struct_4(!((1i & global0.x) <= _wgslsmith_div_i32(global0.x, -6346i)), Struct_2(true), u_input.b.x), !select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, all(global3[_wgslsmith_index_u32(arg_1.x, 26u)]), true), true));
    return var_0.b;
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_4 {
    let var_0 = 0i;
    global3 = array<vec2<bool>, 26>();
    let var_1 = _wgslsmith_mod_u32(1u, ~_wgslsmith_div_u32(61486u, arg_3.c.a));
    global3 = array<vec2<bool>, 26>();
    global0 = ~arg_2.xy;
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_5(~(-2147483647i), Struct_2(true), func_3(Struct_4(true, func_2(~u_input.c.x, select(vec3<u32>(u_input.a, 4294967295u, 0u), u_input.c, vec3<bool>(true, false, true))), 0i), vec2<u32>(0u, ~u_input.a) >> (firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.yy, vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u)), vec3<i32>(-1i) * -select(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(30487i, u_input.b.x, 49003i), vec3<bool>(false, true, false)), Struct_3((u_input.c.x << (u_input.c.x % 32u)) != 1u, abs(u_input.a), Struct_1(u_input.c.x, vec2<bool>(false, true), _wgslsmith_f_op_f32(f32(-1f) * -629f), 1056f), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), ~u_input.c))), vec3<bool>(all(!global3[_wgslsmith_index_u32(abs(u_input.c.x), 26u)]), true, all(global3[_wgslsmith_index_u32(u_input.a, 26u)])));
    let var_1 = 15419u ^ min(3611u, _wgslsmith_add_u32(u_input.c.x, 1u));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, reverseBits(-2363i), 1i, abs(global0.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(26534i, u_input.b.x, u_input.b.x, 77088i), -vec4<i32>(global0.x, -25875i, 2147483647i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.a, 36494i, u_input.b.x), vec4<i32>(12021i, u_input.b.x, var_0.c.c, -1i), vec4<i32>(u_input.b.x, 0i, -2147483647i, var_0.c.c))))) ^ max(~var_0.a, min(abs(var_0.a) ^ 47916i, -11812i));
    let var_3 = -1105f;
    var var_4 = Struct_1(var_1, var_0.d.zx, _wgslsmith_f_op_f32(2051f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) + var_3) * var_3));
    return func_3(Struct_4(var_0.c.a, var_0.b, abs(~var_0.a)), u_input.c.xy, reverseBits(countOneBits(countOneBits(vec3<i32>(0i, var_0.a, var_0.c.c)))), Struct_3(var_0.d.x, _wgslsmith_mod_u32(44005u, ~var_1), Struct_1(16648u, !vec2<bool>(var_0.d.x, true), _wgslsmith_f_op_f32(-2680f * _wgslsmith_div_f32(-1981f, var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) * _wgslsmith_f_op_f32(max(-1576f, var_4.d)))), ~u_input.c.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(false, func_1(), -_wgslsmith_dot_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(5744i, u_input.b.x, global0.x), vec3<i32>(-101913i, u_input.b.x, u_input.b.x))), ~vec3<i32>(global0.x, -35373i, global0.x) >> (~vec3<u32>(18059u, u_input.a, 20635u) % vec3<u32>(32u))));
    let var_1 = !(!(!select(select(vec3<bool>(var_0.a, true, var_0.b.a), vec3<bool>(var_0.b.a, false, true), vec3<bool>(var_0.b.a, var_0.b.a, var_0.a)), select(vec3<bool>(var_0.b.a, var_0.a, true), vec3<bool>(var_0.a, var_0.b.a, true), vec3<bool>(var_0.a, true, var_0.b.a)), true)));
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 20509u, ~(~(~300u)), ~(u_input.c.x | 4294967295u) & u_input.a), min(~firstLeadingBit(min(vec4<u32>(13548u, 0u, u_input.c.x, 0u), vec4<u32>(0u, 1u, 18536u, u_input.a))), ~abs(vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.a))));
    let var_3 = var_0.a;
    global3 = array<vec2<bool>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-195f, -125f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1422f - -1410f))), ~var_2, u_input.b.x);
}

