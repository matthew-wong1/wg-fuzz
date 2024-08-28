struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(14514u, 12781u, 1u, 38125u);

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec2<f32>(-963f, -1357f), i32(-2147483648), 4294967295u, 4443u)), Struct_3(Struct_1(vec2<f32>(1391f, 2132f), 30124i, 1u, 16706u)), Struct_3(Struct_1(vec2<f32>(415f, 246f), 84101i, 41466u, 40173u)), Struct_3(Struct_1(vec2<f32>(831f, -1450f), 0i, 0u, 15941u)), Struct_3(Struct_1(vec2<f32>(-1154f, 352f), -2365i, 4294967295u, 57419u)), Struct_3(Struct_1(vec2<f32>(-646f, 492f), 0i, 4294967295u, 23958u)), Struct_3(Struct_1(vec2<f32>(-1000f, 809f), i32(-2147483648), 11998u, 3965u)), Struct_3(Struct_1(vec2<f32>(1000f, 1133f), 1i, 20602u, 10246u)));

var<private> global2: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = countOneBits(select(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 4u)], 4u)])), 4u)], 4u)], min(~1u, _wgslsmith_add_u32(u_input.b, u_input.b))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(16824u, global0[_wgslsmith_index_u32(1u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 4632u), 4u)]), ~(~vec2<u32>(u_input.b, 4294967295u))), vec2<bool>(true, true | any(vec4<bool>(true, false, false, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) + 709f)), -366f) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, _wgslsmith_div_f32(-727f, arg_0.x), _wgslsmith_div_f32(1792f, _wgslsmith_f_op_f32(650f + _wgslsmith_f_op_f32(-556f * arg_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(220f)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-1604f * var_1.x)), arg_0.x)), abs(countOneBits(-44225i)), _wgslsmith_add_u32(_wgslsmith_sub_u32(93657u, _wgslsmith_dot_vec4_u32(~vec4<u32>(64091u, u_input.b, global0[_wgslsmith_index_u32(1u, 4u)], u_input.b), vec4<u32>(4294967295u, 62872u, 4294967295u, 4294967295u))), ~(2917u | u_input.b) & 0u), u_input.b);
    var_1 = vec4<f32>(-151f, 639f, -929f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x)))), _wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(1278f + var_3.a.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -785f);
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_3 {
    global2 = array<vec3<bool>, 25>();
    global0 = array<u32, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-115f, arg_0.a.a.x, 963f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -912f), _wgslsmith_div_f32(arg_0.a.a.x, -408f), arg_0.a.a.x) + vec3<f32>(-311f, _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1130f, 485f, -1054f)))))));
    global2 = array<vec3<bool>, 25>();
    let var_1 = firstLeadingBit(reverseBits(firstTrailingBit(_wgslsmith_mod_i32(0i, arg_0.a.b)))) >= -55793i;
    return Struct_3(arg_0.a);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = func_2(global1[_wgslsmith_index_u32(1u, 8u)], true || (true & select(true, 1u != global0[_wgslsmith_index_u32(0u, 4u)], true)), Struct_2(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8929u, arg_0.x, 4294967295u), arg_0), 51571u << (global0[_wgslsmith_index_u32(arg_0.x, 4u)] % 32u), ~u_input.b, u_input.b)), ~max(vec3<u32>(14458u, 12897u, global0[_wgslsmith_index_u32(arg_0.x, 4u)]) & arg_0, ~(~vec3<u32>(1u, 0u, 0u))));
    var var_1 = vec3<bool>(!all(select(select(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)], vec3<bool>(false, false, false)), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(var_0.a.d, 25u)])), false, !all(vec4<bool>(true, any(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 25u)]), true, all(vec3<bool>(true, false, true)))));
    var var_2 = Struct_2(select(firstLeadingBit(select(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 4u)], 52581u, var_0.a.c, 80913u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], 4294967295u, 1u, 17641u), var_1.x)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29370u, 4u)], 4u)] ^ 0u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 11097u, 12164u, var_0.a.d), vec4<u32>(var_0.a.d, 47334u, 19114u, global0[_wgslsmith_index_u32(u_input.b, 4u)])), 1u), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 4u)]), global0[_wgslsmith_index_u32(0u, 4u)], arg_0.x & 79878u, ~global0[_wgslsmith_index_u32(var_0.a.d, 4u)]), ~(vec4<u32>(4294967295u, 4294967295u, var_0.a.d, 4899u) ^ vec4<u32>(12532u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 4u)], 4u)], arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 4u)]))) % vec4<u32>(32u)));
    global2 = array<vec3<bool>, 25>();
    return Struct_2(vec4<u32>(_wgslsmith_div_u32(~firstLeadingBit(var_2.a.x), firstTrailingBit(~global0[_wgslsmith_index_u32(1u, 4u)])), ~(~var_0.a.d) << (firstTrailingBit(abs(39639u)) % 32u), arg_0.x, var_2.a.x));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = select(vec4<bool>(true, true, false, (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35663u, 4u)] ^ arg_1.a.x, 4u)] > firstLeadingBit(arg_0.x)) || true), vec4<bool>(true, !(true | (global0[_wgslsmith_index_u32(u_input.b, 4u)] >= u_input.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-985f + 701f))) == _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(true, true, true, true))), any(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true))), vec4<bool>(true, false, all(vec4<bool>(false, false, false, false)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true))));
    let var_1 = firstTrailingBit(~reverseBits(_wgslsmith_mult_i32(min(u_input.d.x, 1i), arg_2)));
    global0 = array<u32, 4>();
    var var_2 = true;
    var var_3 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), ~arg_0.x, 1u, arg_0.x), max(arg_1.a, ~vec4<u32>(arg_1.a.x, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 4u)], 1u))), arg_1.a);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1090f - -334f), 1f, _wgslsmith_f_op_f32(min(-791f, -1029f)), 869f))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.ww), u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 4u)] | ~((19202u & global0[_wgslsmith_index_u32(u_input.b, 4u)]) & u_input.b), abs(u_input.b << (~1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -u_input.a.x, func_4(~abs(~vec2<u32>(var_2.c, global0[_wgslsmith_index_u32(var_2.d, 4u)])), func_1(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c, var_2.c, 58962u), vec3<u32>(var_2.c, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)])))), 17461i), ~(~abs(vec3<u32>(u_input.b, 32673u, global0[_wgslsmith_index_u32(0u, 4u)])) ^ abs(~vec3<u32>(u_input.b, 4294967295u, 4294967295u))));
}

