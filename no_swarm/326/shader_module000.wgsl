struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<bool> {
    global0 = array<i32, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1748f + global1.e), _wgslsmith_div_f32(global1.e, 355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e - -1379f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.e, -1407f)) + _wgslsmith_f_op_f32(round(global1.e)))), global1.e, global1.e) - vec4<f32>(-319f, _wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(894f, global1.e))))), global1.e));
    let var_1 = _wgslsmith_div_u32(global1.a.x, u_input.a << (~(~firstLeadingBit(117098u)) % 32u));
    return global1.b;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(global1.c, Struct_1(reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(65070u, global1.c), vec2<u32>(4100u, u_input.a), vec2<u32>(global1.a.x, 1u))), vec3<bool>(true, any(select(vec4<bool>(false, global1.b.x, false, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), false)), global1.b.x && (u_input.a != u_input.a)), 25003u, global0[_wgslsmith_index_u32(abs(1u), 6u)], global1.e));
    var var_1 = global1.e;
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_2 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], 8906i << (1u % 32u), 1i, ~1i)), ~vec4<i32>(~_wgslsmith_clamp_i32(global1.d, var_0.b.d, global1.d), -global0[_wgslsmith_index_u32(1u, 6u)], 69935i, -global1.d));
    return Struct_2(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(443f, 335f, global1.e, 515f), vec4<f32>(-1000f, global1.e, 1986f, -153f))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.e, global1.e, var_0.b.e) - vec4<f32>(-107f, 450f, var_0.b.e, global1.e))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-250f, var_0.b.e, var_0.b.e, global1.e) * vec4<f32>(global1.e, 2503f, var_0.b.e, var_0.b.e))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.e, 1111f, -178f, 258f), vec4<f32>(589f, 1538f, global1.e, global1.e))), vec4<f32>(var_0.b.e, -199f, var_0.b.e, var_0.b.e))))), Struct_1(global1.a, select(select(!vec3<bool>(global1.b.x, true, true), func_3(), select(vec3<bool>(true, var_0.b.b.x, true), var_0.b.b, global1.b.x)), !vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(any(vec3<bool>(var_0.b.b.x, global1.b.x, global1.b.x)), var_0.b.b.x, 5764i > global0[_wgslsmith_index_u32(u_input.a, 6u)])), ~(~(~global1.c)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.b.d, var_2.x), _wgslsmith_mult_i32(var_2.x, 2147483647i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.e)) - _wgslsmith_f_op_f32(trunc(551f))), 2239f))), var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(833f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1392f)) + arg_0.a.e)))));
    let var_1 = true;
    var_0 = arg_0.b.zw;
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(0u, 15594u)), global1.a.x, 1u), ~vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global1.c, global1.a.x, arg_3), vec4<u32>(arg_0.c.a.x, 24973u, 38533u, global1.a.x)), ~vec4<u32>(22584u, u_input.a, arg_2.b.c, arg_2.b.a.x)), reverseBits(firstTrailingBit(arg_0.c.a.x)), ~max(1u, arg_2.a)));
    global1 = Struct_1(~(~reverseBits(func_2().d.a)), func_2().d.b, countOneBits(_wgslsmith_add_u32(1u, global1.a.x)), countOneBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0.d.e))))))));
    return Struct_1(arg_2.b.a, !(!func_2().d.b), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(65065u, ~0u), 0u)), arg_2.b.d, _wgslsmith_f_op_f32(296f - global1.e));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<u32> {
    global1 = func_4(func_2(), vec2<i32>(-(-arg_0.b.d << (firstTrailingBit(53791u) % 32u)), min(~(~arg_0.b.d), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(4294967295u, 6u)] | arg_0.b.d, abs(-849i)))), arg_0, 4294967295u);
    global0 = array<i32, 6>();
    var var_0 = arg_0;
    var_0 = Struct_3(arg_1, Struct_1(func_4(Struct_2(Struct_1(vec2<u32>(68011u, 65603u), arg_0.b.b, 1u, global1.d, -472f), arg_2.b, arg_0.b, arg_0.b), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.d, arg_0.b.d), vec2<i32>(-1i, 2147483647i)), Struct_3(u_input.a, Struct_1(vec2<u32>(0u, 35937u), vec3<bool>(arg_0.b.b.x, false, true), arg_1, arg_0.b.d, 1391f)), 1u).a & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, arg_0.a, arg_2.c.c, 4294967295u), vec4<u32>(arg_2.d.c, var_0.b.a.x, 4294967295u, 12195u)), 4294967295u >> (1u % 32u)), global1.b, countOneBits(arg_0.a | ~u_input.a), ~(~(-28369i)) << (_wgslsmith_div_u32(arg_1 << (13540u % 32u), 1u) % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_2.c.e)), var_0.b.e), -1140f))));
    let var_1 = arg_2;
    return _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 1u, reverseBits(var_1.a.c), 43228u), abs(_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.a, 4294967295u, var_0.a, var_1.c.a.x), vec4<u32>(arg_2.c.a.x, arg_1, 156808u, 68316u), global1.b.x), vec4<u32>(var_0.a, arg_2.d.a.x, 0u, arg_0.a)) ^ firstLeadingBit(vec4<u32>(u_input.a, arg_2.a.c, 4294967295u, arg_1))));
}

fn func_5(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = !(!(!func_3().x) || !(_wgslsmith_f_op_f32(global1.e - global1.e) > global1.e));
    global1 = func_2().a;
    let var_1 = Struct_1(abs(select(arg_0.wy, arg_0.zw, vec2<bool>(false & global1.b.x, true))), global1.b, _wgslsmith_add_u32(1u, ~1u), ~(_wgslsmith_div_i32(global1.d, 22947i) << (select(~global1.a.x, 1u, var_0) % 32u)), -562f);
    let var_2 = vec2<i32>(var_1.d, ~(-_wgslsmith_div_i32(func_2().a.d, 750i)));
    var var_3 = var_1;
    return StorageBuffer(~abs(global1.d), 53939i | _wgslsmith_dot_vec3_i32(-vec3<i32>(5725i, 45687i, -28720i), ~(-vec3<i32>(9138i, global1.d, -47067i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~3833u;
    let x = u_input.a;
    s_output = func_5(select(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, var_0, 1u, global1.a.x), vec4<u32>(global1.a.x, global1.c, 0u, 0u), select(vec4<u32>(22059u, 1u, 1u, 21946u), vec4<u32>(var_0, global1.a.x, 54902u, var_0), true))), ~func_1(Struct_3(u_input.a, Struct_1(global1.a, vec3<bool>(false, global1.b.x, global1.b.x), 58121u, global0[_wgslsmith_index_u32(u_input.a, 6u)], -1840f)), 62804u, Struct_2(Struct_1(vec2<u32>(var_0, u_input.a), vec3<bool>(global1.b.x, global1.b.x, global1.b.x), 35563u, -1i, -172f), vec4<f32>(global1.e, global1.e, -1199f, 1015f), Struct_1(global1.a, vec3<bool>(global1.b.x, true, false), global1.c, 1i, global1.e), Struct_1(global1.a, global1.b, 1u, global1.d, 261f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1285f, -1905f, 985f) + vec3<f32>(2412f, -224f, global1.e))), vec4<bool>(true, global1.b.x, !(global1.e != -798f), true)));
}

