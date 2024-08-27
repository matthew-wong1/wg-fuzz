struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3>;

var<private> global1: Struct_4 = Struct_4(vec4<bool>(true, true, true, true), vec4<i32>(33398i, -111844i, -1i, 53706i), vec2<i32>(-46690i, 2147483647i), vec3<u32>(0u, 26894u, 4294967295u));

var<private> global2: array<i32, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    global0 = array<vec2<u32>, 3>();
    let var_0 = Struct_4(global1.a, vec4<i32>(global1.c.x, ~_wgslsmith_mod_i32(-71076i, global1.b.x) | 0i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(-18008i, -2147483647i)), -_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global1.d.x, 28u)], 0i), 1i), _wgslsmith_add_i32(-u_input.a.x, ~0i)), vec2<i32>(min(global2[_wgslsmith_index_u32(0u, 28u)] << (0u % 32u), global1.b.x), _wgslsmith_add_i32(u_input.a.x, -global1.c.x)) << (vec2<u32>(0u, firstLeadingBit(_wgslsmith_sub_u32(73196u, 0u))) % vec2<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global1.d, global1.d), 7447u, ~1u << (~global1.d.x % 32u)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(12633u, global1.d.x), _wgslsmith_add_u32(global1.d.x, 11723u), 76473u << (u_input.b % 32u)), global1.d)));
    return !select(global1.a, global1.a, !select(vec4<bool>(global1.a.x, global1.a.x, var_0.a.x, var_0.a.x), global1.a, select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_0.a.x, true, false, true), var_0.a.x)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_4(vec4<bool>(true && arg_1.x, all(arg_1.xz), all(!(!arg_1.xw)), all(global1.a.wxx)), _wgslsmith_clamp_vec4_i32(global1.b, ~vec4<i32>(~(-77803i), ~(-13003i), -u_input.a.x, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 28u)], -2147483647i)), ~vec4<i32>(u_input.a.x, -27204i, -2147483647i, u_input.a.x) ^ global1.b), ~vec2<i32>(0i, -1i), vec3<u32>(global1.d.x, global1.d.x, arg_2.a.b.a.x << (_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(arg_3.b.a.x, 3u)], reverseBits(arg_2.a.b.a.xz)) % 32u)));
    var var_1 = all(!vec2<bool>(false, select(false, arg_0.x < arg_0.x, true)));
    global2 = array<i32, 28>();
    global1 = Struct_4(vec4<bool>(global1.a.x, !var_0.a.x, all(select(vec4<bool>(arg_2.a.c, true, global1.a.x, true), func_3(-344f), vec4<bool>(false, arg_1.x, false, true))), arg_2.a.c), -global1.b, vec2<i32>(-1i) * -reverseBits(vec2<i32>(-2147483647i, arg_2.a.a)), max(firstLeadingBit(vec3<u32>(var_0.d.x, 4294967295u | global1.d.x, firstLeadingBit(0u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, 0u, arg_3.b.a.x), var_0.d), 4294967295u, ~(~global1.d.x))));
    let var_2 = arg_2;
    return func_3(_wgslsmith_f_op_f32(-994f + arg_0.x));
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    global2 = array<i32, 28>();
    let var_0 = ~global1.d;
    global1 = Struct_4(func_4(vec3<f32>(325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f + -234f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1559f + 174f))), Struct_3(Struct_2(-1i, Struct_1(global1.d), true), 11732i), Struct_2(u_input.a.x, Struct_1(vec3<u32>(var_0.x, 0u, u_input.b)), true)), global1.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(i32(-1i) * -6559i, global2[_wgslsmith_index_u32(~35732u, 28u)]), _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(global1.b.zx, vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], 19517i)), select(u_input.a, reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], global1.b.x)), true)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-3786i, global2[_wgslsmith_index_u32(global1.d.x, 28u)] ^ arg_0.x), global1.b.xx & u_input.a, select(_wgslsmith_div_vec2_i32(global1.b.zy, arg_0), arg_0, global1.a.x))), ~_wgslsmith_mod_vec3_u32(select(global1.d, ~vec3<u32>(19496u, global1.d.x, var_0.x), false), select(vec3<u32>(4294967295u, 0u, 72260u) | global1.d, var_0, global1.a.yzw)));
    var var_1 = ~vec4<i32>(abs(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(var_0.x), _wgslsmith_div_u32(1u, 77723u), 24023u), 28u)]), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(u_input.b, 28u)], -57834i, global1.c.x) << (~21518u % 32u), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 19916i, -37848i, u_input.a.x), vec4<i32>(arg_0.x, u_input.a.x, -6901i, global2[_wgslsmith_index_u32(0u, 28u)])), firstTrailingBit(global1.c.x)), countOneBits(select(select(u_input.a.x, global1.c.x, global1.a.x), arg_0.x << (6393u % 32u), global1.a.x)), 1i);
    let var_2 = _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b) << ((global1.d.yx & vec2<u32>(global1.d.x, global1.d.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(12844u, 4294967295u, 42338u, var_0.x)), firstLeadingBit(8394u)))) << (var_0.x % 32u);
    return _wgslsmith_f_op_f32(-446f - -1584f);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_5 {
    global0 = array<vec2<u32>, 3>();
    let var_0 = vec4<u32>(0u, _wgslsmith_mod_u32(global1.d.x, firstTrailingBit(20597u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_sub_u32(17194u, 0u)), 48852u), vec2<u32>(74544u, abs(~4294967295u))), u_input.b);
    let var_1 = Struct_3(Struct_2(-(~u_input.a.x), Struct_1(~_wgslsmith_mult_vec3_u32(global1.d, vec3<u32>(var_0.x, 14066u, 4294967295u))), global1.d.x <= firstTrailingBit(~4294967295u)), abs(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x) >> (~_wgslsmith_dot_vec2_u32(var_0.wy, global0[_wgslsmith_index_u32(37384u, 3u)]) % 32u)));
    let var_2 = vec4<u32>(global1.d.x, var_0.x & var_0.x, 0u, _wgslsmith_dot_vec3_u32(var_0.wzz, vec3<u32>(firstTrailingBit(var_0.x) << (_wgslsmith_dot_vec4_u32(var_0, var_0) % 32u), ~34201u, var_0.x)));
    var var_3 = max(~((i32(-1i) * -1i) << (0u % 32u)), i32(-1i) * -global2[_wgslsmith_index_u32((u_input.b << (var_0.x % 32u)) ^ _wgslsmith_add_u32(var_1.a.b.a.x, var_1.a.b.a.x), 28u)]);
    return Struct_5(~_wgslsmith_add_vec4_u32(~(~vec4<u32>(44793u, var_1.a.b.a.x, 34668u, 14057u)), vec4<u32>(countOneBits(u_input.b), 1u, reverseBits(var_0.x), 1u)));
}

