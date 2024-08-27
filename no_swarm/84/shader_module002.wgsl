struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<u32> = vec3<u32>(70774u, 0u, 25790u);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, true, true), 0u, -33493i, 0i, 4294967295u);

var<private> global3: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(29035i, -31764i, 24143i, 12515i), vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec4<i32>(32165i, 10767i, 108559i, -7797i), vec4<i32>(2147483647i, -1i, 1i, 5430i), vec4<i32>(-7703i, -27497i, 5713i, 0i), vec4<i32>(45626i, 0i, 1i, -4845i), vec4<i32>(-168i, -31464i, -4729i, 12213i), vec4<i32>(-1i, 4774i, 18699i, -30781i), vec4<i32>(i32(-2147483648), i32(-2147483648), 41642i, -27351i), vec4<i32>(-1i, 1i, 1i, i32(-2147483648)), vec4<i32>(36393i, 36907i, -23709i, -27378i), vec4<i32>(i32(-2147483648), -7046i, 29995i, i32(-2147483648)), vec4<i32>(21659i, -1i, 63407i, i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), 2147483647i, 10609i), vec4<i32>(0i, 35647i, -1i, -13316i), vec4<i32>(-1i, 0i, 7751i, 18433i), vec4<i32>(1i, -44517i, 23536i, 1i), vec4<i32>(1i, 30950i, -948i, 2147483647i), vec4<i32>(-34882i, 32963i, i32(-2147483648), 14165i), vec4<i32>(-80007i, 2147483647i, 11877i, 6019i), vec4<i32>(20483i, 6219i, 58731i, 0i), vec4<i32>(38820i, -7429i, i32(-2147483648), -3415i), vec4<i32>(1i, 0i, 1i, 2147483647i), vec4<i32>(1i, 2147483647i, 6381i, i32(-2147483648)));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    return _wgslsmith_add_i32(~(-1i), 37832i);
}

