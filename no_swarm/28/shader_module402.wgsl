struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global1: array<bool, 22>;

var<private> global2: vec3<bool>;

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 150u, 4294967295u), false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1965f - -1200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-199f, -901f)) * 108f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1226f * -1088f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-684f, -423f))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1f * 1290f), _wgslsmith_f_op_f32(trunc(var_0.x)));
    return abs(~(~4294967295u));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<f32>) -> bool {
    var var_0 = false;
    var var_1 = ~1u;
    let var_2 = select(abs(~_wgslsmith_mult_vec4_u32(~vec4<u32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x), ~vec4<u32>(global3.b.x, global3.b.x, 4294967295u, global3.b.x))), _wgslsmith_mult_vec4_u32(abs(select(~vec4<u32>(40983u, global3.b.x, 0u, global3.b.x), ~vec4<u32>(global3.b.x, 54665u, global3.b.x, 4294967295u), vec4<bool>(true, true, arg_0, true))), vec4<u32>(_wgslsmith_clamp_u32(global3.b.x, ~global3.b.x, 4294967295u), func_3(), global3.b.x, 1u)), !select(select(select(vec4<bool>(true, global2.x, global2.x, global1[_wgslsmith_index_u32(global3.b.x, 22u)]), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(arg_0, global2.x, global1[_wgslsmith_index_u32(global3.b.x, 22u)], global2.x)), select(vec4<bool>(global2.x, false, global3.c, false), vec4<bool>(false, true, arg_0, global1[_wgslsmith_index_u32(30400u, 22u)]), true), !global2.x), !select(vec4<bool>(global1[_wgslsmith_index_u32(1692u, 22u)], true, global3.c, false), vec4<bool>(true, global3.a.x, false, false), true), !vec4<bool>(false, global2.x, true, false)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, abs(select(global3.b.x, global3.b.x >> ((var_2.x ^ var_2.x) % 32u), all(global2.xz)))), 17u)];
    var var_3 = arg_1.x;
    return global3.a.x & !arg_0;
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + 1038f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))) <= 636f);
    var var_1 = select(false, true, any(global0[_wgslsmith_index_u32(~(~38671u << (_wgslsmith_sub_u32(global3.b.x, 8145u) % 32u)), 17u)]));
    global2 = select(!(!global0[_wgslsmith_index_u32(max(global3.b.x, _wgslsmith_mult_u32(global3.b.x, 10684u)), 17u)]), global0[_wgslsmith_index_u32(~max(global3.b.x, 7666u), 17u)], !vec3<bool>(true, !func_2(var_0, vec4<i32>(u_input.a, u_input.a, 16038i, 0i), arg_0.yyx), select(all(global2.zy), global3.b.x >= global3.b.x, global1[_wgslsmith_index_u32(~global3.b.x, 22u)])));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -664f, arg_0.x))))), arg_0.xzz)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1631f, 510f)) * _wgslsmith_f_op_f32(1269f + 1578f)))));
    var var_3 = _wgslsmith_f_op_f32(step(1693f, _wgslsmith_f_op_f32(-var_2.x)));
    return vec3<u32>(global3.b.x, ~global3.b.x, ~global3.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    global0 = array<vec3<bool>, 17>();
    let var_1 = Struct_1(vec2<bool>(!(_wgslsmith_f_op_f32(329f * arg_2.x) == arg_2.x), !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(29943u, global3.b.x, global3.b.x, arg_0.b.x), vec4<u32>(arg_0.b.x, global3.b.x, 0u, 6303u)), 22u)]), ~global3.b, any(select(select(select(global2.xy, arg_0.a, arg_0.a.x), vec2<bool>(global2.x, global3.a.x), all(vec2<bool>(false, true))), !global3.a, global3.a)));
    global2 = select(!vec3<bool>(all(!vec4<bool>(true, global3.c, global1[_wgslsmith_index_u32(1u, 22u)], true)), !(46353u == global3.b.x), any(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 22u)]))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(18054u, _wgslsmith_mult_u32(_wgslsmith_div_u32(global3.b.x, ~arg_0.b.x), arg_0.b.x), countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.b.x, arg_0.b.x, global3.b.x, 10614u), vec4<u32>(7121u, global3.b.x, global3.b.x, 4102u)), ~vec4<u32>(global3.b.x, var_1.b.x, arg_0.b.x, 1u)))), 17u)], global0[_wgslsmith_index_u32(global3.b.x, 17u)]);
    var var_2 = arg_2.x;
    return Struct_1(select(select(select(var_1.a, !global3.a, true), vec2<bool>(global2.x, false), !vec2<bool>(true, arg_0.c)), global2.xz, global2.zz), max(~(~global3.b), countOneBits(~vec3<u32>(var_1.b.x, 0u, global3.b.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(56939u | global3.b.x);
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-(~25452i), firstLeadingBit(firstLeadingBit(-56710i)))), -2147483647i, -u_input.a);
    let var_2 = !(all(vec4<bool>(!global1[_wgslsmith_index_u32(1222u, 22u)], all(vec4<bool>(global1[_wgslsmith_index_u32(global3.b.x, 22u)], false, global2.x, global3.c)), false, false)) & true);
    let var_3 = func_4(Struct_1(vec2<bool>(!any(vec4<bool>(global2.x, var_2, false, global1[_wgslsmith_index_u32(49149u, 22u)])), !(global3.a.x == global1[_wgslsmith_index_u32(33595u, 22u)])), func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), global1[_wgslsmith_index_u32(global3.b.x, 22u)] && !func_2(global2.x, vec4<i32>(var_1, u_input.a, 2147483647i, 0i), vec3<f32>(-758f, -208f, -533f))), abs(countOneBits(abs(-vec4<i32>(u_input.a, -38979i, u_input.a, u_input.a)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, 278f, 1472f, -114f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1000f, -265f, 1477f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1796f, 1356f, -1000f, 354f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-738f, 1192f, -199f, -469f)), true))))));
    let var_4 = Struct_1(global3.a, select(vec3<u32>(var_3.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_3.b.x, var_3.b.x, 0u), vec4<u32>(1u, 64000u, global3.b.x, global3.b.x)), vec4<u32>(var_3.b.x, 35154u, global3.b.x, var_3.b.x) >> (vec4<u32>(global3.b.x, var_3.b.x, var_3.b.x, 4294967295u) % vec4<u32>(32u))), 1u), vec3<u32>(firstLeadingBit(19351u), _wgslsmith_mod_u32(41639u, abs(58702u)), select(~global3.b.x, _wgslsmith_div_u32(1u, 81616u), !global1[_wgslsmith_index_u32(var_3.b.x, 22u)])), vec3<bool>(!any(vec2<bool>(false, false)), false, var_1 > 1i)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(-max(vec4<i32>(1i, 0i, 0i, u_input.a), vec4<i32>(-1i, 2147483647i, var_1, 49065i)) | _wgslsmith_mod_vec4_i32(vec4<i32>(10198i, -38192i, u_input.a, var_1), vec4<i32>(-1i, var_1, var_1, u_input.a) & vec4<i32>(-1i, var_1, 38822i, var_1)), ~(vec4<i32>(0i, -2147483647i, u_input.a, u_input.a) & vec4<i32>(u_input.a, var_1, -35883i, -2147483647i)), vec4<i32>(_wgslsmith_mod_i32(abs(u_input.a), _wgslsmith_mod_i32(-1i, u_input.a)), 29334i, i32(-1i) * -1i, u_input.a)), var_1);
}

