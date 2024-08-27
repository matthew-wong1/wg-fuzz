struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: array<u32, 1> = array<u32, 1>(0u);

var<private> global2: bool = false;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(abs(~u_input.d.x) | (countOneBits(arg_0.a) | arg_0.a), 17u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(361f, 856f) + vec2<f32>(-1960f, 1086f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-693f, 880f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-307f, -689f), vec2<f32>(-1060f, -1847f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1624f * 353f), -485f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1454f), _wgslsmith_f_op_f32(347f * 289f))))));
    let var_2 = arg_2;
    let var_3 = select(!select(select(!vec4<bool>(false, arg_1, arg_0.b.x, var_0.b.x), select(arg_0.b, vec4<bool>(false, false, arg_0.b.x, false), vec4<bool>(true, false, var_0.b.x, false)), select(var_0.b, arg_0.b, var_0.b)), !select(arg_0.b, vec4<bool>(false, arg_0.b.x, false, false), arg_0.b), vec4<bool>(true | var_0.b.x, var_0.b.x, false, true)), !(!var_0.b), var_0.b.x || false);
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -185f) - vec2<f32>(var_1.x, -1589f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1278f) * vec2<f32>(var_1.x, var_1.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -766f))))))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1305f, 225f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, -495f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1129f, 1150f)) * vec2<f32>(-2089f, -1187f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-355f, -1588f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 689f)), vec2<bool>(var_0.b.x, arg_1))))));
    return false || var_3.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = arg_0.x;
    let var_1 = !vec3<bool>(true, !any(arg_1.ww), arg_1.x);
    global0 = array<Struct_1, 17>();
    var var_2 = firstLeadingBit(~u_input.a.xwx);
    var var_3 = global0[_wgslsmith_index_u32(abs(~abs(global1[_wgslsmith_index_u32(10588u, 1u)])), 17u)];
    return var_3.b.zzy;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(u_input.e, u_input.e, 2147483647i), vec3<i32>(1i, 1i, u_input.e)) << (vec3<u32>(1u, u_input.b, 4294967295u) % vec3<u32>(32u)), ~abs(vec3<i32>(2147483647i, u_input.e, u_input.e))), countOneBits(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.e, 21557i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -48401i, u_input.e, u_input.e), vec4<i32>(u_input.e, u_input.e, u_input.e, -18209i)), min(-2147483647i, u_input.e)))), vec4<bool>(true, true, select(false, all(vec3<bool>(false, true, true)), func_3(Struct_1(14523u, vec4<bool>(true, true, false, true)), true, 1i)), all(vec2<bool>(true, true))));
    let var_1 = -23261i;
    var var_2 = -(vec3<i32>(-7386i, -2147483647i, firstTrailingBit(reverseBits(u_input.e))) & _wgslsmith_div_vec3_i32(vec3<i32>(~u_input.e, 28261i, var_1), _wgslsmith_sub_vec3_i32(select(vec3<i32>(-21353i, -35867i, u_input.e), vec3<i32>(2147483647i, 1i, 15763i), true), reverseBits(vec3<i32>(1i, 2147483647i, var_1)))));
    global1 = array<u32, 1>();
    let var_3 = select(var_2.x, ~(max(-var_2.x, -1i) ^ var_1), any(var_0.zy));
    return ~abs(vec2<u32>(32274u, 3376u));
}

fn func_1() -> i32 {
    var var_0 = select(~func_2(-638f) << (vec2<u32>(~(0u & u_input.a.x), ~4294967295u) % vec2<u32>(32u)), ~u_input.a.ww, func_4(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 0i, 924i) << (vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.d.x, 1u)]) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, 26721i, u_input.e), vec3<i32>(2147483647i, u_input.e, 2147483647i)))), !vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(0u, 1u)] < u_input.a.x)).yy);
    var_0 = u_input.a.yz;
    let var_1 = u_input.e;
    var var_2 = func_4(vec3<i32>(u_input.e, var_1 >> (abs(_wgslsmith_sub_u32(1u, u_input.a.x)) % 32u), var_1), !vec4<bool>(~u_input.a.x != var_0.x, all(vec4<bool>(true, true, true, true)), true, true)).yx;
    global0 = array<Struct_1, 17>();
    return -(~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(7219i, var_1)), _wgslsmith_mod_vec2_i32(vec2<i32>(-16257i, -1i), vec2<i32>(1i, u_input.e) ^ vec2<i32>(0i, var_1))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    var var_0 = vec4<i32>(u_input.e, -1i, ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_0, 2147483647i, 2147483647i), vec3<i32>(u_input.e, -1i, arg_0), arg_1.b.x), ~vec3<i32>(7915i, 0i, -16609i)), -arg_0) >> (u_input.a % vec4<u32>(32u));
    global1 = array<u32, 1>();
    global2 = false != any(arg_1.b.zz);
    var var_1 = arg_0;
    return Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(64149u, 65349u, 1216u, global1[_wgslsmith_index_u32(arg_1.a, 1u)]), vec4<u32>(4294967295u, 21962u, u_input.a.x, global1[_wgslsmith_index_u32(arg_1.a, 1u)])), u_input.a.x) ^ global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.wzy, u_input.a.wyz | u_input.a.xyx), 1u)], arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5((func_1() >> (~global1[_wgslsmith_index_u32(func_2(1027f).x, 1u)] % 32u)) & ~u_input.e, Struct_1(max(abs(2484u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)]), select(vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1150f, 780f, -288f))), ~(vec3<u32>(u_input.b & 70885u, u_input.b | 102883u, max(global1[_wgslsmith_index_u32(49516u, 1u)], global1[_wgslsmith_index_u32(35586u, 1u)])) << (abs(~u_input.d) % vec3<u32>(32u))));
    var var_1 = 4294967295u;
    let var_2 = ~(~vec2<u32>(1u, var_0.a));
    let var_3 = 0u;
    var var_4 = 1i;
    global1 = array<u32, 1>();
    var_4 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.e ^ u_input.e, u_input.e, i32(-1i) * -u_input.e) << (_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.c, 1130u), vec3<u32>(u_input.c, 1u, 84780u))), vec3<u32>(u_input.b, var_2.x >> (73666u % 32u), min(var_0.a, var_3))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(1008f)), 462f), 814f);
}

