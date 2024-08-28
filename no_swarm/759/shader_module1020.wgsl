struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(24853u, 1u, 40613u, 52355u, 7229u, 4484u, 9308u, 133503u, 15715u, 36774u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = vec3<bool>(!all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false)), all(!vec3<bool>(select(true, true, true), true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1019f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)));
    var var_1 = abs(34284i);
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    return vec4<bool>(true, arg_2, arg_2 && (~global0[_wgslsmith_index_u32(arg_3.b.x, 10u)] < ~func_3(u_input.d.x)), arg_0.c.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(810f));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1932f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), -1023f, _wgslsmith_f_op_f32(ceil(-595f))))));
    let var_2 = 7805i;
    let var_3 = Struct_1(vec4<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !all(func_2(Struct_1(vec4<bool>(false, false, true, true), var_0, vec2<bool>(false, false)), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 10u)], u_input.b.wzx, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), true, Struct_2(48424u, u_input.c.ywz, vec2<u32>(u_input.b.x, 0u)))), any(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f)), select(select(vec2<bool>(false, false), vec2<bool>(23104u < global0[_wgslsmith_index_u32(u_input.b.x, 10u)], true), !any(vec3<bool>(true, false, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), false), true));
    var var_4 = var_3;
    return Struct_1(vec4<bool>(select(true, _wgslsmith_f_op_f32(276f - 124f) >= _wgslsmith_f_op_f32(ceil(-1112f)), any(func_2(var_3, Struct_2(u_input.a, u_input.c.wyx, u_input.c.xy), var_3.c.x, Struct_2(0u, vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 10u)], u_input.c.x), u_input.b.yx)).xxw)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.b, -900f) + _wgslsmith_f_op_f32(exp2(var_4.b))) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -947f))), func_2(Struct_1(var_4.a, -1880f, var_3.a.yz), Struct_2(78282u, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)], u_input.a, global0[_wgslsmith_index_u32(10779u, 10u)]), u_input.b.zw), !var_4.a.x, Struct_2(0u, vec3<u32>(24729u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], u_input.b.x), u_input.b.wz)).x | false, !(!func_2(Struct_1(vec4<bool>(false, true, false, var_3.a.x), var_0, vec2<bool>(false, var_4.c.x)), Struct_2(32078u, vec3<u32>(4294967295u, 30736u, 125781u), u_input.b.zx), var_3.a.x, Struct_2(23001u, vec3<u32>(34753u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 10u)]), vec2<u32>(u_input.b.x, 1u))).x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 626f) * _wgslsmith_f_op_f32(abs(-730f))), select(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)]), vec3<u32>(u_input.c.x, u_input.a, global0[_wgslsmith_index_u32(41717u, 10u)])) > ~7471u, true), var_3.c, !any(!vec3<bool>(false, var_4.c.x, var_3.a.x))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    global0 = array<u32, 10>();
    let var_0 = Struct_2(u_input.b.x, ~(~(~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 10u)], 29009u))), u_input.b.zw);
    var var_1 = u_input.c.yxx;
    var_1 = select(firstLeadingBit(abs(~vec3<u32>(u_input.b.x, 38166u, var_0.b.x))), u_input.b.xxy, !arg_0.a.wwz) ^ var_0.b;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(max(1247f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-315f - 1000f) * _wgslsmith_f_op_f32(min(540f, 1328f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec2<bool>(true, true));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), arg_0.b, _wgslsmith_f_op_f32(arg_0.b + arg_0.b), _wgslsmith_div_f32(arg_0.b, arg_0.b))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, -1000f, var_2.b, arg_0.b)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b, var_2.b, arg_0.b, arg_0.b), vec4<f32>(-1535f, -1133f, -998f, -322f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 151f) - vec2<f32>(150f, 715f)) * _wgslsmith_div_vec2_f32(vec2<f32>(259f, -437f), vec2<f32>(-2169f, 308f))), _wgslsmith_add_vec3_i32(reverseBits(u_input.d.zyx), vec3<i32>(1i, 0i, 66998i))))));
    let var_1 = u_input.b.zw;
    let var_2 = func_1(var_0.yw, select(min(-u_input.d.xxw, vec3<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(u_input.d.yyy, u_input.d.zww), _wgslsmith_div_i32(u_input.d.x, u_input.d.x))), vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(-1i, 26727i, u_input.d.x)), all(vec2<bool>(true, all(vec2<bool>(false, false))))));
    global0 = array<u32, 10>();
    global0 = array<u32, 10>();
    let var_3 = Struct_1(!var_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0.wy, u_input.d.zzx).b + 1f) * 1555f))), select(!select(var_2.c, vec2<bool>(true, var_2.c.x), true), !vec2<bool>(true, var_1.x == 4294967295u), select(select(var_2.c, select(vec2<bool>(false, false), var_2.c, false), !var_2.a.xx), vec2<bool>(false == var_2.c.x, var_2.a.x), var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_0);
}

