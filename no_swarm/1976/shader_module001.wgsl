struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<bool>(false, false, true), 45108u), Struct_1(vec3<bool>(true, false, false), 4294967295u), Struct_1(vec3<bool>(false, true, true), 1027u), Struct_1(vec3<bool>(false, true, false), 0u), Struct_1(vec3<bool>(false, false, false), 34915u), Struct_1(vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(true, true, true), 13544u), Struct_1(vec3<bool>(false, true, false), 51173u), Struct_1(vec3<bool>(true, false, false), 12480u), Struct_1(vec3<bool>(false, false, true), 89844u), Struct_1(vec3<bool>(false, false, true), 75397u), Struct_1(vec3<bool>(true, true, false), 4294967295u));

var<private> global1: array<vec3<u32>, 30>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, false), 50764u);

var<private> global3: array<bool, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    global1 = array<vec3<u32>, 30>();
    global0 = array<Struct_1, 12>();
    return -2093f;
}

fn func_3() -> f32 {
    global3 = array<bool, 3>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 30u)] >> (global1[_wgslsmith_index_u32(~(global2.b | global2.b), 30u)] % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global2.b, 12u)], u_input.a, Struct_1(global2.a, _wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(var_0.x, 30u)], vec3<u32>(var_0.x, 0u, 11686u))), 38582u))));
    global2 = global0[_wgslsmith_index_u32(~0u & ~_wgslsmith_clamp_u32(var_0.x, var_0.x & global2.b, global2.b), 12u)];
    var var_2 = ~(i32(-1i) * -2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3001f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_1))))));
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(53447u, max(~global2.b, 4294967295u), firstTrailingBit(~(~(~global2.b))));
    let var_1 = vec4<f32>(-1767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -1131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    var var_2 = global2.a.xy;
    global3 = array<bool, 3>();
    let var_3 = ~(~(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, 4923i, u_input.a), vec4<i32>(2147483647i, 44796i, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -19808i, -18190i)) >> (~vec4<u32>(79180u, global2.b, 39521u, var_0.x) % vec4<u32>(32u)))));
    return Struct_3(vec4<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(global2.b, 3u)], var_2.x, global2.a.x, false)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(var_0.x), 1u), 3u)], !global2.a.x, global3[_wgslsmith_index_u32(~1u, 3u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(1f * var_1.x))), Struct_2(Struct_1(global2.a, var_0.x), 1000f, var_0.yx), global1[_wgslsmith_index_u32(13137u, 30u)]);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = !(!vec2<bool>(arg_1.c.a.a.x, global2.a.x));
    global1 = array<vec3<u32>, 30>();
    let var_1 = arg_1.c.a.a.zz;
    let var_2 = Struct_1(!vec3<bool>(any(arg_1.c.a.a.zx) == true, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4891u, ~arg_0.x), 3u)], !any(vec4<bool>(arg_1.a.x, true, var_1.x, true))), arg_0.x);
    var var_3 = ~(~global2.b);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b - -864f) + 460f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(43966u, 3u)], false, true), global2.b), u_input.a, global0[_wgslsmith_index_u32(global2.b, 12u)])) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -542f) - 275f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1789f, -820f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-598f, -542f))))))));
    var var_1 = _wgslsmith_f_op_f32(func_4(vec4<u32>(global2.b, global2.b, 1u, ~max(_wgslsmith_div_u32(global2.b, global2.b), global2.b)), func_2()));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52389u, 1u, 27821u), vec3<u32>(global2.b, global2.b, 4294967295u)), ~22192u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 1u, 1u, global2.b) | vec4<u32>(29016u, 244u, global2.b, global2.b), ~vec4<u32>(33016u, global2.b, global2.b, 49372u)), global2.b), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29497u, global2.b, 4294967295u, global2.b), vec4<u32>(1u, 7209u, 4294967295u, 4294967295u)) & vec4<u32>(global2.b, 23896u, global2.b, global2.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2.b, global2.b, 37041u, 58877u), _wgslsmith_clamp_vec4_u32(vec4<u32>(106760u, 76948u, 50471u, global2.b), vec4<u32>(global2.b, 26951u, 21267u, 37014u), vec4<u32>(global2.b, 13658u, 99002u, 1u))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b, ~global2.b, global2.b, 77212u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(38252u, global2.b, global2.b, 44277u), reverseBits(vec4<u32>(global2.b, global2.b, 4294967295u, 4294967295u))), vec4<u32>(global2.b, ~global2.b, _wgslsmith_add_u32(global2.b, 1556u), 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(min(global2.b, 7716u), 1u >> (global2.b % 32u)), 1u, global2.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.b, global2.b, global2.b), vec3<u32>(0u, global2.b, 0u))))), 12u)];
    global1 = array<vec3<u32>, 30>();
    let var_3 = u_input.a;
    global0 = array<Struct_1, 12>();
    var var_4 = (!(!(4294967295u <= global2.b)) & any(select(!global2.a.yx, select(vec2<bool>(global3[_wgslsmith_index_u32(var_2.b, 3u)], global2.a.x), var_2.a.yz, global2.a.zx), func_2().a.x))) && var_2.a.x;
    var var_5 = select(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58184u, global2.b, global2.b, var_2.b), vec4<u32>(global2.b, 56819u, 23381u, global2.b)) << (var_2.b % 32u), ~14449u, ~(~4294967295u))), countOneBits(~(~global1[_wgslsmith_index_u32(1u, 30u)]) | ~global1[_wgslsmith_index_u32(68698u, 30u)]), false);
    var var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_6.b.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_6.c.b, var_0.x))), 957f)));
}

