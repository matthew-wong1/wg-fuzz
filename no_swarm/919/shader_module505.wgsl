struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(44262u, 6247u, 74503u), vec3<u32>(1043u, 0u, 140100u), vec3<u32>(1u, 1u, 19170u), vec3<u32>(55773u, 90447u, 1u), vec3<u32>(10453u, 36700u, 0u), vec3<u32>(1u, 49678u, 13172u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 77935u), vec3<u32>(10750u, 1u, 4294967295u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 12496u, 10984u), vec3<u32>(46767u, 15172u, 64839u), vec3<u32>(50781u, 4294967295u, 22870u), vec3<u32>(43448u, 15861u, 67611u), vec3<u32>(23560u, 0u, 0u), vec3<u32>(56037u, 19872u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(73371u, 0u, 74613u), vec3<u32>(26260u, 4294967295u, 27999u), vec3<u32>(10595u, 19490u, 1u), vec3<u32>(0u, 25365u, 0u), vec3<u32>(42542u, 9410u, 59644u), vec3<u32>(1u, 0u, 17067u), vec3<u32>(95515u, 29733u, 5747u), vec3<u32>(80391u, 49649u, 4294967295u), vec3<u32>(0u, 4496u, 4294967295u), vec3<u32>(13569u, 4294967295u, 1u));

var<private> global2: i32;

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    global1 = array<vec3<u32>, 27>();
    return Struct_1(u_input.c, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -922f));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(~(4294967295u & u_input.a), ~4294967295u), reverseBits(_wgslsmith_div_u32(~u_input.b, 1u))), 30u)];
    var var_1 = !(any(vec4<bool>(false, !global3.x, global3.x, true)) & (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 1u, u_input.b), vec4<u32>(4294967295u, 4294967295u, 20080u, u_input.b)) > ~countOneBits(1u)));
    let var_2 = global0[_wgslsmith_index_u32(~(u_input.a | var_0.a.x), 30u)];
    var var_3 = vec4<bool>(true, true, any(vec2<bool>(global3.x, global3.x)), false);
    global1 = array<vec3<u32>, 27>();
    return reverseBits(~_wgslsmith_sub_u32(~46119u, 40782u)) << (_wgslsmith_sub_u32(abs((var_2.a.x & var_2.a.x) << (u_input.a % 32u)), ~max(~var_2.a.x, _wgslsmith_mult_u32(var_0.a.x, 28390u))) % 32u);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0.a.a;
    let var_1 = -vec3<i32>(0i, -10674i, -(-1i >> (func_3() % 32u)));
    let var_2 = arg_0;
    global3 = !vec2<bool>(_wgslsmith_clamp_u32(~var_2.a.a.x, ~u_input.b, max(74028u, u_input.c.x)) <= min(arg_0.a.a.x << (49486u % 32u), 34287u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f - 655f)) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-463f - var_2.a.b), _wgslsmith_f_op_f32(var_2.a.c * var_2.a.b))));
    let var_3 = 29427u;
    return -1014f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1551f), -442f) * -755f), -748f, _wgslsmith_f_op_f32(func_2(Struct_2(func_1(Struct_1(vec3<u32>(u_input.a, u_input.b, 0u), -1132f, 910f), vec4<f32>(-809f, 938f, -2471f, 265f), all(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-214f, -1000f, true)) + _wgslsmith_f_op_f32(1365f + -580f))))));
    let var_1 = vec4<i32>(46799i, select(-21407i, ~1i, global3.x), reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -42172i), vec3<i32>(-2147483647i, 16325i, 28143i)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 11594i, 0i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -64738i), vec2<i32>(-8019i, -28368i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, 11168i), 1i))) | _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(33605i, 1i, 2147483647i, 24597i), vec4<i32>(1i, 1i, 1i, 1i)), -2147483647i, reverseBits(_wgslsmith_sub_i32(-1i, 49832i)), reverseBits(firstLeadingBit(-26096i))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(1i, 1i, -36804i, 2147483647i)));
    global0 = array<Struct_1, 30>();
    global1 = array<vec3<u32>, 27>();
    let var_2 = var_0.wz;
    global0 = array<Struct_1, 30>();
    global3 = vec2<bool>(!(24740u < (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.c.x), u_input.c) << (func_1(Struct_1(u_input.c, 927f, 505f), var_0, false).a.x % 32u))), !global3.x);
    let var_3 = abs(~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -1678f);
}

