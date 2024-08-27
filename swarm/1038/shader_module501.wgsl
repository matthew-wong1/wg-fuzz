struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(64613u, 97999u, 1u, 41149u, 91867u, 0u, 1u, 4294967295u, 35029u, 16547u, 4294967295u, 4414u);

var<private> global1: u32;

var<private> global2: array<Struct_2, 18>;

var<private> global3: f32 = 175f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    global0 = array<u32, 12>();
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(~u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), 12u)])), global0[_wgslsmith_index_u32(0u, 12u)]);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1427f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2049f, -1627f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -420f), _wgslsmith_f_op_f32(-1029f * _wgslsmith_div_f32(-809f, -850f)))));
    let var_2 = 336f;
    var var_3 = select(select(vec3<bool>(true, u_input.c.x == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(24647i, -1i)), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, u_input.a >= 4294967295u, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, false)), !any(vec4<bool>(false, true, false, true))), any(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), all(vec4<bool>(false, true, true, false))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), false), true)));
    return vec4<u32>(_wgslsmith_sub_u32(var_0, ~4294967295u), abs(max(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0, 6204u, global0[_wgslsmith_index_u32(53609u, 12u)]), ~global0[_wgslsmith_index_u32(12142u, 12u)]), 88474u)), 24314u >> (~_wgslsmith_div_u32(max(1u, var_0), reverseBits(global0[_wgslsmith_index_u32(u_input.d.x, 12u)])) % 32u), global0[_wgslsmith_index_u32(abs(22041u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(29424u, 12u)], 20811u) >> (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.d.wz, u_input.d.xy)) % 32u)), 12u)]);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = select(~(~(~u_input.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_0.b.x, firstLeadingBit(27237u), arg_2.c.b.x), func_3() | ~vec4<u32>(arg_2.c.b.x, 0u, 47680u, global0[_wgslsmith_index_u32(1u, 12u)])), false) ^ u_input.d;
    global1 = _wgslsmith_clamp_u32(6001u, arg_0.b.x, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(19924u, 12u)], 1u));
    let var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.d, select(vec4<u32>(u_input.a, arg_1.x, global0[_wgslsmith_index_u32(48510u, 12u)], arg_1.x), u_input.d, vec4<bool>(true, true, true, arg_2.a.c.x))), ~vec4<u32>(arg_0.b.x | u_input.a, _wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(u_input.d.x, 12u)]), ~4294967295u, 1u << (arg_2.c.b.x % 32u))), firstLeadingBit(1u));
    var var_2 = Struct_1(~_wgslsmith_add_u32(~(var_1 << (21580u % 32u)), arg_2.a.a), min(var_0.zyx, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(52416u, u_input.a), 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 1u), arg_2.c.a), arg_2.a.a)), vec3<bool>(!arg_2.c.c.x, !any(arg_0.c.yx), true));
    let var_3 = ~(~_wgslsmith_div_vec2_u32(var_0.yz, arg_1));
    return Struct_1(max(0u, ~(~max(1u, arg_0.b.x))), var_2.b, vec3<bool>(true, !var_2.c.x, true));
}

