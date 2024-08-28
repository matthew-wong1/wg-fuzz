struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<bool, 23>;

var<private> global2: array<u32, 27>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3) -> u32 {
    global1 = array<bool, 23>();
    var var_0 = arg_0.a;
    var var_1 = ~(~(_wgslsmith_mult_u32(countOneBits(arg_0.b.d), ~1547u) << (1u % 32u)));
    var var_2 = true;
    let var_3 = arg_2.a.b;
    return (abs(~(~37234u)) | _wgslsmith_sub_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~27412u, 27u)], arg_2.c.x), arg_0.b.d)) ^ _wgslsmith_div_u32(~0u, ~var_3.x);
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = true;
    global1 = array<bool, 23>();
    var var_1 = Struct_1(-240f, select(~vec2<u32>(u_input.a, u_input.c.x) ^ (vec2<u32>(23691u, 7707u) ^ ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39645u, 27u)], 27u)], u_input.c.x)), vec2<u32>(~_wgslsmith_sub_u32(37719u, u_input.e), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(26506u, 27u)], 0u, global2[_wgslsmith_index_u32(1u, 27u)]), vec3<u32>(u_input.a, u_input.c.x, 1u))), 5773u == global2[_wgslsmith_index_u32(47438u, 27u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~func_3(Struct_2(Struct_1(176f, u_input.c, false, 42869u, vec3<f32>(-475f, -1443f, -933f)), Struct_1(-1270f, vec2<u32>(61302u, 17366u), false, 4718u, vec3<f32>(-293f, -1000f, -1000f)), 0u), 1697f, Struct_3(Struct_1(353f, u_input.c, global1[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(1u, 27u)], vec3<f32>(1290f, -160f, -422f)), vec2<bool>(var_0, false), vec4<u32>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(66926u, 27u)], u_input.c.x, 4294967295u), vec3<i32>(u_input.b, 37936i, 2147483647i))) >> (21876u % 32u), 27u)], 27u)] < 43444u, min(u_input.c.x, ~global2[_wgslsmith_index_u32(17427u, 27u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(526f + _wgslsmith_f_op_f32(abs(-375f))), _wgslsmith_f_op_f32(select(909f, _wgslsmith_f_op_f32(round(1908f)), global1[_wgslsmith_index_u32(~u_input.a, 23u)])), _wgslsmith_f_op_f32(f32(-1f) * -292f))));
    let var_2 = Struct_4(!(!select(true, false, true) | !var_1.c), vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(_wgslsmith_div_u32(1u << (1u % 32u), var_1.b.x), global2[_wgslsmith_index_u32(34197u, 27u)] >> ((var_1.b.x ^ global2[_wgslsmith_index_u32(28678u, 27u)]) % 32u)), ~u_input.c.x, var_1.b.x));
    global1 = array<bool, 23>();
    return vec3<bool>(true, any(!(!vec4<bool>(true, var_0, var_0, var_2.a))), any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.b.x ^ var_1.d, 23u)])) != ((~40237u >= ~var_2.b.x) & (!var_2.a && any(vec2<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 23u)], var_2.a)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = vec3<u32>(~(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, arg_3.c, u_input.e), vec3<u32>(0u, 1u, arg_3.c)) % 32u)) >> (~0u % 32u), u_input.c.x, select(u_input.e, 1u, false));
    global2 = array<u32, 27>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-981f + -571f), firstLeadingBit(u_input.c), all(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], all(vec3<bool>(true, false, true)), select(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(38648u, 27u)], 23u)], false), true), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false, true, arg_3.a.c), select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(16433u, 23u)], true, global1[_wgslsmith_index_u32(arg_3.a.b.x, 23u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 27u)], 23u)]), true))), global2[_wgslsmith_index_u32(u_input.a, 27u)], arg_3.b.e);
    var_0 = ~vec3<u32>(select(var_1.d, 28332u, all(vec4<bool>(true, arg_3.a.c, true, true))), ~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, u_input.a), _wgslsmith_add_u32(15916u, 66057u)), var_1.b.x);
    var var_2 = func_2(-1i);
    return Struct_4(all(func_2(1i)), ~vec4<u32>(~u_input.c.x, var_1.d, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 13419u), vec3<u32>(1u, 4294967295u, u_input.c.x)), 1u) << (vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 27u)], 4294967295u, 0u, _wgslsmith_div_u32(u_input.e, 24335u) | ~var_0.x) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 27>();
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(451f, _wgslsmith_f_op_f32(275f * -565f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-441f, 1094f), vec2<f32>(-1102f, 570f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-515f, 743f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1734f, -806f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1646f) * -461f), 1f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1077f, 1163f, -1328f, 493f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1047f, -109f, -189f, -336f)), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-419f, 637f, 884f, -2719f)))))), global0[_wgslsmith_index_u32(u_input.e, 23u)]);
    let var_1 = _wgslsmith_dot_vec2_u32(u_input.c ^ _wgslsmith_mod_vec2_u32(min(var_0.b.zz, u_input.c) & vec2<u32>(9468u, 51869u), ~vec2<u32>(62535u, 1u)), var_0.b.zw);
    var var_2 = global2[_wgslsmith_index_u32(var_1, 27u)];
    let var_3 = -16221i;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(i32(-1i) * -9993i, _wgslsmith_sub_i32(var_3, u_input.b), ~15281i, abs(u_input.b)), ~(-vec4<i32>(var_3, -4846i, var_3, var_3)), global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(1u)), 23u)]) & -_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(2147483647i, 16396i, u_input.d, var_3)), vec4<i32>(u_input.b, 7271i, -2147483647i, var_3) & vec4<i32>(2147483647i, var_3, var_3, var_3), vec4<i32>(-26913i, -34401i, 0i, var_3)), var_0.b.wxz, vec4<i32>(-1i) * -vec4<i32>(0i, 1i, countOneBits(u_input.d), -77286i));
}

