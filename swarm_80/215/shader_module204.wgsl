struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<i32, 17> = array<i32, 17>(1i, 0i, -32912i, 18819i, i32(-2147483648), i32(-2147483648), -15840i, 2147483647i, i32(-2147483648), -17140i, 15258i, 1i, 42006i, 2147483647i, 1i, i32(-2147483648), 16839i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> f32 {
    var var_0 = global1.d;
    let var_1 = countOneBits(u_input.a);
    var var_2 = arg_1;
    var var_3 = Struct_1(2147483647i, global0.c.zxy & (min(var_0.b, vec3<u32>(4294967295u, 56886u, var_2.a.c.x)) << (_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c.zyx, arg_1.a.b), var_2.a.c.zxw) % vec3<u32>(32u))), vec4<u32>(1u, ~16981u, _wgslsmith_mult_u32(31285u, 33235u), _wgslsmith_div_u32(_wgslsmith_mult_u32(~global0.c.x, arg_1.a.b.x >> (4294967295u % 32u)), ~(global0.b.x << (global0.b.x % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + arg_1.a.d), -1671f));
    var var_4 = vec2<bool>(!(!(!all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f) * -1319f) < _wgslsmith_f_op_f32(-var_2.b));
    return 624f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1253f, _wgslsmith_f_op_f32(-385f * -1633f), 253f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-811f, arg_0.a, -447f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d, global0.d, 1000f) * vec3<f32>(arg_1.a.d, 921f, arg_1.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.a.d, 1316f, arg_0.d.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1038f, -496f, global0.d), vec3<f32>(966f, 1076f, 320f), true)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.d, 355f, -478f), vec3<f32>(global0.d, arg_1.b, -669f)))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -1217f, global1.a)) + vec3<f32>(1521f, 1549f, global1.a))))));
    let var_1 = 1u;
    var var_2 = arg_1;
    var_2 = arg_1;
    global2 = array<i32, 17>();
    return 0i;
}

fn func_2() -> vec4<bool> {
    global1 = Struct_2(global1.d.d, -abs(_wgslsmith_mult_i32(0i, 47659i) | global1.c.x), vec3<i32>(max(-(~global1.c.x), global1.c.x), 1i, -33470i), global1.d, 4294967295u);
    var var_0 = countOneBits(global1.d.a) | 72406i;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(734f - -823f), func_4(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), ~74654i, vec3<i32>(global1.b, 1i, ~(-1i)), global1.d, select(_wgslsmith_sub_u32(global1.e, u_input.e.x), 8938u, false)), Struct_3(Struct_1(select(-1i, -7220i, true), u_input.c.wyz, vec4<u32>(global0.c.x, 4294967295u, global0.c.x, global1.d.c.x), global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-2147483647i, Struct_3(global1.d, global1.d.d), -341f)) + global1.d.d))), _wgslsmith_sub_vec3_i32((global1.c << (vec3<u32>(77168u, global1.d.c.x, global0.c.x) % vec3<u32>(32u))) ^ vec3<i32>(global1.b, global0.a, 32452i), vec3<i32>(~global2[_wgslsmith_index_u32(44612u, 17u)], u_input.a.x, 2147483647i)) | vec3<i32>(select(max(-53939i, global1.d.a), 1i, true), -28994i, _wgslsmith_mult_i32(10785i, u_input.a.x)), Struct_1(i32(-1i) * -(i32(-1i) * -7564i), vec3<u32>(1u, min(62603u, 8899u), 1u) >> (~abs(vec3<u32>(global0.c.x, u_input.d.x, 56365u)) % vec3<u32>(32u)), select(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(4294967295u, global1.d.c.x, 1u, 1u)), _wgslsmith_div_u32(56721u, global1.d.b.x), global1.d.c.x & global1.d.c.x), _wgslsmith_sub_vec4_u32(global0.c, ~u_input.d), !any(vec2<bool>(false, false))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-696f, _wgslsmith_f_op_f32(max(1000f, -679f))), global0.d))), global1.e << (1u % 32u));
    var var_2 = Struct_5(-371f);
    var var_3 = global0.c;
    return vec4<bool>(!any(vec3<bool>(true, false, false)), any(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), vec3<bool>(false, false, false))), !all(vec3<bool>(any(vec3<bool>(false, false, true)), true, false)), 0i <= max(_wgslsmith_mult_i32(-2648i, -84503i) ^ func_4(var_1, Struct_3(Struct_1(global1.c.x, var_3.ywz, var_1.d.c, 159f), 1000f)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(var_1.d.c.x, 17u)], -8358i, global0.a), vec3<i32>(2690i, 2147483647i, -2147483647i))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_5) -> Struct_1 {
    global0 = global1.d;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x)))))));
    global0 = Struct_1(-43873i, u_input.c.yzw, ~vec4<u32>(global0.c.x, countOneBits(1u ^ global1.d.b.x), 1u ^ (1u << (global0.c.x % 32u)), 4294967295u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_3(global1.d, 1000f), var_0)) * var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-532f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.d * arg_2.a) * _wgslsmith_f_op_f32(-global1.a)))));
    let var_1 = !select(vec3<bool>(arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, true)) || arg_0, false), vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, select(arg_0, global1.e > global0.b.x, !arg_0)));
    let var_2 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.e.x, u_input.c.x), ~global1.d.b), u_input.d, -1580f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -484f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1553f, _wgslsmith_f_op_f32(1154f + 871f))))));
    return global1.d;
}