fn func_1() -> vec3<f32> {
    let var_0 = global1.a.x;
    let var_1 = func_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1218f))), -427f)))), vec4<bool>(true, any(global1.a), true, !(!global1.a.x == any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.c)) * -310f), _wgslsmith_f_op_f32(sign(1797f)));
    global2 = array<i32, 28>();
    var var_2 = Struct_2(select(_wgslsmith_mod_i32(min(-2147483647i, global2[_wgslsmith_index_u32(29981u, 28u)]), firstTrailingBit(global1.b.x)) << (~_wgslsmith_div_u32(91354u, 43240u) % 32u), _wgslsmith_mod_i32(_wgslsmith_div_i32(-global1.c.x, _wgslsmith_clamp_i32(21157i, -2147483647i, global2[_wgslsmith_index_u32(41667u, 28u)])), -19216i), any(!global1.a.wy)), Struct_1(_wgslsmith_sub_vec3_u32(global1.d, vec3<u32>(global1.d.x, var_1.a.x, var_1.a.x))), false);
    var var_3 = Struct_2(min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.d.x, ~var_1.a.x), 28u)], 2147483647i), var_2.b, true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1224f * _wgslsmith_f_op_f32(min(-1317f, -533f))), 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-503f, -890f))))), -1796f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1409f, -1282f, -741f), vec3<f32>(811f, 702f, -708f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1191f, -2053f)), !vec3<bool>(true, global1.a.x, global1.a.x))), vec3<f32>(-828f, _wgslsmith_f_op_f32(-1220f + -1000f), -1133f), ~32826u < u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - vec3<f32>(_wgslsmith_f_op_f32(max(289f, -481f)), _wgslsmith_f_op_f32(floor(-603f)), 1f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(f32(-1f) * -1880f)), 682f, _wgslsmith_f_op_f32(-542f - _wgslsmith_f_op_f32(-928f + 1894f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-276f, _wgslsmith_f_op_f32(trunc(512f)), _wgslsmith_f_op_f32(304f - 168f)) * vec3<f32>(1f, 1f, 1f))));
    global2 = array<i32, 28>();
    let var_1 = Struct_2(~global1.b.x, Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(global1.d, vec3<u32>(global1.d.x, 1u, 8281u)) >> (~global1.d % vec3<u32>(32u)))), false);
    var var_2 = var_1;
    var var_3 = _wgslsmith_mult_i32(countOneBits(-33538i), 3885i);
    var var_4 = global1.a.zww;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(var_2.b.a.x << (var_1.b.a.x % 32u)) & var_1.b.a.x, u_input.b), ~(~global1.b), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 0u, 13017u), ~vec3<u32>(global1.d.x, u_input.b, 1256u)), 74183u) | _wgslsmith_sub_u32(min(u_input.b & 14596u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, var_1.b.a.x), abs(vec4<u32>(global1.d.x, var_2.b.a.x, 0u, 5518u)))));
}

