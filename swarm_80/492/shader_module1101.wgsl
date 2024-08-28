struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 6>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> bool {
    global0 = 486f;
    var var_0 = true != any(vec2<bool>(false, true));
    var_0 = any(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_1 = ~2147483647i;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1520f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1467f))));
    return all(vec3<bool>(true, true, true));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_2 {
    var var_0 = arg_1.x;
    global1 = array<vec2<f32>, 6>();
    var var_1 = vec4<i32>(min(-(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)) >> (u_input.a % 32u)), reverseBits(_wgslsmith_div_i32(73099i, abs(-1i)))), countOneBits(-29777i), u_input.b, _wgslsmith_mod_i32(_wgslsmith_add_i32(0i, 18535i), 1i));
    let var_2 = u_input.a;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(max(arg_2.x, 742f))) * 1129f)));
    return Struct_2(arg_3, Struct_1(min(firstLeadingBit(_wgslsmith_add_i32(8930i, 2256i)), -1330i), -vec2<i32>(7004i, u_input.b) ^ ((vec2<i32>(2147483647i, 16376i) >> (arg_1.yz % vec2<u32>(32u))) | select(vec2<i32>(0i, -1i), vec2<i32>(-1i, -33340i), false)), select(true, arg_0.x, func_3(-14264i, vec2<u32>(4294967295u, 56078u))) || select(!arg_0.x, !arg_0.x, arg_0.x & arg_0.x)), Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.x, var_1.x, var_1.x) << (arg_1.yxw % vec3<u32>(32u)), vec3<i32>(13182i, select(var_1.x, var_1.x, arg_0.x), var_1.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.xw, vec2<i32>(u_input.b, 109193i)), -var_1.xz), -1i), true), _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    global1 = array<vec2<f32>, 6>();
    global0 = 290f;
    var var_0 = Struct_3(select(!(!vec2<bool>(false, arg_0.c)), vec2<bool>(true, true), !arg_0.c), func_2(vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_0.c), vec3<bool>(false, false, false))), !all(vec2<bool>(true, arg_0.c)), arg_0.c), ~vec4<u32>(firstTrailingBit(arg_1.x), 30641u, _wgslsmith_mult_u32(arg_1.x, arg_1.x), 1u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f))), func_2(select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c), select(vec3<bool>(false, false, true), !vec3<bool>(true, arg_0.c, true), true), vec3<bool>(all(vec3<bool>(false, arg_0.c, arg_0.c)), arg_0.c, true)), select(~countOneBits(arg_1), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, u_input.a, 3730u, u_input.a), countOneBits(arg_1)), !vec4<bool>(arg_0.c, arg_0.c, true, true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(arg_1.x, 6u)]), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a ^ arg_1.x, 6u)]), select(vec2<bool>(arg_0.c, true), !vec2<bool>(false, arg_0.c), !vec2<bool>(arg_0.c, arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2016f - -102f) * _wgslsmith_f_op_f32(f32(-1f) * -1197f))).c);
    let var_1 = true;
    var_0 = Struct_3(var_0.a, Struct_2(_wgslsmith_div_f32(var_0.b.d, var_0.b.d), Struct_1(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c.b.x, u_input.b, var_0.b.c.b.x, arg_0.a), vec4<i32>(22999i, u_input.b, arg_0.a, 2147483647i)), var_0.b.c.b, (var_0.b.d == 1000f) && false), Struct_1(0i, vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.b, u_input.b), ~(-3049i)), !any(vec4<bool>(var_1, true, var_0.c.c, var_0.c.c))), var_0.b.d), var_0.c);
    return 2226f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(ceil(-280f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) + _wgslsmith_f_op_f32(func_1(Struct_1(-70588i, vec2<i32>(12024i, u_input.b), false), vec4<u32>(40695u, u_input.a, 51437u, u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -2272f))) - func_2(vec3<bool>(func_2(vec3<bool>(true, false, false), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), global1[_wgslsmith_index_u32(u_input.a, 6u)], 1135f).b.c, true, true), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a), vec4<u32>(0u, u_input.a, 35471u, u_input.a)), vec4<u32>(22368u, u_input.a, 15106u, 23236u) >> (vec4<u32>(4307u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 3007u)), vec2<f32>(-520f, _wgslsmith_f_op_f32(1435f + 762f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -927f)))).d));
    var var_0 = ~countOneBits(~(~(~vec3<u32>(11798u, 62080u, 25678u))));
    var var_1 = vec2<bool>(true, false);
    var var_2 = !select(vec4<bool>(true, !func_2(vec3<bool>(var_1.x, true, false), vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), global1[_wgslsmith_index_u32(43003u, 6u)], 604f).b.c, any(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), select(u_input.b, -1i, var_1.x) != -1i), select(!select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, true, var_1.x, var_1.x)), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), true), false), !vec4<bool>(u_input.b < -2147483647i, true, true, true));
    var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, firstLeadingBit(8640u), var_0.x), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(60557u, 17786u, var_0.x)), vec3<u32>(var_0.x, 40543u, u_input.a))), countOneBits(~select(vec3<u32>(33520u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 5975u), true))) & select(vec3<u32>(reverseBits(18630u), ~min(0u, u_input.a), _wgslsmith_mod_u32(46702u, 1u)), max(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), abs(vec3<u32>(1u, u_input.a, u_input.a))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(76832u, 4294967295u, 0u), vec3<u32>(var_0.x, var_0.x, var_0.x)), 0u, _wgslsmith_mult_u32(4294967295u, 0u))), !var_2.wxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1683f, 243f, -1456f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(253f, 896f, -1540f), vec3<f32>(-179f, -1319f, -678f))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, vec2<i32>(-18153i, u_input.b), var_2.x), abs(vec4<u32>(var_0.x, var_0.x, 4294967295u, 46795u))))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -272f), _wgslsmith_f_op_f32(-1346f - -528f) <= _wgslsmith_f_op_f32(func_1(Struct_1(-21015i, vec2<i32>(-1i, 0i), var_1.x), vec4<u32>(u_input.a, u_input.a, 45744u, 131181u))))), !any(select(vec3<bool>(var_2.x, var_1.x, var_2.x), var_2.xyx, false)))));
}

