struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<bool, 29> = array<bool, 29>(false, false, true, true, false, true, false, false, true, true, true, true, false, false, false, false, false, false, false, true, false, true, false, true, false, false, false, true, true);

var<private> global2: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true));

var<private> global3: u32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<f32> {
    global3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)]) | ~global0[_wgslsmith_index_u32(1u, 11u)]), 0u), _wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(42072u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(1362u, 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(44647u, 11u)], 6385u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 0u, 72256u)), ~vec3<u32>(35145u, 0u, 17149u)), min(vec3<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(104u, 11u)], global0[_wgslsmith_index_u32(65001u, 11u)]), abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 8865u, global0[_wgslsmith_index_u32(1u, 11u)])))), ~abs(~vec3<u32>(81363u, 41502u, 4294967295u))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1734f, 1533f) - vec2<f32>(1230f, -150f)) * vec2<f32>(-602f, 623f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1356f, 626f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2161f, 396f)))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-941f, -1020f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-991f, -189f), vec2<f32>(967f, 179f))))))), any(vec4<bool>(!(u_input.a.x == u_input.a.x), select(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 29u)], true) && (4294967295u > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16045u, 11u)], 11u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(44248u), min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 41753u), ~36360u), 29u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 29u)], true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(var_0.a, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))))), var_0.b);
    let var_2 = Struct_3(var_0, var_0, !(!select(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true), vec2<bool>(var_0.b, true), !global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 29u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(63896u, 45592u, _wgslsmith_mult_u32(reverseBits(0u), 1u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 2897u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(57834u, 11u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)])) << (vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 11u)], 42602u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4975u, 11u)], 11u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(59604u, 11u)], 11u)] % 32u), 11u)], ~22125u) % vec3<u32>(32u))), u_input.a.x);
    let var_3 = var_2;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-404f * 1097f))) * 1794f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, -934f, var_3.c.x)) + -2111f))) - var_0.a.x));
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, -222f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(259f, -118f), vec2<f32>(-919f, 1039f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -202f)))), vec2<bool>(true, any(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 29u)], true, true))))), true), Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), !(all(vec3<bool>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], true)) | (global1[_wgslsmith_index_u32(0u, 29u)] & global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71050u, 11u)], 11u)], 11u)], 11u)], 11u)], 29u)]))), select(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54531u, 11u)], 29u)], global1[_wgslsmith_index_u32(26753u, 29u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14694u, 11u)], 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 29u)]), vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 29u)], global1[_wgslsmith_index_u32(0u, 29u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8687u, 11u)], 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34093u, 11u)], 11u)], 29u)], global1[_wgslsmith_index_u32(20116u, 29u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 29u)])), !vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 29u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 29u)]))), vec2<bool>(any(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false, false)), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 10681u), vec2<u32>(global0[_wgslsmith_index_u32(41476u, 11u)], global0[_wgslsmith_index_u32(16358u, 11u)])), ~vec2<u32>(7358u, global0[_wgslsmith_index_u32(0u, 11u)])) >> (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)] << (global0[_wgslsmith_index_u32(43147u, 11u)] % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(24397u, 11u)], 1u)) % 32u), 29u)]), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(133326u, 0u, global0[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(19337u, 11u)], 1u), vec3<u32>(4294967295u, 86217u, 62612u)))), -1i);
    var var_1 = ~countOneBits(~1u);
    var var_2 = Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1733f, 824f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.a * vec2<f32>(1983f, var_0.a.a.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(557f, var_0.b.a.x), var_0.b.a)))), global1[_wgslsmith_index_u32(49173u >> (0u % 32u), 29u)]), select(select(vec2<bool>(true, all(vec4<bool>(false, var_0.c.x, false, false))), !(!vec2<bool>(global1[_wgslsmith_index_u32(87459u, 29u)], false)), !vec2<bool>(var_0.b.b, var_0.b.b)), !(!(!var_0.c)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12083u, 11u)], 29u)]), vec3<u32>(~1u << (~firstTrailingBit(4294967295u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], var_0.d.x), _wgslsmith_div_vec2_u32(vec2<u32>(36539u, var_0.d.x), vec2<u32>(15738u, 48889u))) << (~(var_0.d.x << (var_0.d.x % 32u)) % 32u), ~firstTrailingBit(~1u)), ~max(~(-1i), countOneBits(var_0.e)) << ((_wgslsmith_mod_u32(countOneBits(var_0.d.x), var_0.d.x) >> (~42222u % 32u)) % 32u));
    let var_3 = 1u;
    var var_4 = false;
    return var_2.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_2 {
    let var_0 = false;
    global0 = array<u32, 11>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())), var_0), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(max(arg_0.a, arg_0.a))) - vec2<f32>(_wgslsmith_f_op_f32(sign(872f)), _wgslsmith_f_op_f32(step(-155f, 1028f)))), any(vec3<bool>(!var_0, arg_1, true))), arg_0.a.x, arg_0);
    let var_2 = arg_0;
    var var_3 = Struct_3(var_1.b, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.a) - vec2<f32>(1371f, -409f))), !var_1.d.b), vec2<bool>(arg_1, false), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(96952u, arg_2, 4294967295u)) << (~vec3<u32>(1u, 1u, arg_2) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_2, 4294967295u, global0[_wgslsmith_index_u32(0u, 11u)]) | vec3<u32>(17550u, 0u, global0[_wgslsmith_index_u32(arg_2, 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_2, arg_2))), ~(~vec3<u32>(1u, arg_2, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)])) >> (min(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19024u, 11u)], 11u)], 0u, arg_2), vec3<u32>(27378u, global0[_wgslsmith_index_u32(arg_2, 11u)], arg_2)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(70219u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), vec3<u32>(~0u, 1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40843u, 11u)], 11u)], arg_2)))), u_input.a.x);
    return Struct_2(arg_0, var_3.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.x))))), arg_0);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = vec4<i32>(u_input.a.x, u_input.a.x & 29387i, abs(~_wgslsmith_mod_i32(3038i, 1i)), ~(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) << (4294967295u % 32u)) ^ -22477i);
    global2 = array<vec4<bool>, 15>();
    let var_1 = 35172u;
    global2 = array<vec4<bool>, 15>();
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), false), reverseBits(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, u_input.a.x))) > -25156i, _wgslsmith_mult_u32(111368u, max(_wgslsmith_add_u32(40947u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 11u)], 11u)] % 32u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(52026u, 11u)], var_1)), ~5656u)));
    return vec2<bool>(!(all(global2[_wgslsmith_index_u32(1u, 15u)]) || select(arg_2.x, any(vec3<bool>(arg_1.b, var_2.a.b, arg_2.x)), true)), any(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1 ^ global0[_wgslsmith_index_u32(31520u, 11u)], ~global0[_wgslsmith_index_u32(var_1, 11u)]), 15u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1, 11u)], 11u)], 4294967295u, 4150u, 1u), vec4<u32>(16024u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6240u, 11u)], 11u)], var_1, var_1)) & 0u, 15u)], !select(global2[_wgslsmith_index_u32(0u, 15u)], vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80427u, 11u)], 29u)], var_2.d.b, true), false))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: bool) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = -66147i;
    let var_2 = func_4(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), 1i < (0i << (global0[_wgslsmith_index_u32(4294967295u, 11u)] % 32u))), arg_0.x, (global0[_wgslsmith_index_u32(1u, 11u)] << (4294967295u % 32u)) & _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26652u, 11u)], 11u)] | 1289u, ~1u)).d, false, 4294967295u).a;
    let var_3 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35210u, 11u)], 11u)];
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(428f, -2243f, -686f, -211f)), vec4<f32>(var_2.a.x, -269f, 1000f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.x, var_2.a.x, 175f, -501f))))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1635f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 820f)), 895f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) - var_2.a.x)))));
    return func_1(func_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(252f)), _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), 277f < _wgslsmith_f_op_f32(var_4.x * var_2.a.x)), true, 0u), var_2, arg_1.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, var_2.a.x, 1843f, -1000f)) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(floor(988f)), _wgslsmith_f_op_f32(abs(-100f)), _wgslsmith_f_op_f32(max(-375f, 1903f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1045f)))) * _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-397f - -1520f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1049f * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1247f - -314f))))));
    let var_1 = select(!func_5(select(func_1(Struct_2(Struct_1(vec2<f32>(1596f, 514f), global1[_wgslsmith_index_u32(57253u, 29u)]), Struct_1(vec2<f32>(-753f, -2449f), false), -154f, Struct_1(vec2<f32>(-639f, -678f), true)), Struct_1(vec2<f32>(319f, -2198f), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106948u, 11u)], 29u)]), vec4<f32>(-461f, var_0.x, var_0.x, 456f)), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 29u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)])), select(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30002u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)] | 4294967295u, 15u)], vec4<bool>(true, global1[_wgslsmith_index_u32(29793u, 29u)], false, true), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88997u, 11u)], 11u)], 11u)], 29u)] & false), global1[_wgslsmith_index_u32(44341u | firstTrailingBit(1u), 29u)]), !func_5(select(vec2<bool>(true, true), func_1(Struct_2(Struct_1(var_0, true), Struct_1(var_0, false), var_0.x, Struct_1(var_0, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55522u, 11u)], 11u)], 11u)], 29u)])), Struct_1(vec2<f32>(var_0.x, var_0.x), true), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 29u)]), vec4<f32>(-239f, -416f, -570f, 1000f)), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17505u, 11u)], 11u)], 11u)], 29u)], true)), vec4<bool>(0u == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10806u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], true, true, all(global2[_wgslsmith_index_u32(4294967295u, 15u)])), func_4(func_4(Struct_1(var_0, false), false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70036u, 11u)], 11u)], 11u)]).a, func_4(Struct_1(var_0, true), global1[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)]).a.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(min(63687u, 4294967295u), 11u)], 11u)]).d.b), !(!vec2<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], 29u)], true)), true)));
    var var_2 = -926f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -906f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_4 = ~(~(~(~u_input.a) & vec2<i32>(abs(u_input.a.x), min(-35751i, -25096i))));
    let var_5 = select(select(!vec2<bool>(false, var_1.x), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)] < global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], !var_1.x), var_1), select(vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 29u)] && all(vec2<bool>(false, global1[_wgslsmith_index_u32(33095u, 29u)])), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(49687u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), 29u)]), var_1, true), var_1);
    let var_6 = Struct_1(var_0, !(global1[_wgslsmith_index_u32(44109u, 29u)] && !var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(55456u, 11u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 68998u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)]), vec2<u32>(global0[_wgslsmith_index_u32(23051u, 11u)], 24368u))) >> (abs(reverseBits(vec2<u32>(37640u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)]))) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-6471i, u_input.a.x), min(var_4, u_input.a)) ^ ~firstLeadingBit(u_input.a), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, 0i), vec3<i32>(0i, 20407i, u_input.a.x)) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36027u, 11u)], 11u)], 11u)] % 32u), var_4.x)), ~var_4, _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-3100i, -4859i), var_4.x), u_input.a.x));
}

