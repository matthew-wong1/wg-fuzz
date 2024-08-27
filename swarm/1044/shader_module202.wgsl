struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 30841i, 43147i);

var<private> global2: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(41544u, 5791u, 1u, 66606u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(38231u, 0u, 23470u, 0u), vec4<u32>(28443u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 89937u, 73013u, 4294967295u), vec4<u32>(0u, 0u, 47425u, 4294967295u), vec4<u32>(1u, 1u, 1u, 74819u), vec4<u32>(0u, 3333u, 29353u, 6498u), vec4<u32>(4294967295u, 0u, 87412u, 65491u), vec4<u32>(31463u, 0u, 0u, 0u), vec4<u32>(33987u, 15098u, 42929u, 12127u), vec4<u32>(4294967295u, 4294967295u, 8679u, 1u), vec4<u32>(1u, 0u, 4294967295u, 16589u), vec4<u32>(4294967295u, 47726u, 358u, 3545u), vec4<u32>(4294967295u, 48400u, 79516u, 1u), vec4<u32>(16398u, 0u, 42710u, 7759u), vec4<u32>(11524u, 11215u, 65882u, 0u), vec4<u32>(1u, 0u, 0u, 75856u), vec4<u32>(41748u, 12235u, 24790u, 4294967295u), vec4<u32>(31855u, 8939u, 4294967295u, 4294967295u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = select(!vec4<bool>(true, true, false, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(u_input.c.x, 20u)], vec4<u32>(20095u, 39274u, u_input.c.x, 33871u)) > min(u_input.c.x, 102620u)), !(!vec4<bool>(true, true, true, select(false, false, true))), true);
    global2 = array<vec4<u32>, 20>();
    global2 = array<vec4<u32>, 20>();
    var var_1 = var_0.x;
    global2 = array<vec4<u32>, 20>();
    return select(var_0.wzw, !select(vec3<bool>(false, var_0.x, true), var_0.xwy, true || var_0.x), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), !all(var_0.xz) | false, true));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> vec3<bool> {
    global2 = array<vec4<u32>, 20>();
    var var_0 = !(!select(!select(arg_1.zz, arg_1.xy, true), select(!vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true), true), arg_1.zy));
    var var_1 = select(!select(vec4<bool>(func_3().x, true, arg_1.x, arg_1.x), !select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(true, var_0.x, false, false), true), select(select(vec4<bool>(false, true, false, arg_1.x), vec4<bool>(arg_1.x, false, var_0.x, false), var_0.x), !vec4<bool>(false, true, var_0.x, arg_1.x), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, arg_1.x, true), true))), vec4<bool>(true, false, var_0.x, true), ((arg_2 ^ ~arg_2) | u_input.c.x) <= 36894u);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 1303f, -1968f, 818f), vec4<f32>(-491f, 2040f, 480f, global0.x)))))))));
    var_1 = vec4<bool>(true, true, func_3().x | false, true);
    return select(!arg_1, !arg_1, true);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = ~(~u_input.c);
    var var_1 = func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), func_3(), 46665u);
    var var_2 = Struct_2(false);
    var var_3 = Struct_1(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-8881i, u_input.a.x, global1.x, u_input.a.x), ~vec4<i32>(-7880i, global1.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, global1.x, u_input.a.x, global1.x)) >> (firstLeadingBit(~u_input.c) % vec4<u32>(32u))), ~(~select(select(vec3<i32>(u_input.a.x, u_input.a.x, 21357i), vec3<i32>(u_input.b, -1i, 2147483647i), var_2.a), vec3<i32>(u_input.a.x, u_input.b, -10241i) & vec3<i32>(-33882i, -37580i, -2147483647i), !vec3<bool>(false, var_1.x, var_2.a))));
    var var_4 = all(!(!(!vec3<bool>(true, false, var_1.x))));
    return 469f;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_4(vec4<i32>(u_input.a.x, select(global1.x, 16690i, false), u_input.b, _wgslsmith_mod_i32(global1.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.x, -2147483647i, -1i), ~(-24010i)))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(min(4294967295u, u_input.c.x), vec2<u32>(64661u, u_input.c.x) >> (u_input.c.xy % vec2<u32>(32u)))))), -673f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -850f) + arg_1.x), _wgslsmith_f_op_f32(max(-130f, _wgslsmith_f_op_f32(-1228f * global0.x))), true))));
    let var_1 = Struct_4(-(~(-(vec4<i32>(-1i, u_input.b, -2147483647i, -1i) << (global2[_wgslsmith_index_u32(71208u, 20u)] % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.x, arg_1.x, -836f, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, 686f, -236f, var_0.b.x), vec4<f32>(arg_1.x, -2497f, -632f, 1000f)))), arg_0.a)));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b))) - var_0.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b - _wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(var_1.b.x, var_1.b.x, var_0.b.x, var_1.b.x)))))), vec4<bool>(true, true, true, true)));
    var var_2 = vec2<u32>(~(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c.yzx, vec3<u32>(1u, 34215u, 4294967295u))) | (_wgslsmith_div_u32(46752u, arg_2) ^ 1u)), ~u_input.c.x);
    let var_3 = Struct_1(var_1.a, reverseBits(var_1.a.yyx));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1167f, global0.x, -1243f, global0.x) * vec4<f32>(1000f, global0.x, global0.x, -643f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1465f, global0.x) + vec4<f32>(global0.x, 1610f, -385f, -315f)), any(vec3<bool>(true, true, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 364f, 1128f))))));
    var var_0 = func_1(Struct_2(false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.wzz))))), min(~u_input.c.x, ~abs(~0u)));
    let var_1 = -1560f;
    var var_2 = Struct_4(abs(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, -24989i, u_input.a.x), -(~vec4<i32>(-25767i, -1i, -10767i, -10429i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, var_1, var_1), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_1, 1448f, global0.x), vec4<f32>(1688f, 1000f, global0.x, global0.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(758f)) * 1690f), _wgslsmith_f_op_f32(floor(global0.x)), -762f, 476f)));
    let var_3 = !vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, var_2.b.x) + _wgslsmith_f_op_f32(floor(-1009f))) != _wgslsmith_f_op_f32(min(-2818f, _wgslsmith_f_op_f32(-240f * 137f))), true, true, !all(vec2<bool>(true, false)) | true);
    var var_4 = func_1(Struct_2(var_3.x), vec3<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(31541u, vec2<u32>(11883u, u_input.c.x))), _wgslsmith_f_op_f32(ceil(451f))))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -753f)), abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(1u), min(0u, u_input.c.x)), min(23177u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-abs(var_0.b.x)), var_2.b.x, vec4<u32>((firstTrailingBit(10945u) | 1u) << (6570u % 32u), u_input.c.x, _wgslsmith_mod_u32(~(~1u), max(firstTrailingBit(u_input.c.x), 49187u)), (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x) & u_input.c.x) ^ 4294967295u), u_input.c.yx, 0i);
}

