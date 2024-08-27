struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    global1 = select(!select(select(vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global1.x, false), !vec3<bool>(false, global1.x, true)), select(vec3<bool>(global1.x, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], arg_1, global0[_wgslsmith_index_u32(1u, 11u)]), global0[_wgslsmith_index_u32(~24359u, 11u)]), vec3<bool>(arg_1, any(global2[_wgslsmith_index_u32(1u, 26u)]), all(vec3<bool>(global0[_wgslsmith_index_u32(47350u, 11u)], true, arg_1)))), select(select(select(!vec3<bool>(global1.x, true, true), !vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(79304u, 11u)]), !arg_1), select(vec3<bool>(global0[_wgslsmith_index_u32(26352u, 11u)], true, arg_1), vec3<bool>(arg_1, global1.x, true), global0[_wgslsmith_index_u32(1u, 11u)]), arg_1), select(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1, false, global1.x), vec3<bool>(true, arg_1, false)), select(vec3<bool>(false, arg_1, false), vec3<bool>(false, arg_1, arg_1), arg_1), select(vec3<bool>(false, global1.x, arg_1), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false))), vec3<bool>(true, arg_1, true), global0[_wgslsmith_index_u32(22363u >> (1u % 32u), 11u)] | false), all(select(vec2<bool>(global1.x, true), global1.yx, true))), !(!(!arg_1 | true)));
    var var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(~49000u, ~min(1035u, 38009u), ~1u), ~abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(58825u, 23329u, 4294967295u), vec3<u32>(0u, 1u, 24410u), vec3<u32>(69750u, 0u, 77574u))));
    global2 = array<vec4<bool>, 26>();
    global0 = array<bool, 11>();
    global1 = vec3<bool>(!(!any(select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(var_0.x, 11u)]), global2[_wgslsmith_index_u32(var_0.x, 26u)], true))), any(select(global2[_wgslsmith_index_u32(var_0.x >> (var_0.x % 32u), 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], select(global2[_wgslsmith_index_u32(5883u & var_0.x, 26u)], select(vec4<bool>(global1.x, true, global0[_wgslsmith_index_u32(19871u, 11u)], arg_1), vec4<bool>(true, false, true, false), false), vec4<bool>(global0[_wgslsmith_index_u32(21746u, 11u)], global0[_wgslsmith_index_u32(var_0.x, 11u)], global1.x, global0[_wgslsmith_index_u32(var_0.x, 11u)])))), true);
    return ~0u << (var_0.x % 32u);
}

fn func_2(arg_0: i32) -> vec2<f32> {
    global2 = array<vec4<bool>, 26>();
    var var_0 = vec3<u32>(countOneBits(func_3(_wgslsmith_div_i32(-1i, u_input.a.x), true | any(global2[_wgslsmith_index_u32(7198u, 26u)]))), abs(_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(33945u, 22725u), 4294967295u, 1u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(59360u, 91447u)))), 1525u);
    let var_1 = ~vec4<u32>(~(~(~1u)), ~_wgslsmith_mult_u32(var_0.x, var_0.x), ~_wgslsmith_div_u32(abs(var_0.x), 28178u), var_0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-321f * 1168f), Struct_1(vec3<u32>(var_1.x, _wgslsmith_div_u32(97453u, ~var_0.x), 4294967295u)));
    let var_3 = select(vec3<i32>(-(~_wgslsmith_div_i32(u_input.a.x, -2147483647i)), -_wgslsmith_mod_i32(u_input.a.x, 11314i), (_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 8512i), u_input.a.xz) >> (~var_1.x % 32u)) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, var_2.b.a.x), _wgslsmith_div_u32(var_2.b.a.x, var_0.x)) % 32u)), u_input.a.wxw, select(vec3<bool>(any(!vec2<bool>(global0[_wgslsmith_index_u32(var_2.b.a.x, 11u)], global1.x)), true, any(select(global2[_wgslsmith_index_u32(4294967295u, 26u)], vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 11u)], false, global1.x), vec4<bool>(global1.x, false, false, false)))), select(select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global0[_wgslsmith_index_u32(var_2.b.a.x, 11u)], global0[_wgslsmith_index_u32(21056u, 11u)]), false && global0[_wgslsmith_index_u32(var_1.x, 11u)]), select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global1.x, global1.x), !vec3<bool>(false, global1.x, global1.x), false == global0[_wgslsmith_index_u32(var_1.x, 11u)]), vec3<bool>(global1.x, all(global2[_wgslsmith_index_u32(1u, 26u)]), any(vec3<bool>(global1.x, false, global0[_wgslsmith_index_u32(var_0.x, 11u)])))), select(!(global0[_wgslsmith_index_u32(var_2.b.a.x, 11u)] == false), global0[_wgslsmith_index_u32(55445u, 11u)], true)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1743f + 663f), var_2.a)) + vec2<f32>(var_2.a, _wgslsmith_div_f32(1426f, var_2.a))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-784f, _wgslsmith_f_op_f32(var_2.a * var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.a)) + _wgslsmith_f_op_f32(min(193f, 1230f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(var_2.a, 996f)), var_2.a), vec2<f32>(_wgslsmith_f_op_f32(-1000f * var_2.a), var_2.a))), vec2<bool>(true, true)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.a.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1681f, -2204f) * vec2<f32>(780f, -1031f))))))));
    var var_1 = ~(~abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(29350u, 29248u, 3767u), vec3<u32>(0u, 1u, 45401u))));
    var var_2 = Struct_2(-313f, Struct_1(vec3<u32>(1u, var_1.x, ~21986u)));
    global0 = array<bool, 11>();
    let var_3 = var_2.b;
    return _wgslsmith_mod_u32(countOneBits(~18412u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_3.a.yz, min(_wgslsmith_add_vec2_u32(var_1.zz, vec2<u32>(var_2.b.a.x, var_2.b.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_3.a.x, var_1.x), var_3.a.xx))), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(1i, 1i, 1i)), vec3<i32>(-1i) * -u_input.a.xwx) != ~min(u_input.a.x, 26891i), false, any(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(30092u), func_1()) ^ 1u, 26u)]));
    let var_0 = abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(44692u, 1u, _wgslsmith_add_u32(39420u, 5734u), 1u), min(reverseBits(vec4<u32>(18142u, 9274u, 58310u, 28575u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(55321u, 0u, 23443u, 0u), vec4<u32>(18504u, 45113u, 1u, 4294967295u), vec4<u32>(14183u, 5749u, 4294967295u, 4294967295u))))));
    let var_1 = -65953i;
    let var_2 = Struct_3(var_1, min(1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 0u) << (vec3<u32>(39877u, 1u, var_0) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(19107u, var_0, 4294967295u), vec3<u32>(4294967295u, 0u, var_0))), ~4294967295u)), func_3(-2298i, !global0[_wgslsmith_index_u32(~abs(37499u), 11u)]));
    global1 = !vec3<bool>(!global1.x, false, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(select(vec4<u32>(var_0, 56143u, var_0, var_2.c), vec4<u32>(48737u, 0u, 69561u, var_2.b), false) << (select(vec4<u32>(var_0, var_2.b, 0u, 24733u), vec4<u32>(var_0, 48968u, 4294967295u, var_0), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 11u)])) % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(~var_0, _wgslsmith_mod_u32(var_2.c, var_0), ~0u, var_2.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(step(412f, -255f))) + vec2<f32>(1f, 1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(817f, 1016f), vec2<f32>(862f, 279f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1471f, -272f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1242f, -1160f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(332f - 1603f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-144f - -414f)))))));
}

