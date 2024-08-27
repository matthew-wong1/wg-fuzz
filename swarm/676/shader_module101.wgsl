struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(3069f, 119f, 933f), vec3<f32>(-1013f, -235f, 1380f), vec3<f32>(-1000f, -2226f, -469f), vec3<f32>(-1332f, -884f, -1000f), vec3<f32>(413f, 665f, -526f), vec3<f32>(-2375f, -2423f, 211f), vec3<f32>(1279f, 617f, -1398f), vec3<f32>(-883f, -1042f, -1848f), vec3<f32>(-1426f, -1462f, -361f), vec3<f32>(-1148f, -134f, -1181f), vec3<f32>(832f, 1422f, 641f), vec3<f32>(-2430f, 1636f, 1268f), vec3<f32>(654f, 243f, -169f), vec3<f32>(-372f, 1546f, -485f), vec3<f32>(-685f, 1306f, -791f), vec3<f32>(-313f, 1083f, -450f), vec3<f32>(-334f, 1021f, 952f), vec3<f32>(-1268f, 422f, 1269f), vec3<f32>(1264f, 2130f, 1703f), vec3<f32>(-176f, 1000f, -661f), vec3<f32>(-936f, 539f, -461f), vec3<f32>(-1026f, -195f, -822f), vec3<f32>(776f, -674f, 1000f), vec3<f32>(299f, 470f, 792f), vec3<f32>(-2856f, 665f, 152f));

var<private> global2: u32;

var<private> global3: vec4<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> bool {
    global2 = _wgslsmith_clamp_u32(global0.d.x, select(6084u, ~(~_wgslsmith_add_u32(37129u, global3.x)), select(any(vec4<bool>(false, global0.c, false, false)) || true, global0.c, global0.c)), max(~global3.x, ~min(min(global0.d.x, 1u), 1u)));
    let var_0 = ~_wgslsmith_add_i32(select(2147483647i, 1i, true), 1i);
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, select(u_input.c, u_input.c, vec4<bool>(global0.c, true, false, global0.c))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, global0.d.x, 15547u), reverseBits(vec4<u32>(u_input.c.x, global3.x, global0.d.x, global0.e))) % 32u), _wgslsmith_sub_u32(~0u | _wgslsmith_div_u32(global3.x, u_input.b.x), _wgslsmith_div_u32(7695u, 66361u)), 38297u, 6153u) >> (countOneBits(firstLeadingBit(vec4<u32>(14382u, 16372u, u_input.c.x, 21386u) >> (vec4<u32>(32495u, u_input.a, global3.x, 24223u) % vec4<u32>(32u))) | ~(u_input.c ^ vec4<u32>(0u, global3.x, 0u, 60727u))) % vec4<u32>(32u));
    var var_2 = ~19568u;
    let var_3 = Struct_4(Struct_2(true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, _wgslsmith_div_f32(global0.b.x, global0.a.x), global0.b.x, _wgslsmith_f_op_f32(arg_0.x - global0.b.x))))));
    return global0.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = 1i;
    let var_1 = Struct_2(false);
    var var_2 = 40600u;
    var var_3 = Struct_3(Struct_2(true));
    let var_4 = abs(u_input.c | abs(vec4<u32>(u_input.b.x, ~70236u, global3.x << (4294967295u % 32u), u_input.b.x)));
    return vec4<bool>(true, any(vec4<bool>(arg_0.x, func_3(_wgslsmith_f_op_vec2_f32(ceil(global0.b))), -1i != _wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(-53416i, arg_1.x, arg_1.x)), arg_0.x)), false, select(true, arg_0.x, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -1323f))) == true));
}

fn func_1() -> u32 {
    var var_0 = !(!select(select(!vec4<bool>(false, true, global0.c, global0.c), !vec4<bool>(true, false, global0.c, true), vec4<bool>(true, global0.c, true, global0.c)), !func_2(vec4<bool>(global0.c, false, global0.c, false), vec3<i32>(-1i, -2147483647i, 16477i)), !(global0.b.x == 1195f)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(51234u, 25u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1337f * global0.a.x), global0.b.x)), select(false, var_0.x, true), vec3<u32>(abs(_wgslsmith_mod_u32(~global0.e, _wgslsmith_clamp_u32(26667u, global0.e, global3.x))), ~abs(global3.x), 1u), 1u >> (~firstLeadingBit(abs(u_input.b.x)) % 32u));
    var_0 = !select(!vec4<bool>(select(var_0.x, global0.c, var_0.x), any(var_0.wy), all(vec2<bool>(false, global0.c)), false), vec4<bool>(var_0.x, !global0.c, var_0.x, true), true);
    var var_1 = Struct_4(Struct_2(false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(654f, global0.a.x, global0.b.x, -1000f), vec4<f32>(1000f, global0.a.x, global0.b.x, global0.b.x), vec4<bool>(false, false, var_0.x, true)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1922f, global0.b.x, -137f, 1120f))))));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(ceil(1884f)));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!any(vec2<bool>(global0.c, false)), global0.c, global0.c);
    global3 = select(_wgslsmith_clamp_vec4_u32(u_input.c >> (~(u_input.c & u_input.c) % vec4<u32>(32u)), vec4<u32>(global0.e, min(_wgslsmith_dot_vec2_u32(global3.yx, vec2<u32>(global0.d.x, 49353u)), func_1()), min(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 4294967295u), 15930u), u_input.c), vec4<u32>(u_input.b.x, u_input.c.x, 1u, 0u), select(global0.c, true, true));
    global3 = firstTrailingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0.e, global3.x, global3.x, ~73123u)), _wgslsmith_add_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 24532u, u_input.a), vec4<u32>(global0.e, 61030u, 76282u, 13801u)), u_input.c >> (vec4<u32>(global3.x, global0.e, 0u, global0.d.x) % vec4<u32>(32u)), vec4<bool>(global0.c, false, global0.c, true)), vec4<u32>(~u_input.c.x, abs(10014u), ~u_input.a, ~4294967295u))));
    var var_1 = Struct_4(Struct_2(any(vec2<bool>(true, true))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), -2308f))), global0.b.x, 242f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(-1094f * 1329f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.a.x))))))));
    var_0 = !(_wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(global3.x), min(1u, global0.d.x)), _wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.a, u_input.b.x))) < 58711u);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1235f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), 351f)))))), 320f);
}

