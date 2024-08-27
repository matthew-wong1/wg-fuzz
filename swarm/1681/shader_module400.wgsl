struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(5270u);

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 21>;

var<private> global3: array<vec2<bool>, 4>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-765f + _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(min(global1.b.x, -1528f))))), -(-(~8290i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, global1.a.x, 28476i, arg_0), ~vec4<i32>(global1.a.x, arg_0, -2147483647i, 35425i))), 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 874f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, -443f, 792f, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, 1918f, global1.b.x)), false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x) - vec4<f32>(global1.b.x, 273f, -1224f, global1.b.x)), vec4<f32>(global1.b.x, -259f, -1407f, global1.b.x), !vec4<bool>(global1.d, global1.d, global1.d, global1.d))), all(!global3[_wgslsmith_index_u32(35884u, 4u)])))));
    let var_1 = ~(~0i);
    global0 = Struct_3(min((_wgslsmith_clamp_u32(var_0.c, global0.a, u_input.c.x) >> (79229u % 32u)) << (global0.a % 32u), _wgslsmith_add_u32(abs(~global0.a), _wgslsmith_div_u32(43010u, global0.a))));
    global0 = arg_2;
    var var_2 = Struct_4(global1.a >> (vec3<u32>(~(1u << (0u % 32u)), ~u_input.b.x, ~(global1.c.x >> (global0.a % 32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global1.b))), firstTrailingBit(firstTrailingBit(select(max(u_input.c.zy, vec2<u32>(var_0.c, 7142u)), u_input.c.zx, select(global3[_wgslsmith_index_u32(10229u, 4u)], vec2<bool>(global1.d, true), global1.d)))), false);
    return ~var_2.c.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(arg_2, ~reverseBits(global1.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(54488u, 50229u) >> (firstTrailingBit(vec2<u32>(global0.a, global0.a)) % vec2<u32>(32u)), arg_3.zz), arg_1));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(14635u, min(arg_3.x | u_input.d, global1.c.x)), countOneBits(0u) << (firstLeadingBit(0u | arg_3.x) % 32u), ~_wgslsmith_div_u32(0u, abs(arg_3.x))) > min(global0.a, func_3(i32(-1i) * -global1.a.x, Struct_3(16579u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u & global0.a, 39590u), 21u)]));
    var var_2 = Struct_3(~global0.a << (var_0.a.c % 32u));
    var_2 = global2[_wgslsmith_index_u32(26152u, 21u)];
    var var_3 = arg_3.x;
    return -33914i;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.a.x, 38801i), reverseBits(func_2(vec2<bool>(false, false), vec4<f32>(366f, -1460f, arg_0.b.x, arg_0.b.x), global1.b.x, u_input.b)), abs(arg_0.a.x)), ~arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -1000f, 1314f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.b.x, arg_0.b.x)))))), vec2<u32>(~84336u, func_3(-global1.a.x, Struct_3(~56706u), Struct_3(_wgslsmith_sub_u32(4294967295u, 1u)))), arg_0.a.x <= arg_0.a.x);
    let var_1 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(countOneBits(select(global1.a.x, 2147483647i, false)), -var_0.a.x ^ global1.a.x)) >> (0u % 32u);
    let var_2 = 21667u;
    let var_3 = vec4<i32>(_wgslsmith_add_i32(global1.a.x, (-global1.a.x >> (4294967295u % 32u)) ^ -42513i), firstLeadingBit(var_0.a.x), _wgslsmith_mod_i32(~var_1, min(0i, -1i)), var_1);
    let var_4 = u_input.b;
    return _wgslsmith_f_op_f32(select(-210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2215f)) + _wgslsmith_f_op_f32(-global1.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_0.b.x, var_0.d)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + var_0.b.x)), firstLeadingBit(_wgslsmith_div_u32(global1.c.x, ~var_4.x)) != 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -984f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(47096i, -29689i, 23602i), vec3<f32>(global1.b.x, -582f, global1.b.x), vec2<u32>(global0.a, 8716u), true), any(vec3<bool>(global1.d, global1.d, false)), vec2<u32>(0u, 4294967295u)))), -1137f, _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + 1069f) * _wgslsmith_f_op_f32(floor(global1.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-291f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-204f * 281f))), _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, -335f, -391f, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 1973f, global1.b.x, global1.b.x) - vec4<f32>(-626f, 1127f, global1.b.x, global1.b.x)), vec4<f32>(global1.b.x, -464f, global1.b.x, 487f)))), true))));
    global3 = array<vec2<bool>, 4>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(842f))) * _wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(-var_0.x))), -29167i | global1.a.x, ~u_input.d, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0)), vec4<f32>(2009f, global1.b.x, var_0.x, 1748f))))));
    let var_2 = true;
    var var_3 = Struct_2(var_1.a);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), reverseBits(-20413i), (4294967295u >> (u_input.b.x % 32u)) & ~_wgslsmith_sub_u32(var_1.a.c, var_1.a.c), vec4<f32>(var_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(func_1(Struct_4(vec3<i32>(var_1.a.b, 2147483647i, var_1.a.b), vec3<f32>(var_1.a.d.x, var_0.x, 1252f), vec2<u32>(global1.c.x, 49486u), false), true, vec2<u32>(62076u, 0u)))), -306f, _wgslsmith_f_op_f32(func_1(Struct_4(global1.a, global1.b, global1.c, true), true, ~global1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c, ~vec4<u32>(4294967295u, ~_wgslsmith_div_u32(global1.c.x, 9560u), abs(1u), 0u), _wgslsmith_mod_vec2_u32(u_input.c.xy, ~(_wgslsmith_add_vec2_u32(vec2<u32>(var_3.a.c, var_1.a.c), vec2<u32>(0u, 4294967295u)) ^ ~global1.c)));
}

