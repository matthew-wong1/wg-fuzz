struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<i32>(55598i, 0i, 16283i, 2147483647i), vec3<bool>(false, true, false), 417f, -1000f), Struct_2(vec4<i32>(1i, 2147483647i, 19455i, 13252i), vec3<bool>(true, false, false), -612f, 531f), Struct_2(vec4<i32>(0i, 53838i, i32(-2147483648), 1i), vec3<bool>(true, false, false), 1000f, -1000f), Struct_2(vec4<i32>(-5654i, 1i, 0i, i32(-2147483648)), vec3<bool>(true, true, false), 1070f, -517f), Struct_2(vec4<i32>(1i, 36709i, 0i, 17019i), vec3<bool>(false, true, false), 292f, 1549f), Struct_2(vec4<i32>(6548i, 1i, 2147483647i, i32(-2147483648)), vec3<bool>(false, false, true), 324f, -679f), Struct_2(vec4<i32>(1i, 44141i, 2147483647i, -7518i), vec3<bool>(false, true, true), -197f, -351f), Struct_2(vec4<i32>(47441i, -1i, 2147483647i, 2147483647i), vec3<bool>(true, true, false), 1000f, 392f), Struct_2(vec4<i32>(1i, 11349i, -33945i, 0i), vec3<bool>(true, true, true), 1261f, -794f), Struct_2(vec4<i32>(-74803i, -24240i, -7806i, 23867i), vec3<bool>(false, false, false), 816f, -1000f), Struct_2(vec4<i32>(-1i, -15733i, 6331i, 34064i), vec3<bool>(true, false, false), -999f, 1650f));

var<private> global2: Struct_1 = Struct_1(vec4<u32>(73073u, 1u, 40497u, 4294967295u), 4294967295u, 4294967295u, vec4<u32>(1u, 72127u, 1u, 13173u), -6282i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> vec2<u32> {
    global0 = 4294967295u;
    var var_0 = global1[_wgslsmith_index_u32((_wgslsmith_sub_u32(~global2.d.x, _wgslsmith_clamp_u32(global2.b, arg_0.x, firstLeadingBit(arg_1))) << (106038u % 32u)) << (_wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 3485u, arg_0.x, 80887u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b, global2.c, global2.a.x, 1u), global2.d, global2.d))), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(max(1u, arg_1), 4294967295u | global2.a.x))) % 32u), 11u)];
    let var_1 = -2147483647i;
    var var_2 = global1[_wgslsmith_index_u32(global2.b, 11u)];
    var_0 = Struct_2(min(~var_0.a, firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.a.x), var_2.a.zw), ~global2.e, -62i, _wgslsmith_add_i32(var_2.a.x, 0i)))), var_0.b, var_2.c, arg_2);
    return vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global2.d.x, arg_0.x), ~arg_1)), global2.b, ~firstTrailingBit(0u)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~(arg_0.x & ~4294967295u);
    var var_1 = _wgslsmith_f_op_f32(1760f + _wgslsmith_f_op_f32(min(-1130f, 464f)));
    global1 = array<Struct_2, 11>();
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1214f - -174f), _wgslsmith_f_op_f32(step(-1000f, -337f)))), -236f)));
    var var_2 = Struct_2(vec4<i32>(13004i, ~_wgslsmith_mod_i32(select(2147483647i, global2.e, false), 17975i), -13330i, 17611i), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), true)), 2595f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-439f, -789f))))))));
    return 0u;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = Struct_1(~vec4<u32>(70886u, 1u, _wgslsmith_mod_u32(1u, 53474u), 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(countOneBits(vec3<u32>(arg_2, arg_2, 70582u)), 135086u, 531f, !vec3<bool>(arg_0, arg_0, true)), vec2<u32>(60217u, ~arg_2)), ~global2.d.xx), countOneBits(~_wgslsmith_clamp_u32(~82470u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 0u), global2.d.zx), countOneBits(28491u))), vec4<u32>(~_wgslsmith_mult_u32(global2.d.x << (18746u % 32u), global2.c << (10007u % 32u)), firstLeadingBit(1u), ~(~45644u), firstTrailingBit(32290u)), ~(2147483647i << (global2.c % 32u)));
    global2 = var_0;
    global1 = array<Struct_2, 11>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u >> (global2.c % 32u), ~(~func_3(vec3<u32>(15559u, 30871u, 58863u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(global2.a, vec4<u32>(71746u, 0u, 83745u, global2.d.x)), ~global2.d.x), _wgslsmith_clamp_u32(var_0.c, 1u, func_3(vec3<u32>(var_0.c, 1u, var_0.a.x))))), 4294967295u, ~(~var_0.d.x) | 9104u), 11u)];
    let var_2 = var_0;
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-2054f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(108f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-371f * 1067f), -895f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2306f, _wgslsmith_f_op_f32(func_1(true, u_input.c.zy, global2.a.x, true)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(115f, 1069f), vec2<f32>(1150f, 617f))) + vec2<f32>(-1000f, 179f)))))));
    var var_1 = Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -global2.e, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, global2.e, 6619i), u_input.d), 21619i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, global2.e, -34393i) >> (global2.d % vec4<u32>(32u)), vec4<i32>(u_input.c.x, global2.e, global2.e, global2.e) & vec4<i32>(-35099i, global2.e, -2279i, u_input.a.x), select(vec4<i32>(u_input.b, u_input.c.x, -2147483647i, -7089i), vec4<i32>(u_input.c.x, 1i, global2.e, -2147483647i), true)), ~firstTrailingBit(vec4<i32>(u_input.b, u_input.d.x, global2.e, global2.e))) | vec4<i32>((-65356i | u_input.a.x) & _wgslsmith_add_i32(u_input.a.x, 0i), -7465i, -2147483647i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.d.xy, vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(-7308i, -42696i)))), vec3<bool>(!(72433u != global2.c), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))) | true), 628f, var_0.x);
    global0 = max(global2.c, global2.a.x);
    let var_2 = vec3<i32>(-25765i, 0i, -16631i);
    var var_3 = min(var_2.x, -global2.e << (4294967295u % 32u));
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.b, global2.d.yz);
}

