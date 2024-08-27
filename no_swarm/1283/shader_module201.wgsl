struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(74910u, 27283u, 4294967295u), vec3<u32>(0u, 4294967295u, 18788u), vec3<u32>(4294967295u, 66036u, 7466u), vec3<u32>(32688u, 0u, 4294967295u), vec3<u32>(4294967295u, 58457u, 14441u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(40007u, 29521u, 87287u), vec3<u32>(1u, 0u, 0u), vec3<u32>(76156u, 25827u, 0u), vec3<u32>(75418u, 0u, 4294967295u), vec3<u32>(14770u, 29332u, 30744u), vec3<u32>(0u, 113810u, 4294967295u), vec3<u32>(0u, 7596u, 1u), vec3<u32>(0u, 1u, 11801u), vec3<u32>(42722u, 9654u, 92326u), vec3<u32>(89338u, 147931u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(61946u, 6481u, 19781u), vec3<u32>(51594u, 85093u, 69422u), vec3<u32>(4294967295u, 8758u, 26908u));

var<private> global1: f32 = -293f;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = true;
    let var_2 = vec2<i32>(-(i32(-1i) * -2362i), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0 & var_0, u_input.a.x), u_input.a.yz));
    let var_3 = 13162u;
    return global3[_wgslsmith_index_u32(16996u, 7u)];
}

fn func_3() -> f32 {
    global3 = array<Struct_1, 7>();
    global2 = Struct_2(1278f, _wgslsmith_add_i32(u_input.a.x, ~u_input.a.x), 153901u);
    let var_0 = Struct_3(func_2(), u_input.b << (~(select(4294967295u, 40502u, true) >> (global2.c % 32u)) % 32u), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -797f), global2.b, u_input.b), Struct_2(937f, global2.b, u_input.b));
    var var_1 = var_0;
    global0 = array<vec3<u32>, 20>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_f_op_f32(f32(-1f) * -116f), true)))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = Struct_2(arg_0.c.a, abs(arg_0.c.b), select(firstTrailingBit(~arg_1.c), global2.c, 489f > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a, arg_2), _wgslsmith_f_op_f32(-arg_0.c.a), arg_0.a.d && arg_0.a.d))));
    global2 = Struct_2(_wgslsmith_f_op_f32(round(-1981f)), 1i, ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(firstTrailingBit(1u), ~arg_1.c), 11070u, _wgslsmith_sub_u32(~11547u, 1u)));
    global3 = array<Struct_1, 7>();
    var var_1 = arg_0.a.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + -1757f))), var_0.b, min(arg_0.c.c ^ 4294967295u, ~4294967295u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(456f, var_2.a, false)) - _wgslsmith_f_op_f32(-arg_1.a)), global2.a), _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, arg_1.a) + _wgslsmith_f_op_f32(select(-1272f, -1480f, arg_0.a.d))) + -1000f) * _wgslsmith_f_op_f32(1869f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1086f, arg_1.a)) + -1103f))));
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = (u_input.b >> (_wgslsmith_div_u32(0u, max(u_input.b & 1u, 11652u)) % 32u)) >= (firstLeadingBit(global2.c) ^ global2.c);
    global0 = array<vec3<u32>, 20>();
    var var_1 = func_2();
    global0 = array<vec3<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 464f) * vec2<f32>(global2.a, -1107f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 2145f) * vec2<f32>(global2.a, 1806f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1365f)))));
    return _wgslsmith_f_op_f32(func_4(Struct_3(func_2(), ~(~var_1.a), Struct_2(_wgslsmith_f_op_f32(min(-2501f, -1000f)), -1i, 0u), Struct_2(1008f, ~2147483647i, ~u_input.b)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), 1i, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, global2.c, 14318u), vec3<u32>(u_input.b, u_input.b, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + global2.a) - _wgslsmith_f_op_f32(-237f - -2436f)))) <= -1875f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 7>();
    var var_0 = Struct_1((0u ^ global2.c) ^ firstLeadingBit(1u), u_input.b, -1000f, !(!(!func_1(vec3<i32>(4130i, global2.b, 2147483647i)))), vec4<i32>(-1i) * -reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -38419i, global2.b, global2.b), vec4<i32>(global2.b, 0i, u_input.a.x, -20978i), vec4<i32>(-6805i, -1i, u_input.a.x, u_input.a.x))));
    global3 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(531f, -233f), global2.a)), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(f32(-1f) * -734f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c, -1912f), vec2<f32>(var_0.c, 640f))) - vec2<f32>(373f, 525f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(221f, -1344f)))), !vec2<bool>(var_0.d, !var_0.d & true)));
    let var_2 = max(max(~(global0[_wgslsmith_index_u32(select(1u, global2.c, true), 20u)] << (~vec3<u32>(global2.c, u_input.b, 0u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(global2.c, 20u)]), vec3<u32>(_wgslsmith_clamp_u32(60749u << (var_0.a % 32u), var_0.b, 7780u) | ~var_0.b, ~(~(~23507u)), var_0.b));
    var var_3 = Struct_3(Struct_1(4294967295u, 1u, _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_mult_i32(var_0.e.x, u_input.a.x >> (u_input.b % 32u)) < ((u_input.a.x | global2.b) | var_0.e.x), min(var_0.e, vec4<i32>(2147483647i, global2.b, -2147483647i, global2.b)) << (~countOneBits(vec4<u32>(var_0.b, u_input.b, 4294967295u, var_2.x)) % vec4<u32>(32u))), 4294967295u, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a * _wgslsmith_div_f32(-589f, var_0.c)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(var_1.x - var_0.c)))), -u_input.a.x, ~(~(~0u))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, global2.a))), var_0.e.x, _wgslsmith_clamp_u32(28184u, reverseBits(u_input.b), ~min(97519u, 24043u))));
    var var_4 = ~(~(-2147483647i));
    global1 = 1278f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~4294967295u)), var_0.e, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 0i, _wgslsmith_sub_i32(1i, ~var_3.d.b)), ~(~_wgslsmith_mod_vec3_i32(u_input.a, u_input.a))), vec3<f32>(global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-595f + _wgslsmith_f_op_f32(-480f + 502f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(126f + var_3.c.a), global2.a))), global2.a));
}

