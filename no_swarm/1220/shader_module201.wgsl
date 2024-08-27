struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: array<i32, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global0 = -1232f;
    var var_0 = Struct_3(true, vec2<i32>(~global2[_wgslsmith_index_u32(u_input.e.x, 17u)], _wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, 1i), ~min(global2[_wgslsmith_index_u32(u_input.e.x, 17u)], u_input.c))), true, Struct_2(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(u_input.b != -2147483647i, select(true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -469f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(612f)), _wgslsmith_f_op_f32(-1794f - 750f)))), Struct_1(true, _wgslsmith_f_op_f32(sign(-949f)) < _wgslsmith_f_op_f32(-423f - 890f), select(true, true, true), -firstTrailingBit(-2147483647i), vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), 15552u, ~u_input.e.x))));
    var var_1 = var_0.d.c;
    global2 = array<i32, 17>();
    var_0 = Struct_3(var_1.c, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.xx, select(_wgslsmith_sub_vec2_i32(u_input.d.xz, var_0.b), abs(var_0.b), -70736i != global2[_wgslsmith_index_u32(arg_0, 17u)])), var_0.b, _wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 17u)] | 0i, -43369i), -vec2<i32>(var_1.d, var_1.d))), !var_0.d.a.x, var_0.d);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.d.b)), _wgslsmith_f_op_f32(f32(-1f) * -1522f))))), -254f, _wgslsmith_f_op_f32(trunc(222f)), 321f);
}

fn func_2(arg_0: i32) -> Struct_5 {
    let var_0 = !(select(u_input.d.x, arg_0, false) < abs(_wgslsmith_mod_i32(_wgslsmith_mult_i32(19718i, u_input.d.x), countOneBits(global2[_wgslsmith_index_u32(u_input.e.x, 17u)]))));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_3(1u))));
    let var_2 = Struct_1(false, !var_0, all(!select(select(vec4<bool>(true, var_0, false, var_0), vec4<bool>(true, true, false, true), true), vec4<bool>(var_0, false, var_0, true), !vec4<bool>(false, false, var_0, var_0))), ~(-2147483647i), ~((abs(vec3<u32>(0u, u_input.a.x, 29087u)) >> (vec3<u32>(18601u, 9894u, 4294967295u) % vec3<u32>(32u))) | vec3<u32>(0u, ~u_input.e.x, 4294967295u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -338f, var_1.x)), _wgslsmith_f_op_vec4_f32(var_1 - vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-541f, -773f, var_1.x, 1000f) - vec4<f32>(var_1.x, var_1.x, -251f, 1155f))))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))), -1468f, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1215f, var_3.x)) * -1287f));
    return Struct_5(var_2.e.x, Struct_2(!vec2<bool>(true, all(vec4<bool>(true, var_0, var_2.a, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))), Struct_1(any(!vec2<bool>(var_2.c, var_0)), true, select(false && var_0, any(vec2<bool>(var_2.b, false)), var_2.a | var_2.c), var_2.d, var_2.e << (~var_2.e % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: u32) -> vec3<u32> {
    global0 = -220f;
    global2 = array<i32, 17>();
    global2 = array<i32, 17>();
    let var_0 = func_2(-7183i);
    global1 = all(select(vec4<bool>(arg_0.x, !var_0.b.c.a, var_0.b.a.x, var_0.b.a.x), vec4<bool>(arg_0.x, arg_0.x, var_0.b.c.c, var_0.b.c.a), vec4<bool>(true, false, func_2(-2147483647i).b.a.x && (-659f > var_0.b.b), arg_1.a.a)));
    return vec3<u32>(u_input.e.x, u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(select(arg_1.a.d.c.e.x, 55946u, var_0.b.a.x), ~0u), _wgslsmith_add_u32(var_0.a, u_input.e.x)) & 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) - -1000f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-153f))))))));
    var var_0 = u_input.e.x;
    var var_1 = Struct_1(true, true, true, global2[_wgslsmith_index_u32(~u_input.e.x, 17u)], ~(~func_1(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), Struct_4(Struct_3(false, u_input.d.xz, false, Struct_2(vec2<bool>(false, true), 133f, Struct_1(true, true, false, u_input.b, vec3<u32>(16248u, u_input.a.x, 3544u)))), 456f), _wgslsmith_dot_vec2_u32(vec2<u32>(33979u, 48131u), u_input.e))));
    let var_2 = any(!vec4<bool>(select(var_1.a, false, var_1.c) || !var_1.b, true, all(vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_i32(u_input.d.zx, vec2<i32>(var_1.d, -20559i)) != ~35870i));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-274f, 1095f, 2356f, 845f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, -1168f, -908f, 1834f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-932f, -150f, 457f, -1021f) - vec4<f32>(1260f, -678f, 1280f, -867f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, -499f, 631f, 314f))) - vec4<f32>(_wgslsmith_f_op_f32(max(972f, 117f)), -672f, _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(1008f + 604f)))));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-949f * func_2(firstTrailingBit(-1i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(var_1.e.x, 17u)], u_input.b), vec4<i32>(0i, 2147483647i, var_1.d, var_1.d))).b.b), vec4<u32>(~(~(u_input.a.x >> (10236u % 32u))), u_input.e.x, var_1.e.x, firstLeadingBit(firstTrailingBit(4294967295u))), 20992i, global2[_wgslsmith_index_u32(~min(17122u, _wgslsmith_sub_u32(u_input.e.x, u_input.a.x)), 17u)] << (reverseBits(1u) % 32u));
}