fn func_1() -> Struct_2 {
    global0 = func_5(any(!(!func_2())), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.d.d + global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i, Struct_3(Struct_1(-19265i, u_input.c.ywx, u_input.c, global0.d), global1.d.d), -2807f)) - 1365f))), 576f, global0.d), Struct_5(global1.a));
    let var_0 = _wgslsmith_add_vec2_i32(u_input.b.zz, vec2<i32>(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(0u, 1u, 4294967295u, 97557u)), 17u)], abs(33619i)));
    let var_1 = firstTrailingBit(_wgslsmith_div_vec2_i32(~global1.c.zx, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-var_0, firstTrailingBit(vec2<i32>(-54517i, var_0.x))), ~u_input.b.xy)));
    var var_2 = max(min(~(~select(vec4<u32>(4294967295u, 1u, global0.c.x, 4294967295u), vec4<u32>(u_input.d.x, u_input.d.x, global1.e, u_input.d.x), vec4<bool>(false, false, false, false))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.e, u_input.c.x, global1.e), min(global0.c.x, global0.c.x), global1.d.b.x, u_input.d.x), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 43053u, 1u), global1.d.c)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.d.b.x, 4294967295u, firstLeadingBit(78569u), global0.c.x), vec4<u32>(abs(global1.e), u_input.c.x, firstTrailingBit(global0.b.x) ^ 0u, 12251u ^ _wgslsmith_mult_u32(global1.d.b.x, global1.d.b.x))));
    var var_3 = _wgslsmith_f_op_f32(ceil(global1.a));
    return Struct_2(func_5(true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(293f, -898f, -923f), vec3<f32>(696f, global0.d, 1000f), vec3<bool>(true, false, false))))))), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1450f, 986f) * _wgslsmith_f_op_f32(max(1000f, global0.d))))).d, abs(_wgslsmith_add_i32(-12742i, 2147483647i) >> (_wgslsmith_div_u32(20604u, global0.c.x) % 32u)), select(global1.c, vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)] >> (reverseBits(global1.d.c.x) % 32u), _wgslsmith_dot_vec3_i32(-global1.c, ~vec3<i32>(1i, var_0.x, 2147483647i)), var_1.x), -2147483647i >= var_1.x), global1.d, 61238u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_4(-233i, Struct_3(Struct_1(0i, select(func_1().d.c.zyw, abs(global0.b), true), vec4<u32>(1u, 4294967295u, u_input.d.x, 4294967295u) << (~vec4<u32>(0u, 0u, global1.d.c.x, global0.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) - func_1().d.d)));
    var_0 = Struct_4(var_0.b.a.a, var_0.b);
    var_0 = Struct_4(select(-1i, -8201i, false), var_0.b);
    global1 = func_1();
    global2 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, global1.d.b.x);
}