fn func_4(arg_0: Struct_4) -> u32 {
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * 1f))))));
    let var_0 = global0[_wgslsmith_index_u32(arg_0.a.b.x, 12u)];
    var var_1 = -544f;
    global1 = _wgslsmith_mult_u32(4294967295u, 1u);
    var var_2 = vec4<u32>(firstTrailingBit(0u), 29847u >> (min(arg_0.a.b.x, u_input.a) % 32u), 4294967295u, (~_wgslsmith_add_u32(arg_0.a.a, global0[_wgslsmith_index_u32(57325u, 12u)]) >> (arg_0.a.a % 32u)) | arg_0.c.b.x);
    return 43586u;
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    global1 = global0[_wgslsmith_index_u32(~131274u >> (min(~(~u_input.a), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_4(Struct_4(func_2(Struct_1(2898u, u_input.d.xzz, vec3<bool>(arg_0.x, arg_0.x, false)), u_input.d.wx, Struct_4(Struct_1(63999u, vec3<u32>(71748u, 135438u, 1u), vec3<bool>(false, false, arg_0.x)), false, Struct_1(u_input.d.x, vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), arg_0.zxx))), select(arg_0.x, false, true), func_2(Struct_1(global0[_wgslsmith_index_u32(1u, 12u)], u_input.d.yww, vec3<bool>(false, true, false)), u_input.d.ww, Struct_4(Struct_1(0u, u_input.d.xwx, vec3<bool>(true, arg_0.x, false)), true, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16702u, 12u)], 12u)], vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32472u, 12u)], 12u)], 12u)], 12u)], 4294967295u, u_input.d.x), vec3<bool>(arg_0.x, arg_0.x, false)))))), 12u)], 12u)]) % 32u), 12u)];
    global1 = 12185u;
    var var_0 = arg_0.www;
    global2 = array<Struct_2, 18>();
    let var_1 = func_2(Struct_1(8000u, select(_wgslsmith_mult_vec3_u32(reverseBits(u_input.d.yzy), vec3<u32>(50853u, 4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 12u)]) & vec3<u32>(0u, u_input.d.x, u_input.d.x)), u_input.d.wzy, var_0.x), select(vec3<bool>(true, var_0.x, true), !func_2(Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], u_input.d.xxw, vec3<bool>(var_0.x, arg_0.x, var_0.x)), u_input.d.xw, Struct_4(Struct_1(u_input.a, u_input.d.www, arg_0.www), false, Struct_1(u_input.a, u_input.d.zwx, arg_0.yxy))).c, select(!vec3<bool>(true, true, arg_0.x), arg_0.zyz, !arg_0.x))), u_input.d.yw, Struct_4(Struct_1(~26866u, ~firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34897u, 12u)], 12u)], 12u)], global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2892u, 12u)], 12u)])), vec3<bool>(all(arg_0), any(arg_0.yz), false)), var_0.x, Struct_1(4294967295u, ~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 12u)], 4294967295u)), func_2(func_2(Struct_1(0u, vec3<u32>(u_input.a, 0u, u_input.a), vec3<bool>(false, false, arg_0.x)), vec2<u32>(4294967295u, u_input.d.x), Struct_4(Struct_1(u_input.d.x, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 12u)], u_input.d.x, 1u), vec3<bool>(arg_0.x, var_0.x, var_0.x)), true, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], u_input.d.wwx, arg_0.yyy))), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31289u, 12u)], 12u)]), vec2<u32>(4294967295u, 33552u)), Struct_4(Struct_1(1u, vec3<u32>(global0[_wgslsmith_index_u32(81903u, 12u)], u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27185u, 12u)], 12u)]), arg_0.zzy), arg_0.x, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 12u)], 12u)], vec3<u32>(u_input.a, 0u, 4294967295u), arg_0.zxw))).c)));
    return !arg_0;
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = false;
    global2 = array<Struct_2, 18>();
    let var_1 = vec3<bool>(true, true, all(!vec3<bool>(arg_1.c.x, any(vec2<bool>(arg_1.c.x, arg_1.a)), false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1309f, _wgslsmith_f_op_f32(f32(-1f) * -1685f), arg_0)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -1653f, arg_0) + vec3<f32>(arg_0, 105f, arg_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 639f, arg_0) - vec3<f32>(-1275f, arg_0, -2155f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, arg_0, 742f) + vec3<f32>(arg_0, arg_0, 111f)))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + 618f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 - -3132f), _wgslsmith_f_op_f32(-arg_0), false || arg_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))))), 1227f));
    let var_3 = var_2.x;
    return Struct_3(all(vec3<bool>(arg_1.c.x, arg_1.c.x, any(select(vec4<bool>(arg_1.a, arg_1.c.x, arg_1.c.x, arg_1.a), vec4<bool>(true, true, var_1.x, false), vec4<bool>(false, false, arg_1.c.x, false))))), u_input.d.wyz, vec3<bool>(any(vec3<bool>(var_1.x || var_1.x, true, true)), false, !(!arg_1.c.x || (1u == arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global3 = 832f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(200f)) - -880f)) - 115f) * 411f);
    let var_2 = func_5(291f, Struct_3(all(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, false))), u_input.d.yyx, vec3<bool>(true, true, any(func_1(vec4<bool>(true, false, true, true))))));
    let var_3 = Struct_4(Struct_1(var_2.b.x, ~var_2.b, var_2.c), ~var_2.b.x < 4294967295u, Struct_1(var_2.b.x, ~(~u_input.d.wyx >> ((vec3<u32>(8389u, 3611u, global0[_wgslsmith_index_u32(var_2.b.x, 12u)]) >> (u_input.d.xxx % vec3<u32>(32u))) % vec3<u32>(32u))), !var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(99505u, countOneBits(u_input.d.x)) | var_3.a.b.yz, _wgslsmith_mod_i32(u_input.b, ((-1i & u_input.c.x) ^ u_input.c.x) >> (~select(global0[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, true) % 32u)));
}

