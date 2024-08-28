struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -26473i, i32(-2147483648), i32(-2147483648));

var<private> global1: vec4<i32> = vec4<i32>(-1i, -46261i, 5238i, 12893i);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<i32, 1> = array<i32, 1>(i32(-2147483648));

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    global3 = array<i32, 1>();
    var var_0 = select(_wgslsmith_mult_i32(-1i, arg_1), firstTrailingBit(_wgslsmith_div_i32(~(~arg_2.x), _wgslsmith_dot_vec2_i32(-global0.ww, ~vec2<i32>(global3[_wgslsmith_index_u32(2191u, 1u)], arg_2.x)))), !(!(!(!arg_0))));
    var var_1 = !(!(!vec4<bool>(true, u_input.a.x <= u_input.a.x, arg_0 != global2.x, true)));
    let var_2 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(851f * -400f)))))));
    global0 = vec4<i32>(~arg_2.x, _wgslsmith_dot_vec3_i32(~global0.yyy, global1.xyz), abs(-(global3[_wgslsmith_index_u32(37871u, 1u)] >> (78153u % 32u)) >> (4294967295u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(2147483647i, ~_wgslsmith_div_i32(arg_1, global1.x)), global3[_wgslsmith_index_u32(abs(4294967295u), 1u)], reverseBits(_wgslsmith_add_i32(1i, i32(-1i) * -48068i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * -1777f), var_2))))));
}

fn func_2() -> Struct_2 {
    global2 = vec2<bool>(true, false);
    var var_0 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.zy, ~u_input.a.yy));
    global3 = array<i32, 1>();
    let var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(3919u, u_input.a.x, ~68416u), u_input.a), ~(~(~4294967295u >> (0u % 32u))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f + -549f)) + _wgslsmith_f_op_f32(func_3(global2.x, max(u_input.c, global3[_wgslsmith_index_u32(27059u, 1u)]), u_input.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-265f, -1732f, 175f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-380f, 967f, -447f), vec3<f32>(767f, -382f, 871f), global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(1714f + -1000f), _wgslsmith_div_f32(-1339f, 1968f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), vec4<bool>(false, true, true, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-540f, -162f), _wgslsmith_f_op_f32(1709f + 577f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(566f, -190f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-393f + -1177f) + 892f))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(581f, 129f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-818f, 1000f, 1019f) * vec3<f32>(261f, -1650f, 659f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-934f, -1000f, -1556f) + vec3<f32>(-242f, 1468f, 1199f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(630f, -259f, 699f))))))), var_1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = global2.x;
    let var_1 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(5637i, u_input.d.x), -_wgslsmith_sub_i32(-24960i << (arg_0.x % 32u), global0.x) & global1.x);
    global4 = array<Struct_2, 23>();
    var var_2 = Struct_2(func_2().a, -1746f, func_2().a, 1u);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(func_3(!all(vec2<bool>(true, true)), 42190i, select(global1.zzw, vec3<i32>(41101i, -2147483647i & global3[_wgslsmith_index_u32(17527u, 1u)], -u_input.b), !select(false, false, global2.x)))), _wgslsmith_f_op_vec3_f32(-arg_2.a.b));
    return ~(~_wgslsmith_clamp_u32(0u, arg_0.x, ~6067u));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    global2 = vec2<bool>(!select(global2.x, true, 21082u != (u_input.a.x << (4294967295u % 32u))), !(arg_1 <= 0i));
    let var_0 = _wgslsmith_div_u32(u_input.a.x, ~func_4(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 16684u, 4294967295u), vec4<u32>(0u, u_input.a.x, 12776u, u_input.a.x))), func_2(), Struct_3(Struct_1(1000f, vec3<f32>(-812f, 334f, -252f))), 1f));
    let var_1 = vec2<bool>(true, true);
    global2 = vec2<bool>(!var_1.x, any(select(select(vec4<bool>(var_1.x, global2.x, var_1.x, global2.x), vec4<bool>(true, false, false, false), true), vec4<bool>(false, var_1.x & false, var_1.x, true), var_1.x)));
    global2 = var_1;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -588f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(186f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f - 308f) + _wgslsmith_f_op_f32(f32(-1f) * -256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(642f, 718f)))), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(_wgslsmith_mult_i32(global1.x, _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.b))), _wgslsmith_div_i32(~min(6638i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), global1.x)), _wgslsmith_f_op_f32(-773f * _wgslsmith_f_op_f32(f32(-1f) * -147f)), func_2().a, 4294967295u | firstTrailingBit(reverseBits(func_2().d)));
    global2 = !select(select(vec2<bool>(any(vec4<bool>(true, false, global2.x, false)), global1.x > 16483i), vec2<bool>(!global2.x, select(global2.x, global2.x, global2.x)), select(vec2<bool>(false, global2.x), select(vec2<bool>(false, false), vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(global2.x, global2.x))), select(select(!vec2<bool>(global2.x, false), vec2<bool>(true, false), global2.x), !select(vec2<bool>(true, false), vec2<bool>(global2.x, global2.x), global2.x), vec2<bool>(true, true)), select(select(!vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, true), vec2<bool>(false, true), vec2<bool>(global2.x, false)), !vec2<bool>(global2.x, false)), select(!vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), select(vec2<bool>(global2.x, true), vec2<bool>(false, global2.x), vec2<bool>(global2.x, true))), all(!vec3<bool>(false, global2.x, global2.x))));
    var var_1 = Struct_3(Struct_1(var_0.c.a, _wgslsmith_f_op_vec3_f32(min(var_0.c.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(772f, var_0.c.a, 1000f), var_0.c.b))))));
    let var_2 = var_1.a;
    var var_3 = vec3<i32>(reverseBits(global0.x), ~global3[_wgslsmith_index_u32(min(2148u, countOneBits(0u << (var_0.d % 32u))), 1u)], countOneBits(reverseBits(global1.x)));
    let var_4 = func_4(vec4<u32>(select(7634u, ~(~u_input.a.x), true), _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(vec4<u32>(var_0.d, 0u, var_0.d, 4294967295u), Struct_2(Struct_1(var_2.b.x, vec3<f32>(var_0.a.b.x, -1625f, var_1.a.a)), var_1.a.a, var_0.c, u_input.a.x), Struct_3(Struct_1(var_2.a, vec3<f32>(413f, 179f, var_0.c.b.x))), -1516f), 4294967295u, var_0.d, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4273u, 0u, var_0.d, 4884u), vec4<u32>(u_input.a.x, var_0.d, 64958u, var_0.d), vec4<u32>(u_input.a.x, var_0.d, var_0.d, 4294967295u)) & min(vec4<u32>(1139u, 26441u, 0u, var_0.d), vec4<u32>(u_input.a.x, var_0.d, u_input.a.x, var_0.d))), var_0.d, u_input.a.x), global4[_wgslsmith_index_u32(~4294967295u, 23u)], Struct_3(func_1(_wgslsmith_mod_i32(-31227i ^ global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), u_input.c)), var_0.b);
    let var_5 = var_1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, -u_input.b, abs(var_0.d), 1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a, -1115f, 693f, -1005f))), vec4<f32>(547f, var_1.a.b.x, 2332f, var_2.b.x), vec4<bool>(true, global2.x, false, false))))), vec4<f32>(var_0.b, -364f, _wgslsmith_f_op_f32(f32(-1f) * -1727f), -504f)));
}

