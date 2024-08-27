struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_2;

var<private> global2: u32 = 14609u;

var<private> global3: array<i32, 28> = array<i32, 28>(-1i, 90106i, 1i, -7919i, 15314i, 2147483647i, i32(-2147483648), -39517i, i32(-2147483648), 30166i, -24679i, 26820i, 45776i, -15094i, -1i, i32(-2147483648), -1i, -1i, 20506i, 1i, i32(-2147483648), -7632i, -44280i, 31827i, 69999i, -66364i, 1i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = vec2<bool>(false, !(!any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    global2 = ~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(~(u_input.a.x << (4294967295u % 32u)), abs(u_input.b.x)));
    let var_1 = -65491i;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1501f, global1.a.x) + vec2<f32>(global1.a.x, global1.a.x))))), countOneBits(_wgslsmith_mult_i32(-28120i, 1i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), vec3<i32>(var_1, -1i, 1i)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(ceil(var_2.a.a.x)), false)))), global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x))), global1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.a.x, var_2.a.a.x, true)) - global1.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1000f, global1.a.x)))))));
    return var_2;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_5(~(~firstTrailingBit(firstTrailingBit(5042u))), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(arg_1.b, u_input.c.x, 1i, arg_1.b) ^ vec4<i32>(arg_1.b, global3[_wgslsmith_index_u32(arg_0, 28u)], 2147483647i, -1i)), countOneBits(-2147483647i), func_2(global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(arg_2.zy, vec2<u32>(u_input.a.x, u_input.a.x))), 28u)] ^ 4248i).b, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x, _wgslsmith_add_u32(abs(29840u), arg_2.x) | (0u >> ((arg_2.x >> (4294967295u % 32u)) % 32u))), 23u)]);
    var var_1 = _wgslsmith_mult_i32(1i, ~var_0.b.x);
    var var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(-(~14576i), _wgslsmith_add_i32(firstLeadingBit(-18498i), _wgslsmith_dot_vec3_i32(vec3<i32>(4453i, -34007i, var_0.c), vec3<i32>(48038i, -10824i, global3[_wgslsmith_index_u32(arg_2.x, 28u)]))), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.a, arg_2.x), 7039u), 28u)]), vec3<i32>(-37299i, abs(arg_1.b | -15000i), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, 43354u), 28u)]));
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(713f, -1209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a.x) * _wgslsmith_f_op_f32(-256f * var_0.e.a.x)))) - vec3<f32>(-1217f, 1130f, arg_1.a.a.x));
    var_2 = 2147483647i;
    return Struct_4(select(!all(vec2<bool>(true, false)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(vec3<bool>(true, true, true))), vec3<f32>(arg_1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.a.a.x, arg_1.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1817f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), arg_1.a.a.x)))), ~(~46789u << (0u % 32u)) >> (1u % 32u));
}

fn func_1(arg_0: i32) -> Struct_5 {
    var var_0 = func_3(~63432u, func_2(1i), reverseBits(reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(71976u, 27848u, u_input.b.x), u_input.b.ywz))));
    global3 = array<i32, 28>();
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -2486f) + var_0.b.yx) - var_0.b.yz))));
    let var_1 = _wgslsmith_f_op_vec2_f32(step(global1.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.b.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1656f, 441f))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1480f + _wgslsmith_f_op_f32(var_0.b.x * 584f)), var_0.b.x)) - var_1.x), abs(~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(var_0.c, 120567u)), vec2<u32>(4294967295u, u_input.b.x))), _wgslsmith_mult_vec4_i32(reverseBits(~(~vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 18693i, -19516i, arg_0))), select(-vec4<i32>(-14464i, 47380i, 1i, 2147483647i), -vec4<i32>(45256i, -1i, global3[_wgslsmith_index_u32(var_0.c, 28u)], u_input.c.x), vec4<bool>(true, var_0.a, true, var_0.a)) ^ vec4<i32>(_wgslsmith_clamp_i32(arg_0, -1i, global3[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_mult_i32(7086i, -27423i), ~1i, -41772i)), vec2<f32>(global1.a.x, -448f), u_input.a ^ select(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, var_0.c), u_input.a), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(var_0.c, 1u)), !vec2<bool>(var_0.a, false)));
    return Struct_5(23292u, var_2.c, global3[_wgslsmith_index_u32(4294967295u, 28u)], arg_0, global0[_wgslsmith_index_u32(0u << (0u % 32u), 23u)]);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_5) -> StorageBuffer {
    global0 = array<Struct_2, 23>();
    global2 = arg_0;
    let var_0 = func_1(arg_1);
    let var_1 = ~38640i > _wgslsmith_mod_i32(-9109i, ~(~global3[_wgslsmith_index_u32(func_1(-2147483647i).a, 28u)]));
    var var_2 = var_0.c;
    return StorageBuffer(-1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(4294967295u, u_input.d.x, func_1(-1i));
}

