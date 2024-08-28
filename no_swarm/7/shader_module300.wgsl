struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(848f, -1570f, -171f, 924f, 786f, 922f, -1863f, -1000f, -2004f, 1549f, 1100f, 357f, 1004f, 1828f, -1531f, 984f, -466f, 1305f, -1447f, -368f, 1003f, 1288f, -1000f, 339f, -830f, -1821f, 117f, 478f, 399f, -588f);

var<private> global1: f32 = -345f;

var<private> global2: array<f32, 22>;

var<private> global3: array<vec3<i32>, 27>;

var<private> global4: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-7968i, 1i, 13403i, 2147483647i), vec4<i32>(2147483647i, 20497i, 45735i, -1i), vec4<i32>(0i, -48982i, 2147483647i, 66712i), vec4<i32>(-35009i, -28740i, 2147483647i, 1i), vec4<i32>(25347i, 13252i, 2147483647i, -1i), vec4<i32>(10922i, -42360i, 0i, 1i), vec4<i32>(12843i, -1i, 1i, -1i), vec4<i32>(i32(-2147483648), -1i, 1i, 1188i), vec4<i32>(26512i, 0i, -19598i, -30649i), vec4<i32>(17494i, -55825i, 1i, 23840i), vec4<i32>(96173i, -23847i, 0i, 1536i), vec4<i32>(-1i, -1i, 0i, -65075i), vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec4<i32>(27967i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(74346i, -16747i, i32(-2147483648), -1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = !select(!vec4<bool>(u_input.a.x >= u_input.a.x, true, true, false), select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true);
    var var_1 = Struct_1(627i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(global0[_wgslsmith_index_u32(~u_input.a.x, 30u)], -1872f)), ~(~(countOneBits(u_input.d.x) >> (0u % 32u))), ~u_input.b, select(var_0.zy, var_0.yz, vec2<bool>(true, !any(vec2<bool>(var_0.x, false)))));
    global4 = array<vec4<i32>, 15>();
    let var_2 = _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 0i, -60956i) | reverseBits(vec3<i32>(-33845i, 1i, -2147483647i)), vec3<i32>(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c), -vec2<i32>(var_1.a, -2147483647i)), 1i, (2147483647i | var_1.a) >> (_wgslsmith_div_u32(0u, u_input.a.x) % 32u))) | firstTrailingBit(global3[_wgslsmith_index_u32(11177u, 27u)]);
    let var_3 = u_input.a.x;
    return _wgslsmith_f_op_f32(-var_1.b.x) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(arg_1.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)] - global0[_wgslsmith_index_u32(u_input.a.x, 30u)]) + arg_0.x)))), _wgslsmith_f_op_f32(abs(1f)));
    global2 = array<f32, 22>();
    global2 = array<f32, 22>();
    var var_1 = func_3();
    global1 = arg_0.x;
    return u_input.a.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(reverseBits(select(_wgslsmith_mult_i32(u_input.c.x, -22128i), 2147483647i ^ u_input.d.x, true)) | countOneBits(-36399i), ~(-(~1i)));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.a.xx, u_input.a.zw);
    let var_2 = (_wgslsmith_mult_vec3_u32(abs(u_input.a.xxx), ~(u_input.a.yzz << (vec3<u32>(arg_0.x, 58304u, arg_0.x) % vec3<u32>(32u)))) | countOneBits(vec3<u32>(func_2(vec3<f32>(1043f, 1000f, global2[_wgslsmith_index_u32(var_1.x, 22u)]), Struct_1(33203i, vec2<f32>(1000f, global2[_wgslsmith_index_u32(0u, 22u)]), var_0, -1i, vec2<bool>(false, false))), var_1.x >> (0u % 32u), ~arg_0.x))) ^ vec3<u32>(abs(u_input.a.x), arg_0.x, 4294967295u);
    var var_3 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1250f, global2[_wgslsmith_index_u32(0u, 22u)]))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 22u)], -891f) - vec2<f32>(147f, global2[_wgslsmith_index_u32(var_2.x, 22u)])), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)]))))))))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(var_0, -40109i))), vec2<i32>(-var_0, select(-25015i, u_input.b, false))), firstLeadingBit(u_input.d.xy)), _wgslsmith_mod_i32(_wgslsmith_add_i32(5723i, firstLeadingBit(var_0) | (i32(-1i) * -2147483647i)), ~abs(var_0)), select(!vec2<bool>(4294967295u >= arg_0.x, true), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))));
    global1 = -2744f;
    return Struct_1(select(-54814i, var_3.a, var_3.e.x), _wgslsmith_f_op_vec2_f32(floor(var_3.b)), u_input.b, var_3.c, select(!(!vec2<bool>(false, var_3.e.x)), var_3.e, select(vec2<bool>(true, !var_3.e.x), select(vec2<bool>(var_3.e.x, var_3.e.x), !var_3.e, var_3.e.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_div_vec2_u32(~u_input.a.yw, vec2<u32>(1u, 58421u))), u_input.a);
    let var_1 = firstTrailingBit(u_input.c);
    var var_2 = true;
    let var_3 = var_1.x;
    var var_4 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 22u)] + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1522f)) + -500f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<u32>(u_input.a.x ^ 59310u, ~0u, ~var_0.b.x), (~u_input.a.yxw >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.b.x, var_0.b.x), var_0.b.xww) % vec3<u32>(32u))) >> ((max(u_input.a.ywy, u_input.a.zxx) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 43351u, 99119u), vec3<u32>(0u, 33847u, var_0.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)), select(!vec3<bool>(true, var_0.a.e.x, false), vec3<bool>(true, var_0.a.e.x, var_0.a.e.x == false), !(var_0.b.x != var_0.b.x))), vec2<i32>(_wgslsmith_mod_i32(~(-1i), ~var_1.x), firstLeadingBit(var_1.x)), firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, 61435u, 1u)), var_0.a.b, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(9575u), 22u)], var_0.a.b.x));
}

