struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    let var_0 = Struct_4(arg_0.a, -886f, -28055i, !all(vec2<bool>(true, true)));
    let var_1 = var_0;
    var var_2 = var_1;
    let var_3 = Struct_4(~var_1.a, 101f, 1i, !(true || var_1.d));
    let var_4 = Struct_3(Struct_1(!(!global0[_wgslsmith_index_u32(arg_0.a.x & 43769u, 22u)]), _wgslsmith_f_op_f32(-var_1.b), var_3.a.x, var_1.a.x), -max(~(vec3<i32>(-51109i, 11094i, 0i) & vec3<i32>(-2147483647i, u_input.b, u_input.b)), -(vec3<i32>(u_input.b, var_2.c, 1i) << (vec3<u32>(3175u, u_input.a.x, var_2.a.x) % vec3<u32>(32u)))));
    return _wgslsmith_clamp_u32(u_input.a.x, ~arg_0.a.x, firstTrailingBit(var_0.a.x));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    global0 = array<vec4<bool>, 22>();
    let var_0 = Struct_2(Struct_1(select(arg_3.a.a, vec4<bool>(true, arg_0.b < arg_3.a.b, true, select(false, false, arg_0.a.x)), false), _wgslsmith_f_op_f32(f32(-1f) * -283f), ~_wgslsmith_div_u32(~arg_0.d, reverseBits(u_input.a.x)), 1u | func_3(Struct_4(vec3<u32>(u_input.a.x, arg_3.a.c, 56619u), arg_0.b, -2147483647i, arg_1), reverseBits(-14820i), vec2<f32>(-739f, arg_3.a.b))), Struct_1(select(arg_0.a, global0[_wgslsmith_index_u32(~(~13938u), 22u)], !(!global0[_wgslsmith_index_u32(arg_0.c, 22u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.b), arg_3.a.b)), ~(~0u), ~(~(~70528u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_clamp_u32(36568u, 98474u, arg_3.a.c), abs(0u), arg_0.d), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, arg_3.a.d, 1u), vec4<u32>(u_input.a.x, arg_0.c, arg_0.c, 48808u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3.a.b)), _wgslsmith_f_op_f32(step(var_0.a.b, -1176f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + var_0.a.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b)), arg_3.a.b, arg_0.b))));
    var var_2 = arg_0;
    let var_3 = Struct_3(Struct_1(vec4<bool>(all(!vec3<bool>(arg_3.a.a.x, false, var_0.a.a.x)), var_2.a.x, all(var_0.b.a), all(!vec4<bool>(false, var_2.a.x, true, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3.a.b, 544f))))), 18882u, ~(0u << (arg_3.a.c % 32u)) | ~(~36900u)), vec3<i32>(u_input.b, -49476i, -(~arg_2.x) << (~(~var_2.d) % 32u)));
    return _wgslsmith_f_op_f32(trunc(-2265f));
}

fn func_1() -> vec3<bool> {
    global0 = array<vec4<bool>, 22>();
    let var_0 = Struct_4(~(~firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 22u)], -128f, 4795u, u_input.a.x), false, -vec3<i32>(-2147483647i, u_input.b, -20306i), Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 190f, u_input.a.x, 4294967295u), vec3<i32>(u_input.b, 2147483647i, -37428i))))) - _wgslsmith_f_op_f32(401f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(324f + -1482f))))), 33152i, false);
    var var_1 = var_0;
    global0 = array<vec4<bool>, 22>();
    var var_2 = Struct_3(Struct_1(select(vec4<bool>(var_0.d, var_0.d & false, true, var_0.d), global0[_wgslsmith_index_u32(0u, 22u)], !var_0.d & select(false, var_1.d, var_0.d)), _wgslsmith_f_op_f32(var_1.b * var_0.b), ~17898u, 24043u), _wgslsmith_mult_vec3_i32(~(reverseBits(vec3<i32>(-4980i, -1i, u_input.b)) ^ vec3<i32>(var_0.c, var_0.c, -37625i)), firstTrailingBit(vec3<i32>(select(0i, var_0.c, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-50398i, -28932i), vec2<i32>(-2147483647i, var_1.c)), var_0.c))));
    return var_2.a.a.zzz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 22>();
    let var_0 = !select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), any(vec2<bool>(true, false))), vec3<bool>(true, false, true), select(func_1(), vec3<bool>(true, true, true), true)), func_1(), false);
    let var_1 = Struct_1(select(vec4<bool>(!all(var_0), var_0.x, var_0.x, true & !var_0.x), !global0[_wgslsmith_index_u32(44305u, 22u)], var_0.x), -1777f, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 15162u) | _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), ~vec2<u32>(u_input.a.x, 88015u)), 3053u), ~min(38197u << ((u_input.a.x & 43037u) % 32u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), 40584u << (u_input.a.x % 32u), ~9473u)));
    var var_2 = vec3<bool>(all(vec4<bool>(true, (var_1.c < 0u) != false, true, true)), true, 1i >= u_input.b);
    global0 = array<vec4<bool>, 22>();
    var var_3 = firstLeadingBit(~(~(-14554i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~countOneBits(-2147483647i), _wgslsmith_sub_i32(u_input.b, firstTrailingBit(1i)), ~(-2147483647i)), _wgslsmith_div_f32(var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(508f, 2170f, true)), var_1.b)), var_1.b, var_1.b) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(abs(var_1.b)))), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-378f, var_1.b, var_0.x)), var_1.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.b - -459f), _wgslsmith_f_op_f32(370f + _wgslsmith_f_op_f32(ceil(-1373f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, -119f)), _wgslsmith_f_op_f32(-1967f + -848f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b) - vec4<f32>(var_1.b, var_1.b, 1000f, -781f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1713f, 1397f, var_1.b) + vec4<f32>(var_1.b, -445f, 1302f, var_1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b)))));
}

