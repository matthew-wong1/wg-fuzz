struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-25244i, -2816i, vec3<i32>(-25435i, -1i, -22721i));

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(40407u, 60540u, 4294967295u), vec3<u32>(55870u, 77408u, 2351u), vec3<u32>(0u, 39388u, 0u), vec3<u32>(15148u, 1u, 1u), vec3<u32>(87861u, 17533u, 0u), vec3<u32>(38118u, 32684u, 9846u), vec3<u32>(1u, 1u, 38736u), vec3<u32>(1081u, 4294967295u, 13661u), vec3<u32>(1u, 47081u, 19310u), vec3<u32>(56746u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 31974u), vec3<u32>(46123u, 1u, 0u), vec3<u32>(43010u, 18880u, 12463u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(1u, 65880u, 23334u), vec3<u32>(1u, 1u, 104895u), vec3<u32>(1u, 36320u, 4294967295u), vec3<u32>(0u, 4294967295u, 29689u), vec3<u32>(0u, 97445u, 0u), vec3<u32>(4294967295u, 17950u, 74309u), vec3<u32>(29135u, 40777u, 1u), vec3<u32>(0u, 0u, 29814u), vec3<u32>(21471u, 68049u, 4873u), vec3<u32>(0u, 4294967295u, 61639u), vec3<u32>(4294967295u, 20984u, 46550u));

var<private> global3: vec3<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(-1i, arg_1.a, u_input.b);
    var_0 = -(~(~_wgslsmith_mod_i32(-34591i, global0.c.x)) & ~global0.b);
    global0 = Struct_1(-573i, _wgslsmith_mod_i32(arg_1.a & 2147483647i, ~(~global0.c.x)), global0.c);
    let var_1 = -15379i;
    let var_2 = _wgslsmith_f_op_f32(-global3.x);
    return -1i;
}

fn func_1() -> Struct_1 {
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - -1000f) + 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -182f))), 441f);
    global1 = ~_wgslsmith_add_i32(func_2(true, Struct_1(1i, countOneBits(u_input.a.x), global0.c | global0.c)), min(min(abs(1i), 34233i), global0.c.x));
    var var_0 = Struct_1(i32(-1i) * -6222i, ~u_input.b, global0.c);
    var var_1 = ~vec3<i32>(u_input.a.x, 1i, var_0.c.x);
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 1u), ~select(_wgslsmith_mult_vec2_u32(vec2<u32>(7047u, 26148u), vec2<u32>(1u, 0u)), vec2<u32>(1u, 1u), any(vec3<bool>(true, false, false))));
    return Struct_1(-(~1i), 1i, ~(-global0.c));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = func_1();
    let var_0 = arg_1.x;
    let var_1 = select(firstTrailingBit(~(~vec2<i32>(arg_3, 2147483647i) << (vec2<u32>(56063u, 1u) % vec2<u32>(32u)))), vec2<i32>(~u_input.b, 0i) >> ((_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(5681u, 50380u), vec2<u32>(1u, 1u)) >> (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(40521u, 74640u)), reverseBits(vec2<u32>(0u, 19956u)), ~vec2<u32>(0u, 27245u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(!any(vec2<bool>(false, false)), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.xz - vec2<f32>(arg_1.x, var_0))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(571f, -1976f), _wgslsmith_f_op_vec2_f32(trunc(arg_0.zy)), vec2<bool>(true, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global3.zz, vec2<f32>(115f, -1553f))) * _wgslsmith_f_op_vec2_f32(select(global3.yx, vec2<f32>(-773f, -1000f), false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zw))))));
    global0 = arg_2;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = 1i << (~firstTrailingBit(~(~0u)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(-1000f * global3.x);
    var var_2 = func_1();
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2294f, global3.x, -1192f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-520f, 1000f, -146f) - vec3<f32>(global3.x, 2253f, 138f)))) - vec3<f32>(_wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(func_3(vec4<f32>(global3.x, 549f, global3.x, global3.x), global3.yy, Struct_1(-9954i, -46581i, global0.c), var_2.a)))), _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)))));
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(var_2.c), vec3<i32>(~max(u_input.a.x, 0i), ~_wgslsmith_clamp_i32(global0.c.x, -2147483647i, -1i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -44772i), vec2<i32>(0i, -1i), u_input.a), select(global0.c.zz, vec2<i32>(var_2.a, 0i), vec2<bool>(false, false))))), max(1i, u_input.b), -global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 25u)]), vec3<u32>(4294967295u, 61613u, 10557u)) & 1u, var_2.b);
}

