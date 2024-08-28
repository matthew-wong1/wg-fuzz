struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(-814f, -655f), true, vec3<u32>(0u, 4294967295u, 56628u), vec4<bool>(true, false, false, true)), 54626u, Struct_1(vec2<f32>(1000f, 178f), false, vec3<u32>(0u, 1u, 9053u), vec4<bool>(true, true, true, true)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-731f, -618f), true, vec3<u32>(72636u, 30626u, 0u), vec4<bool>(false, true, false, false)), 0u, Struct_1(vec2<f32>(512f, -735f), false, vec3<u32>(0u, 0u, 4294967295u), vec4<bool>(true, true, false, true)));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1313f, -1000f), false, vec3<u32>(0u, 31936u, 6215u), vec4<bool>(false, true, false, true)), 1u, Struct_1(vec2<f32>(-363f, -345f), true, vec3<u32>(59081u, 40669u, 0u), vec4<bool>(false, true, false, true)));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(784f, 1004f), true, vec3<u32>(4294967295u, 1u, 44127u), vec4<bool>(true, true, false, false)), 0u, Struct_1(vec2<f32>(-732f, 1146f), true, vec3<u32>(1u, 40129u, 0u), vec4<bool>(false, true, false, true))), 1313f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> vec3<u32> {
    global1 = Struct_2(global2.c, select(~abs(~42727u), 0u, u_input.a.x != 57229i), global1.c);
    global1 = arg_0.a;
    let var_0 = firstLeadingBit(select(global1.a.c.yx, vec2<u32>(global0.c.c.x, firstLeadingBit(117936u)), any(select(global1.a.d, global0.c.d, all(global0.a.d.wx)))));
    global0 = global3.a;
    let var_1 = vec3<bool>(any(!select(select(vec3<bool>(true, global3.a.a.b, false), global2.a.d.yyy, vec3<bool>(false, false, true)), select(global1.c.d.zxx, global1.a.d.wzz, global3.a.c.d.x), any(vec3<bool>(true, false, false)))), any(global2.a.d), any(!vec3<bool>(-1000f > global0.a.a.x, !arg_0.a.a.b, arg_0.a.c.d.x)));
    return arg_0.a.a.c;
}

fn func_2() -> Struct_1 {
    global2 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c.a), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(global3.b - global0.a.a.x))), false, func_3(Struct_3(Struct_2(Struct_1(vec2<f32>(-1079f, global1.c.a.x), true, global3.a.c.c, global0.a.d), global0.c.c.x, global0.a), _wgslsmith_f_op_f32(floor(global0.a.a.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.c.a.x, 1000f, 662f, global2.a.a.x), vec4<f32>(-1168f, 116f, -1000f, 1000f))))), u_input.a.x), select(!(!global0.a.d), vec4<bool>(any(global0.c.d.yzz), global2.c.d.x, all(vec3<bool>(true, global2.c.b, global1.a.d.x)), global0.a.b != global3.a.a.b), !select(vec4<bool>(false, global0.c.b, false, true), vec4<bool>(true, false, true, global3.a.c.b), false))), ~(max(~global0.a.c.x, global0.b) >> ((global3.a.c.c.x << (_wgslsmith_clamp_u32(0u, global1.a.c.x, 4294967295u) % 32u)) % 32u)), global2.c);
    let var_0 = _wgslsmith_add_vec3_u32(select(~(~global1.a.c | countOneBits(vec3<u32>(1u, global1.c.c.x, 45107u))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(global3.a.c.c, vec3<u32>(7302u, global3.a.b, 4294967295u), max(vec3<u32>(global2.c.c.x, global3.a.b, global0.a.c.x), global1.c.c)), vec3<u32>(global1.c.c.x, firstTrailingBit(832u), 6075u)), vec3<bool>(global1.a.b, global3.a.a.d.x, true)), global0.c.c);
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 21066u, global2.b, 1u), ~vec4<u32>(22785u, 55600u, 0u, 92096u)) ^ ~max(vec4<u32>(6942u, var_0.x, 5620u, var_0.x), vec4<u32>(global3.a.a.c.x, 26464u, global1.c.c.x, global1.b)), ~(~vec4<u32>(global0.a.c.x, global2.c.c.x, 4294967295u, global3.a.a.c.x))), vec4<u32>(global1.a.c.x >> (38099u % 32u), 65701u, 32114u, 4294967295u));
    var var_2 = Struct_3(Struct_2(global0.c, _wgslsmith_clamp_u32(select(1u, 0u, false), global3.a.c.c.x, firstLeadingBit(global1.a.c.x)), global3.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.a.x)))));
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_f32(trunc(global0.c.a.x)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.c.a.x, global3.b))) + vec2<f32>(global2.c.a.x, global0.c.a.x)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(global3.a.a.a, global3.a.c.a, global1.c.d.x))))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(global3.a.a.a.x, -1249f)), _wgslsmith_f_op_f32(global3.a.c.a.x + var_2.a.a.a.x))))), (true | (var_3.a.a.c.x >= 0u)) | !global0.a.d.x, max(vec3<u32>(103362u, 67706u, ~84363u), select(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c.c, var_3.a.a.c), vec3<u32>(11670u, 1u, 8071u)), global3.a.c.c, !any(vec3<bool>(var_2.a.c.d.x, true, var_3.a.c.d.x)))), !vec4<bool>(!var_2.a.a.b, false, var_3.b >= _wgslsmith_f_op_f32(select(var_2.a.a.a.x, -609f, global3.a.a.d.x)), global2.c.d.x));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    global2 = Struct_2(func_2(), ~func_2().c.x, func_2());
    var var_0 = -417f;
    global1 = global3.a;
    var var_1 = ~global2.a.c.xz;
    global2 = Struct_2(global1.a, global2.c.c.x, func_2());
    return Struct_4(Struct_3(Struct_2(func_2(), 64667u, func_2()), _wgslsmith_f_op_f32(step(global1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.x), -1613f)))), global1.a, all(vec4<bool>(global3.a.c.d.x | all(vec2<bool>(true, global2.c.d.x)), !global0.c.d.x, all(select(global1.a.d.xw, global3.a.c.d.yy, global3.a.c.d.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.a;
    let var_0 = func_1(Struct_1(global1.a.a, true, abs(reverseBits(_wgslsmith_clamp_vec3_u32(global2.c.c, global2.c.c, global2.c.c))), vec4<bool>(true, true, global3.a.c.d.x, (global0.a.d.x & global0.a.d.x) | true)));
    let var_1 = -381f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b, global0.a.a.x)))));
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(697f, global3.b) * _wgslsmith_f_op_vec2_f32(-global3.a.a.a)), all(global2.c.d.wz), ~vec3<u32>(~1u, global0.c.c.x | var_0.a.a.b, _wgslsmith_clamp_u32(8360u, global2.a.c.x, global3.a.a.c.x)), vec4<bool>(false, false, !var_1, true))).a.a.a.d.xwy;
    let var_3 = select(!func_2().d, vec4<bool>(false, false != (-209f <= _wgslsmith_f_op_f32(-global2.a.a.x)), var_1, !(!(false || var_1))), !global1.c.d);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1220f, var_0.a.b)))), global1.c.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_u32(func_1(Struct_1(var_0.b.a, global1.a.b, var_0.b.c, var_0.a.a.c.d)).b.c.x & ~global2.b, ~0u)), ~(~4294967295u), u_input.a.xxy, 0u);
}

