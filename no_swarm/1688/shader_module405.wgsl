struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(-32161i, 2147483647i), vec2<i32>(11197i, -26179i), vec2<i32>(12356i, -27171i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-10281i, 0i), vec2<i32>(-21392i, 1i), vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(15736i, -52280i), vec2<i32>(-19084i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, 39947i), vec2<i32>(2147483647i, 26505i), vec2<i32>(1i, 1i), vec2<i32>(-2601i, -1i), vec2<i32>(-9012i, -36556i), vec2<i32>(2147483647i, 26612i), vec2<i32>(29511i, 0i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 13887i), vec2<i32>(2147483647i, 7270i));

var<private> global1: array<i32, 16> = array<i32, 16>(18938i, 2147483647i, 11628i, i32(-2147483648), -5515i, 0i, 2147483647i, 1i, i32(-2147483648), 0i, 10930i, 2147483647i, 1i, 27256i, 23394i, 2147483647i);

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-11297i, i32(-2147483648)), vec2<i32>(-27708i, -10625i), vec2<i32>(-6164i, 0i), vec2<i32>(40467i, 47269i), vec2<i32>(10639i, -13704i), vec2<i32>(-48983i, 2147483647i), vec2<i32>(19940i, i32(-2147483648)), vec2<i32>(-64716i, 2147483647i), vec2<i32>(-35458i, -8810i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -7554i), vec2<i32>(1i, 1i), vec2<i32>(-1i, -10238i), vec2<i32>(-16408i, 50560i));

