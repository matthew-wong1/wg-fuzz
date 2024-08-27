struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1123f;

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: Struct_2 = Struct_2(-13301i, true);

var<private> global3: array<f32, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = -2147483647i;
    let var_1 = Struct_2(_wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(global2.a, 21727i, global2.a), ~u_input.b.x >> (reverseBits(0u) % 32u))), !any(vec3<bool>(true, select(global2.b, true, false), 22244u <= u_input.d.x)));
    global0 = _wgslsmith_div_f32(-176f, global3[_wgslsmith_index_u32(~4294967295u, 21u)]);
    let var_2 = Struct_2(u_input.b.x, true && var_1.b);
    var var_3 = reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 1u), u_input.d), select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(0u, 42081u, u_input.d.x)), u_input.d.x), u_input.d, select(select(vec3<bool>(var_2.b, true, var_2.b), vec3<bool>(var_1.b, var_2.b, var_2.b), vec3<bool>(var_2.b, global2.b, var_2.b)), vec3<bool>(global2.b, false, var_2.b), !var_2.b))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    global3 = array<f32, 21>();
    let var_0 = Struct_2(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), 28288i), -71417i << (u_input.d.x % 32u))), arg_0.c.x);
    let var_1 = -327f;
    let var_2 = select(u_input.d, ~u_input.d, all(select(!(!arg_0.c), select(!arg_0.c, arg_0.c, u_input.d.x <= 42108u), select(!arg_0.c, select(arg_0.c, vec4<bool>(true, false, arg_1, false), arg_0.c.x), select(vec4<bool>(false, global2.b, arg_1, arg_0.c.x), arg_0.c, vec4<bool>(false, false, var_0.b, false))))));
    global2 = Struct_2(~(i32(-1i) * -arg_0.b.x) >> (~0u % 32u), !global2.b);
    return arg_0.c;
}

