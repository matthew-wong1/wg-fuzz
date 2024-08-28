struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: u32;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(95324u, true, vec3<u32>(5602u, 0u, 1u), vec2<bool>(false, false)), true, vec4<i32>(2147483647i, 32227i, 26958i, i32(-2147483648))), Struct_3(Struct_1(0u, true, vec3<u32>(1u, 4294967295u, 47434u), vec2<bool>(false, false)), true, vec4<i32>(-13496i, i32(-2147483648), 2147483647i, -51063i)), Struct_3(Struct_1(53691u, false, vec3<u32>(2729u, 36882u, 37720u), vec2<bool>(false, false)), false, vec4<i32>(-1i, -22795i, 34579i, i32(-2147483648))), Struct_3(Struct_1(4294967295u, true, vec3<u32>(4294967295u, 79633u, 34879u), vec2<bool>(false, false)), false, vec4<i32>(1i, 831i, -1i, -1i)), Struct_3(Struct_1(4294967295u, false, vec3<u32>(49214u, 47574u, 18426u), vec2<bool>(false, true)), true, vec4<i32>(6462i, 0i, -1i, 2147483647i)), Struct_3(Struct_1(42147u, true, vec3<u32>(4294967295u, 3287u, 1u), vec2<bool>(true, false)), true, vec4<i32>(2147483647i, 28225i, -18766i, i32(-2147483648))), Struct_3(Struct_1(36681u, false, vec3<u32>(8223u, 4294967295u, 17357u), vec2<bool>(true, false)), true, vec4<i32>(2147483647i, 1i, 15723i, 56951i)), Struct_3(Struct_1(0u, true, vec3<u32>(31333u, 44951u, 33656u), vec2<bool>(true, true)), false, vec4<i32>(2147483647i, 2147483647i, 2147483647i, -1i)), Struct_3(Struct_1(27220u, false, vec3<u32>(4294967295u, 0u, 35891u), vec2<bool>(true, false)), true, vec4<i32>(0i, -7210i, -7411i, -1i)), Struct_3(Struct_1(4294967295u, true, vec3<u32>(0u, 8929u, 1u), vec2<bool>(true, true)), false, vec4<i32>(57631i, 17796i, 1i, -7732i)), Struct_3(Struct_1(0u, true, vec3<u32>(4294967295u, 36154u, 4294967295u), vec2<bool>(true, true)), true, vec4<i32>(7575i, 28839i, 2147483647i, -4434i)), Struct_3(Struct_1(1u, true, vec3<u32>(13643u, 79878u, 64223u), vec2<bool>(true, false)), false, vec4<i32>(2147483647i, 62436i, -9810i, -48066i)), Struct_3(Struct_1(41102u, false, vec3<u32>(4294967295u, 53002u, 1u), vec2<bool>(false, false)), true, vec4<i32>(-72492i, 43930i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_1(6474u, true, vec3<u32>(5889u, 34071u, 27426u), vec2<bool>(true, true)), true, vec4<i32>(1i, -1i, 2147483647i, 1i)), Struct_3(Struct_1(4294967295u, true, vec3<u32>(48859u, 16820u, 4294967295u), vec2<bool>(false, false)), true, vec4<i32>(33906i, 0i, -20829i, -3790i)), Struct_3(Struct_1(4294967295u, false, vec3<u32>(134175u, 39642u, 0u), vec2<bool>(false, true)), true, vec4<i32>(-65707i, -1i, -1i, 15064i)), Struct_3(Struct_1(4294967295u, true, vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(false, true)), false, vec4<i32>(0i, i32(-2147483648), 0i, i32(-2147483648))), Struct_3(Struct_1(1u, true, vec3<u32>(53703u, 1u, 10559u), vec2<bool>(true, false)), true, vec4<i32>(95054i, i32(-2147483648), -1i, -22113i)), Struct_3(Struct_1(42151u, true, vec3<u32>(99850u, 65498u, 4294967295u), vec2<bool>(false, false)), false, vec4<i32>(-1i, -1i, i32(-2147483648), i32(-2147483648))), Struct_3(Struct_1(4294967295u, true, vec3<u32>(0u, 59215u, 4294967295u), vec2<bool>(false, false)), false, vec4<i32>(1112i, -1i, 44490i, 2147483647i)), Struct_3(Struct_1(1u, true, vec3<u32>(1u, 4294967295u, 4294967295u), vec2<bool>(true, true)), false, vec4<i32>(-10278i, -26466i, -1i, -42414i)), Struct_3(Struct_1(23358u, true, vec3<u32>(1u, 1u, 1u), vec2<bool>(false, true)), false, vec4<i32>(-51602i, 12171i, 16247i, 23111i)), Struct_3(Struct_1(21545u, false, vec3<u32>(0u, 66496u, 30116u), vec2<bool>(true, true)), true, vec4<i32>(1i, 75490i, 7792i, -1i)), Struct_3(Struct_1(1u, false, vec3<u32>(37975u, 0u, 9203u), vec2<bool>(false, false)), false, vec4<i32>(0i, 0i, -63850i, 1i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_3(Struct_1(abs(u_input.a.x), all(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), ~vec3<u32>(4294967295u, 0u, u_input.a.x) >> ((firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, 34183u)) ^ ~vec3<u32>(u_input.a.x, 4294967295u, 48621u)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(12140u, 6u)]), false, vec4<i32>(_wgslsmith_clamp_i32(~(~u_input.b), select(-20070i, -23297i, false) >> (_wgslsmith_mod_u32(0u, 35869u) % 32u), u_input.c), i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b, u_input.c), vec2<i32>(-41371i, -2772i)), abs(vec2<i32>(u_input.b, u_input.b))), ~u_input.b));
    var var_1 = any(select(vec3<bool>(select(all(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, var_0.b)), true), var_0.a.d.x, select(var_0.a.d.x, true, var_0.a.b)), vec3<bool>(all(select(vec4<bool>(true, true, var_0.a.d.x, true), vec4<bool>(true, false, var_0.b, var_0.a.b), var_0.b)), var_0.a.b, true | var_0.a.d.x), !select(!vec3<bool>(var_0.a.b, false, var_0.a.b), !vec3<bool>(var_0.a.d.x, true, false), !vec3<bool>(var_0.b, false, var_0.a.b))));
    var var_2 = Struct_3(var_0.a, true, ~firstLeadingBit(vec4<i32>(min(-2147483647i, 59317i), countOneBits(-67617i), ~u_input.b, _wgslsmith_div_i32(var_0.c.x, -2147483647i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-298f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-553f - 1206f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_0)))))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<bool>, 6>();
    global2 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_f32(420f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1856f, -628f, false)) * -490f))))));
    global3 = array<Struct_3, 24>();
    global3 = array<Struct_3, 24>();
    return Struct_2(-2147483647i, ~12294u | _wgslsmith_add_u32(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, 120466u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1737f, _wgslsmith_f_op_f32(round(371f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-604f, 659f), vec2<f32>(-1089f, -509f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1422f, 837f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(964f))), _wgslsmith_f_op_f32(634f * _wgslsmith_f_op_f32(f32(-1f) * -1167f)))), Struct_1(0u, false, vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 15676u, 0u), vec3<u32>(1u, 1021u, 0u)), u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 6u)]));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<u32>, arg_3: f32) -> bool {
    var var_0 = func_2();
    let var_1 = vec2<i32>(1i, 30142i);
    var var_2 = global3[_wgslsmith_index_u32(arg_2.x, 24u)];
    var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(118791u), arg_1), 24u)];
    let var_3 = global3[_wgslsmith_index_u32(var_2.a.c.x, 24u)];
    return var_3.a.b;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    global0 = array<vec2<bool>, 6>();
    let var_0 = Struct_3(func_2().d, false, _wgslsmith_mult_vec4_i32(abs(-vec4<i32>(u_input.c, u_input.b, 48320i, arg_3.c.x)), firstTrailingBit(arg_3.c)));
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), min(vec4<u32>(1u, 32990u, 1u, 29934u) ^ vec4<u32>(arg_3.a.c.x, u_input.a.x, var_0.a.a, var_1), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.a.c.x, 0u, var_1), vec4<u32>(111117u, arg_3.a.a, 4294967295u, 1u))))), ~(~reverseBits(vec4<u32>(0u, var_1, var_0.a.a, arg_3.a.c.x))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_3.a.c.x, var_0.a.a, var_0.a.a, 18949u) << (vec4<u32>(0u, 1u, 1u, 4294967295u) % vec4<u32>(32u)), abs(max(vec4<u32>(u_input.a.x, u_input.a.x, arg_3.a.a, arg_3.a.a), vec4<u32>(var_1, 0u, arg_3.a.a, 4294967295u)))));
    let var_3 = u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 29926u;
    var var_1 = _wgslsmith_add_u32(~(~(~u_input.a.x)), u_input.a.x);
    global1 = 21047u << (abs(u_input.a.x) % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, true, vec4<bool>(true, true, !all(vec3<bool>(true, false, false)), !any(vec3<bool>(true, true, false))), Struct_3(global2[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 31u)], func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, 956f, 585f) + vec3<f32>(-1000f, 299f, -781f)), firstTrailingBit(35604u), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), 1f), max(-vec4<i32>(9134i, u_input.c, u_input.b, u_input.c), vec4<i32>(u_input.c, u_input.b, 6487i, u_input.b) << (vec4<u32>(43073u, u_input.a.x, u_input.a.x, 20178u) % vec4<u32>(32u)))))));
    var_0 = 1u;
    var var_3 = vec3<bool>(true, true, true);
    let var_4 = _wgslsmith_sub_i32(_wgslsmith_add_i32(~_wgslsmith_mod_i32(1i, 16776i), u_input.b >> (~func_2().d.c.x % 32u)), 16268i);
    let var_5 = ~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(select(2147483647i, -1i, true), -2147483647i, u_input.c, ~(-1i)), max(-vec4<i32>(-1788i, u_input.b, u_input.b, u_input.c), vec4<i32>(-1i, u_input.b, var_4, 101407i))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(143f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1666f * -727f)))), abs(countOneBits(vec4<i32>(~var_5, _wgslsmith_dot_vec2_i32(vec2<i32>(-5014i, -4711i), vec2<i32>(var_4, var_4)), u_input.c, countOneBits(-40250i)))));
}

