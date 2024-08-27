struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_3;

var<private> global2: array<f32, 18> = array<f32, 18>(804f, 1976f, -715f, -717f, 1000f, -905f, -1406f, -826f, 1502f, 630f, 176f, -244f, -199f, 117f, -634f, -948f, 2037f, -577f);

var<private> global3: array<vec4<bool>, 18>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_4) -> bool {
    var var_0 = -arg_1.a.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~(u_input.a.x ^ u_input.a.x), 4294967295u) >> (0u % 32u), 30u)];
    var var_2 = arg_2.a.x;
    let var_3 = Struct_3(~_wgslsmith_clamp_vec3_i32(-global1.a, vec3<i32>(u_input.b >> (1u % 32u), u_input.b, min(global1.a.x, -35694i)), select(vec3<i32>(u_input.b, arg_1.a.x, -9309i), vec3<i32>(-1i, 0i, 2147483647i), vec3<bool>(global1.b, global1.b, global1.b))), var_1.c | any(arg_1.d.yxx), _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))));
    var var_4 = arg_2;
    return true;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global2 = array<f32, 18>();
    let var_0 = vec3<bool>(global1.b, !(!func_3(vec4<f32>(global1.c, global1.c, global1.c, -601f), global0[_wgslsmith_index_u32(u_input.a.x, 30u)], Struct_4(vec2<f32>(1000f, 1851f), global1.b))), !arg_0.x);
    let var_1 = 2256f;
    global2 = array<f32, 18>();
    global0 = array<Struct_1, 30>();
    return global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 30u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_div_i32(arg_2.a.x, -_wgslsmith_mult_i32(1i, global1.a.x));
    let var_1 = Struct_4(arg_0.e.b.xz, !all(!func_2(arg_0.e.d.xxz).d.www));
    return Struct_3(vec3<i32>(~_wgslsmith_div_i32(-24480i, global1.a.x) ^ firstLeadingBit(countOneBits(34340i)), -1i, -arg_2.a.x), _wgslsmith_div_f32(-429f, arg_0.d) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-arg_2.b.x));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec3<i32>) -> Struct_4 {
    global1 = func_4(Struct_2(_wgslsmith_mod_i32(_wgslsmith_add_i32(14784i | u_input.b, arg_3.x), global1.a.x), false, (any(vec2<bool>(true, arg_2.b)) && arg_2.b) & !(arg_3.x != 54851i), 805f, func_2(vec3<bool>(all(global3[_wgslsmith_index_u32(20197u, 18u)]), arg_2.b, true))), vec2<bool>(!(true || all(vec2<bool>(true, arg_2.b))), true), func_2(!(!func_2(vec3<bool>(arg_2.b, true, true)).d.xzw)));
    global1 = func_4(Struct_2(abs(select(-arg_3.x, global1.a.x & arg_3.x, !arg_2.b)), arg_2.b, false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))), Struct_1(~(-vec4<i32>(arg_3.x, -58662i, -2147483647i, 25676i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, -1000f, 1521f) + vec4<f32>(arg_1.x, arg_0, -1267f, arg_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(908f, -2458f, 1443f, global1.c)))), any(vec2<bool>(true, true)), select(vec4<bool>(true, true, true, true), func_2(vec3<bool>(global1.b, true, true)).d, select(global3[_wgslsmith_index_u32(50107u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)], false)))), !(!(!vec2<bool>(false, global1.b))), global0[_wgslsmith_index_u32(~u_input.a.x, 30u)]);
    global0 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_sub_vec3_i32(-vec3<i32>(global1.a.x, -43221i, global1.a.x >> (0u % 32u)) ^ global1.a, vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(0i, u_input.b), 1i), -21964i, ~countOneBits(-17872i)));
    var var_1 = firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(333f))))) + -513f) * global2[_wgslsmith_index_u32(u_input.a.x, 18u)]);
    let var_1 = func_1(_wgslsmith_f_op_f32(778f + 884f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(~13065u, 18u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 49075u), 18u)]), _wgslsmith_f_op_f32(trunc(global1.c)))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-945f + -1260f), global1.c), (0u | (u_input.a.x >> (11690u % 32u))) != _wgslsmith_add_u32(reverseBits(u_input.a.x), 34165u)), ~vec3<i32>(-(~2147483647i), global1.a.x, countOneBits(~global1.a.x)));
    var var_2 = 15988u;
    var_2 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(17860u, u_input.a.x, 0u) ^ ~vec3<u32>(u_input.a.x, u_input.a.x, 114822u)), vec3<u32>(_wgslsmith_div_u32(40607u >> (u_input.a.x % 32u), ~0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<u32>(30062u, 1u, 4294967295u))), u_input.a.x)) | firstLeadingBit(u_input.a.x);
    var var_3 = ~_wgslsmith_mult_vec4_u32(~vec4<u32>(abs(u_input.a.x), reverseBits(18850u), max(4294967295u, u_input.a.x), abs(u_input.a.x)), ~abs(vec4<u32>(42547u, 4294967295u, 4294967295u, 49322u) & vec4<u32>(17916u, u_input.a.x, 7047u, 4294967295u)));
    global2 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_3.x), select(_wgslsmith_div_vec3_i32(max(vec3<i32>(global1.a.x, global1.a.x, global1.a.x), -global1.a), ~countOneBits(vec3<i32>(global1.a.x, global1.a.x, 2147483647i))), global1.a, global1.b), vec2<i32>(~1i, _wgslsmith_mult_i32(-21716i, -1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u << (var_3.x % 32u), 18u)], _wgslsmith_f_op_f32(round(735f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c - -375f) * _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1219f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), global2[_wgslsmith_index_u32(var_3.x, 18u)]))), -641f);
}

