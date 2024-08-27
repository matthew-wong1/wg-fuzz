struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_2, 11>;

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: u32;

var<private> global4: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(267f, -1074f, -286f), vec3<f32>(-982f, -555f, 1000f), vec3<f32>(-282f, -1010f, 568f), vec3<f32>(-1625f, 128f, -360f), vec3<f32>(-764f, 882f, 1367f), vec3<f32>(-947f, -607f, -345f), vec3<f32>(629f, -2062f, -1876f), vec3<f32>(-446f, -1248f, -254f), vec3<f32>(225f, 428f, 1931f), vec3<f32>(-522f, -1322f, -511f), vec3<f32>(-173f, -203f, 711f), vec3<f32>(-190f, 1000f, -1155f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = countOneBits(-global2[_wgslsmith_index_u32(~(~u_input.a), 15u)]);
    global1 = array<Struct_2, 11>();
    let var_1 = abs(u_input.c.x);
    var var_2 = arg_0;
    let var_3 = any(select(arg_0.c, select(var_2.c, vec2<bool>(all(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x)), true), arg_0.c.x), var_2.c));
    return Struct_2(46840i, ~(~(abs(vec4<u32>(0u, 1u, 1u, u_input.a)) >> (vec4<u32>(0u, u_input.d, 0u, u_input.b) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.b)))), _wgslsmith_mult_i32(select(-(u_input.c.x | var_0.x), ~u_input.c.x, _wgslsmith_div_f32(-623f, 202f) == _wgslsmith_f_op_f32(-var_2.a)), (~var_1 >> (~u_input.a % 32u)) ^ 1i));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_2(-_wgslsmith_dot_vec3_i32(~(-u_input.c), u_input.c), abs(_wgslsmith_mult_vec4_u32(abs(~vec4<u32>(16007u, 64628u, u_input.a, u_input.b)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a, 1u, u_input.b, 0u)), vec4<u32>(0u, u_input.d, 0u, u_input.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1038f, 2003f, 261f, -1836f)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(791f + 581f))), _wgslsmith_f_op_f32(-1039f + _wgslsmith_div_f32(-1252f, 847f)), -754f, -442f)), -_wgslsmith_mult_i32(~25635i, ~u_input.c.x) | _wgslsmith_sub_i32(-u_input.c.x, -1i));
    global4 = array<vec3<f32>, 12>();
    let var_1 = var_0.c.xw;
    var var_2 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), false), any(vec4<bool>(true, false, arg_0, false))), select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), arg_0)), all(vec2<bool>(arg_0, arg_0))), vec2<bool>(_wgslsmith_mod_u32(4294967295u, u_input.a) < reverseBits(4294967295u), true), vec2<bool>(!any(vec4<bool>(false, true, arg_0, true)), arg_0));
    let var_3 = Struct_2(~u_input.c.x, _wgslsmith_mult_vec4_u32(var_0.b, _wgslsmith_mult_vec4_u32(~var_0.b, vec4<u32>(26644u, var_0.b.x, 58122u, 50275u) & var_0.b)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(0u, var_0.b.x)), u_input.a, 83192u), vec4<u32>(1u, 1u, 1u, ~var_0.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1915f, var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.x))), 414f)), 2147483647i);
    return var_0.b;
}

fn func_1() -> u32 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_clamp_u32(42040u, u_input.a, u_input.b)), 44263u ^ (17097u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 4294967295u), vec3<u32>(u_input.d, 4294967295u, 64718u)) % 32u))), 27u)]);
    global2 = array<vec4<i32>, 15>();
    var var_1 = global0[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(~(~120002u), 27u)]).b.x, 27u)];
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - -1104f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(var_1.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, 1453f, 527f) - vec4<f32>(-1441f, var_0.c.x, -1447f, -312f)))), select(select(select(vec2<bool>(var_1.c.x, true), var_1.c, vec2<bool>(var_1.c.x, var_1.c.x)), !var_1.c, var_0.b.x == u_input.d), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), !var_1.c, var_1.c), any(select(vec3<bool>(var_1.c.x, false, false), vec3<bool>(false, var_1.c.x, var_1.c.x), vec3<bool>(false, false, false))))));
    let var_3 = Struct_2(var_0.a, func_3(false), var_1.b, min(u_input.c.x, -1i));
    return var_2.b.x << (4294967295u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~vec4<u32>(u_input.d, ~countOneBits(1u), _wgslsmith_mult_u32(u_input.a, u_input.d), u_input.a), ~(~vec4<u32>(4294967295u, 1u, ~u_input.d, 1u)), false);
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, func_1()), 12u)];
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(global0[_wgslsmith_index_u32(var_0.x, 27u)]).c.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1000f, 1214f, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1252f - 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1261f)));
    global1 = array<Struct_2, 11>();
    var var_3 = !(~var_0.x < 1u);
    var_3 = any(!select(vec2<bool>(all(vec4<bool>(true, false, false, false)), false), vec2<bool>(true, true), false));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-abs(u_input.c), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x)), 9236i, i32(-1i) * -20157i)) & 1i, global2[_wgslsmith_index_u32(var_0.x, 15u)], u_input.c.x);
}

