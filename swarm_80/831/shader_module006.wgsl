struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(112754u, vec4<i32>(55244i, 9983i, 0i, 1i)), Struct_1(13423u, vec4<i32>(-20876i, 0i, 33146i, 1i)), Struct_1(1u, vec4<i32>(37815i, -7157i, 0i, -1i)), Struct_1(15527u, vec4<i32>(0i, -3502i, i32(-2147483648), 56i)), Struct_1(46474u, vec4<i32>(-3875i, 2147483647i, -13376i, 2147483647i)), Struct_1(102042u, vec4<i32>(1i, -19688i, 2147483647i, 0i)), Struct_1(55056u, vec4<i32>(-5343i, 31i, 1i, 1i)), Struct_1(49914u, vec4<i32>(-33581i, 1i, 0i, -13097i)), Struct_1(30688u, vec4<i32>(-13217i, 1i, 42903i, i32(-2147483648))), Struct_1(29218u, vec4<i32>(-27213i, 1i, 15163i, i32(-2147483648))), Struct_1(0u, vec4<i32>(2147483647i, 355i, -1i, -33784i)), Struct_1(0u, vec4<i32>(0i, i32(-2147483648), 19423i, 2147483647i)), Struct_1(22820u, vec4<i32>(205i, 0i, 3219i, 19042i)), Struct_1(11931u, vec4<i32>(-55114i, 47552i, i32(-2147483648), -63280i)), Struct_1(30944u, vec4<i32>(-1i, 30219i, -21201i, 2147483647i)), Struct_1(373u, vec4<i32>(68326i, 44868i, 17965i, -53592i)), Struct_1(0u, vec4<i32>(0i, 0i, 2147483647i, 1i)), Struct_1(22082u, vec4<i32>(-68895i, -1i, 1i, -65267i)), Struct_1(54050u, vec4<i32>(-39101i, -32649i, -13751i, 4516i)), Struct_1(5322u, vec4<i32>(-39825i, -1i, i32(-2147483648), -58356i)), Struct_1(0u, vec4<i32>(0i, 9051i, 38338i, -16371i)), Struct_1(8779u, vec4<i32>(1i, -52725i, 2147483647i, -10469i)), Struct_1(4294967295u, vec4<i32>(4908i, 32737i, 0i, 48907i)), Struct_1(1u, vec4<i32>(0i, 1i, i32(-2147483648), 2147483647i)), Struct_1(4294967295u, vec4<i32>(-14924i, -32836i, 0i, 1i)), Struct_1(17371u, vec4<i32>(-1i, 2147483647i, i32(-2147483648), -60851i)), Struct_1(0u, vec4<i32>(2147483647i, 0i, -6750i, 1i)), Struct_1(43931u, vec4<i32>(-11892i, 31827i, 31010i, 27023i)), Struct_1(4294967295u, vec4<i32>(-9197i, 1i, -7473i, 2147483647i)), Struct_1(4294967295u, vec4<i32>(8976i, -11270i, 78974i, 6754i)), Struct_1(4294967295u, vec4<i32>(10741i, 1i, 5610i, i32(-2147483648))), Struct_1(30270u, vec4<i32>(0i, 1i, 9186i, -59572i)));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1i, -22391i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(13038i, -1i), vec2<i32>(-7882i, 2147483647i), vec2<i32>(0i, -35662i), vec2<i32>(622i, 0i), vec2<i32>(15607i, -7461i), vec2<i32>(34689i, 14455i), vec2<i32>(6999i, -64689i), vec2<i32>(8197i, i32(-2147483648)), vec2<i32>(1i, 2563i), vec2<i32>(39698i, 15180i), vec2<i32>(i32(-2147483648), -16235i), vec2<i32>(-73098i, -2395i), vec2<i32>(-1i, -15982i), vec2<i32>(52132i, 1i), vec2<i32>(-10136i, -27880i), vec2<i32>(-11257i, 0i), vec2<i32>(-1i, 4567i), vec2<i32>(27666i, 2147483647i), vec2<i32>(-8812i, i32(-2147483648)), vec2<i32>(-16020i, -37043i), vec2<i32>(56806i, -1i), vec2<i32>(8240i, -19398i), vec2<i32>(150i, i32(-2147483648)), vec2<i32>(83734i, 21608i), vec2<i32>(-22844i, 1940i), vec2<i32>(-1i, 12292i), vec2<i32>(0i, 4458i), vec2<i32>(-1i, 0i), vec2<i32>(i32(-2147483648), -53347i));

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<vec4<u32>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(max(firstTrailingBit(~(~1u)), 23969u), 32u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f - 1296f)), 934f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1664f)))))));
    global1 = array<vec2<i32>, 32>();
    global1 = array<vec2<i32>, 32>();
    global2 = array<Struct_2, 11>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-565f, var_1.x))), 571f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * -382f)) + 1f), -655f)));
}

