struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_4 {
    global0 = array<Struct_1, 22>();
    var var_0 = Struct_3(Struct_2(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(0i, u_input.b, u_input.b)) | ~vec3<i32>(-2575i, u_input.b, 0i), vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + 414f), 906f)));
    var_0 = Struct_3(var_0.a);
    var var_1 = select(vec4<bool>(arg_1, !(!any(vec4<bool>(false, arg_1, false, false))), true, arg_1), select(vec4<bool>(true && !arg_1, false, !any(vec2<bool>(arg_1, true)), (-1251f > var_0.a.b.x) && !arg_1), select(vec4<bool>(arg_1, arg_1, true, true), vec4<bool>(true, arg_1, arg_1, true), arg_1 | (false != arg_1)), arg_1 & true), vec4<bool>(any(!select(vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1))), arg_1, true, true));
    let var_2 = u_input.a.x;
    return Struct_4(_wgslsmith_f_op_vec3_f32(-arg_0));
}

fn func_3(arg_0: vec2<bool>) -> vec2<f32> {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2581i), vec3<i32>(-1i, -2147483647i, 1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, 0i)), -u_input.b, 1i)), vec2<f32>(656f, _wgslsmith_f_op_f32(sign(-268f)))));
    let var_1 = reverseBits(-16634i);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.x, var_0.a.b.x)))))) - var_0.a.b);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    global0 = array<Struct_1, 22>();
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-106f, -509f)), _wgslsmith_f_op_f32(trunc(562f)), _wgslsmith_f_op_f32(max(-835f, 767f)))), vec3<f32>(-381f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1685f + 1000f)), 1402f))), any(vec3<bool>((arg_1.x & true) && true, arg_0, !all(vec3<bool>(false, true, arg_1.x)))));
    let var_1 = Struct_3(Struct_2(abs(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(func_3(arg_1))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 22u)];
    return Struct_3(Struct_2(firstTrailingBit(-_wgslsmith_clamp_vec3_i32(var_1.a.a, var_1.a.a, var_1.a.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.b - var_1.a.b) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, 1857f)), vec2<f32>(var_1.a.b.x, -327f), !arg_1)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    global0 = array<Struct_1, 22>();
    var var_0 = Struct_3(Struct_2(arg_0.a.a, vec2<f32>(1610f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true))).x, arg_0.a.b.x)))));
    var var_1 = firstLeadingBit(u_input.a.x);
    var_1 = u_input.a.x;
    var var_2 = 81098i;
    return _wgslsmith_dot_vec4_u32(min(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 21739u, 0u, 10116u), vec4<u32>(u_input.a.x, u_input.a.x, arg_1.a, 1925u)), vec4<u32>(arg_1.a, arg_1.a, 32815u, 52110u)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 68328u, u_input.a.x), select(vec4<u32>(arg_1.a, 0u, arg_1.a, 4294967295u), vec4<u32>(33569u, 4294967295u, u_input.a.x, u_input.a.x), true))) >> (max(vec4<u32>(arg_1.a, 1u, 4294967295u, 4294967295u | arg_1.a), select(vec4<u32>(52051u, arg_1.a, arg_1.a, arg_1.a) | vec4<u32>(1u, 0u, 27641u, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(82681u, u_input.a.x, arg_1.a, 7646u), vec4<u32>(57990u, 0u, 25102u, u_input.a.x)), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(8835u, 21640u, 4294967295u, u_input.a.x) | (vec4<u32>(u_input.a.x, 4294967295u, arg_1.a, 42600u) ^ vec4<u32>(arg_1.a, arg_1.a, 1u, u_input.a.x))), abs(~(~vec4<u32>(arg_1.a, 70101u, 19431u, u_input.a.x))), max(vec4<u32>(~u_input.a.x, arg_1.a, 1u, 4765u), min(vec4<u32>(10146u, 18752u, 4294967295u, arg_1.a) | vec4<u32>(4294967295u, 0u, u_input.a.x, 56049u), ~vec4<u32>(11769u, u_input.a.x, arg_1.a, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = func_4(func_1(-817f >= _wgslsmith_f_op_f32(sign(-671f)), vec2<bool>(true, true)), Struct_1(17953u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, 1014f, -712f, -976f)), vec4<f32>(127f, -496f, 373f, 1294f))))) > ~(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 56487u, 1u), vec3<u32>(18642u, 47087u, 130565u))) ^ u_input.a.x);
    var var_1 = select(abs(-(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -43369i), vec2<i32>(54217i, -401i)) | (vec2<i32>(u_input.b, -2147483647i) << (u_input.a % vec2<u32>(32u))))), vec2<i32>(-1i) * -countOneBits(firstTrailingBit(vec2<i32>(22156i, 29597i))), vec2<bool>(var_0, all(select(vec3<bool>(true, false, var_0), vec3<bool>(false, true, true), vec3<bool>(var_0, false, true))) | any(!vec3<bool>(true, var_0, true))));
    global0 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(31771i, -33402i, 2147483647i, var_1.x)) << (vec4<u32>(4294967295u, reverseBits(11098u), 49011u, 56648u) % vec4<u32>(32u)), countOneBits(reverseBits(vec4<i32>(u_input.b, var_1.x, u_input.b, -28281i) | vec4<i32>(var_1.x, 18749i, u_input.b, -1i)))) ^ -var_1.x;
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1(false, vec2<bool>(var_0, false)).a.b.x, -399f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1610f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1235f - 1106f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(var_0, var_0))), vec2<f32>(_wgslsmith_f_op_f32(min(2465f, -336f)), func_1(var_0, vec2<bool>(var_0, true)).a.b.x))), vec2<f32>(1f, 1f));
}

