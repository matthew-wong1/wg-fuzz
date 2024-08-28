struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(80509u, vec3<u32>(2117u, 0u, 4294967295u)), Struct_1(4294967295u, vec3<u32>(4294967295u, 0u, 67064u)), Struct_1(12693u, vec3<u32>(0u, 23247u, 6333u)), Struct_1(15429u, vec3<u32>(1u, 25305u, 0u)), Struct_1(55778u, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(42551u, vec3<u32>(11203u, 799u, 28673u)), Struct_1(5484u, vec3<u32>(1u, 27568u, 1u)), Struct_1(14953u, vec3<u32>(1u, 7888u, 20138u)), Struct_1(1u, vec3<u32>(51201u, 4294967295u, 36229u)), Struct_1(31968u, vec3<u32>(1u, 0u, 63851u)), Struct_1(97272u, vec3<u32>(0u, 1u, 7u)), Struct_1(4294967295u, vec3<u32>(0u, 4294967295u, 106949u)), Struct_1(6222u, vec3<u32>(4294967295u, 0u, 0u)), Struct_1(136481u, vec3<u32>(1u, 4294967295u, 76310u)), Struct_1(4294967295u, vec3<u32>(1u, 30315u, 45650u)), Struct_1(1u, vec3<u32>(4294967295u, 1u, 41882u)), Struct_1(4294967295u, vec3<u32>(4294967295u, 29501u, 12333u)), Struct_1(4294967295u, vec3<u32>(4294967295u, 36335u, 45659u)), Struct_1(117512u, vec3<u32>(1u, 4294967295u, 1u)), Struct_1(4294967295u, vec3<u32>(31839u, 1u, 1u)), Struct_1(0u, vec3<u32>(0u, 4294967295u, 33702u)));

var<private> global3: Struct_4;

