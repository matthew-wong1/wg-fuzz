struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(0u, 18014u, 14743u, 1u), false, vec3<i32>(32423i, 2147483647i, 21063i), vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(0u, 0u, 0u, 0u), true, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(1u, 1u, 0u, 106824u), false, vec3<i32>(14083i, 15866i, -1714i), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(56072u, 52201u, 13154u, 0u), false, vec3<i32>(-11094i, 1i, -4405i), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(4294967295u, 1607u, 1u, 3899u), true, vec3<i32>(-26482i, 1i, -8655i), vec4<bool>(true, true, true, true)), Struct_1(vec4<u32>(31692u, 1u, 43216u, 4294967295u), false, vec3<i32>(0i, -1i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec4<u32>(1u, 57836u, 4294967295u, 4294967295u), true, vec3<i32>(-9535i, 2147483647i, 2147483647i), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(10808u, 59664u, 0u, 4294967295u), false, vec3<i32>(0i, 31434i, -1i), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(4294967295u, 45720u, 1u, 0u), true, vec3<i32>(17119i, -1i, -25339i), vec4<bool>(false, true, true, true)), Struct_1(vec4<u32>(657u, 9800u, 64380u, 1u), true, vec3<i32>(-29305i, -21154i, -71186i), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(60611u, 21732u, 0u, 1u), true, vec3<i32>(0i, 2147483647i, -20776i), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(51534u, 24712u, 12396u, 1u), true, vec3<i32>(2147483647i, 1019i, 1i), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(4294967295u, 58718u, 53238u, 4294967295u), false, vec3<i32>(0i, -4196i, -4361i), vec4<bool>(false, true, false, true)), Struct_1(vec4<u32>(30771u, 25585u, 25933u, 0u), true, vec3<i32>(-68799i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(38288u, 53791u, 4294967295u, 1u), false, vec3<i32>(1i, -34355i, 5832i), vec4<bool>(false, false, false, true)), Struct_1(vec4<u32>(0u, 30236u, 1u, 20127u), false, vec3<i32>(-1i, 2147483647i, -30117i), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(31159u, 1u, 28223u, 113402u), false, vec3<i32>(-7504i, i32(-2147483648), -44188i), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(4294967295u, 80215u, 25564u, 1u), false, vec3<i32>(-1i, -27725i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(36392u, 4294967295u, 0u, 64231u), false, vec3<i32>(2147483647i, -15856i, -51792i), vec4<bool>(false, false, false, true)), Struct_1(vec4<u32>(0u, 7273u, 42719u, 4294967295u), true, vec3<i32>(-50002i, -4036i, -37852i), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(64425u, 4294967295u, 0u, 20852u), true, vec3<i32>(2147483647i, 1i, 0i), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(14812u, 1u, 1u, 1u), false, vec3<i32>(-14802i, -21270i, 57432i), vec4<bool>(false, false, false, false)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 25498u, 4294967295u), true, vec3<i32>(26493i, -1i, 24996i), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(4294967295u, 4395u, 25896u, 1u), false, vec3<i32>(-176i, -3783i, 1i), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(1u, 4294967295u, 55979u, 67797u), true, vec3<i32>(0i, 2147483647i, 1i), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u), true, vec3<i32>(1i, i32(-2147483648), 23657i), vec4<bool>(false, true, true, false)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 15435u, 26388u), false, vec3<i32>(2147483647i, 24695i, 12491i), vec4<bool>(false, false, false, false)), Struct_1(vec4<u32>(27606u, 17135u, 1u, 4294967295u), false, vec3<i32>(-60195i, 1i, 5114i), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(0u, 0u, 1u, 45840u), false, vec3<i32>(1i, -1i, 30718i), vec4<bool>(false, true, true, true)));

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 115056u);

var<private> global2: array<i32, 22>;

var<private> global3: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = global1.x;
    let var_1 = Struct_2(((_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c.x, -31608i, 1i, u_input.b.x), vec4<i32>(global2[_wgslsmith_index_u32(104302u, 22u)], arg_1.a.x, global2[_wgslsmith_index_u32(4294967295u, 22u)], 1i)) >> (~vec4<u32>(u_input.a, 1u, u_input.a, u_input.c.x) % vec4<u32>(32u))) << (vec4<u32>(global1.x, global1.x, 1u, ~arg_1.c) % vec4<u32>(32u))) & vec4<i32>(-u_input.b.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_1.c, 22u)] & u_input.b.x, ~global2[_wgslsmith_index_u32(0u, 22u)]), countOneBits(max(-20284i, global2[_wgslsmith_index_u32(0u, 22u)])), arg_2.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b.x, -1948f), arg_1.b)), vec2<f32>(arg_1.b.x, -1000f)), vec2<f32>(479f, _wgslsmith_f_op_f32(f32(-1f) * -380f))), select(38809u, ~1u, false | arg_0) >> (abs(108108u) % 32u));
    let var_2 = arg_1;
    global2 = array<i32, 22>();
    var_0 = arg_2.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(649f, _wgslsmith_f_op_f32(-285f + arg_1.b.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_1.b.x)))))), arg_1.b.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-865f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2197f - _wgslsmith_div_f32(arg_1.b.x, -178f)) - _wgslsmith_f_op_f32(-arg_1.b.x)))));
}

fn func_2() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(global1.x, 29u)];
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1787f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(any(var_0.d.yz), Struct_2(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(global1.x, 22u)], -24841i, var_0.c.x), vec2<f32>(956f, 2230f), 14595u), global0[_wgslsmith_index_u32(1u, 29u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1317f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-340f))))))));
}

fn func_1() -> vec2<u32> {
    let var_0 = u_input.c.x;
    var var_1 = var_0;
    var var_2 = !(!(!all(vec2<bool>(true, true))));
    let var_3 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-552f, 1175f) - -390f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - 404f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-954f + 284f), 228f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 722f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-520f, 1215f)))), true)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, u_input.c), vec4<u32>(7028u, 50197u, u_input.c.x, u_input.a)), abs(var_0)) << (u_input.c.xw % vec2<u32>(32u)), ~(~u_input.c.yw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, global1.x), 29u)];
    global1 = func_1();
    var_0 = global0[_wgslsmith_index_u32(var_0.a.x, 29u)];
    let var_1 = u_input.a;
    global1 = _wgslsmith_mod_vec2_u32(u_input.c.xx & firstTrailingBit(vec2<u32>(1u, firstTrailingBit(global1.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(29481u, 20444u, 1u, 0u)), _wgslsmith_dot_vec4_u32(~(~u_input.c), vec4<u32>(39257u, 47826u << (global1.x % 32u), 1u, global1.x))));
    global3 = 1245f;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f + -372f) - _wgslsmith_f_op_f32(round(484f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-713f, -460f) * _wgslsmith_f_op_f32(trunc(2146f))) + -1723f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1136f * -751f)), -602f))), 687f);
    let var_3 = ~(-max(-vec4<i32>(-1i, var_0.c.x, 1i, -1i), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x) | vec4<i32>(var_0.c.x, 39941i, global2[_wgslsmith_index_u32(global1.x, 22u)], u_input.b.x)) << ((~(vec4<u32>(43616u, 0u, u_input.c.x, var_1) ^ vec4<u32>(0u, 101203u, 25070u, global1.x)) | vec4<u32>(~0u, _wgslsmith_div_u32(0u, global1.x), 0u, 4294967295u)) % vec4<u32>(32u)));
    let var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-var_0.c.x, global2[_wgslsmith_index_u32(11071u, 22u)] & 0i), var_0.c.zx, all(var_0.d.zz)), vec2<i32>(2147483647i, 909i)));
}

