struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 52709u, 30534u), vec3<u32>(39211u, 13946u, 12587u), vec3<u32>(8622u, 1u, 15564u), vec3<u32>(42654u, 4294967295u, 4294967295u), vec3<u32>(23407u, 13745u, 1u), vec3<u32>(25751u, 39692u, 1u), vec3<u32>(24567u, 70258u, 4294967295u), vec3<u32>(17762u, 4294967295u, 87845u), vec3<u32>(1u, 69392u, 21072u), vec3<u32>(4294967295u, 25579u, 25503u), vec3<u32>(4294967295u, 17501u, 16734u), vec3<u32>(0u, 4294967295u, 1u));

var<private> global1: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(53886u, 30576u, 4294967295u, 35385u), vec2<bool>(true, false), vec2<i32>(9455i, 18436i), vec4<bool>(true, true, false, false), 49581i);

var<private> global4: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(global3.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-277f)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(470f, 269f)))), 311f));
    var var_1 = global2.b.x;
    global0 = array<vec3<u32>, 13>();
    global0 = array<vec3<u32>, 13>();
    var var_2 = global3.a.x;
    return ~4294967295u;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: i32, arg_3: f32) -> vec2<i32> {
    global4 = true;
    let var_0 = global3.d;
    let var_1 = ~abs(arg_2);
    let var_2 = firstTrailingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(global2.a.x | (13826u << (global3.a.x % 32u)), 13u)], vec3<u32>(49255u, u_input.c.x, 1u) ^ vec3<u32>(global3.a.x, 51848u, u_input.b)), vec3<u32>(u_input.c.x, func_2(), ~(~u_input.b))));
    global1 = array<vec2<bool>, 24>();
    return vec2<i32>(i32(-1i) * -_wgslsmith_mod_i32(var_1, -2147483647i), _wgslsmith_mult_i32(0i, var_1));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global3 = Struct_1(global2.a, !global1[_wgslsmith_index_u32(global2.a.x, 24u)], min(vec2<i32>(reverseBits(-2147483647i), _wgslsmith_mult_i32(53823i, _wgslsmith_clamp_i32(40404i, 1i, global2.c.x))), vec2<i32>(-global3.e, abs(~global3.e))), vec4<bool>(true || (_wgslsmith_f_op_f32(trunc(arg_1)) < _wgslsmith_f_op_f32(-arg_3.b.x)), true, (select(arg_3.a, false, true) && global3.b.x) | true, true), reverseBits(global3.e));
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(0u), 62503u), _wgslsmith_dot_vec3_u32(global2.a.ywy >> (u_input.d % vec3<u32>(32u)), ~global0[_wgslsmith_index_u32(u_input.b, 13u)]), _wgslsmith_add_u32(~1u, _wgslsmith_mod_u32(u_input.b, global3.a.x))), _wgslsmith_sub_u32(1u, ~global3.a.x) | u_input.a, 0u, abs(_wgslsmith_mod_u32(4294967295u, ~0u))), arg_0, -vec2<i32>(global2.e, -(~global2.c.x)), global2.d, global3.c.x);
    global2 = var_0;
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-114f * _wgslsmith_f_op_f32(min(arg_1, 1537f))))))));
    return -28100i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 13>();
    global2 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.x, 27123u), global2.a.zw) >> (u_input.c.xy % vec2<u32>(32u)), global2.a.xy), ~global2.a.x, countOneBits(_wgslsmith_sub_u32(~362u, 0u)), _wgslsmith_add_u32(global3.a.x, _wgslsmith_add_u32(41529u, global3.a.x))), !vec2<bool>(true, global3.d.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-20756i, global3.e) << ((u_input.d.x | global2.a.x) % 32u), ~(~global2.c.x)), ~(func_1(vec3<f32>(-1105f, 160f, -122f), global2.d.x, 8083i, -828f) ^ vec2<i32>(-13406i, global2.e)), vec2<i32>(func_3(!global3.b, _wgslsmith_f_op_f32(-2403f - -509f), Struct_3(false, vec3<f32>(-1442f, -1749f, -768f)), Struct_3(false, vec3<f32>(1842f, -296f, 337f))), ~global3.c.x)), !global2.d, _wgslsmith_add_i32(global2.c.x, select(8803i, -47705i, true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1274f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(119f, -1607f) * vec2<f32>(-1607f, -885f))))), vec2<f32>(-976f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(212f)), -1000f)))));
    let var_1 = vec3<u32>(_wgslsmith_clamp_u32(49792u, 39252u, 0u), 1u, ~_wgslsmith_add_u32(27982u, _wgslsmith_mult_u32(u_input.d.x, global3.a.x)));
    let var_2 = Struct_3(false, vec3<f32>(_wgslsmith_f_op_f32(420f * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_f_op_f32(max(1171f, var_0.x))), 2351f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.b)) - vec3<f32>(_wgslsmith_f_op_f32(-739f - -1622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_2.b.x, 562f)), var_2.b.x, true)))), _wgslsmith_dot_vec2_i32(firstLeadingBit(~(global3.c ^ vec2<i32>(global3.c.x, global3.e))), -(global3.c >> (u_input.c.xy % vec2<u32>(32u)))));
}