var<private> global4: vec4<bool> = vec4<bool>(false, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    global4 = vec4<bool>(all(!(!select(global3.d, global3.d, global3.d.x))), !((arg_0.e || true) && any(vec2<bool>(arg_0.c, global3.b))), arg_0.c, false);
    var var_0 = u_input.a;
    global2 = array<Struct_1, 21>();
    var var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-196f, arg_2, 1036f), _wgslsmith_f_op_vec3_f32(min(arg_0.b.a, arg_0.d.a)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2)), -562f)), _wgslsmith_f_op_f32(floor(arg_2)), 928f)), -950f, arg_0.b.c);
    let var_2 = var_1.a;
    return _wgslsmith_sub_i32(i32(-1i) * -arg_1.x, ~18882i);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    let var_0 = arg_0.zx;
    global0 = array<Struct_2, 28>();
    global1 = func_3(Struct_3(-189f, global0[_wgslsmith_index_u32(max(32656u, ~u_input.a.x), 28u)], true, global0[_wgslsmith_index_u32(36105u, 28u)], !(!global4.x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.x, var_0.x, var_0.x), arg_0.zwz | vec3<i32>(var_0.x, -2147483647i, arg_0.x)), arg_0.ywx, ~vec3<i32>(-var_0.x, -1i, -var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 1956f)) * _wgslsmith_f_op_f32(abs(arg_1))))))));
    global4 = select(!select(!vec4<bool>(global4.x, true, false, true), select(select(vec4<bool>(true, global3.b, global4.x, false), vec4<bool>(false, global4.x, false, true), global3.d.x), vec4<bool>(true, true, true, true), false), any(global3.d)), !select(!select(vec4<bool>(global3.b, global4.x, global3.b, true), vec4<bool>(true, global3.b, global3.d.x, global4.x), vec4<bool>(false, global3.b, true, false)), select(select(vec4<bool>(true, global3.d.x, false, false), vec4<bool>(false, global4.x, global4.x, true), vec4<bool>(false, true, false, global4.x)), select(vec4<bool>(global3.d.x, global4.x, global3.b, true), vec4<bool>(global4.x, false, global4.x, false), vec4<bool>(true, global4.x, global4.x, true)), select(vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(global4.x, global4.x, global4.x, global3.b), vec4<bool>(false, false, global4.x, true))), !(!vec4<bool>(true, false, false, global4.x))), any(global3.d.zy));
    var var_1 = var_0;
    return _wgslsmith_add_u32(0u, 40422u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(256f, 870f) - vec2<f32>(-121f, -1142f))))), select(!vec2<bool>(true, global3.b), select(select(vec2<bool>(global3.d.x, global3.b), global4.ww, global4.x), select(vec2<bool>(global4.x, true), vec2<bool>(global4.x, true), vec2<bool>(global3.b, global4.x)), !global4.x), vec2<bool>(!global3.d.x, true))))));
    global4 = !(!select(vec4<bool>(arg_1.b.x < global3.a.b.x, true, !global4.x, true), vec4<bool>(true, global3.d.x, all(global3.d), any(global4.xwz)), true));
    var var_1 = -_wgslsmith_sub_i32(1i, max((i32(-1i) * -1i) << (_wgslsmith_clamp_u32(54801u, 4294967295u, 110508u) % 32u), _wgslsmith_div_i32(i32(-1i) * -7000i, countOneBits(-1i))));
    var var_2 = Struct_2(vec3<f32>(-1000f, -1115f, _wgslsmith_f_op_f32(min(-983f, _wgslsmith_f_op_f32(var_0.x - -144f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -787f) + -1735f), Struct_1(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1202u, arg_1.b.x, arg_0, global3.c)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(1u, 40807u, arg_1.a, global3.a.a)), u_input.a & u_input.a)), global3.a.b));
    var var_3 = ~(-_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-38988i, -1i, 13215i, -31285i), vec4<i32>(10732i, 40036i, -40108i, 0i)), -vec4<i32>(1i, -14665i, 29820i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-27694i, 10762i, -1651i, 1i), vec4<i32>(46500i, 25591i, 2147483647i, 29466i))) >> (vec4<u32>(abs(~1u), firstTrailingBit(37504u), reverseBits(~0u), global3.c) % vec4<u32>(32u)));
    return var_2.c;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(-37166i, 0i))) >> (~abs(vec2<u32>(55026u, _wgslsmith_mult_u32(1u, u_input.a.x))) % vec2<u32>(32u));
    let var_1 = func_4(1u ^ func_2(-abs(vec4<i32>(var_0.x, var_0.x, 0i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f * -860f))), Struct_1(global3.c, select(~global3.a.b, global3.a.b, global4.xxw)), abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 19582u, global3.a.a), vec3<u32>(0u, 1u, 38596u))) ^ (36235u ^ _wgslsmith_clamp_u32(1u, u_input.a.x >> (u_input.a.x % 32u), ~1u)));
    let var_2 = firstTrailingBit(_wgslsmith_mult_i32(~(2147483647i & var_0.x), -_wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0.x, var_0.x), vec2<i32>(2147483647i, var_0.x)), vec2<i32>(var_0.x, var_0.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1019f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1261f, -867f))));
    let var_4 = firstTrailingBit(~(~(~vec4<u32>(global3.a.b.x, 78676u, global3.c, 20547u))));
    return var_4.ww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.a;
    let var_1 = vec2<u32>(~1u, _wgslsmith_sub_u32(~(~global3.a.a), ~4294967295u)) & func_1(all(vec2<bool>(!global4.x, false)));
    let var_2 = vec2<bool>(true, all(global3.d));
    global4 = vec4<bool>(!var_2.x, !(!(588f < _wgslsmith_f_op_f32(step(232f, -751f)))), true & !var_2.x, true | all(vec4<bool>(var_2.x, global4.x, any(vec4<bool>(false, global4.x, false, true)), all(vec4<bool>(global3.b, global4.x, global3.d.x, global3.d.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(425f + 407f), -1000f, 713f, _wgslsmith_f_op_f32(ceil(-141f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -647f), -1139f, 178f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(-599f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -153f, -1335f, 1503f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2125f, 1000f, 1000f, -1561f), vec4<f32>(577f, -2988f, -1000f, -748f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-350f, -1154f, 411f, -260f), vec4<f32>(-235f, -636f, 1000f, 435f), vec4<bool>(false, true, true, global4.x))))))));
    var_0 = func_4(17131u ^ reverseBits(var_0.a), global2[_wgslsmith_index_u32(var_0.a, 21u)], ~global3.a.b.x);
    var var_4 = !(!(!select(select(vec4<bool>(true, false, true, global3.b), vec4<bool>(var_2.x, global3.d.x, false, global4.x), vec4<bool>(false, var_2.x, false, true)), !vec4<bool>(var_2.x, global3.b, false, global3.d.x), !vec4<bool>(false, false, global4.x, false))));
    let var_5 = var_3.xzy;
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_5.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(134f))))), 942f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-350f * _wgslsmith_f_op_f32(1000f + var_5.x)), var_5.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - var_5.x), _wgslsmith_f_op_f32(round(var_3.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(-342f, _wgslsmith_f_op_f32(max(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.x), -165f, true == global4.x))))), var_3.wwz, -1172f, ~var_1.x);
}

