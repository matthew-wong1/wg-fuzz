struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(74488u, 2615u, vec3<bool>(false, true, true), vec2<u32>(31435u, 1u), true), Struct_1(13550u, 1u, vec3<bool>(false, true, true), vec2<u32>(38629u, 46585u), false), Struct_1(1u, 22186u, vec3<bool>(false, true, false), vec2<u32>(0u, 92278u), false), Struct_1(0u, 32138u, vec3<bool>(false, false, true), vec2<u32>(0u, 31725u), true), Struct_1(4294967295u, 53230u, vec3<bool>(true, false, false), vec2<u32>(1u, 1u), false), Struct_1(0u, 11433u, vec3<bool>(true, false, false), vec2<u32>(0u, 4294967295u), false), Struct_1(13485u, 21168u, vec3<bool>(true, true, true), vec2<u32>(1u, 42393u), false), Struct_1(7059u, 36062u, vec3<bool>(true, false, false), vec2<u32>(4294967295u, 35623u), true), Struct_1(1u, 0u, vec3<bool>(false, false, true), vec2<u32>(38807u, 0u), false), Struct_1(1u, 1u, vec3<bool>(true, true, true), vec2<u32>(57149u, 7687u), true), Struct_1(4294967295u, 71288u, vec3<bool>(false, true, false), vec2<u32>(49797u, 1u), true), Struct_1(9193u, 0u, vec3<bool>(true, true, true), vec2<u32>(11904u, 0u), true), Struct_1(4294967295u, 1u, vec3<bool>(true, true, true), vec2<u32>(57769u, 102951u), true), Struct_1(18209u, 98085u, vec3<bool>(false, true, true), vec2<u32>(5952u, 39424u), true), Struct_1(33735u, 0u, vec3<bool>(true, true, true), vec2<u32>(85028u, 0u), false), Struct_1(1u, 1u, vec3<bool>(false, true, true), vec2<u32>(21666u, 4294967295u), false), Struct_1(28523u, 0u, vec3<bool>(false, true, false), vec2<u32>(0u, 4715u), false), Struct_1(49205u, 41010u, vec3<bool>(true, true, true), vec2<u32>(78998u, 4294967295u), false), Struct_1(20160u, 20482u, vec3<bool>(false, false, false), vec2<u32>(1u, 49180u), true), Struct_1(0u, 4294967295u, vec3<bool>(true, false, false), vec2<u32>(1u, 0u), true), Struct_1(1u, 22518u, vec3<bool>(false, true, true), vec2<u32>(0u, 64596u), false), Struct_1(92786u, 1u, vec3<bool>(true, true, true), vec2<u32>(35696u, 1u), false), Struct_1(1u, 31778u, vec3<bool>(true, true, false), vec2<u32>(1u, 1u), true), Struct_1(4294967295u, 25822u, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), true));

var<private> global1: bool;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<bool>(true, true, true), false), Struct_2(vec3<bool>(false, false, true), true), Struct_2(vec3<bool>(true, true, true), false), Struct_2(vec3<bool>(true, false, true), false), Struct_2(vec3<bool>(false, false, false), false), Struct_2(vec3<bool>(false, true, true), true), Struct_2(vec3<bool>(false, true, true), true), Struct_2(vec3<bool>(false, false, true), true), Struct_2(vec3<bool>(true, false, true), false), Struct_2(vec3<bool>(false, true, true), false), Struct_2(vec3<bool>(true, true, false), true), Struct_2(vec3<bool>(true, true, true), true), Struct_2(vec3<bool>(false, false, false), true), Struct_2(vec3<bool>(true, true, true), false), Struct_2(vec3<bool>(true, true, false), true), Struct_2(vec3<bool>(true, false, false), false), Struct_2(vec3<bool>(false, true, true), true));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 24>();
    var var_0 = 47659u;
    var var_1 = all(select(vec3<bool>(all(arg_2.zz) != arg_2.x, true, arg_2.x), vec3<bool>(!(!arg_0), true, _wgslsmith_f_op_f32(min(202f, 173f)) <= arg_1.x), false));
    let var_2 = arg_1.x;
    var var_3 = !((-112f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) + arg_1.x)) & arg_0);
    return 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> vec3<f32> {
    global2 = array<Struct_2, 17>();
    var var_0 = global0[_wgslsmith_index_u32(arg_1.a.a >> (_wgslsmith_mult_u32(~1u, func_3(arg_1.a.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, -860f, -526f) - vec3<f32>(246f, 1284f, 331f)), arg_1.a.c)) % 32u), 24u)];
    let var_1 = vec3<i32>(-1i, _wgslsmith_div_i32(-2109i >> (min(var_0.b, 1u) % 32u), (arg_0 ^ arg_0) & arg_0) >> (arg_1.a.b % 32u), firstTrailingBit(-(~(-16611i))));
    var var_2 = -16524i;
    global2 = array<Struct_2, 17>();
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, 1236f, _wgslsmith_f_op_f32(ceil(-609f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-900f, 2238f, -501f))) - vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), -1169f, _wgslsmith_f_op_f32(-1107f - -784f)))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1766f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1370f, -1000f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(213f))))))));
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = 1u;
    global2 = array<Struct_2, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1, Struct_3(Struct_1(~u_input.a.x, u_input.a.x, !vec3<bool>(arg_0, arg_0, arg_0), ~vec2<u32>(u_input.a.x, u_input.a.x), arg_0)))));
    let var_2 = _wgslsmith_clamp_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) >> (~(~1u) % 32u)), abs(0u), u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-634f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-747f, 155f)), -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(trunc(1837f)))));
    return ~(~abs(_wgslsmith_mult_u32(u_input.a.x, ~var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.a.xw, ~(~vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(~_wgslsmith_div_u32(u_input.a.x, ~8325u), ~1u | ~_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(u_input.a.x, 1690u))));
    global1 = true;
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(var_0.x, 24u)]);
    var var_2 = Struct_3(Struct_1(~(~(~0u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, ~var_1.a.d.x), func_1(true, -25977i)), vec3<bool>(var_1.a.e, true, any(var_1.a.c)), firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(0u, var_0.x, 63898u), var_0.x)), all(select(!vec2<bool>(var_1.a.e, var_1.a.c.x), select(var_1.a.c.yy, vec2<bool>(true, var_1.a.e), true), true))));
    var var_3 = var_1.a;
    global2 = array<Struct_2, 17>();
    let var_4 = global2[_wgslsmith_index_u32(~var_1.a.d.x, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(1i), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(-2147483647i, 0i, -6296i) >> (u_input.a.ywz % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(-25986i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -13331i, 23241i), vec4<i32>(0i, -1i, 3373i, 19346i)), _wgslsmith_div_i32(-1i, -9689i))), vec3<i32>(1i, 1i, 1i)));
}

