struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(55784u, 21145u, 1011u, 4167u, 62434u, 4294967295u, 1u, 5481u, 0u, 4294967295u, 69003u, 0u, 86102u, 30798u, 0u, 71798u, 7463u, 1u, 13013u, 4294967295u, 0u, 0u, 4481u, 81591u);

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    global1 = Struct_4(global1.a, !(!all(vec2<bool>(true, global1.d.c))), global1.c << (vec4<u32>(~4294967295u, u_input.b, 1u, reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)])) % vec4<u32>(32u)), global1.a);
    global0 = array<u32, 24>();
    let var_0 = _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~max(min(u_input.b, u_input.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43250u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)], 24u)]), 24u)], 2432u ^ global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(8648u, 21956u) & _wgslsmith_dot_vec3_u32(global1.c.zww, vec3<u32>(global1.d.a, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b)), 24u)], 24u)]), 24u)]);
    let var_1 = global1.a.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.b.x)) + _wgslsmith_div_f32(global1.a.b.x, -735f)));
    return ~min(724u, global0[_wgslsmith_index_u32(~global1.d.a, 24u)]);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> f32 {
    global1 = Struct_4(global1.a, global1.a.c, select(global1.c, ~((global1.c & global1.c) >> (~vec4<u32>(38782u, global1.a.a, 25316u, 50369u) % vec4<u32>(32u))), vec4<bool>(global1.d.c, false, global1.b, select(global1.c.x <= u_input.b, any(vec4<bool>(global1.b, false, global1.b, global1.a.c)), true))), global1.a);
    var var_0 = vec4<f32>(710f, 1000f, global1.d.b.x, 1222f);
    var_0 = vec4<f32>(1248f, -1393f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2557f, global1.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -734f)))) * _wgslsmith_f_op_f32(f32(-1f) * -855f)), _wgslsmith_f_op_f32(-var_0.x));
    var var_1 = Struct_1(_wgslsmith_sub_u32(~(~func_3(vec2<bool>(false, global1.a.c))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(26947u, _wgslsmith_add_u32(arg_0.x, global1.d.a), u_input.b), 88330u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.ww * _wgslsmith_f_op_vec2_f32(vec2<f32>(140f, -3446f) + global1.a.b)))), !any(!select(vec3<bool>(false, true, false), vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.d.c, global1.b, false))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.yxz), global1.d, _wgslsmith_div_vec3_u32(~(~firstTrailingBit(vec3<u32>(46041u, 112325u, var_1.a))), global1.c.wyy), Struct_2(max(-vec4<i32>(2147483647i, 2147483647i, u_input.a, -38807i) | (vec4<i32>(-81124i, 1i, -22705i, 23805i) | vec4<i32>(u_input.a, arg_1, -30913i, 15070i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i) & vec4<i32>(18927i, 22111i, 1i, 2147483647i), vec4<i32>(63828i, 0i, 1i, 23373i) ^ vec4<i32>(-24014i, -10051i, arg_1, 40443i))), Struct_1(arg_0.x << (abs(global0[_wgslsmith_index_u32(arg_0.x, 24u)]) % 32u), var_0.zx, _wgslsmith_f_op_f32(max(arg_2, global1.a.b.x)) == global1.a.b.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.d.b))), vec2<f32>(388f, _wgslsmith_f_op_f32(-global1.d.b.x)), global1.a.c))), 1i);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_2.b.b.x)), _wgslsmith_f_op_f32(776f * var_2.d.b.b.x))))));
}

fn func_1() -> u32 {
    var var_0 = !select(all(select(select(vec3<bool>(global1.a.c, false, global1.d.c), vec3<bool>(false, global1.d.c, global1.a.c), global1.a.c), select(vec3<bool>(true, global1.d.c, false), vec3<bool>(global1.a.c, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, global1.d.c, global1.b), vec3<bool>(global1.d.c, true, false)))), true, all(vec2<bool>(false, false)) || false);
    var var_1 = Struct_3(vec3<f32>(-829f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(global1.c, 2147483647i, global1.a.b.x)), -791f)), 1033f), global1.d, global1.c.xzy, Struct_2(~(-(vec4<i32>(0i, 2147483647i, u_input.a, u_input.a) << (global1.c % vec4<u32>(32u)))), global1.a, global1.d.b), -(i32(-1i) * -56622i));
    var var_2 = firstLeadingBit(_wgslsmith_div_vec4_u32(countOneBits(~global1.c), ~abs(countOneBits(vec4<u32>(27954u, var_1.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24039u, 24u)], 24u)], 0u)))));
    global0 = array<u32, 24>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1715f)) + 1368f), global1.a.b.x);
    return global1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(func_1(), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.d.a, 40048u, global1.c.x), _wgslsmith_sub_u32(global1.d.a, global0[_wgslsmith_index_u32(4294967295u, 24u)])), 19811u, 53052u));
    global0 = array<u32, 24>();
    var var_1 = select(_wgslsmith_f_op_f32(ceil(137f)) != _wgslsmith_f_op_f32(max(609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x - -180f)))), global1.a.c, !global1.a.c);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x - global1.d.b.x)), global1.a.b.x, _wgslsmith_f_op_f32(-global1.d.b.x), 141f);
    let var_3 = Struct_5(any(!vec4<bool>(all(vec2<bool>(false, false)), !global1.b, false, true)), Struct_3(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1111f, global1.d.b.x))), 1488f), global1.a, ~global1.c.xxy, Struct_2(firstLeadingBit(vec4<i32>(38723i, u_input.a, -2147483647i, u_input.a)), Struct_1(~28778u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(416f, global1.d.b.x)), true), vec2<f32>(global1.d.b.x, _wgslsmith_f_op_f32(1000f - -1302f))), _wgslsmith_dot_vec3_i32(-min(vec3<i32>(14707i, 8600i, 0i), vec3<i32>(u_input.a, -2147483647i, u_input.a)), min(vec3<i32>(35151i, 0i, 2147483647i), vec3<i32>(u_input.a, u_input.a, 40807i) ^ vec3<i32>(-10794i, 2147483647i, u_input.a)))));
    let var_4 = var_3.b.a.x;
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-623f, 248f)), global1.a.b.x, _wgslsmith_f_op_f32(step(var_3.b.b.b.x, var_3.b.b.b.x))));
    var_1 = all(select(!select(vec2<bool>(var_3.a, true), vec2<bool>(var_3.a, var_3.a), global1.a.c), select(vec2<bool>(global1.a.c, var_3.a), select(vec2<bool>(false, true), vec2<bool>(false, var_3.b.b.c), var_3.a), vec2<bool>(global1.d.c, var_3.a)), !(!vec2<bool>(true, global1.a.c)))) & any(select(!(!vec2<bool>(global1.b, var_3.a)), vec2<bool>(!var_3.a, false), select(any(vec3<bool>(false, global1.a.c, false)), select(global1.a.c, true, global1.b), 1u > var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_3.b.d.a.x, -20385i, countOneBits(u_input.a & u_input.a), -401i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 2566f, _wgslsmith_f_op_f32(-var_3.b.b.b.x), _wgslsmith_div_f32(-252f, -1185f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, var_3.b.b.b.x, -736f, -2381f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(804f, -1000f, var_5.x, 393f) - vec4<f32>(var_2.x, -960f, var_2.x, -406f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, var_4), _wgslsmith_f_op_f32(global1.d.b.x + -734f), var_4, -1480f))), ~(~vec4<u32>(0u, 16456u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b.d.b.a, 18963u, var_0.x, 126259u), global1.c), _wgslsmith_dot_vec3_u32(var_0.yzz, var_0.zxz))), global1.c);
}

