struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(Struct_1(28738i, vec2<f32>(-1277f, -337f), vec3<u32>(1u, 4294967295u, 8709u)));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1i, vec2<f32>(1000f, 751f), vec3<u32>(1u, 71452u, 1630u)), Struct_1(1i, vec2<f32>(-1851f, -295f), vec3<u32>(4294967295u, 4294967295u, 49688u)), Struct_1(-46293i, vec2<f32>(-225f, -1412f), vec3<u32>(1u, 1168u, 11030u)), Struct_1(0i, vec2<f32>(1326f, -564f), vec3<u32>(70453u, 1u, 0u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<u32> {
    let var_0 = false;
    let var_1 = ~(reverseBits(vec2<u32>(66096u, _wgslsmith_mod_u32(global2.a.c.x, 4294967295u))) & global2.a.c.yy);
    global2 = Struct_2(Struct_1(u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.a.b))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-636f, 3040f), _wgslsmith_f_op_vec2_f32(vec2<f32>(595f, global1.a.b.x) + global2.a.b), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(var_0, global0.x))))), vec3<u32>(~var_1.x, ~(~0u), firstLeadingBit(15121u))));
    global1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a.c.x, 1u, var_1.x, var_1.x), min(vec4<u32>(4294967295u, var_1.x, global1.a.c.x, 4294967295u), vec4<u32>(var_1.x, global1.a.c.x, global1.a.c.x, 263u)))), abs(1u)), 4u)]);
    var var_2 = vec4<i32>(-1i) * -max(vec4<i32>(u_input.a, -2801i | global2.a.a, u_input.a, 0i), firstLeadingBit(firstTrailingBit(vec4<i32>(global1.a.a, -1i, global2.a.a, 27732i))));
    return vec3<u32>(global1.a.c.x, global1.a.c.x, ~5966u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = Struct_2(Struct_1(~0i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, 294f) - vec2<f32>(global2.a.b.x, 1975f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.b.x, 1341f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, -2360f)) + _wgslsmith_f_op_vec2_f32(-global2.a.b))), func_3()));
    var var_1 = global2.a.c.x;
    var var_2 = arg_1.x;
    let var_3 = global1.a.b.x;
    var var_4 = firstTrailingBit(~(~(global1.a.c.xy & vec2<u32>(1u, 7049u))));
    return 4294967295u;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = vec2<bool>(func_2(~vec2<i32>(-1i, global1.a.a), !(!vec4<bool>(global0.x, global0.x, true, false))) != ~_wgslsmith_mod_u32(abs(29519u), global1.a.c.x >> (0u % 32u)), any(select(select(vec2<bool>(false, true), vec2<bool>(arg_0, false), vec2<bool>(false, false)), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(global0.x, false), vec2<bool>(true, arg_0), vec2<bool>(true, true)), vec2<bool>(global0.x, true)), vec2<bool>(true, any(vec4<bool>(arg_0, global0.x, arg_0, global0.x))))));
    var var_0 = _wgslsmith_div_u32(5783u, global1.a.c.x);
    var var_1 = arg_1.a.b;
    var_0 = ~(48426u | (4294967295u << (~firstLeadingBit(arg_1.a.c.x) % 32u)));
    global2 = arg_1;
    return select(vec4<bool>(!(!(!arg_0)), all(select(vec4<bool>(true, false, false, arg_0), vec4<bool>(arg_0, arg_0, false, false), true)), false, true), !select(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), !select(vec4<bool>(false, false, true, arg_0), vec4<bool>(arg_0, global0.x, false, global0.x), vec4<bool>(global0.x, global0.x, arg_0, arg_0)), select(vec4<bool>(global0.x, false, arg_0, global0.x), select(vec4<bool>(global0.x, global0.x, arg_0, arg_0), vec4<bool>(true, global0.x, true, arg_0), vec4<bool>(true, arg_0, arg_0, global0.x)), true)), vec4<bool>(global0.x, true, false, !global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(global2.a.b.x, _wgslsmith_f_op_f32(-global1.a.b.x));
    var var_1 = any(func_1(false, Struct_2(Struct_1(u_input.a, global1.a.b, global2.a.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, -530f, -179f, global2.a.b.x) + vec4<f32>(506f, -257f, 862f, 435f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b.x, global1.a.b.x, 698f, global1.a.b.x), vec4<f32>(global2.a.b.x, -582f, var_0.x, 434f))))) & func_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global2.a.c, vec3<u32>(0u, global1.a.c.x, 25507u)), _wgslsmith_mod_vec3_u32(global1.a.c, vec3<u32>(global1.a.c.x, global2.a.c.x, global2.a.c.x))) != (func_3().x & 4294967295u), Struct_2(Struct_1(-u_input.a, _wgslsmith_f_op_vec2_f32(-global2.a.b), vec3<u32>(global2.a.c.x, global1.a.c.x, global1.a.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(771f, -115f, -575f, 565f))).x;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(global2.a.c.x, 11006u, 1u, ~global1.a.c.x | abs(~global2.a.c.x)), max(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, global1.a.c.x), vec4<u32>(global2.a.c.x, 100254u, global2.a.c.x, global2.a.c.x) >> (vec4<u32>(global1.a.c.x, 4294967295u, 4294967295u, 40813u) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, global1.a.c.x), global2.a.c.x, select(20807u, 31584u, global0.x), 13104u)));
    global2 = Struct_2(global3[_wgslsmith_index_u32(~(~(~(~var_2.x))), 4u)]);
    global3 = array<Struct_1, 4>();
    let var_3 = -(~global1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~global2.a.c.x, var_2.x, global1.a.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -928f, global1.a.b.x) + vec3<f32>(-368f, 1000f, 518f)) + vec3<f32>(global2.a.b.x, global1.a.b.x, global1.a.b.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_f_op_f32(global1.a.b.x - -1116f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, global2.a.b.x, global2.a.b.x))))))), ~(~var_2.wy), min(0u >> (~(~global2.a.c.x) % 32u), 4294967295u), global1.a.c.x);
}