fn func_2() -> bool {
    var var_0 = !func_4(Struct_1(-u_input.b.x, vec4<i32>(-3680i, _wgslsmith_mod_i32(-1i, -1i), u_input.b.x >> (1550u % 32u), u_input.c.x), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 21u)]) - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 21u)])) <= global3[_wgslsmith_index_u32(func_3(), 21u)]);
    global1 = array<vec2<u32>, 11>();
    var var_1 = Struct_2(global2.a << (select(~0u, u_input.d.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 0u)) % 32u), global2.b) % 32u), abs(u_input.b.x) < countOneBits(global2.a));
    var var_2 = Struct_1(abs(u_input.c.x), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-4798i, -2147483647i, 10396i, 8195i), max(vec4<i32>(-41464i, global2.a, -55286i, global2.a), vec4<i32>(-1i, global2.a, var_1.a, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(12536i, u_input.c.x, global2.a, var_1.a), vec4<i32>(u_input.a.x, var_1.a, var_1.a, 1i))), select(!(!vec4<bool>(global2.b, true, var_0.x, true)), !vec4<bool>(all(vec4<bool>(true, true, global2.b, false)), true, false, global2.b), false));
    var var_3 = var_1.b;
    return false;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    global3 = array<f32, 21>();
    var var_0 = !select(vec3<bool>(~arg_1 >= ~1u, false, arg_2.b), vec3<bool>(func_2(), any(func_4(Struct_1(0i, vec4<i32>(-2147483647i, global2.a, 0i, arg_2.a), vec4<bool>(true, global2.b, arg_2.b, false)), global2.b).wwx), true && global2.b), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1238f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 21u)] * global3[_wgslsmith_index_u32(u_input.d.x, 21u)])))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1176f))), global3[_wgslsmith_index_u32((10626u >> (arg_0 % 32u)) << (29702u % 32u), 21u)]))) + 599f);
    global1 = array<vec2<u32>, 11>();
    let var_1 = arg_2.b;
    return _wgslsmith_div_vec2_u32(vec2<u32>(reverseBits(max(arg_1, 4294967295u)), abs(0u)), vec2<u32>(~firstLeadingBit(u_input.d.x), u_input.d.x & 0u));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = select(select(vec3<bool>(true, all(vec2<bool>(global2.b, global2.b)), !global2.b), vec3<bool>(global2.b && !global2.b, select(global2.b, false, true), true), true), select(func_4(Struct_1(_wgslsmith_div_i32(u_input.a.x, 15567i), select(vec4<i32>(u_input.c.x, 20027i, global2.a, u_input.c.x), vec4<i32>(-29057i, u_input.b.x, global2.a, 0i), vec4<bool>(false, true, global2.b, global2.b)), !vec4<bool>(global2.b, global2.b, false, false)), true).zzz, !vec3<bool>(true, all(vec3<bool>(global2.b, false, global2.b)), !global2.b), vec3<bool>(all(vec4<bool>(false, false, true, false)), !global2.b, !(!global2.b))), !(!select(!vec3<bool>(false, global2.b, true), !vec3<bool>(global2.b, false, global2.b), func_2())));
    let var_1 = max(u_input.d.zy, u_input.d.zx);
    let var_2 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(abs(u_input.b.x), u_input.b.x));
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32((select(vec2<i32>(var_2.x, global2.a), u_input.c, var_0.x) << (global1[_wgslsmith_index_u32(~0u, 11u)] % vec2<u32>(32u))) << (abs(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(7386u, 11u)], global1[_wgslsmith_index_u32(4294967295u, 11u)])) % vec2<u32>(32u)), var_2 ^ ~firstLeadingBit(u_input.a.yy)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-21147i, -2147483647i, -51559i, 0i), -vec4<i32>(var_2.x, global2.a, 1i, -2147483647i))) & vec4<i32>(~(-30710i), _wgslsmith_div_i32(reverseBits(u_input.b.x), var_2.x), _wgslsmith_div_i32(u_input.b.x, var_2.x) << (_wgslsmith_add_u32(arg_2.x, 37579u) % 32u), _wgslsmith_add_i32(countOneBits(var_2.x), ~global2.a)), !(!(!vec4<bool>(false, true, global2.b, true))));
    let var_4 = firstLeadingBit(0i);
    return var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7778u, 21u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), _wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(52279u, 21u)])))) - global3[_wgslsmith_index_u32(abs(u_input.d.x), 21u)]));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1644f);
    var var_1 = func_5(~_wgslsmith_dot_vec2_u32(func_1(38415u, u_input.d.x, Struct_2(global2.a, true)), ~global1[_wgslsmith_index_u32(u_input.d.x, 11u)]) & 4294967295u, _wgslsmith_sub_u32(max(_wgslsmith_div_u32(u_input.d.x, 71123u), 46666u), u_input.d.x) & _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)), vec3<u32>(~76715u, 44179u, ~u_input.d.x)), abs(select(firstLeadingBit(vec4<u32>(1u, 29394u, 0u, 54187u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.d.x, 2742u), vec4<u32>(4563u, u_input.d.x, u_input.d.x, 59604u)), !select(vec4<bool>(false, false, global2.b, true), vec4<bool>(false, false, global2.b, true), vec4<bool>(global2.b, false, true, true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1431f, global3[_wgslsmith_index_u32(u_input.d.x, 21u)], global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 21u)], global3[_wgslsmith_index_u32(27377u, 21u)], -606f))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1375f, -1455f), vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 617f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(605f, global3[_wgslsmith_index_u32(u_input.d.x, 21u)]))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 21u)], global3[_wgslsmith_index_u32(u_input.d.x, 21u)])))))));
    let var_3 = any(!(!select(func_4(Struct_1(global2.a, vec4<i32>(-2147483647i, -2147483647i, 5369i, global2.a), vec4<bool>(false, false, true, true)), global2.b).zx, func_4(Struct_1(-41014i, vec4<i32>(8526i, 2147483647i, u_input.c.x, global2.a), vec4<bool>(global2.b, global2.b, false, true)), global2.b).xw, vec2<bool>(global2.b, global2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - var_2.x) - _wgslsmith_f_op_f32(sign(var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global3[_wgslsmith_index_u32(u_input.d.x, 21u)]), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(32424u, 21u)], 479f))), _wgslsmith_f_op_f32(round(-444f))) + vec3<f32>(global3[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(u_input.d.x, 1952u), 4294967295u), 21u)], global3[_wgslsmith_index_u32(~u_input.d.x, 21u)], -1416f)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(~4294967295u, 0u, u_input.d.x << (32156u % 32u))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(32077u, u_input.d.x, u_input.d.x), vec3<u32>(1u, u_input.d.x, 42436u))), firstTrailingBit(~u_input.d.x));
}

