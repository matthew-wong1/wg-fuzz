struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(-450f, vec4<u32>(108676u, 0u, 4825u, 4294967295u)), Struct_3(1438f, vec4<u32>(447u, 0u, 73920u, 4294967295u)), Struct_3(411f, vec4<u32>(1u, 119448u, 22325u, 0u)), Struct_3(1000f, vec4<u32>(8688u, 8650u, 72631u, 58365u)), Struct_3(627f, vec4<u32>(1u, 1u, 23531u, 19548u)), Struct_3(264f, vec4<u32>(17204u, 1u, 1u, 1u)), Struct_3(-1196f, vec4<u32>(0u, 0u, 0u, 70110u)), Struct_3(1000f, vec4<u32>(23278u, 0u, 1145u, 4294967295u)), Struct_3(1440f, vec4<u32>(0u, 1u, 4294967295u, 48148u)), Struct_3(1143f, vec4<u32>(35260u, 12851u, 1u, 2865u)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(22535u, 17656u, 10114u)));

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, false, false, false, false, true, true, true, false, true, true, false, true, false, false, false, false, true);

var<private> global3: vec3<i32> = vec3<i32>(31288i, -1i, 12901i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(9358u, 19u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(129f)) - -1608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1228f))))));
    var var_2 = select(vec4<bool>(false, -(~global3.x) == 0i, any(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(38910u, 4294967295u), 19u)], any(vec4<bool>(global2[_wgslsmith_index_u32(global1.a.a.x, 19u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)])), true)), all(select(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)]), vec3<bool>(global2[_wgslsmith_index_u32(53820u, 19u)], global2[_wgslsmith_index_u32(48339u, 19u)], false), false), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], global2[_wgslsmith_index_u32(54270u, 19u)], true), global2[_wgslsmith_index_u32(u_input.b.x, 19u)]))), select(select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], false, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(54344u, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], true, global2[_wgslsmith_index_u32(global1.a.a.x, 19u)]), global2[_wgslsmith_index_u32(14725u, 19u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], false, false))), select(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(53247u, 19u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(0u, 19u)], true, global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)]), false), select(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(global1.a.a.x, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], false, global2[_wgslsmith_index_u32(1u, 19u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(14742u, 19u)], true, false)), !vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)])), vec4<bool>(global2[_wgslsmith_index_u32(~1u, 19u)], true, true, all(vec2<bool>(global2[_wgslsmith_index_u32(36898u, 19u)], global2[_wgslsmith_index_u32(71037u, 19u)])))), !select(!vec4<bool>(global2[_wgslsmith_index_u32(36470u, 19u)], false, global2[_wgslsmith_index_u32(4294967295u, 19u)], true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], true, global2[_wgslsmith_index_u32(0u, 19u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(global1.a.a.x, 19u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)]), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(16357u, 19u)], false, true, global2[_wgslsmith_index_u32(4294967295u, 19u)]))), true), !vec4<bool>(any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false))), select(true, all(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], global2[_wgslsmith_index_u32(u_input.b.x, 19u)])), global2[_wgslsmith_index_u32(arg_0.a.a.x, 19u)] & global2[_wgslsmith_index_u32(2834u, 19u)]), true, abs(arg_0.a.a.x) > _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.x, global1.a.a.x), u_input.b.zy)));
    global1 = arg_0;
    let var_3 = ~1u;
    return -515f;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(global1.a);
    let var_1 = reverseBits(_wgslsmith_div_u32(var_0.a.a.x, global1.a.a.x) & ~4294967295u);
    global3 = ~_wgslsmith_mult_vec3_i32(~(~u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, global3.x, -22474i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(1096i, u_input.c.x, -2147483647i)));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global1.a.a)))))), _wgslsmith_div_f32(2257f, 2134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -260f), -454f, true)))));
    return ~firstTrailingBit(~25475u);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-843f * _wgslsmith_f_op_f32(select(-1680f, -1034f, global2[_wgslsmith_index_u32(arg_2, 19u)]))))));
    let var_1 = !(all(vec4<bool>(arg_0.x, any(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], false, global2[_wgslsmith_index_u32(arg_2, 19u)], true)), true, arg_0.x)) && !arg_0.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(764f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2210f + -862f)), 793f)));
    let var_2 = vec2<bool>(all(select(vec3<bool>(true, true, arg_0.x || global2[_wgslsmith_index_u32(global1.a.a.x, 19u)]), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false), vec3<bool>(var_1, true, var_1), global2[_wgslsmith_index_u32(arg_2, 19u)]), select(vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(arg_1.a.x, 19u)]), vec3<bool>(var_1, var_1, true), global2[_wgslsmith_index_u32(u_input.a, 19u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 19u)], false)), false)), global2[_wgslsmith_index_u32(59110u, 19u)]);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(496f, -1473f))))), -740f, -1264f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-195f, 715f, 1087f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 750f, 242f) * vec3<f32>(303f, 368f, -585f))))))));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    global0 = array<Struct_3, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, -1339f, -504f, 134f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-372f, 126f, 453f, -310f))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(-2670f, var_0.x, global2[_wgslsmith_index_u32(~global1.a.a.x, 19u)])), _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(select(955f, var_0.x, func_4(select(select(vec2<bool>(arg_1, true), vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 19u)]), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), arg_1), arg_1), Struct_1(select(u_input.b, vec3<u32>(4294967295u, u_input.a, 61020u), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 19u)], true, true))), func_2()))));
    let var_2 = false && (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(36392u), u_input.b.x), 19u)] & true);
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = vec2<bool>(arg_2.x & false, all(arg_2.xwz));
    var var_1 = arg_1.x;
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(~u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), global1.a.a))));
    let var_3 = Struct_3(841f, _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b.x), func_1(vec3<u32>(0u, 86870u, arg_0), false) | ~u_input.a, func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0, u_input.a), vec3<u32>(global1.a.a.x, 30330u, global1.a.a.x)), global2[_wgslsmith_index_u32(arg_0, 19u)]), _wgslsmith_mod_u32(firstLeadingBit(global1.a.a.x), 0u)), firstLeadingBit(countOneBits(vec4<u32>(var_2.a.a.x, 21936u, 1u, 0u))), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, global1.a.a.x, var_2.a.a.x, 1u)), vec4<u32>(var_2.a.a.x, u_input.a, global1.a.a.x, 0u) ^ vec4<u32>(4294967295u, arg_0, global1.a.a.x, 4294967295u)) | ~vec4<u32>(1u, 17560u, arg_0, var_2.a.a.x)));
    var var_4 = 11233u & ((var_3.b.x | reverseBits(1u)) >> (_wgslsmith_mult_u32(u_input.b.x, var_3.b.x) % 32u));
    return _wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 59749u | ~countOneBits(u_input.a);
    var var_1 = ~u_input.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_5(func_1(_wgslsmith_mod_vec3_u32(global1.a.a, vec3<u32>(0u, 6445u, u_input.b.x)), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(534f, -658f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1606f, 1273f))), vec4<bool>(true, true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a.a.x, 59649u), 19u)], any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)]))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(545f, -707f)) * 130f), 1689f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-271f))))), _wgslsmith_f_op_f32(-182f + _wgslsmith_f_op_f32(-1806f * 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-329f, -1000f, 2606f, -653f), vec4<f32>(-1133f, -1009f, -1094f, 322f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(808f, 247f, -647f, -2041f))) + vec4<f32>(643f, -311f, -339f, -159f))))));
    let var_3 = (~(~vec4<u32>(0u, u_input.b.x, 83349u, u_input.a)) ^ ~vec4<u32>(_wgslsmith_mod_u32(global1.a.a.x, 0u), ~u_input.b.x, func_2(), global1.a.a.x)) >> (vec4<u32>(~_wgslsmith_div_u32(~4294967295u, global1.a.a.x), u_input.a, global1.a.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.b.xz))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(var_2.zz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(670f, -1908f)))))), !global2[_wgslsmith_index_u32(global1.a.a.x, 19u)]));
    var var_5 = global2[_wgslsmith_index_u32(34010u, 19u)] & (false & !(!(global3.x >= u_input.c.x)));
    var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_2.zy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.xz) - vec2<f32>(-225f, 746f)))))));
    let var_6 = (firstLeadingBit(~vec4<i32>(u_input.c.x, -35629i, u_input.c.x, global3.x) >> (var_3 % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(firstLeadingBit(~vec4<u32>(72671u, 12058u, 4294967295u, 65730u)), var_3) % vec4<u32>(32u))) & -vec4<i32>(global3.x, 1i, u_input.c.x << (select(1u, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 19u)]) % 32u), firstLeadingBit(_wgslsmith_div_i32(u_input.c.x, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c);
}

