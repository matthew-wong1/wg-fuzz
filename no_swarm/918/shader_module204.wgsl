struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-1000f, -304f, -485f, 1015f));

var<private> global1: f32;

var<private> global2: vec2<u32> = vec2<u32>(40352u, 0u);

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<f32>(-1676f, 2417f), vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(-1000f, -420f), vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(1508f, -1313f), vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(213f, -1496f), vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(-567f, -1132f), vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(-382f, 202f), vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(-1772f, 947f), vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(-279f, 1000f), vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(172f, -1033f), vec4<bool>(true, false, true, true)), Struct_1(vec2<f32>(1414f, 1438f), vec4<bool>(true, false, true, true)), Struct_1(vec2<f32>(858f, -489f), vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(174f, -294f), vec4<bool>(false, false, true, false)), Struct_1(vec2<f32>(-285f, -1364f), vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(1138f, 344f), vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(162f, 203f), vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(814f, 243f), vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(832f, 176f), vec4<bool>(true, false, false, false)), Struct_1(vec2<f32>(1278f, 830f), vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(1000f, -139f), vec4<bool>(false, true, true, false)), Struct_1(vec2<f32>(770f, -373f), vec4<bool>(true, true, true, true)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    global1 = _wgslsmith_f_op_f32(160f * 425f);
    global2 = ~firstLeadingBit(vec2<u32>(4294967295u, 4294967295u << (global2.x % 32u)));
    var var_0 = _wgslsmith_f_op_f32(-global0.a.x);
    global1 = _wgslsmith_f_op_f32(-1006f - 1000f);
    let var_1 = ~(vec3<u32>(17604u, ~global2.x, ~0u) ^ ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(59587u, global2.x, 27403u), vec3<u32>(0u, global2.x, 1u))));
    return 14110u;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = Struct_2(-1403f, ~arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(661f, -1000f), vec2<f32>(arg_2, 2056f))) - _wgslsmith_f_op_vec2_f32(global0.a.wy * vec2<f32>(arg_2, 845f)))), select(select(vec4<bool>(true, false, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, true, arg_1), arg_1), !vec4<bool>(true, false, arg_1, true), !(!vec4<bool>(true, arg_1, arg_1, arg_1)))), select(!(!select(vec2<bool>(true, true), vec2<bool>(arg_1, false), arg_1)), vec2<bool>(countOneBits(0i) > (-3547i & u_input.b.x), true), (true | select(arg_1, arg_1, arg_1)) == any(select(vec4<bool>(true, arg_1, false, false), vec4<bool>(false, arg_1, true, arg_1), arg_1))), select(vec4<bool>(!any(vec4<bool>(arg_1, arg_1, true, arg_1)), false, abs(global2.x) != abs(0u), all(!vec3<bool>(true, false, arg_1))), select(!(!vec4<bool>(arg_1, arg_1, true, arg_1)), !select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, false, true, arg_1)), vec4<bool>(arg_1, 1951u >= global2.x, true, true)), u_input.b.x <= ((u_input.b.x ^ 0i) | -u_input.b.x)));
    return 56464u;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-403f, -789f)));
    global3 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(u_input.a, 0u), ~0u) & vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(75483u, global2.x, 4294967295u), func_2()), firstTrailingBit(~global2.x)), countOneBits(~vec2<u32>(~global2.x, 48170u)));
    var var_2 = Struct_2(var_0, ~4294967295u & firstLeadingBit(global2.x), global3[_wgslsmith_index_u32(func_3(~(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, 37087u, 0u), vec3<u32>(var_1.x, u_input.a, var_1.x)) & select(vec3<u32>(82251u, 8730u, 57029u), vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(true, true, true))), !all(vec2<bool>(false, true)) || any(vec3<bool>(false, true, false)), 990f), 20u)], select(vec2<bool>(true, true), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(all(vec4<bool>(true, true, true, true)), false)), select(!vec4<bool>(true, all(vec3<bool>(false, false, false)), select(true, false, false), any(vec3<bool>(true, true, true))), vec4<bool>(false, any(vec4<bool>(false, true, false, false)), !all(vec3<bool>(true, false, false)), true), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, 3058u > u_input.a, all(vec4<bool>(false, true, false, true)), true), vec4<bool>(true, true, true, true))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(global0.a, vec4<f32>(725f, var_0, global0.a.x, var_2.c.a.x), var_2.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-815f, -1423f, 1000f, 1286f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-707f, -490f, var_2.a, var_0) - vec4<f32>(var_0, global0.a.x, global0.a.x, global0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 238f, var_2.a, 449f)))))));
    return Struct_2(142f, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.x, 37903u, 60072u, 0u), ~vec4<u32>(u_input.a, u_input.a, var_1.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global2.x, global2.x, 19531u), vec4<u32>(47065u, var_2.b, 52592u, 8756u), vec4<u32>(4294967295u, var_2.b, 1u, 0u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(24060u, 4294967295u, u_input.a, 7438u), vec4<u32>(u_input.a, 0u, var_2.b, u_input.a)) % vec4<u32>(32u))), var_2.c, !var_2.d, var_2.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(200f - -366f), _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), arg_1.a.x, arg_0.c.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, 1000f, arg_1.a.x)))));
    return Struct_3(vec4<f32>(-484f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_1.a.x, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f - arg_0.a) * _wgslsmith_f_op_f32(-arg_0.c.a.x))), arg_1.a.x, arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), func_1().c);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_0.a));
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f))))), var_0.a.x, var_0.a.x, var_0.a.x));
    var var_2 = func_4(Struct_2(var_0.a.x, 1u, Struct_1(var_0.a.yw, func_1().c.b), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), func_1().c.b.zy, vec2<bool>(true, true)), vec4<bool>(_wgslsmith_f_op_f32(734f - global0.a.x) > _wgslsmith_f_op_f32(f32(-1f) * -602f), true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), false)), func_1().c);
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_add_u32(global2.x, ~66929u & global2.x), _wgslsmith_clamp_u32(global2.x, 0u, 50550u));
    global1 = _wgslsmith_f_op_f32(-1082f - var_0.a.x);
    var var_4 = any(func_1().e.yxz);
    let var_5 = vec3<bool>(firstTrailingBit(11615u) != _wgslsmith_dot_vec4_u32(vec4<u32>(func_1().b, 30949u, global2.x, ~global2.x), vec4<u32>(114700u, u_input.a, ~u_input.a, global2.x)), _wgslsmith_f_op_f32(step(229f, 1034f)) < _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(trunc(var_0.a.x)) < 802f);
    var var_6 = ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.x, global2.x, u_input.a) & ~vec3<u32>(0u, 17451u, 12385u), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(6043u, global2.x)), u_input.a | 0u), 1965u, ~35531u), vec3<u32>(82533u >> (u_input.a % 32u), 4294967295u, select(4294967295u, 1u, func_1().d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_1.a.x, _wgslsmith_mult_u32(12019u, 0u) >> (0u % 32u));
}

