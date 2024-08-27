struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: Struct_4,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: Struct_3) -> i32 {
    let var_0 = !(!select(select(!vec4<bool>(true, false, arg_0.c.x, true), vec4<bool>(false, arg_3.a.c.x, arg_3.a.c.x, true), true), select(vec4<bool>(false, arg_0.a.c.x, arg_2.c.b.x, arg_3.a.c.x), !vec4<bool>(arg_2.c.c.c.x, arg_0.b.c.x, true, arg_0.a.c.x), -2147483647i == u_input.e), any(!vec4<bool>(arg_0.a.c.x, arg_0.c.x, arg_0.a.c.x, arg_0.a.c.x))));
    var var_1 = Struct_1(~vec4<u32>(_wgslsmith_mult_u32(arg_0.b.a.x, _wgslsmith_clamp_u32(77973u, 1704u, u_input.d)), 43310u, 11779u, _wgslsmith_dot_vec3_u32(u_input.c.zww & vec3<u32>(4294967295u, u_input.a.x, arg_1.x), vec3<u32>(0u, arg_2.c.c.a.x, arg_3.a.a.x))), -arg_2.c.a.a.b, select(!var_0.zx, arg_2.c.a.a.c, false));
    let var_2 = !(!(!select(select(arg_0.c, vec3<bool>(var_1.c.x, arg_2.b, arg_3.a.c.x), vec3<bool>(false, arg_0.c.x, arg_2.b)), vec3<bool>(arg_3.a.c.x, arg_3.a.c.x, true), var_1.b.x >= u_input.b.x)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-arg_2.a), !var_2.x, Struct_4(Struct_2(Struct_1(max(vec4<u32>(23128u, var_1.a.x, 13417u, 16085u), vec4<u32>(arg_2.c.a.a.a.x, arg_1.x, arg_0.b.a.x, 9882u)), _wgslsmith_sub_vec3_i32(var_1.b, vec3<i32>(0i, 38633i, var_1.b.x)), select(arg_0.c.zx, vec2<bool>(var_1.c.x, arg_2.c.b.x), vec2<bool>(false, true))), arg_2.c.c, var_0.ywx), select(select(vec2<bool>(false, var_1.c.x), !var_0.zy, !arg_2.c.c.c.x), select(vec2<bool>(var_2.x, true), select(arg_3.a.c, var_1.c, vec2<bool>(false, arg_2.e)), vec2<bool>(true, false)), !arg_3.a.c.x), Struct_1(vec4<u32>(0u, ~10216u, 3582u, ~var_1.a.x), arg_2.c.a.b.b, vec2<bool>(true, var_1.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.a.b.x >> (38360u % 32u), -arg_0.b.b.x, max(-3272i, arg_3.a.b.x)), arg_3.a.b)), _wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(1u, 4294967295u, arg_2.d.x, 16313u))), arg_0.a.a & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 90645u, 39396u, 1u), arg_3.a.a)), !any(select(select(vec2<bool>(true, arg_0.c.x), var_2.xz, vec2<bool>(arg_0.c.x, var_1.c.x)), vec2<bool>(var_2.x, var_0.x), var_0.x)));
    var var_4 = var_0;
    return reverseBits(u_input.b.x);
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(firstTrailingBit(vec4<u32>(0u, 52121u, u_input.d, 19254u) & vec4<u32>(0u, u_input.d, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2, arg_2 & vec3<i32>(global0[_wgslsmith_index_u32(45248u, 26u)], 18530i, arg_2.x)), select(firstLeadingBit(arg_2), vec3<i32>(arg_2.x, 10106i, arg_0) << (vec3<u32>(u_input.d, u_input.d, 53070u) % vec3<u32>(32u)), !vec3<bool>(false, arg_3.x, true))), !vec2<bool>(true, arg_3.x)), Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), u_input.c), vec3<i32>(_wgslsmith_add_i32(min(arg_0, -32719i), -arg_0), -abs(-1i), ~_wgslsmith_div_i32(arg_2.x, 2147483647i)), select(arg_3, arg_3, arg_3.x)), vec3<bool>(func_3(Struct_2(Struct_1(u_input.c, vec3<i32>(arg_2.x, 0i, 1i), arg_3), Struct_1(vec4<u32>(0u, 0u, 519u, 1u), vec3<i32>(23676i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 2147483647i), arg_3), vec3<bool>(arg_3.x, arg_3.x, true)), ~u_input.c.zxx, Struct_5(vec3<f32>(arg_1.x, 1924f, arg_1.x), false, Struct_4(Struct_2(Struct_1(vec4<u32>(42455u, u_input.a.x, u_input.a.x, u_input.c.x), arg_2, arg_3), Struct_1(vec4<u32>(u_input.d, u_input.d, 4294967295u, 27147u), arg_2, arg_3), vec3<bool>(arg_3.x, true, arg_3.x)), vec2<bool>(true, arg_3.x), Struct_1(vec4<u32>(u_input.d, u_input.c.x, u_input.a.x, u_input.c.x), arg_2, vec2<bool>(arg_3.x, arg_3.x)), vec3<i32>(2147483647i, 1i, 1i)), vec4<u32>(u_input.a.x, u_input.c.x, 31005u, u_input.c.x), arg_3.x), Struct_3(Struct_1(u_input.c, arg_2, arg_3), vec3<u32>(12687u, 1u, 0u), u_input.c, arg_1.x)) <= _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(18697i, global0[_wgslsmith_index_u32(3619u, 26u)])), vec2<i32>(2147483647i, 0i)), (arg_3.x == (u_input.c.x > 27147u)) || (any(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)) || any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), true));
    global0 = array<i32, 26>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), arg_1.x)) * _wgslsmith_f_op_f32(711f * _wgslsmith_f_op_f32(round(arg_1.x))));
    let var_2 = Struct_4(var_0, select(vec2<bool>(true, true), !(!var_0.c.zx), select(select(arg_3, var_0.c.zx, false), select(!var_0.b.c, select(vec2<bool>(false, false), vec2<bool>(var_0.c.x, var_0.c.x), var_0.a.c.x), select(var_0.b.c, arg_3, var_0.a.c.x)), select(select(var_0.c.yx, arg_3, vec2<bool>(var_0.b.c.x, false)), arg_3, true))), var_0.a, arg_2);
    var var_3 = max(u_input.a, vec2<u32>(var_0.b.a.x, 1u));
    return var_0.b.b;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-1865f - -653f);
    var var_1 = !all(!(!vec2<bool>(true, arg_0)));
    let var_2 = Struct_1(~u_input.c, (func_2(global0[_wgslsmith_index_u32(u_input.a.x & u_input.c.x, 26u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, 528f, 404f, 205f)), reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 7251i)), select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), true)) ^ vec3<i32>(_wgslsmith_sub_i32(u_input.e, global0[_wgslsmith_index_u32(u_input.d, 26u)]), -1i, u_input.b.x ^ -2147483647i)) ^ vec3<i32>(-2147483647i, ~min(24055i, 0i), u_input.e | u_input.e), vec2<bool>(true, true));
    let var_3 = false;
    var var_4 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, 1i, global0[_wgslsmith_index_u32(u_input.c.x, 26u)]), vec4<i32>(2147483647i, -1i, u_input.b.x, var_2.b.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 13679u, 101177u, 0u), var_2.a) % vec4<u32>(32u))), select(firstLeadingBit(vec4<i32>(-1i, -3815i, var_2.b.x, var_2.b.x) << (vec4<u32>(0u, 0u, var_2.a.x, var_2.a.x) % vec4<u32>(32u))), ~(-vec4<i32>(u_input.e, 0i, -2147483647i, global0[_wgslsmith_index_u32(var_2.a.x, 26u)])), true), (vec4<i32>(26117i, global0[_wgslsmith_index_u32(0u, 26u)], 1i, var_2.b.x) >> (_wgslsmith_mod_vec4_u32(var_2.a, vec4<u32>(28637u, u_input.c.x, var_2.a.x, 8527u)) % vec4<u32>(32u))) & abs(vec4<i32>(var_2.b.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_2.b.x, -2147483647i))));
    return Struct_2(var_2, var_2, !vec3<bool>(arg_0, ~var_4.x != (-34628i | var_4.x), (u_input.d ^ 0u) >= (var_2.a.x ^ u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(false || any(vec2<bool>(true, true))));
    global0 = array<i32, 26>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1220f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1038f)), -1793f, _wgslsmith_f_op_f32(f32(-1f) * -219f), 168f);
    let var_3 = min(u_input.d, _wgslsmith_mod_u32(34149u, 1u) << ((13147u >> ((0u >> (u_input.d % 32u)) % 32u)) % 32u));
    global0 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_sub_u32(var_3, var_0.a.a.x >> (11354u % 32u))), ~47731u), var_0.b.a.x, var_0.b.a.xyz);
}

