struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec3<u32> = vec3<u32>(86481u, 1u, 146u);

var<private> global2: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 1i, -36641i), vec3<i32>(1i, 0i, 0i), vec3<i32>(-17637i, 34364i, 1i), vec3<i32>(-6723i, 0i, -18310i), vec3<i32>(-5870i, -9967i, 42379i), vec3<i32>(0i, -15883i, i32(-2147483648)), vec3<i32>(0i, 9531i, -14488i), vec3<i32>(-35503i, 14556i, 0i), vec3<i32>(1i, 1i, 0i), vec3<i32>(49961i, 1i, -1i), vec3<i32>(0i, 0i, -7542i), vec3<i32>(0i, -34412i, 5734i), vec3<i32>(2147483647i, 7147i, -2902i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(0i, -11523i, -12027i), vec3<i32>(-45024i, i32(-2147483648), 1i), vec3<i32>(0i, -787i, -46343i), vec3<i32>(1i, -17059i, 7338i), vec3<i32>(79006i, -1i, 2147483647i), vec3<i32>(2147483647i, -9317i, -40559i), vec3<i32>(-18504i, -46309i, 3467i), vec3<i32>(-1i, 1443i, -12923i), vec3<i32>(-37546i, 0i, 0i));

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = ~(-2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), arg_1.c.x))));
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.b.x, abs(arg_1.a)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 29127i), u_input.b.ww)), _wgslsmith_clamp_i32(arg_2.e.a, u_input.b.x, arg_1.a) ^ arg_3.a.c.a), abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.a, var_0, var_0), -vec3<i32>(u_input.b.x, -2147483647i, 5835i)))), select(select(!(!arg_3.a.c.b), select(arg_2.e.b, !vec2<bool>(arg_1.b.x, false), select(arg_1.b, vec2<bool>(arg_3.a.b.x, arg_1.b.x), false)), arg_1.b), vec2<bool>(!all(vec4<bool>(false, false, false, arg_2.e.b.x)), arg_3.a.d.x), !vec2<bool>(arg_2.b.x, all(arg_3.a.d))), Struct_1(min(max(_wgslsmith_sub_i32(-22506i, u_input.b.x), ~0i), _wgslsmith_sub_i32(i32(-1i) * -15509i, abs(1i))), !arg_3.a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1926f, 221f, var_1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -1636f), arg_1.c, arg_2.e.b.x))))), vec3<bool>(any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.b.x, true, arg_2.e.b.x, true), vec4<bool>(false, true, arg_1.b.x, arg_1.b.x)), !vec4<bool>(true, arg_1.b.x, arg_3.a.b.x, arg_1.b.x), false)), all(arg_3.a.d), true));
    var var_3 = vec3<i32>(u_input.b.x, -min(~arg_2.d.x, var_0 | u_input.b.x) & _wgslsmith_add_i32(select(-2837i, ~var_0, false), 53457i), ~_wgslsmith_sub_i32(35437i, i32(-1i) * -arg_3.a.a.x));
    var var_4 = select(arg_1.b, arg_2.b, any(select(select(!var_2.d, vec3<bool>(arg_1.b.x, false, arg_1.b.x), arg_3.a.d), !arg_3.a.d, select(vec3<bool>(false, arg_3.a.c.b.x, var_2.b.x), !vec3<bool>(arg_2.e.b.x, arg_3.a.d.x, true), true))));
    return _wgslsmith_f_op_f32(max(arg_2.e.c.x, arg_1.c.x));
}

fn func_2() -> f32 {
    var var_0 = vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), false);
    let var_1 = global1.x;
    global0 = array<Struct_1, 29>();
    var_0 = !(!(!vec3<bool>(false, !var_0.x, var_0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_1(-1i, var_0.yz, vec3<f32>(-895f, -285f, 1121f)), Struct_4(u_input.c, vec2<bool>(true, var_0.x), global1.x, vec4<i32>(-53899i, u_input.b.x, 2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), Struct_3(Struct_2(global2[_wgslsmith_index_u32(u_input.d, 24u)], var_0.yz, Struct_1(-1i, var_0.yy, vec3<f32>(-1347f, -963f, -1212f)), vec3<bool>(var_0.x, false, var_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(423f + -553f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(676f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.x, Struct_1(u_input.b.x, vec2<bool>(var_0.x, true), vec3<f32>(-1866f, 523f, 1148f)), Struct_4(u_input.c, var_0.xz, global1.x, vec4<i32>(0i, 0i, 51859i, u_input.b.x), Struct_1(u_input.b.x, var_0.yy, vec3<f32>(418f, 1476f, 443f))), Struct_3(Struct_2(vec3<i32>(1797i, u_input.b.x, u_input.b.x), var_0.yz, Struct_1(u_input.b.x, var_0.yy, vec3<f32>(1964f, -1008f, 773f)), vec3<bool>(true, false, var_0.x))))) * _wgslsmith_f_op_f32(abs(-309f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(2065f)), -438f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1644f, 522f)))))))));
    return -172f;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global2 = array<vec3<i32>, 24>();
    let var_1 = vec4<bool>(true, select(all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), true, (~u_input.b.x > countOneBits(-2847i)) | true), true | select(true, global1.x <= 4294967295u, all(vec4<bool>(true, true, true, false))), (_wgslsmith_f_op_f32(578f - _wgslsmith_f_op_f32(trunc(-990f))) != var_0) | ((select(2147483647i, 55584i, false) > u_input.b.x) != true));
    global2 = array<vec3<i32>, 24>();
    let var_2 = ~_wgslsmith_sub_u32(u_input.c.x, global1.x);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(global1.x, global0[_wgslsmith_index_u32(1u, 29u)], Struct_4(~vec4<u32>(u_input.d, u_input.c.x, var_2, global1.x), !(!var_1.wx), ~0u, max(~vec4<i32>(2147483647i, -2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(0i, -23875i, -2147483647i, -17894i)), global0[_wgslsmith_index_u32(1u, 29u)]), Struct_3(Struct_2(firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 24u)]), var_1.yz, global0[_wgslsmith_index_u32(~var_2, 29u)], vec3<bool>(true, var_1.x, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-586f, -586f), _wgslsmith_f_op_f32(func_1())))))));
    let var_0 = max(_wgslsmith_add_u32(min(max(global1.x, 4294967295u | u_input.d), u_input.a.x), ~_wgslsmith_sub_u32(abs(u_input.c.x), 32296u)), select(max(~u_input.c.x, abs(firstLeadingBit(0u))), 0u, all(vec3<bool>(any(vec3<bool>(false, false, true)), true, u_input.a.x >= global1.x))));
    let var_1 = all(vec3<bool>(true, any(vec2<bool>(u_input.b.x <= u_input.b.x, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    let var_2 = u_input.a;
    global3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(837f, _wgslsmith_f_op_f32(select(-166f, _wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(floor(-613f)), true)), var_1)))), 974f));
    global2 = array<vec3<i32>, 24>();
    global2 = array<vec3<i32>, 24>();
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_0, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(39285u, global1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 6988u), var_2.xy)), _wgslsmith_clamp_vec2_u32(var_2.yx, vec2<u32>(8653u, var_2.x), global1.xz) | firstLeadingBit(global1.zz))), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_3.c), u_input.a.x, _wgslsmith_f_op_f32(select(var_3.c.x, -637f, false)), -188f);
}

