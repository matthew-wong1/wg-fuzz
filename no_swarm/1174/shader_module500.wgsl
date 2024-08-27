struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    let var_1 = vec2<u32>(~_wgslsmith_add_u32(arg_2.d, u_input.a), ~arg_2.d) >> (vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(12750u, var_0.d, 12363u), vec3<u32>(1u, arg_3.d, var_0.d)), ~vec3<u32>(arg_3.d, 139842u, global0[_wgslsmith_index_u32(4294967295u, 19u)])), _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1, 0u), ~1u) & _wgslsmith_sub_u32(~arg_1, u_input.a)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.x, 1610f, arg_2.c.x, arg_2.c.x) + vec4<f32>(-1022f, arg_2.c.x, 1000f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(126f, arg_3.c.x, var_0.c.x, arg_2.c.x)), vec4<f32>(-1027f, var_0.c.x, 2199f, -832f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c.x))), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(301f * -1826f) - 1954f), var_0.c.x)));
    global0 = array<u32, 19>();
    let var_3 = vec2<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(var_1, var_1), _wgslsmith_clamp_vec2_u32(var_1, reverseBits(var_1), ~vec2<u32>(4160u, 4294967295u)))));
    return arg_2.a.x;
}

fn func_2() -> vec2<u32> {
    global0 = array<u32, 19>();
    var var_0 = 190f;
    var var_1 = Struct_1(select(vec2<bool>(func_3(false, _wgslsmith_mod_u32(0u, 28997u), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), vec3<f32>(233f, 615f, -1108f), u_input.a, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), vec3<f32>(-280f, -964f, -2531f), u_input.a, vec2<bool>(false, true))), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), false), true), vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), true)), true), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-449f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - 411f), 807f)), 313f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, -602f, 172f) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-540f, -759f, 1000f))))))), select(~14508u ^ (u_input.a ^ 0u), ~(~u_input.a), func_3(true, 10992u, Struct_1(vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<f32>(1288f, -918f, 256f), u_input.a, vec2<bool>(true, true)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1232f, -711f, 1505f), vec3<f32>(-1131f, -393f, 132f))), 80153u, vec2<bool>(true, true)))), vec2<bool>(false != (all(vec3<bool>(true, false, false)) & all(vec2<bool>(true, false))), !any(vec2<bool>(true, false))));
    global0 = array<u32, 19>();
    var var_2 = Struct_1(var_1.e, !(!var_1.b), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.c, var_1.c), _wgslsmith_f_op_vec3_f32(var_1.c + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, var_1.c.x))))))), countOneBits(~u_input.a), vec2<bool>(true, true));
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, ~(~var_2.d)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.d, u_input.a), ~(~vec2<u32>(25938u, 19484u)) >> (firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.d, 19u)], 19u)], var_1.d)) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global0 = array<u32, 19>();
    var var_1 = Struct_1(vec2<bool>(-1000f < arg_2.c.x, arg_2.b.x), var_0.b, var_0.c, 34103u, arg_2.a);
    let var_2 = any(arg_2.a);
    var var_3 = var_0;
    return Struct_1(arg_2.b.zz, arg_2.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x)), var_1.c.x), global0[_wgslsmith_index_u32(1u >> (~4294967295u % 32u), 19u)], vec2<bool>(var_2, any(vec2<bool>(var_0.b.x, select(false, var_3.a.x, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<bool> {
    var var_0 = arg_0;
    var_0 = func_4(~_wgslsmith_clamp_vec2_u32(func_2(), vec2<u32>(~74911u, 4294967295u), vec2<u32>(_wgslsmith_sub_u32(u_input.a, arg_0.d), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], global0[_wgslsmith_index_u32(45547u, 19u)]), 19u)])), vec4<u32>(27797u, 0u ^ min(abs(arg_0.d), _wgslsmith_clamp_u32(119821u, 4154u, 1u)), u_input.a, var_0.d), arg_0);
    let var_1 = arg_0;
    var var_2 = arg_0;
    global0 = array<u32, 19>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), func_1(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, true), vec3<f32>(-581f, 1186f, -474f), u_input.a, vec2<bool>(true, false)), -1i), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f - -181f), _wgslsmith_f_op_f32(f32(-1f) * -758f), 1573f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(u_input.a, 38227u), vec4<u32>(0u, 4294967295u, u_input.a, 60675u), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, true), vec3<f32>(-315f, 503f, -386f), 1u, vec2<bool>(false, true))).c - vec3<f32>(-296f, -410f, 634f))))), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(19000u, 19u)], ~(~12112u)), vec2<bool>(any(vec2<bool>(true, true)), !(select(false, true, false) == true)));
    var var_1 = var_0;
    let var_2 = !(!(!select(vec2<bool>(false, false), func_1(Struct_1(var_0.b.xy, vec3<bool>(var_1.a.x, true, var_0.b.x), vec3<f32>(-296f, var_1.c.x, var_1.c.x), 0u, var_1.e), 0i).zy, !var_1.a)));
    var_1 = Struct_1(var_0.a, vec3<bool>(true, false, any(var_1.b)), var_0.c, ~(~var_1.d), select(var_1.e, var_1.a, func_1(func_4(reverseBits(vec2<u32>(52430u, 16368u)), ~vec4<u32>(0u, 4294967295u, 36082u, u_input.a), Struct_1(vec2<bool>(var_0.b.x, var_2.x), var_1.b, var_1.c, u_input.a, var_1.b.yx)), -abs(22231i)).xx));
    var_1 = Struct_1(select(var_2, !var_0.b.zx, true), func_1(var_0, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-36079i, 3603i), vec2<i32>(-1i, 21664i)), abs(vec2<i32>(-2147483647i, 2147483647i))), -1i, firstTrailingBit(firstTrailingBit(0i)))), var_1.c, abs(_wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, global0[_wgslsmith_index_u32(var_1.d, 19u)]), ~vec2<u32>(u_input.a, 4563u)), ~vec2<u32>(1u, var_1.d))), vec2<bool>(false, var_1.a.x));
    let var_3 = var_1.c.x;
    var var_4 = Struct_1(func_1(Struct_1(var_2, var_1.b, var_1.c, var_1.d, vec2<bool>(true, any(var_0.b))), _wgslsmith_div_i32(_wgslsmith_sub_i32(28730i, 1i) | firstTrailingBit(63115i), -44419i << (var_0.d % 32u))).yz, select(vec3<bool>(true, true, true), !var_1.b, vec3<bool>(true, true || (43274u > u_input.a), !var_1.e.x | all(vec4<bool>(true, var_2.x, true, false)))), var_1.c, ~(_wgslsmith_mod_u32(var_1.d >> (global0[_wgslsmith_index_u32(4294967295u, 19u)] % 32u), 40268u) << ((var_1.d ^ var_1.d) % 32u)), select(!(!var_2), func_4(~min(vec2<u32>(23188u, 34470u), vec2<u32>(19121u, var_1.d)), vec4<u32>(4294967295u & u_input.a, 30738u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), min(var_0.d, 4294967295u)), var_0).a, !vec2<bool>(false & var_2.x, true)));
    var_4 = var_0;
    var var_5 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(1257f, _wgslsmith_f_op_f32(select(var_4.c.x, var_4.c.x, true)), countOneBits(select(~(~vec3<u32>(0u, 6884u, 0u)), ~vec3<u32>(57517u, var_0.d, var_1.d) >> (abs(vec3<u32>(1917u, 4294967295u, 0u)) % vec3<u32>(32u)), false)), reverseBits(~max(-23543i, _wgslsmith_dot_vec4_i32(vec4<i32>(-29808i, 26817i, 2147483647i, 2147483647i), vec4<i32>(0i, -4412i, 7830i, -37658i)))));
}