var<private> global3: Struct_3 = Struct_3(12177i, Struct_2(vec3<i32>(-1i, 8930i, -6806i), i32(-2147483648)), -208f, Struct_2(vec3<i32>(34452i, 1i, -1i), 1581i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    global0 = array<vec2<i32>, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-192f, global3.c, 148f), vec3<f32>(global3.c, 1889f, -1790f), false))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(235f, -1234f, global3.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c, 1108f, global3.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.c, 1642f, -344f) - vec3<f32>(global3.c, global3.c, 913f))), _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(u_input.a, 14u)], vec2<i32>(0i, -2147483647i)) < global1[_wgslsmith_index_u32(min(0u, u_input.a), 16u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c, 108f, -1244f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global3.c, global3.c))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.c, global3.c, global3.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global3.c, global3.c) * vec3<f32>(global3.c, 344f, global3.c)), false))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1304f, global3.c))), global3.c), any(vec4<bool>(true, true, true, true))))));
    let var_1 = _wgslsmith_div_i32(-abs(_wgslsmith_add_i32(global3.a, -global3.d.a.x)), ~_wgslsmith_clamp_i32(countOneBits(7780i ^ global1[_wgslsmith_index_u32(u_input.a, 16u)]), _wgslsmith_add_i32(1i, global3.b.b), -global3.a));
    global3 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(~abs(-1i), -44878i), global2[_wgslsmith_index_u32(u_input.a, 14u)] >> (_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(36805u, u_input.a)), vec2<u32>(0u, 46427u) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), Struct_2(-global3.d.a, select(firstLeadingBit(-46001i), ~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 16u)]), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.c))), Struct_2(-global3.d.a, select(-1i, ~global3.a, any(vec2<bool>(true, true)))));
    let var_2 = select(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, var_1), global1[_wgslsmith_index_u32(u_input.a, 16u)]), -u_input.b ^ global1[_wgslsmith_index_u32(select(58597u, 1u, true), 16u)], abs(u_input.b), abs(~8477i)), min(vec4<i32>(-var_1, 1i, -1i, _wgslsmith_mod_i32(1i, -2147483647i)) & (-vec4<i32>(global1[_wgslsmith_index_u32(22780u, 16u)], global3.b.a.x, u_input.c, global3.a) >> (min(vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), vec4<u32>(43887u, 1u, 60130u, u_input.a)) % vec4<u32>(32u))), vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(global3.d.a.yz, global0[_wgslsmith_index_u32(u_input.a, 24u)])), u_input.b, min(min(11088i, 1i), -1i), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.c))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(184f, -962f))));
    return global3.d.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_3 {
    global0 = array<vec2<i32>, 24>();
    global2 = array<vec2<i32>, 14>();
    var var_0 = countOneBits(~14985u);
    global3 = Struct_3(-23981i, global3.d, _wgslsmith_f_op_f32(-global3.c), global3.d);
    global0 = array<vec2<i32>, 24>();
    return Struct_3(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-2147483647i), -16546i, -func_3()), 2147483647i), global3.b, arg_0.x, Struct_2(-abs(global3.d.a) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(47320u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1601u, u_input.a)) % vec3<u32>(32u)), u_input.b));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: i32) -> vec3<bool> {
    global1 = array<i32, 16>();
    let var_0 = Struct_3(global3.b.a.x, arg_2, _wgslsmith_f_op_f32(round(arg_0.c)), func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.c)) - global3.c), _wgslsmith_f_op_f32(global3.c * global3.c)), -(1i ^ func_2(vec2<f32>(global3.c, 803f), u_input.c).b.b)).d);
    var var_1 = !(arg_1.x | (~_wgslsmith_mult_u32(32740u, u_input.a) > 11766u));
    global2 = array<vec2<i32>, 14>();
    var var_2 = Struct_2(-(~var_0.b.a), max(-5665i, countOneBits(var_0.a)));
    return vec3<bool>(arg_1.x, !(!(!arg_1.x)), !arg_1.x);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<bool>(!any(func_4(func_2(vec2<f32>(-643f, 1505f), 32408i), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), global3.b, global3.a)), all(vec2<bool>(any(vec3<bool>(false, true, true)), all(vec2<bool>(false, true)))) && (_wgslsmith_f_op_f32(233f - global3.c) > -1440f), -u_input.b < (i32(-1i) * -2147483647i));
    let var_1 = ~u_input.a;
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.c, global3.c)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.c, global3.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, global3.c))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c, global3.c)))))), _wgslsmith_div_i32(u_input.b, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a, 16u)], -18171i)));
    global2 = array<vec2<i32>, 14>();
    var var_3 = var_2.d;
    return Struct_1(~_wgslsmith_div_vec4_i32(-vec4<i32>(global3.a, u_input.c, -18478i, global1[_wgslsmith_index_u32(46020u, 16u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.a, 1i, -11134i, -1i), vec4<i32>(var_3.a.x, -2147483647i, 1i, 0i), vec4<i32>(global3.a, 4927i, 1i, 0i))) ^ ~vec4<i32>(select(34822i, 2147483647i, false), var_3.b, _wgslsmith_clamp_i32(-13742i, var_2.d.a.x, 0i), var_2.b.b), all(vec4<bool>(true, var_0.x | true, _wgslsmith_f_op_f32(round(var_2.c)) <= _wgslsmith_f_op_f32(exp2(var_2.c)), !var_0.x | (true && var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 14>();
    let var_0 = func_1();
    var var_1 = vec2<bool>(any(!select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.b, false, true), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.b, false)), false)), var_0.b);
    let var_2 = Struct_3(_wgslsmith_mod_i32(global3.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, global3.d.a.x, -2147483647i) >> (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), var_0.a.xyy ^ global3.d.a)) >> (_wgslsmith_div_u32(min(154473u, 66112u), ~36785u) % 32u), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, global3.c) - vec2<f32>(global3.c, global3.c)))), vec2<f32>(-992f, _wgslsmith_f_op_f32(f32(-1f) * -727f)), select(vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x), 53587u != u_input.a))), ~min(0i, 0i)).d, global3.c, Struct_2(vec3<i32>(19246i, _wgslsmith_mod_i32(1i, var_0.a.x), _wgslsmith_mod_i32(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.a, 16u)]), ~17917i)), 62789i));
    var var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec2_u32((vec2<u32>(u_input.a, u_input.a) | vec2<u32>(4294967295u, u_input.a)) | ~vec2<u32>(u_input.a, 25386u), vec2<u32>(_wgslsmith_add_u32(u_input.a, 906u), u_input.a)), vec3<u32>(36333u, u_input.a, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 0u, 20766u, u_input.a), ~vec4<u32>(67003u, 85049u, u_input.a, u_input.a)), ~(vec4<u32>(u_input.a, 4294967295u, 54028u, 1u) << (vec4<u32>(u_input.a, u_input.a, 37660u, 1577u) % vec4<u32>(32u))))), _wgslsmith_clamp_vec2_u32(~abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(15145u, 0u))), vec2<u32>(~(~38199u), 0u), ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(43386u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 21176u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1463f + var_2.c))));
}

