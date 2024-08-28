struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 11769u), false, true, vec3<i32>(-1i, 0i, -1i));

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<u32>(0u, 113801u), false, true, vec3<i32>(2147483647i, 7439i, 1i)), Struct_1(vec2<u32>(56298u, 51840u), true, false, vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec2<u32>(4294967295u, 98638u), true, true, vec3<i32>(1i, 6673i, 2147483647i)), Struct_1(vec2<u32>(0u, 21354u), true, false, vec3<i32>(-57519i, -34589i, 17803i)), Struct_1(vec2<u32>(7821u, 13394u), false, false, vec3<i32>(2147483647i, 43744i, -1i)), Struct_1(vec2<u32>(0u, 0u), false, true, vec3<i32>(42205i, 1i, 2147483647i)), Struct_1(vec2<u32>(1u, 31963u), false, false, vec3<i32>(i32(-2147483648), -1i, -1i)), Struct_1(vec2<u32>(8261u, 0u), false, false, vec3<i32>(i32(-2147483648), i32(-2147483648), -58431i)), Struct_1(vec2<u32>(4294967295u, 14887u), true, true, vec3<i32>(0i, 1i, 29483i)), Struct_1(vec2<u32>(0u, 30318u), true, false, vec3<i32>(0i, 1i, 1i)), Struct_1(vec2<u32>(4294967295u, 30136u), false, false, vec3<i32>(45647i, 1i, 61283i)));

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(-8206i, -1i, -62190i, 29725i), vec4<i32>(2147483647i, 72122i, -1i, 2147483647i), vec4<i32>(-28543i, 17899i, i32(-2147483648), 29037i), vec4<i32>(18609i, -1i, -15594i, 16427i), vec4<i32>(1i, -9148i, -1i, 20673i), vec4<i32>(i32(-2147483648), 11315i, 14868i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 17725i, -16711i), vec4<i32>(33017i, 1i, -1i, 29997i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 41805i), vec4<i32>(-1i, 2147483647i, -1i, i32(-2147483648)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global3 = array<vec4<i32>, 10>();
    global0 = global1[_wgslsmith_index_u32(reverseBits(1u) | u_input.e, 11u)];
    let var_0 = any(vec2<bool>(~firstTrailingBit(global0.a.x) != ~_wgslsmith_sub_u32(4294967295u, global0.a.x), !global0.b));
    var var_1 = vec2<u32>(max(1u, 2702u), countOneBits(u_input.d.x));
    var var_2 = !var_0;
    return !any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), !vec4<bool>(false, global0.b, true, true)), vec4<bool>(true, all(vec2<bool>(global0.c, var_0)), !var_0, var_0), vec4<bool>(global0.b, !var_0, var_0 || true, 52455u > global0.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = -35188i;
    var var_1 = 0u;
    global3 = array<vec4<i32>, 10>();
    global1 = array<Struct_1, 11>();
    var var_2 = global1[_wgslsmith_index_u32(0u, 11u)];
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, -1131f, 739f, 699f) + vec4<f32>(1382f, -1791f, -1080f, -155f)) * vec4<f32>(2095f, 104f, 1000f, -1344f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2124f, -251f, 1843f, 598f) * vec4<f32>(-203f, -561f, 1805f, 1139f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1579f, -161f, 1029f, -743f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-676f, -1000f, 310f, 1386f))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.d.x, 11u)];
    global3 = array<vec4<i32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1258f * 968f) * _wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(290f * arg_3.x)))));
    global3 = array<vec4<i32>, 10>();
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1));
    return Struct_2(vec3<f32>(-1245f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))), vec2<f32>(var_1, 148f), Struct_1(abs(vec2<u32>(4294967295u, ~4294967295u)), all(!(!vec4<bool>(true, var_0.b, false, global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2388f * -527f), 691f) <= var_1, reverseBits(firstLeadingBit(~var_0.d))), Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xx, global0.a), u_input.d.x)), true, !func_1(_wgslsmith_clamp_vec2_i32(global0.d.zz, global0.d.xx, global0.d.xx)), ~max(vec3<i32>(2147483647i, -10176i, arg_1), ~global0.d)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    global2 = 0u;
    var var_0 = arg_2;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_div_u32(28504u, ~(~u_input.d.x));
    let var_3 = !select(select(select(select(vec4<bool>(false, false, false, arg_1.c), vec4<bool>(false, arg_1.b, false, arg_1.c), vec4<bool>(false, true, false, global0.c)), select(vec4<bool>(arg_0.x, false, arg_1.c, true), vec4<bool>(false, true, arg_1.c, global0.c), true), global0.c), vec4<bool>(global0.c, true, func_1(var_0.d.d.yy), var_1.c.c), vec4<bool>(arg_2.c.a.x != 0u, true, true, true)), select(vec4<bool>(!var_0.d.c, arg_1.b, true, var_1.d.d.x > -1i), vec4<bool>(true, any(vec2<bool>(var_1.c.c, true)), true, select(var_1.d.b, false, arg_2.d.b)), select(select(vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, global0.c, global0.b, true), var_0.d.b), vec4<bool>(false, var_0.d.c, true, true), vec4<bool>(true, arg_0.x, false, arg_1.c))), false);
    return func_3(select(!select(!var_3.zw, vec2<bool>(true, true), vec2<bool>(true, var_0.d.b)), vec2<bool>(all(!vec4<bool>(true, arg_0.x, arg_0.x, var_0.c.c)), var_3.x), select(vec2<bool>(!arg_0.x, !var_3.x), select(select(vec2<bool>(var_3.x, true), vec2<bool>(global0.c, var_0.c.c), global0.b), !arg_0, select(global0.b, false, arg_1.b)), !select(vec2<bool>(var_1.d.c, true), vec2<bool>(true, false), global0.c))), var_1.c.d.x, u_input.d ^ _wgslsmith_sub_vec3_u32(u_input.d, countOneBits(u_input.d)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), var_0.b.x, _wgslsmith_f_op_f32(ceil(-423f)), -1377f), vec4<f32>(-1006f, _wgslsmith_f_op_f32(var_1.b.x - -1535f), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b.x - arg_2.a.x))))))).d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    global3 = array<vec4<i32>, 10>();
    global3 = array<vec4<i32>, 10>();
    global0 = func_4(!select(vec2<bool>(true, global0.c), select(select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.b), false), vec2<bool>(global0.b, false), select(vec2<bool>(global0.c, global0.b), vec2<bool>(true, global0.c), vec2<bool>(global0.b, global0.b))), global0.b), global1[_wgslsmith_index_u32(4294967295u, 11u)], func_3(!(!select(vec2<bool>(global0.b, global0.c), vec2<bool>(global0.c, false), vec2<bool>(global0.b, true))), _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(-1i), global0.d.x), -2147483647i), abs(vec3<u32>(1u, global0.a.x | global0.a.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(firstTrailingBit(vec2<u32>(u_input.e, u_input.d.x)), func_1(vec2<i32>(global0.d.x, -17856i)), global0.c, global0.d << (vec3<u32>(4294967295u, u_input.e, global0.a.x) % vec3<u32>(32u))), ~(~vec4<u32>(60076u, 0u, 36459u, 77390u)), global0.d))));
    let var_0 = vec3<bool>(!func_1(select(global0.d.zx >> (vec2<u32>(global0.a.x, global0.a.x) % vec2<u32>(32u)), reverseBits(vec2<i32>(47324i, global0.d.x)), select(vec2<bool>(global0.c, true), vec2<bool>(true, global0.b), vec2<bool>(global0.c, global0.c)))), true, true);
    var var_1 = Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global0.a, max(vec2<u32>(1u, global0.a.x), ~vec2<u32>(6029u, 4294967295u))), global0.a), all(vec4<bool>(false, global0.c, !(!global0.b), 0i < (u_input.c & -52850i))), true, ~vec3<i32>(countOneBits(i32(-1i) * -5674i), -2147483647i, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, 885f, -280f, 205f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1037f, -1496f, 1654f, 1143f), vec4<f32>(267f, -1000f, 269f, -965f), var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(-1093f, _wgslsmith_f_op_f32(571f * -1173f), _wgslsmith_f_op_f32(step(315f, -559f)), _wgslsmith_f_op_f32(select(154f, 518f, var_0.x)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(221f, -747f), vec2<f32>(923f, 1117f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(304f, -300f))) * vec2<f32>(-930f, _wgslsmith_f_op_f32(999f - -733f))))), vec3<i32>(u_input.c, 24980i, u_input.b), i32(-1i) * -1i);
}

