struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 18>;

var<private> global1: vec2<i32>;

var<private> global2: f32;

var<private> global3: vec4<i32> = vec4<i32>(21323i, 0i, 1i, -42939i);

var<private> global4: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(6680i, -6281i, 19215i, 59196i), vec4<i32>(65799i, 1425i, 1i, 446i), vec4<i32>(10640i, 0i, -13309i, -8180i), vec4<i32>(-13770i, -44807i, i32(-2147483648), -34182i), vec4<i32>(-1i, -19673i, -17905i, 1i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 0i, 34616i, i32(-2147483648)), vec4<i32>(-1i, 0i, 2147483647i, -33352i), vec4<i32>(2147483647i, 24570i, 32798i, 25723i), vec4<i32>(-1225i, -1i, 75462i, -17824i), vec4<i32>(-1i, 2147483647i, -14466i, 2147483647i), vec4<i32>(2147483647i, -7661i, 16934i, 11198i), vec4<i32>(35148i, 0i, -1i, 17095i), vec4<i32>(16302i, -29362i, 16192i, -22563i), vec4<i32>(0i, 2147483647i, 42291i, 0i), vec4<i32>(-22691i, -1i, 1i, 10713i), vec4<i32>(-50602i, 1i, 78234i, 13824i), vec4<i32>(-1i, 1i, 62871i, 3326i), vec4<i32>(23820i, i32(-2147483648), -49987i, 1600i), vec4<i32>(2418i, -21070i, -24582i, i32(-2147483648)), vec4<i32>(-52148i, -1i, 4617i, 0i), vec4<i32>(-1i, 38419i, i32(-2147483648), 15519i), vec4<i32>(0i, 1i, -66231i, -48139i), vec4<i32>(-1i, 21361i, -25295i, 0i), vec4<i32>(-56753i, 1i, 0i, -1i), vec4<i32>(i32(-2147483648), 21499i, 2147483647i, 73983i), vec4<i32>(-31562i, i32(-2147483648), -41747i, 0i), vec4<i32>(-12675i, -3498i, 0i, 2147483647i), vec4<i32>(-50884i, 2147483647i, -10112i, -48577i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec2<f32> {
    global4 = array<vec4<i32>, 29>();
    var var_0 = -_wgslsmith_dot_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.b, u_input.b)), ~vec2<i32>(global3.x, 1i)) <= global1.x;
    var var_1 = true;
    var_1 = false;
    var var_2 = _wgslsmith_sub_i32(global1.x, _wgslsmith_add_i32(~max(global1.x, u_input.a & u_input.a), 2147483647i));
    return vec2<f32>(_wgslsmith_f_op_f32(-1386f + 1000f), _wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1652f, -1140f))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> bool {
    global0 = array<vec2<bool>, 18>();
    var var_0 = arg_3.x;
    var var_1 = ~_wgslsmith_dot_vec4_u32(countOneBits(abs(firstLeadingBit(vec4<u32>(arg_1.b, 0u, 27416u, arg_1.c.x)))), ~select(abs(vec4<u32>(arg_1.b, arg_0.c.x, arg_1.c.x, arg_0.b)), ~vec4<u32>(4294967295u, 0u, 1u, 0u), !vec4<bool>(false, true, arg_3.x, false)));
    let var_2 = arg_0.d.x;
    global1 = arg_0.d.zw;
    return arg_2 | !any(!(!vec3<bool>(true, arg_2, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = arg_0.x;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1757f, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x) - arg_0)) + vec2<f32>(587f, -1000f)), select(select(vec2<bool>(true, true), !global0[_wgslsmith_index_u32(arg_2.b, 18u)], true), vec2<bool>(all(vec4<bool>(true, true, false, false)), any(global0[_wgslsmith_index_u32(arg_1, 18u)])), !func_3(arg_2, Struct_1(vec3<f32>(1000f, -464f, arg_0.x), arg_1, arg_2.c, vec4<i32>(u_input.a, u_input.a, -1i, 1i), u_input.b.x), false, vec2<bool>(true, false))))) - _wgslsmith_div_vec2_f32(arg_0, vec2<f32>(_wgslsmith_f_op_f32(min(-556f, _wgslsmith_f_op_f32(-2301f - arg_0.x))), _wgslsmith_f_op_f32(396f * 606f))));
    global3 = global4[_wgslsmith_index_u32(arg_2.b, 29u)];
    global2 = _wgslsmith_f_op_f32(max(825f, -269f));
    let var_1 = max(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(37600u, 0u), select(vec2<u32>(21186u, 0u), arg_2.c, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1, arg_1), 18u)]), select(abs(arg_2.c), ~arg_2.c, global0[_wgslsmith_index_u32(arg_2.b << (arg_2.c.x % 32u), 18u)])), _wgslsmith_add_vec2_u32(max(vec2<u32>(arg_1, 1170u) >> ((vec2<u32>(14306u, arg_1) << (arg_2.c % vec2<u32>(32u))) % vec2<u32>(32u)), arg_2.c), _wgslsmith_div_vec2_u32(countOneBits(~arg_2.c), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1, arg_2.c.x), vec2<u32>(arg_1, arg_2.c.x)))));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    var var_0 = ~(_wgslsmith_div_vec4_u32(~select(vec4<u32>(13088u, arg_2.b, 1395u, arg_2.c.x), vec4<u32>(arg_2.b, arg_2.c.x, arg_2.b, arg_2.b), vec4<bool>(false, true, false, false)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 38060u, 0u, arg_2.b), vec4<u32>(13386u, arg_2.c.x, 28007u, arg_2.c.x)))) >> (reverseBits(~vec4<u32>(arg_2.b, 4294967295u, arg_2.b, arg_2.c.x)) % vec4<u32>(32u)));
    let var_1 = select(arg_3.xy, global0[_wgslsmith_index_u32(arg_2.c.x, 18u)], vec2<bool>(all(arg_3.zz), !(arg_3.x & arg_3.x)));
    var var_2 = vec3<bool>(!(true || any(arg_3)), _wgslsmith_clamp_u32(var_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.yzy, vec3<u32>(14138u, 27142u, arg_2.c.x)), reverseBits(var_0.yzw)), 16392u) < func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, 135f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1115f) * vec2<f32>(-1000f, arg_0))), ~20021u, arg_2), false);
    global1 = max(~global3.yy, countOneBits(global3.zz));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, arg_0, _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_0 + -911f))), -1696f)), vec4<f32>(-935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-850f, -205f, true)) - 483f), arg_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)))));
    return 583f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1075f - -656f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(734f)), _wgslsmith_f_op_f32(-756f * -437f), _wgslsmith_f_op_f32(f32(-1f) * -681f)) + vec3<f32>(-214f, _wgslsmith_f_op_f32(f32(-1f) * -981f), -491f)), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(559f, -1014f) * vec2<f32>(1150f, -248f)), 1u, Struct_1(vec3<f32>(187f, -197f, -788f), 0u, vec2<u32>(1u, 1u), vec4<i32>(global1.x, -2147483647i, global3.x, global1.x), global1.x)) | min(4294967295u, ~4819u), vec2<u32>(1u, 1u), vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(global3.xxy), ~vec3<i32>(0i, global3.x, global1.x)), -2147483647i, _wgslsmith_add_i32(global1.x, select(u_input.a, global3.x, false)), global1.x), global3.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true), vec3<bool>(false, true, true)))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -752f);
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(392f, _wgslsmith_f_op_f32(round(-2001f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 1390f, true)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1193f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2042f), _wgslsmith_f_op_f32(max(1000f, -311f)), true)))), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 64770u), ~18674u), 1u)), vec2<u32>(1u, 1u), vec4<i32>(~global1.x, _wgslsmith_dot_vec2_i32(global3.zw, firstLeadingBit(-vec2<i32>(global3.x, 7765i))), countOneBits(global1.x), global1.x), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 2147483647i), global3.zx >> (vec2<u32>(0u, 32196u) % vec2<u32>(32u))), u_input.b.x));
    var var_1 = Struct_1(vec3<f32>(329f, 659f, _wgslsmith_f_op_f32(round(958f))), 122275u, firstLeadingBit(_wgslsmith_mod_vec2_u32(firstLeadingBit(abs(var_0.c)), ~var_0.c)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, countOneBits(~var_0.c.x)), 29u)], var_0.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, 1400f, -870f), var_0.a, vec3<bool>(false, true, true))))), _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(1388f, -304f, var_1.a.x)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.a)) * vec3<f32>(-156f, var_0.a.x, var_0.a.x)))))));
    global4 = array<vec4<i32>, 29>();
    var var_3 = select(select(select(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), 25430u == var_0.c.x, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false)), vec4<bool>(true, select(false, false, true), -1796f > var_0.a.x, var_1.b <= var_1.c.x), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), true)), !(any(vec4<bool>(false, true, false, false)) && true)), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, true, false)), var_0.b != 1u, false, true)), vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), any(global0[_wgslsmith_index_u32(abs(var_1.c.x), 18u)]), abs(var_0.d.x) < u_input.b.x), all(vec3<bool>(true, true, true))), true);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_0.a.x, var_1.a.x), _wgslsmith_f_op_vec3_f32(-var_0.a))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.a))))), _wgslsmith_add_u32(var_1.c.x, 4294967295u), ~firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(var_1.b, var_1.c.x), 5940u)), vec4<i32>(-13790i, u_input.b.x & (firstLeadingBit(var_0.d.x) | firstLeadingBit(global3.x)), -38459i, u_input.b.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mod_vec3_i32(var_0.d.zww, var_1.d.wzw)) | min(-global3.wyx, vec3<i32>(1i, var_0.d.x, -1i) & var_0.d.wxw), abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.d.xzz, global3.yyx), -global3.wyz))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec4_i32((vec4<i32>(u_input.b.x, var_1.e, 2147483647i, var_0.d.x) ^ var_0.d) ^ var_0.d, abs(vec4<i32>(-1i, -2147483647i, var_0.e, -2147483647i)) | global4[_wgslsmith_index_u32(29745u, 29u)]), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, u_input.a, var_0.d.x, -24908i), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 29u)]), countOneBits(firstTrailingBit(var_1.d)), ~vec4<i32>(0i, global1.x, global1.x, 1i)), true), ~(~3410u), ~max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.b, var_0.c.x), vec3<u32>(55347u, var_0.b, 25505u), vec3<u32>(0u, var_0.c.x, 4294967295u)), abs(~vec3<u32>(var_1.b, 89338u, var_0.c.x))), max(vec3<u32>(var_0.c.x, var_1.c.x, _wgslsmith_clamp_u32(abs(var_0.c.x), ~var_0.c.x, _wgslsmith_add_u32(var_1.c.x, var_1.c.x))), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(var_0.b, 32019u, var_0.b), vec3<u32>(4294967295u, var_1.b, 0u), var_3.wwy), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.c.x, var_1.c.x, 4294967295u), firstLeadingBit(vec3<u32>(var_0.b, var_0.c.x, var_0.c.x)), max(vec3<u32>(var_0.c.x, var_1.b, var_1.c.x), vec3<u32>(0u, 0u, var_0.c.x))))), var_0.a.x);
}

