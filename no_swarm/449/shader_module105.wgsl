struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: vec3<u32> = vec3<u32>(1u, 1u, 0u);

var<private> global3: array<vec4<i32>, 27>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = !select(select(select(!vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(global2.x, 14u)]), vec4<bool>(false, global1.x, global0[_wgslsmith_index_u32(global2.x, 14u)], global1.x), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(10512u, 14u)], global0[_wgslsmith_index_u32(41943u, 14u)], false)), select(!vec4<bool>(false, global1.x, global1.x, global0[_wgslsmith_index_u32(18616u, 14u)]), select(vec4<bool>(global1.x, true, true, false), vec4<bool>(true, true, global1.x, true), global1.x), all(vec4<bool>(true, global1.x, global0[_wgslsmith_index_u32(global2.x, 14u)], global1.x))), vec4<bool>(!global1.x, true, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], true, global0[_wgslsmith_index_u32(66307u, 14u)], true)), true)), select(!select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c, 14u)], false), vec4<bool>(global0[_wgslsmith_index_u32(111988u, 14u)], true, global0[_wgslsmith_index_u32(u_input.c, 14u)], global1.x)), vec4<bool>(any(vec4<bool>(global1.x, false, false, global1.x)), global1.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.b.x), 14u)], global1.x), vec4<bool>(false, select(global1.x, global1.x, false), false, true)), all(vec4<bool>(-9119i < u_input.d, !global0[_wgslsmith_index_u32(16487u, 14u)], all(vec2<bool>(global1.x, global1.x)), select(global0[_wgslsmith_index_u32(0u, 14u)], global1.x, false))));
    global1 = vec2<bool>(global1.x, true);
    global0 = array<bool, 14>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(step(-570f, _wgslsmith_f_op_f32(f32(-1f) * -240f)))))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(35441i, -13895i, 1i, u_input.d), _wgslsmith_mult_vec4_i32(vec4<i32>(3527i, 20954i, -2147483647i, -1180i), vec4<i32>(u_input.a, u_input.a, 0i, -31044i))), u_input.d, u_input.a) ^ vec3<i32>(-u_input.a, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.d), vec3<i32>(u_input.a, u_input.a, u_input.d))), ~(u_input.a << (12045u % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b.wyx, vec3<u32>(~u_input.c, 26332u, ~680u ^ _wgslsmith_sub_u32(global2.x, 62272u))), 14u)], select(!(!var_0.zw), select(var_0.xx, var_0.zw, var_0.x), select(!select(vec2<bool>(var_0.x, var_0.x), var_0.zx, var_0.yw), select(var_0.zx, !var_0.xy, vec2<bool>(true, var_0.x)), vec2<bool>(true, !var_0.x))), 1i);
    var var_2 = countOneBits(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(~u_input.b, max(vec4<u32>(28436u, u_input.c, u_input.b.x, u_input.c), vec4<u32>(1u, 41858u, global2.x, global2.x)))), min(~(~vec4<u32>(1u, u_input.c, 30223u, global2.x)), vec4<u32>(global2.x << (19501u % 32u), ~global2.x, 1u, global2.x))));
    return var_1.d;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a.a - _wgslsmith_f_op_f32(-arg_0.a.a)), vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.b.zz, arg_0.a.b.xx) | arg_0.a.b.x, ~max(4586i, arg_0.a.b.x), i32(-1i) * -u_input.d) | select(arg_0.a.b, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, -2147483647i, arg_0.a.e) ^ vec3<i32>(-37028i, 0i, u_input.a), arg_0.a.b), global0[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(~arg_2.x, 14u)], arg_1.yy, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(1i, -16269i), vec2<i32>(-4670i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_0.a.e, u_input.a))) << (u_input.b.xz % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_0.a.b.xy << (global2.yy % vec2<u32>(32u)), vec2<i32>(-arg_0.a.e, u_input.a | -20929i))));
    global1 = !select(!vec2<bool>(any(vec4<bool>(var_0.d.x, true, false, true)), arg_0.a.d.x), !(!func_3()), global1.x);
    global2 = ~(~u_input.b.zww);
    global3 = array<vec4<i32>, 27>();
    global0 = array<bool, 14>();
    return -min(vec3<i32>(-arg_0.a.e ^ -28089i, _wgslsmith_dot_vec3_i32(arg_0.a.b, arg_0.a.b), arg_0.a.b.x), ~firstLeadingBit(max(var_0.b, vec3<i32>(var_0.b.x, arg_0.a.e, -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.e, arg_1, -1i), arg_0.b), (arg_2 >= 0u) && global1.x, !func_3(), _wgslsmith_sub_i32(25836i, arg_1)), !arg_0.d), Struct_2(arg_0, arg_0.d), 1050f, vec2<u32>(58143u, ~arg_2));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) * _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_f32(f32(-1f) * -639f), -699f, arg_0.a);
    global3 = array<vec4<i32>, 27>();
    var var_2 = !vec3<bool>(!global0[_wgslsmith_index_u32(var_0.d.x, 14u)], arg_2 <= _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, var_0.d.x, 4294967295u), vec3<u32>(4294967295u, 72190u, arg_2)), arg_0.c);
    var_2 = select(vec3<bool>(!any(select(vec3<bool>(arg_0.d.x, false, false), vec3<bool>(arg_0.d.x, false, var_0.a.b.x), vec3<bool>(global1.x, false, arg_0.c))), var_2.x, true), vec3<bool>(false, true, var_0.b.a.c), vec3<bool>(false, var_0.b.a.c, all(select(!vec4<bool>(false, true, var_2.x, arg_0.c), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 14u)], true, global1.x), vec4<bool>(false, false, true, var_0.a.a.d.x), var_0.b.b.x), all(vec3<bool>(var_2.x, false, true))))));
    return Struct_2(arg_0, vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global2.x), 14u)], !all(!vec3<bool>(var_0.b.b.x, true, true))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, -451f)), 1278f) - -207f), ~(-func_2(Struct_2(Struct_1(-607f, vec3<i32>(1i, u_input.d, u_input.d), true, vec2<bool>(arg_0.x, false), u_input.a), arg_0), vec4<bool>(global1.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(27995u, 14u)]), u_input.b.yww)), !arg_0.x, vec2<bool>(global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_mod_u32(u_input.c, 4294967295u)), 14u)], true), 20175i), _wgslsmith_add_i32(u_input.a, u_input.d) ^ firstLeadingBit(-1i), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -650f));
    return Struct_1(-2041f, -vec3<i32>(_wgslsmith_clamp_i32(u_input.d ^ -30256i, _wgslsmith_dot_vec2_i32(var_0.a.b.xx, vec2<i32>(22353i, u_input.d)), -1i), min(_wgslsmith_clamp_i32(68837i, var_0.a.b.x, -7263i), -33400i), -1i), global1.x, select(!select(!arg_0, func_3(), vec2<bool>(var_0.b.x, arg_0.x)), vec2<bool>(!(var_0.a.e > -20328i), true), select(!func_3(), select(var_0.b, arg_0, select(arg_0, vec2<bool>(arg_0.x, arg_0.x), false)), vec2<bool>(true, true))), -max(countOneBits(-8846i), reverseBits(var_0.a.e)) ^ _wgslsmith_dot_vec3_i32(~var_0.a.b, vec3<i32>(~(-1i), _wgslsmith_mod_i32(u_input.a, -69635i), 12550i)));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(false, any(vec4<bool>(global2.x < global2.x, global1.x, !arg_0.c, arg_0.d.x)) || !((arg_0.b.x ^ arg_0.b.x) == _wgslsmith_dot_vec3_i32(arg_0.b, arg_0.b)), select((arg_0.a != 1082f) || any(vec3<bool>(false, global0[_wgslsmith_index_u32(global2.x, 14u)], true)), true, true));
    let var_1 = !func_1(vec2<bool>(true, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.c, 14u)], false, true)))).c;
    let var_2 = func_4(Struct_1(func_1(!func_1(vec2<bool>(var_0.x, false)).d).a, arg_0.b, (!var_1 || !arg_0.d.x) & ((i32(-1i) * -32479i) <= func_2(Struct_2(Struct_1(-530f, arg_0.b, true, vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(u_input.c, 14u)]), -5681i), vec2<bool>(true, true)), vec4<bool>(global1.x, false, arg_0.c, true), u_input.b.yxw).x), vec2<bool>(true, var_1), arg_0.e), _wgslsmith_mult_i32(abs(-1i), min(firstTrailingBit(arg_0.b.x), -64192i)) | func_4(func_4(arg_0, -2147483647i, global2.x << (u_input.c % 32u), 237f).a, arg_0.e, 1u, -810f).a.b.x, abs(0u), 326f);
    var var_3 = Struct_3(Struct_2(func_1(func_4(Struct_1(arg_0.a, var_2.a.b, false, vec2<bool>(true, arg_0.d.x), 2147483647i), _wgslsmith_sub_i32(u_input.d, 27572i), ~8743u, -2882f).a.d), !var_0.zy), var_2, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(624f, var_2.a.a)))), min(vec2<u32>(abs(0u), 0u), u_input.b.yx));
    let var_4 = var_2.a;
    return Struct_2(func_1(vec2<bool>(all(!vec4<bool>(var_0.x, true, var_3.a.b.x, true)), var_1)), vec2<bool>(var_2.b.x, !(!var_4.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f)))))), vec3<i32>(max(0i, 1i), 2147483647i, firstTrailingBit(~0i)), global0[_wgslsmith_index_u32(43025u, 14u)], !vec2<bool>(all(vec2<bool>(global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), !global0[_wgslsmith_index_u32(67421u, 14u)]), ~(-2147483647i));
    global0 = array<bool, 14>();
    let var_1 = func_5(func_1(var_0.d));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) + -150f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1110f))))), vec3<i32>(-(abs(-1i) ^ var_0.e), u_input.d & _wgslsmith_sub_i32(-39402i, _wgslsmith_mod_i32(1i, var_0.b.x)), -30354i), func_4(var_1.a, var_0.b.x, _wgslsmith_dot_vec2_u32(u_input.b.yx ^ vec2<u32>(9856u, 27735u), global2.yz), -986f).b.x && var_0.c, vec2<bool>(global1.x, false), _wgslsmith_mod_i32(var_1.a.b.x, u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(0i, u_input.a, i32(-1i) * -4391i, -2147483647i), global2.x);
}

