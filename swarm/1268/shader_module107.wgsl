struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: array<bool, 11> = array<bool, 11>(true, false, true, false, true, true, false, false, true, false, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(global0.b, 46566u) >> (~(~vec2<u32>(27755u, min(global0.b, 24555u))) % vec2<u32>(32u));
    global2 = array<bool, 11>();
    let var_1 = Struct_1(true, !(!global0.a.x), !global0.a, vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(89460u, 1416u, 30533u, 0u) >> (~vec4<u32>(13790u, var_0.x, 64300u, global0.b) % vec4<u32>(32u)), select(~vec4<u32>(4294967295u, 36950u, 66477u, 1688u), vec4<u32>(4294967295u, global0.b, 50579u, global0.b) << (vec4<u32>(global0.b, 54134u, global0.b, 42092u) % vec4<u32>(32u)), vec4<bool>(global0.a.x, global0.a.x, false, global2[_wgslsmith_index_u32(82666u, 11u)]))), 11u)], global2[_wgslsmith_index_u32(33431u, 11u)], global2[_wgslsmith_index_u32(~(var_0.x >> (select(17235u, 4294967295u, global2[_wgslsmith_index_u32(var_0.x, 11u)]) % 32u)), 11u)], any(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2312f, -1601f, -2276f, -783f) - vec4<f32>(-935f, -153f, -847f, -386f)), vec4<f32>(311f, -587f, -2578f, 1818f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1404f, -1000f, 1196f, 1752f))), _wgslsmith_div_vec4_f32(vec4<f32>(-362f, 1000f, -235f, 923f), vec4<f32>(1866f, 1742f, -1000f, -1191f))))))));
    var_0 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~select(vec3<u32>(7137u, 1u, var_0.x), vec3<u32>(55270u, global0.b, var_0.x), global0.a), _wgslsmith_add_vec3_u32(vec3<u32>(97331u, global0.b, var_0.x), min(vec3<u32>(global0.b, 4918u, 9785u), vec3<u32>(5506u, 7030u, 4294967295u))))), 1u);
    let var_2 = global0.c.x;
    return _wgslsmith_add_u32(global0.b, 1u) >> (var_0.x % 32u);
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = 4294967295u;
    global2 = array<bool, 11>();
    let var_1 = select(select(vec2<bool>(!global0.a.x && global0.a.x, all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global0.b, 11u)]))), vec2<bool>(false, true), false), vec2<bool>(!(!global0.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1100f - -554f), 1191f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f * 470f) - _wgslsmith_f_op_f32(-arg_0))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(~global0.b), func_3()), 16u)]);
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    return Struct_2(!(!global0.a), reverseBits(global0.b), min(_wgslsmith_sub_vec2_i32(countOneBits(global0.c), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.c.x, 0i, -2147483647i), vec4<i32>(-1614i, 2147483647i, global0.c.x, global0.c.x)), 1i)), vec2<i32>(46024i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -37936i), vec2<i32>(global0.c.x, 24488i)) >> (global0.b % 32u))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> bool {
    let var_0 = func_2(898f);
    let var_1 = true;
    global0 = Struct_2(!(!vec3<bool>(global0.a.x, any(vec2<bool>(var_0.a.x, global2[_wgslsmith_index_u32(var_0.b, 11u)])), any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.b, 11u)], false, true)))), _wgslsmith_mod_u32(4294967295u, abs(global0.b)), vec2<i32>(var_0.c.x ^ 0i, -(~_wgslsmith_div_i32(2147483647i, -2147483647i))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, _wgslsmith_div_u32(1u, ~max(global0.b, 58395u) << (~reverseBits(global0.b) % 32u)), global0.c);
    var var_0 = select(~u_input.a.x, -16647i, global2[_wgslsmith_index_u32(global0.b, 11u)]);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-526f, -582f, global0.a.x)) * -1000f)))), _wgslsmith_f_op_f32(448f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -310f), _wgslsmith_f_op_f32(f32(-1f) * -215f)))));
    let var_2 = select(select(vec2<i32>(~u_input.a.x, 1i), u_input.a.zx, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(15369u, 0u, global0.b, global0.b), vec4<u32>(12234u, 1u, 90702u, 23309u)), 11u)] && (_wgslsmith_f_op_f32(sign(var_1.x)) > -358f)), _wgslsmith_div_vec2_i32(global0.c, vec2<i32>(_wgslsmith_sub_i32(select(42301i, u_input.c, false), ~22518i), -2147483647i)), vec2<bool>(all(global1[_wgslsmith_index_u32(1u, 16u)]), true));
    var var_3 = Struct_1(!global2[_wgslsmith_index_u32(global0.b, 11u)], any(!select(!vec4<bool>(global0.a.x, false, global2[_wgslsmith_index_u32(25628u, 11u)], false), select(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, true, false, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(39643u, 11u)], true)), select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, true, false, global0.a.x), false))), !global0.a, select(!vec4<bool>(!global0.a.x, true, false, true), vec4<bool>(global2[_wgslsmith_index_u32(~global0.b, 11u)] || (global0.b > global0.b), false, !global0.a.x || false, global2[_wgslsmith_index_u32(global0.b << (4294967295u % 32u), 11u)] & func_1(vec2<f32>(var_1.x, 1000f), vec4<f32>(-268f, -1000f, 1081f, -530f), Struct_1(false, false, vec3<bool>(true, global0.a.x, global2[_wgslsmith_index_u32(global0.b, 11u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(62495u, 11u)], false, true), vec4<f32>(var_1.x, -380f, var_1.x, var_1.x)))), global0.a.x | true), vec4<f32>(-186f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(round(-1141f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_4 = var_3.a;
    let var_5 = -1610f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_5)), _wgslsmith_div_f32(-457f, -3317f), _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_vec3_f32(-var_3.e.zyz)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_3.e.wxw))), _wgslsmith_f_op_vec3_f32(-var_3.e.wyw), _wgslsmith_mult_u32(global0.b, 4064u) < countOneBits(39319u)))), ~29379u, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f * var_3.e.x) - _wgslsmith_f_op_f32(step(var_1.x, -677f))), var_1.x, 356f, _wgslsmith_f_op_f32(f32(-1f) * -2212f)))), _wgslsmith_f_op_f32(abs(var_5)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -512f, var_1.x)), var_3.e.xxz)));
}