fn func_2() -> vec3<u32> {
    var var_0 = ~countOneBits(u_input.b.x);
    global2 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-32880i, -35602i, 40726i, 0i) >> (global3[_wgslsmith_index_u32(u_input.b.x, 26u)] % vec4<u32>(32u)), true)) - -1000f), -349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(242f)))));
    var var_2 = Struct_1(_wgslsmith_div_u32(abs(~11299u) | u_input.a.x, ~u_input.b.x), ~vec4<i32>(select(1i, 2147483647i, true), 1i, -firstTrailingBit(14229i), min(1i, _wgslsmith_add_i32(0i, 3125i))));
    let var_3 = global0[_wgslsmith_index_u32(abs(u_input.b.x & var_2.a), 32u)];
    return u_input.b;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = vec2<bool>(arg_3.a.x, true);
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, ~func_2() & func_2(), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), u_input.a);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_1.x, ~abs(0u) >> (~_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(var_1.x, 26628u), ~u_input.a.x) % 32u)), 32u)];
    let var_3 = Struct_2(select(arg_3.a, !(!(!vec3<bool>(true, true, var_0.x))), vec3<bool>(false, var_0.x, false)));
    let var_4 = any(var_3.a.yy);
    return select(select(select(select(vec4<bool>(arg_1, var_0.x, var_4, false), select(vec4<bool>(true, arg_1, var_4, var_3.a.x), vec4<bool>(false, arg_3.a.x, false, true), vec4<bool>(false, arg_3.a.x, arg_0, arg_0)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, var_4, var_4), var_4)), vec4<bool>(true, true, true, true), true), vec4<bool>(var_3.a.x, select(all(vec3<bool>(arg_3.a.x, false, arg_0)), !var_4, any(vec3<bool>(false, false, true))), false, true), vec4<bool>(var_3.a.x, var_1.x <= ~78294u, !(true | var_0.x), arg_1)), !vec4<bool>(arg_1, select(true, false, arg_0), var_3.a.x, true), arg_3.a.x);
}

fn func_4(arg_0: bool) -> vec4<u32> {
    let var_0 = vec4<bool>(true, true, !arg_0, any(!select(vec3<bool>(false, arg_0, true), func_1(true, arg_0, global1[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(23914u, 11u)]).xzw, vec3<bool>(arg_0, arg_0, true))));
    let var_1 = any(!(!var_0));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(-1522f)), _wgslsmith_f_op_f32(-1382f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-813f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-545f)), _wgslsmith_f_op_f32(f32(-1f) * -743f)))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(178f - var_2.x) - -1225f))) * _wgslsmith_f_op_f32(var_2.x + var_2.x)));
    var var_4 = ~(global3[_wgslsmith_index_u32(44976u, 26u)] << (~(~_wgslsmith_mod_vec4_u32(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 26u)])) % vec4<u32>(32u)));
    return ~abs(abs(vec4<u32>(1u, 4294967295u, ~u_input.a.x, func_2().x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x), 1u, ~83430u | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a.x, u_input.b.x), vec4<u32>(4294967295u, 18146u, 48245u, 4294967295u)))), u_input.b), 11u)];
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~15111u << (0u % 32u), u_input.b.x, (9528u >> (u_input.b.x % 32u)) >> (firstTrailingBit(u_input.c) % 32u), ~(u_input.a.x & u_input.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, _wgslsmith_sub_u32(96304u, u_input.a.x), _wgslsmith_mod_u32(u_input.c, 104050u), 4294967295u), ~global3[_wgslsmith_index_u32(31079u, 26u)] ^ vec4<u32>(u_input.c, 4294967295u, u_input.b.x, u_input.b.x)), 26u)], global3[_wgslsmith_index_u32(~countOneBits(~u_input.a.x), 26u)]) & func_4(all(select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, false, var_0.a.x, false), var_0.a.x), func_1(true, var_0.a.x, vec2<i32>(1i, -41450i), global2[_wgslsmith_index_u32(u_input.a.x, 11u)]), true | var_0.a.x)));
    var var_2 = ~u_input.a;
    let var_3 = -2147483647i;
    var_0 = global2[_wgslsmith_index_u32(func_4(var_0.a.x).x, 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(417f, 497f)) * _wgslsmith_f_op_f32(select(984f, 1698f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1170f) + _wgslsmith_div_f32(-2182f, -577f)))), var_1.x, 494f, -374f, 0u);
}

