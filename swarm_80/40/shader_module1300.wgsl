struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 20>;

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: array<u32, 2> = array<u32, 2>(0u, 20968u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(max(vec4<u32>(firstTrailingBit(39905u), global3[_wgslsmith_index_u32(6285u, 2u)] << (global3[_wgslsmith_index_u32(1u, 2u)] % 32u), firstTrailingBit(41470u), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)])), vec4<u32>(global3[_wgslsmith_index_u32(107486u, 2u)], 0u, 93119u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)]) ^ (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(94590u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44781u, 2u)], 2u)], 2u)], 2u)], 1u) << (vec4<u32>(0u, global3[_wgslsmith_index_u32(23627u, 2u)], 65971u, 4294967295u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1024f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1490f))), Struct_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56972u, 2u)], 2u)], 2u)], 2u)], 0u, 21389u, 18655u), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(32625u, 57580u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(111298u, 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)]), vec4<u32>(29341u, 19906u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14191u, 2u)], 2u)], 0u)), select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22364u, 2u)], 2u)], 16754u, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(56183u, 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57560u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 60435u, 4294967295u), false)))));
    global3 = array<u32, 2>();
    var var_1 = -u_input.a;
    var var_2 = !select(vec4<bool>(false, true, all(vec4<bool>(true, true, true, true)), true), vec4<bool>(all(vec3<bool>(true, false, true)) || all(vec2<bool>(false, true)), all(vec2<bool>(true, true)) | true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true)), true), vec4<bool>(all(vec3<bool>(true, true, true)), true, false, true));
    global1 = array<vec2<u32>, 20>();
    return ~3681u;
}

fn func_2() -> bool {
    var var_0 = !all(!select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(func_3(), min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36765u, 2u)], 2u)], 2u)], 1u)), _wgslsmith_div_u32(max(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)], 4294967295u), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12043u, 2u)], 2u)], 2u)], 2u)], _wgslsmith_mult_u32(70434u, 0u))), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]), 2u)], 2u)] & 93524u, global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)]), 2u)]), vec4<u32>(1u, _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 4294967295u), min(global3[_wgslsmith_index_u32(1u, 2u)], countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20502u ^ global3[_wgslsmith_index_u32(1u, 2u)], 2u)], 2u)])), global3[_wgslsmith_index_u32(min(global3[_wgslsmith_index_u32(0u << (_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 56000u) % 32u), 2u)], firstTrailingBit(firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7997u, 2u)], 2u)], 2u)], 2u)], 2u)]))), 2u)]));
    global0 = 810f;
    global1 = array<vec2<u32>, 20>();
    var_1 = ~(~(vec4<u32>(28992u, firstLeadingBit(0u), global3[_wgslsmith_index_u32(4294967295u, 2u)], ~var_1.x) >> (vec4<u32>(1u, ~1u, ~var_1.x, ~var_1.x) % vec4<u32>(32u))));
    return ~var_1.x != ~_wgslsmith_clamp_u32(reverseBits(0u), 16427u, var_1.x);
}

fn func_4(arg_0: bool) -> Struct_1 {
    global3 = array<u32, 2>();
    global0 = 1f;
    let var_0 = abs(-2147483647i);
    global1 = array<vec2<u32>, 20>();
    let var_1 = Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(~1u, 2u)], abs(min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] ^ 66179u, firstLeadingBit(4294967295u))), 0u, 0u));
    return Struct_1(~vec4<u32>(~1u, 8677u, min(var_1.a.x, global3[_wgslsmith_index_u32(55675u, 2u)] & 29381u), var_1.a.x));
}

fn func_1() -> Struct_1 {
    global2 = array<vec3<f32>, 12>();
    var var_0 = func_4(func_2());
    let var_1 = var_0.a.wyw;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1885f, 1812f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -125f);
    let var_2 = Struct_2(func_4(any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(713f))))) - -1338f), func_4(true));
    return var_2.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    global1 = array<vec2<u32>, 20>();
    let var_0 = !(!(!select(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, true), arg_0.x)));
    var var_1 = func_4(arg_0.x);
    let var_2 = 1u;
    let var_3 = u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b * arg_1.b), _wgslsmith_f_op_f32(round(-584f)), true)))), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_5(!(!vec2<bool>(any(vec2<bool>(true, false)), true)), Struct_2(func_1(), _wgslsmith_f_op_f32(ceil(-1000f)), Struct_1(vec4<u32>(76097u, ~1u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global3[_wgslsmith_index_u32(~0u, 2u)]))), ~vec4<u32>(86617u, ~global3[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64649u, 2u)], 2u)], 2u)], 2u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 1u), 50032u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(26831u, 2u)]), 84763u >> (1u % 32u), func_4(false).a.x), firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5195u, 2u)], 2u)], global3[_wgslsmith_index_u32(91427u, 2u)], 1u, global3[_wgslsmith_index_u32(0u, 2u)])))));
    global1 = array<vec2<u32>, 20>();
    var var_0 = Struct_2(func_4(true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1236f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) * _wgslsmith_f_op_f32(1532f + 1428f))))), func_4(true));
    let var_1 = var_0.b;
    global1 = array<vec2<u32>, 20>();
    global0 = _wgslsmith_f_op_f32(trunc(-1194f));
    let var_2 = !select(select(vec2<bool>(true, var_0.b < 747f), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, u_input.a < u_input.a)), vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_f32(-var_0.b), Struct_1(abs(var_0.c.a) ^ vec4<u32>(abs(57979u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], ~4294967295u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)])));
    let x = u_input.a;
    s_output = StorageBuffer(-726f, ~vec4<i32>(_wgslsmith_sub_i32(-4552i, ~u_input.a), 2147483647i, u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(10572i, -2147483647i, u_input.a, -9784i)), 1i, -22228i)), 536f);
}

