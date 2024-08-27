struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<bool, 9>;

var<private> global2: array<i32, 11>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    global1 = array<bool, 9>();
    global0 = select(vec4<bool>(global0.x, select(true, false, global1[_wgslsmith_index_u32(46014u, 9u)]), false, global0.x || any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global0.x, false, global0.x))), select(vec4<bool>(false, global1[_wgslsmith_index_u32(25220u, 9u)], 4294967295u >= _wgslsmith_mod_u32(u_input.a, u_input.c.x), true), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], false)) && global1[_wgslsmith_index_u32(0u, 9u)], select(true, all(vec2<bool>(false, true)), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], true))), true, true), !(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 9u)], true))), !global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    var var_0 = ~(~(i32(-1i) * -2147483647i));
    let var_1 = Struct_1(abs(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, 36601i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<i32>(u_input.b, 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 11u)], global2[_wgslsmith_index_u32(u_input.a, 11u)])), _wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(10731u, 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.b, global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), vec4<i32>(u_input.b, 15694i, u_input.b, 4198i)), select(vec4<i32>(72456i, 10364i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], -36439i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], 2147483647i, global2[_wgslsmith_index_u32(44306u, 11u)], 14912i), vec4<bool>(global1[_wgslsmith_index_u32(51291u, 9u)], global0.x, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(48198u, 11u)], 0i, -26202i) ^ vec4<i32>(global2[_wgslsmith_index_u32(32382u, 11u)], 0i, -2147483647i, global2[_wgslsmith_index_u32(0u, 11u)]), vec4<i32>(global2[_wgslsmith_index_u32(0u, 11u)], u_input.b, u_input.b, u_input.b) & vec4<i32>(u_input.b, 6838i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], 1i), vec4<i32>(u_input.b, 35292i, u_input.b, u_input.b)))));
    global1 = array<bool, 9>();
    return vec4<f32>(841f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-362f, 937f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) * _wgslsmith_f_op_f32(-381f - -861f)))))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f - -214f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(875f, -920f, -1864f)))) * vec3<f32>(_wgslsmith_f_op_f32(1000f + -769f), _wgslsmith_f_op_f32(1685f * -1000f), _wgslsmith_f_op_f32(720f + 160f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(trunc(-952f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * var_0.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_2()).zzy;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), -922f, _wgslsmith_f_op_f32(-var_0.x));
    let var_2 = Struct_1(~arg_1.a);
    return u_input.b & arg_1.a.x;
}

fn func_1() -> vec4<i32> {
    global0 = vec4<bool>(!all(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global0.x, global1[_wgslsmith_index_u32(1u, 9u)], true))), true, (~7040i & ~_wgslsmith_clamp_i32(5969i, -12978i, 2147483647i)) == u_input.b, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1724f, -639f, -500f, 239f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-609f, 429f, 343f, 1548f), vec4<f32>(679f, 449f, 132f, 2429f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-587f, 654f, 1482f, -1237f), vec4<f32>(277f, -441f, -936f, -1019f), global1[_wgslsmith_index_u32(u_input.a, 9u)])), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(231f, 1280f, 649f, 2532f)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, 264f, -1277f, -767f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-417f, 956f, 1170f, 203f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-109f, -851f, 509f, -671f), vec4<f32>(-277f, -1174f, 521f, -100f))))))), _wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = var_0;
    var var_2 = !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, true, any(select(select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 9u)], global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)]), false), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), true)));
    let var_3 = 4294967295u;
    return vec4<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(var_3, 11u)], ~_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_3, 0u), 11u)], -1i, func_3(vec4<bool>(global0.x, true, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(var_3, 9u)]), Struct_1(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(67326u, 11u)], u_input.b, -26268i))))), 2147483647i, firstLeadingBit(-_wgslsmith_mod_i32(u_input.b, ~global2[_wgslsmith_index_u32(u_input.c.x, 11u)])), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(func_1(), ~abs(min(~vec4<i32>(12884i, -50049i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], -12506i), vec4<i32>(u_input.b, 18423i, -1i, global2[_wgslsmith_index_u32(u_input.a, 11u)]) << (u_input.c % vec4<u32>(32u)))));
    let var_1 = Struct_1(~reverseBits(vec4<i32>(~var_0.x, _wgslsmith_div_i32(-19066i, -1i), i32(-1i) * -1i, _wgslsmith_mod_i32(var_0.x, var_0.x))));
    var var_2 = vec4<u32>(1u, ~(~(~0u)), u_input.c.x, u_input.c.x);
    var_2 = u_input.c;
    let var_3 = !select(global0.x, !global0.x, all(!(!vec4<bool>(global0.x, false, global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))));
    var var_4 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(-30340i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 11u)], u_input.b), -u_input.b)), ~(-22616i), global2[_wgslsmith_index_u32(var_2.x | 12517u, 11u)], countOneBits(var_0.x)));
    let var_5 = Struct_1(max(func_1(), _wgslsmith_mod_vec4_i32((var_1.a ^ vec4<i32>(-24368i, var_0.x, 16177i, 17605i)) >> ((vec4<u32>(5343u, 0u, u_input.c.x, 0u) >> (vec4<u32>(var_2.x, 31514u, var_2.x, 11667u) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(~vec4<i32>(-1i, global2[_wgslsmith_index_u32(1u, 11u)], -18822i, var_1.a.x)))));
    var var_6 = -527f;
    var_6 = -1183f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(firstLeadingBit(~vec3<i32>(var_5.a.x, u_input.b, 25929i)), ~(~var_0.xxy)) << ((max(var_2.xwx, min(u_input.c.yxz, var_2.zyw)) & var_2.yxw) % vec3<u32>(32u)), -609f, -var_4.a.x, ~var_2.x, firstTrailingBit(~vec2<i32>(-6811i, 1989i)));
}