fn func_3() -> vec4<u32> {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-291f, 165f)) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(404f)), -2573f), 637f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1499f - 1000f)), -276f, -641f)));
    let var_1 = ~vec3<u32>(~min(abs(0u), _wgslsmith_sub_u32(u_input.a, global2.b)), 25398u, 1u);
    global2 = Struct_1(!(!select(!global2.a, vec4<bool>(true, true, true, true), select(vec4<bool>(true, global2.a.x, global2.a.x, false), global2.a, global2.a.x))), 0u, -24500i, firstTrailingBit(-2147483647i), var_1.x);
    var var_2 = vec3<bool>(true, (i32(-1i) * -_wgslsmith_clamp_i32(-37293i, -1i, var_0)) < _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global2.c, 1i), -47761i), _wgslsmith_mod_vec2_i32(~vec2<i32>(-49811i, -2147483647i), -vec2<i32>(-2147483647i, 32719i))), all(!select(select(vec2<bool>(false, false), global2.a.yz, false), select(vec2<bool>(global2.a.x, false), vec2<bool>(false, global2.a.x), vec2<bool>(true, global2.a.x)), any(global2.a.xy))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(126f))));
    return ~_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(select(min(vec4<u32>(1u, 89798u, global1.x, global2.e), vec4<u32>(global2.e, var_1.x, 13085u, global2.e)), reverseBits(vec4<u32>(4294967295u, 39035u, 0u, global2.b)), select(global2.a, vec4<bool>(true, var_2.x, false, false), global2.a.x)), ~(vec4<u32>(u_input.a, 1u, global1.x, var_1.x) >> (vec4<u32>(var_1.x, global2.b, u_input.a, 1u) % vec4<u32>(32u)))), ~(~(~vec4<u32>(var_1.x, global2.b, 4294967295u, u_input.c.x))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -767f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1750f, 1192f))) * -739f))));
    let var_1 = global3[_wgslsmith_index_u32(0u, 24u)];
    let var_2 = vec3<bool>(all(global2.a.xw), -47806i <= func_2(var_0), true);
    var var_3 = Struct_3(~55199u, ~(abs(max(vec4<u32>(1u, global2.b, 27106u, global1.x), vec4<u32>(4294967295u, 1u, global1.x, global1.x))) & _wgslsmith_mod_vec4_u32(func_3(), abs(vec4<u32>(global1.x, 0u, global1.x, 49977u)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-428f + -1135f), _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(step(157f, 621f))))))), Struct_2(Struct_1(vec4<bool>(all(vec3<bool>(global2.a.x, var_2.x, global2.a.x)), select(false, false, var_2.x), global2.a.x | true, var_2.x), global1.x, global0.x, u_input.b, global2.b), _wgslsmith_f_op_f32(f32(-1f) * -1033f)), ~0i);
    let var_4 = var_0;
    return Struct_2(var_3.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(841f, var_3.d.b))))) + -384f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec3<i32>(-1965i, 17028i, 8346i ^ global0.x) ^ vec3<i32>(_wgslsmith_div_i32(global2.c, global0.x), i32(-1i) * -40084i, 1977i), vec3<i32>(i32(-1i) * -17197i, -1i, global0.x)) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(~(global1.zx << (u_input.c.xz % vec2<u32>(32u))), vec2<u32>(global2.e, firstTrailingBit(global1.x))), 4294967295u, ~reverseBits(~global1.x)) % vec3<u32>(32u));
    var var_1 = Struct_3(global1.x, countOneBits(abs(~(~vec4<u32>(1u, u_input.a, 2705u, 1u)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(770f, -1192f, -472f, -757f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-961f, 858f, -883f, -286f))))))), func_1(), select(~firstTrailingBit(var_0.x), func_2(vec3<f32>(1808f, -1000f, 369f)), !((false == global2.a.x) & true)));
    let var_2 = ~vec3<u32>(0u, u_input.c.x, var_1.d.a.b);
    var var_3 = vec4<bool>(!(!(_wgslsmith_f_op_f32(abs(var_1.c.x)) >= 1f)), true, true, global2.a.x || (-1403f <= func_1().b));
    let var_4 = vec2<bool>(!select(false, var_3.x, _wgslsmith_sub_i32(global0.x, var_1.e) != global2.d), true);
    var_3 = vec4<bool>(true, global2.a.x, !var_1.d.a.a.x, var_2.x <= 1u);
    var var_5 = func_1().a;
    var_1 = Struct_3(0u, ~(~(~(vec4<u32>(4294967295u, var_5.e, global1.x, global1.x) << (var_1.b % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c - var_1.c) + vec4<f32>(-1437f, -308f, -801f, var_1.d.b))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.d.b, -1435f, var_1.d.b) + var_1.c))))), var_1.d, max(17598i, abs(_wgslsmith_div_i32(-1i << (var_1.d.a.b % 32u), -20665i))));
    var var_6 = u_input.c.x | 0u;
    let x = u_input.a;
    s_output = StorageBuffer(min(global1.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(func_3().xw, u_input.c.yy >> (vec2<u32>(75837u, global1.x) % vec2<u32>(32u))), 0u)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, global2.b, u_input.a), vec3<u32>(4294967295u, var_1.d.a.b, u_input.c.x), vec3<bool>(var_3.x, true, false)) | (~vec3<u32>(global1.x, 4294967295u, var_1.a) >> (firstTrailingBit(vec3<u32>(u_input.a, var_1.b.x, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~var_1.b.zzx ^ var_2, vec3<u32>(global2.b, ~var_2.x, _wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(101175u, global2.e))))), min(abs(max(var_1.b.yx, ~vec2<u32>(var_1.b.x, 4294967295u))), reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(33093u, 44923u), u_input.c.yy) & select(u_input.c.zy, vec2<u32>(25399u, global1.x), vec2<bool>(var_3.x, true)))));
}

