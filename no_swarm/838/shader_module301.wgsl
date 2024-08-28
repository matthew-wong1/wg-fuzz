struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec2<f32>(989f, 1491f), 2147483647i, vec4<i32>(0i, -13406i, 1i, -4224i), true);

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec4<bool>) -> vec2<bool> {
    global1 = array<Struct_1, 22>();
    var var_0 = Struct_2(true, vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f))), 1i, vec4<i32>(4507i, select(_wgslsmith_div_i32(-20273i, u_input.b.x) | _wgslsmith_sub_i32(-82384i, 16992i), u_input.b.x, true), firstTrailingBit(u_input.c.x), firstLeadingBit(u_input.c.x)), true);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(max(1598f, 2110f))));
    var var_2 = !all(arg_2.xw) || (u_input.c.x != 0i);
    var var_3 = var_0.d.xwy;
    return vec2<bool>(false, true);
}

fn func_2(arg_0: u32) -> f32 {
    global1 = array<Struct_1, 22>();
    global1 = array<Struct_1, 22>();
    global0 = Struct_2(!global0.e, global0.b, _wgslsmith_div_i32(66406i, -(u_input.c.x ^ 2147483647i) | u_input.b.x), max(vec4<i32>(-global0.d.x, -17088i, global0.d.x, _wgslsmith_mod_i32(u_input.b.x, u_input.c.x) | min(-10483i, u_input.c.x)), _wgslsmith_mod_vec4_i32(global0.d, global0.d)), global0.e);
    global0 = Struct_2(any(!func_3(vec3<u32>(24153u, 12861u, arg_0) ^ vec3<u32>(u_input.a.x, 1u, arg_0), _wgslsmith_f_op_f32(global0.b.x * -655f), !vec4<bool>(global0.e, global0.e, global0.e, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1336f, global0.b.x), global0.b)))) * vec2<f32>(411f, _wgslsmith_f_op_f32(f32(-1f) * -285f))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(global0.b))))), _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.c, countOneBits(49645i)) << (4294967295u % 32u), abs(-_wgslsmith_mod_i32(global0.d.x, 0i))), -(~(-(vec4<i32>(u_input.c.x, 0i, u_input.b.x, u_input.b.x) ^ global0.d))), all(select(vec4<bool>(global0.a, true, global0.a, !global0.a), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, global0.a, global0.a, false), vec4<bool>(false, false, global0.e, false), vec4<bool>(false, false, true, global0.e)), !vec4<bool>(false, true, global0.e, false)), -1000f <= _wgslsmith_f_op_f32(global0.b.x * -562f))));
    let var_0 = 5118i;
    return -529f;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    global0 = Struct_2(true, _wgslsmith_f_op_vec2_f32(exp2(global0.b)), 0i, _wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, -5143i, -2147483647i, arg_1.x), vec4<i32>(u_input.c.x, u_input.c.x, -11832i, 10758i))) | _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, arg_2, -1i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, arg_1.x, 48839i), global0.d)), ~(-vec4<i32>(arg_2, arg_2, global0.d.x, global0.c)), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b.x, u_input.b.x, 23201i, -19511i), global0.d) ^ _wgslsmith_mult_vec4_i32(global0.d, global0.d), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-20990i, 1i), vec2<i32>(-9579i, 28134i)), _wgslsmith_div_i32(-10356i, 19925i), ~arg_2, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 30869i), arg_1.xy)))), true);
    let var_0 = global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, 0u), ~u_input.a.x)), 22u)];
    let var_1 = ~(~(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_1.x, -2147483647i, u_input.c.x), u_input.c) >> (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, 0u), u_input.d, vec3<u32>(57710u, 16228u, u_input.d.x))) % vec3<u32>(32u))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_2(39791u)), _wgslsmith_f_op_f32(-863f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), -713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x))));
    var var_3 = Struct_1(!select(!func_3(u_input.a, 1846f, vec4<bool>(true, var_0.a.x, global0.a, true)), vec2<bool>(global0.a, var_0.a.x), var_0.a), arg_2, var_1.x, arg_1.x != select(firstTrailingBit(-15802i), countOneBits(global0.d.x), global0.a));
    return Struct_2(any(select(select(!vec4<bool>(var_0.a.x, false, var_3.a.x, var_3.d), vec4<bool>(var_0.a.x, false, true, var_0.d), select(vec4<bool>(false, false, true, global0.e), vec4<bool>(global0.a, false, true, var_0.a.x), vec4<bool>(var_0.d, true, var_3.a.x, var_3.d))), vec4<bool>(false, false, select(global0.a, true, var_0.a.x), global0.e), vec4<bool>(true, !global0.e, var_0.c < -64180i, !var_3.a.x))), global0.b, u_input.b.x, vec4<i32>(0i, ~1i, ~arg_1.x, _wgslsmith_mod_i32(abs(-1i), firstTrailingBit(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + -1016f)) > _wgslsmith_f_op_f32(min(1f, arg_0)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_f_op_f32(min(-227f, -2286f)), vec3<i32>(global0.c, -11063i, 16290i), -6991i);
    var var_1 = abs(max(vec4<u32>(1u << (u_input.d.x % 32u), ~1u, reverseBits(1u), 96962u), vec4<u32>(13148u, ~arg_2.x, 4294967295u, 1u)) >> ((_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(27292u, 4294967295u, 24544u, u_input.d.x)), ~vec4<u32>(18678u, 14479u, 25141u, 4294967295u)) ^ vec4<u32>(~34243u, ~u_input.a.x, ~u_input.d.x, countOneBits(1u))) % vec4<u32>(32u)));
    let var_2 = arg_0.c;
    let var_3 = func_3(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(sign(-377f))), vec4<bool>(firstLeadingBit(arg_0.d.x) == var_0.d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(308f + arg_1.x))) > _wgslsmith_f_op_f32(arg_1.x + 1056f), func_1(arg_0.b.x, u_input.c, _wgslsmith_clamp_i32(select(var_2, 7511i, true), _wgslsmith_div_i32(var_0.d.x, -2147483647i), _wgslsmith_dot_vec4_i32(var_0.d, arg_0.d))).e, !(select(var_1.x, 4294967295u, arg_0.e) <= _wgslsmith_mult_u32(24064u, 0u))));
    var var_4 = ~(~(~u_input.d));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, arg_2.x), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.zy;
    var_0 = u_input.c.zx << (vec2<u32>(66017u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(45366u, 101841u)), vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u));
    let var_1 = reverseBits(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a));
    let var_2 = global0.e;
    var var_3 = func_4(func_1(global0.b.x, firstTrailingBit(-(global0.d.yxx << (u_input.d % vec3<u32>(32u)))), _wgslsmith_mod_i32(var_0.x, min(var_0.x, -2147483647i) << ((35880u | var_1.x) % 32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(335f, _wgslsmith_f_op_f32(max(global0.b.x, 1404f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) - _wgslsmith_f_op_vec2_f32(-global0.b)))), ~var_1);
    var_0 = _wgslsmith_mult_vec2_i32(~vec2<i32>(-35446i, 56184i), abs(-(~(~u_input.c.xy))));
    var var_4 = false;
    var var_5 = -var_0.x;
    let var_6 = -4383i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-396f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x * -1426f) * _wgslsmith_f_op_f32(1521f - -719f)) + -1000f)), ~abs(~u_input.a.x));
}

