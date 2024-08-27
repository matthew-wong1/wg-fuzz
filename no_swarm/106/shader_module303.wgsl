struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_4,
    d: vec2<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: array<vec2<u32>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(745f, global0[_wgslsmith_index_u32(7786u, 18u)]))))))));
    var var_1 = any(!(!vec4<bool>(false, true, any(vec2<bool>(true, false)), true)));
    var_1 = true;
    var var_2 = Struct_1(true, vec4<u32>(firstLeadingBit(u_input.a), u_input.a, select(min(u_input.a, 4294967295u), ~_wgslsmith_sub_u32(u_input.a, u_input.a), false), ~max(1u, u_input.a) >> (~reverseBits(49582u) % 32u)), vec4<u32>(u_input.a, 9603u, 0u, _wgslsmith_clamp_u32(~(~u_input.a), 16980u, _wgslsmith_div_u32(_wgslsmith_mod_u32(21926u, u_input.a), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], vec2<u32>(u_input.a, 1u))))));
    global0 = array<f32, 18>();
    return 31206u;
}

fn func_2() -> Struct_3 {
    var var_0 = select(~((vec4<u32>(u_input.a, u_input.a, 0u, 1u) << (vec4<u32>(4548u, u_input.a, 4294967295u, 1u) % vec4<u32>(32u))) & (vec4<u32>(u_input.a, u_input.a, 15609u, u_input.a) >> (vec4<u32>(16714u, 0u, 42789u, 40349u) % vec4<u32>(32u)))), vec4<u32>(func_3(), ~countOneBits(4294967295u), firstLeadingBit(u_input.a), 45971u), !all(vec2<bool>(true, true))) | _wgslsmith_sub_vec4_u32(vec4<u32>(select(abs(u_input.a), _wgslsmith_add_u32(1u, u_input.a), any(vec2<bool>(true, true))), 2986u, 38189u, 28178u), _wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), ~vec4<u32>(38753u, u_input.a, u_input.a, u_input.a), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), (vec4<u32>(65024u, 936u, 26183u, 38650u) | vec4<u32>(43882u, u_input.a, 11832u, u_input.a)) >> (~vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u) % vec4<u32>(32u))));
    var var_1 = u_input.a;
    let var_2 = Struct_4(Struct_1(all(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), _wgslsmith_add_vec4_u32(max(max(vec4<u32>(6892u, var_0.x, u_input.a, 15205u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(2166u, u_input.a, 1u, var_0.x), vec4<u32>(0u, u_input.a, 0u, var_0.x))), ~(~vec4<u32>(23895u, 54750u, 19320u, var_0.x))), vec4<u32>(var_0.x, reverseBits(var_0.x), 34483u, var_0.x)), Struct_1(true, _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a, 10086u, var_0.x, 45171u)), vec4<u32>(var_0.x | var_0.x, 60292u, 4294967295u, u_input.a)), vec4<u32>(_wgslsmith_clamp_u32(~var_0.x, u_input.a, ~u_input.a), ~41697u, _wgslsmith_div_u32(func_3(), ~45999u), var_0.x)), vec3<bool>(any(vec3<bool>(true, select(false, false, false), true)), true, true && !select(true, false, false)), 1636u);
    var var_3 = Struct_2(global0[_wgslsmith_index_u32(select(countOneBits(firstTrailingBit(~0u)), min(_wgslsmith_mod_u32(~1u, u_input.a & u_input.a), select(_wgslsmith_mod_u32(var_0.x, var_2.a.c.x), _wgslsmith_mult_u32(0u, u_input.a), var_2.a.a)), select(all(select(vec4<bool>(false, false, false, var_2.c.x), vec4<bool>(var_2.b.a, var_2.a.a, var_2.a.a, false), var_2.a.a)), true, false)), 18u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 18u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(892f + -377f), 221f)))), !all(select(var_2.c, var_2.c, true)), var_2.b);
    var_1 = var_3.d.b.x;
    return Struct_3(vec3<u32>(var_0.x, ~_wgslsmith_clamp_u32(~76890u, ~108413u, ~46964u), var_2.a.c.x));
}

fn func_1(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = Struct_5(func_2(), _wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), 43353u, _wgslsmith_mult_u32(1u, u_input.a)))), Struct_4(Struct_1(all(!vec4<bool>(arg_0, arg_0, arg_0, false)), ~(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, 49406u))), Struct_1(false, ~vec4<u32>(0u, 1u, u_input.a, u_input.a) | min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 30706u, 4294967295u, 98715u)), ~vec4<u32>(11522u, u_input.a, u_input.a, 77505u) >> (reverseBits(vec4<u32>(35683u, 0u, 25122u, 4294967295u)) % vec4<u32>(32u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), ~max(_wgslsmith_mult_u32(u_input.a, 1u), u_input.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(953f, arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], arg_1) + vec2<f32>(arg_1, 155f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], 1969f)), vec2<f32>(418f, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(1f * -657f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), Struct_4(Struct_1(all(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, false), arg_0)), vec4<u32>(~u_input.a, abs(u_input.a), 1u, u_input.a), ~vec4<u32>(23377u, u_input.a, u_input.a, u_input.a)), Struct_1(select(false, arg_0, arg_0) || arg_0, ~min(vec4<u32>(105748u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) << (vec4<u32>(1u, 34371u, u_input.a, u_input.a) % vec4<u32>(32u))), !vec3<bool>(arg_0, false, false), u_input.a ^ ~141996u));
    global0 = array<f32, 18>();
    let var_1 = Struct_5(func_2(), 4294967295u, Struct_4(var_0.e.b, var_0.c.b, vec3<bool>(all(var_0.c.c), any(vec4<bool>(arg_0, arg_0, true, true)), arg_0), u_input.a), var_0.d, var_0.c);
    let var_2 = (var_0.e.a.a == any(!vec2<bool>(false, var_0.c.c.x))) || var_1.e.b.a;
    var_0 = var_1;
    return _wgslsmith_f_op_f32(select(var_0.d.x, 572f, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1[_wgslsmith_index_u32(~(~(~50952u)), 27u)] | ~(vec2<u32>(~0u, firstTrailingBit(4294967295u)) ^ global1[_wgslsmith_index_u32(u_input.a, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(832f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(17001u, 18u)] * -948f), _wgslsmith_f_op_f32(func_1(false, 2447f)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 18u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)])))))));
}

