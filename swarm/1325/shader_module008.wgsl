struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(-34132i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 2147483647i, 38795i), vec3<i32>(-1i, 1i, 43148i));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(0i, 24639i, 2147483647i, i32(-2147483648)), vec4<u32>(21330u, 1u, 1u, 0u), -380f, vec3<f32>(-2211f, -1631f, 849f));

var<private> global3: array<i32, 14> = array<i32, 14>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648), i32(-2147483648), 53341i, -63984i, 6254i, i32(-2147483648), 0i, 11565i, i32(-2147483648), 22223i, 1i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<u32> {
    global2 = arg_2;
    global3 = array<i32, 14>();
    var var_0 = arg_2;
    global1 = arg_2;
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(~global2.b.x, ~47485u), _wgslsmith_mult_u32(global1.b.x, u_input.b));
    return global2.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> f32 {
    var var_0 = !(!(global1.a.x != 23161i));
    let var_1 = max(abs(countOneBits(_wgslsmith_div_u32(abs(1u), ~86240u))), ~(~(~global2.b.x)));
    global0 = array<vec3<i32>, 3>();
    global1 = Struct_1(vec4<i32>(countOneBits(0i) | global3[_wgslsmith_index_u32(min(4294967295u, 30634u) ^ _wgslsmith_mult_u32(arg_0.x, 0u), 14u)], _wgslsmith_mod_i32(-39005i, global3[_wgslsmith_index_u32(abs(countOneBits(global1.b.x)), 14u)]), 8631i, global3[_wgslsmith_index_u32(4294967295u, 14u)]), ~func_3(Struct_1(_wgslsmith_add_vec4_i32(global2.a, vec4<i32>(2147483647i, global2.a.x, global3[_wgslsmith_index_u32(var_1, 14u)], 0i)), vec4<u32>(18361u, 1u, global1.b.x, global1.b.x), _wgslsmith_f_op_f32(627f * -1387f), global2.d), ~(global1.b.x | 17148u), Struct_1(global2.a, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 45916u, global2.b.x, 4294967295u), vec4<u32>(1u, arg_0.x, global1.b.x, global2.b.x)), global2.d.x, _wgslsmith_f_op_vec3_f32(min(global1.d, vec3<f32>(global2.c, -814f, 102f)))), vec4<u32>(88102u << (arg_0.x % 32u), abs(global1.b.x), 4294967295u, 21523u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(global2.d.x - -211f)))) - 989f), global2.d);
    let var_2 = abs(global1.b.x);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.d.x * global2.c)));
}

fn func_1() -> Struct_1 {
    global2 = Struct_1(global2.a, _wgslsmith_add_vec4_u32(~global1.b, vec4<u32>(global2.b.x, global1.b.x, ~(~u_input.d), 1u)), _wgslsmith_f_op_f32(func_2(firstTrailingBit(~global1.b), firstLeadingBit(global2.a.x & ~global3[_wgslsmith_index_u32(4294967295u, 14u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -159f, global1.d.x))));
    var var_0 = global2.a.x;
    global3 = array<i32, 14>();
    var var_1 = global1.a;
    global3 = array<i32, 14>();
    return Struct_1(select(global2.a, global1.a, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global1.b.x, 4294967295u, 60557u) << (global1.b % vec4<u32>(32u)), global2.b)), reverseBits(_wgslsmith_div_u32(17027u, global1.b.x)) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, global1.b.x), max(global1.b.x, 8564u)) % 32u), 1u, u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-419f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-945f + -641f)))))), global1.d);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 0u <= abs(global2.b.x);
    var var_1 = ~1260i;
    let var_2 = Struct_1(firstTrailingBit(~firstLeadingBit(-arg_1.a)), ~(abs(~arg_1.b) | select(~vec4<u32>(global1.b.x, 0u, u_input.d, 1u), arg_1.b, arg_0)), arg_1.d.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1257f)))), _wgslsmith_f_op_f32(-func_1().d.x), _wgslsmith_f_op_f32(2600f * global2.c)));
    var var_3 = func_1();
    global0 = array<vec3<i32>, 3>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec2<bool>(true, global2.b.x > u_input.d), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))));
    var var_1 = func_4(true, func_1(), Struct_1(vec4<i32>(countOneBits(2147483647i), ~global2.a.x, -global1.a.x, _wgslsmith_mult_i32(global2.a.x, -2147483647i)) | global2.a, vec4<u32>(_wgslsmith_mult_u32(global2.b.x, 11248u), 58962u, _wgslsmith_sub_u32(24701u, global1.b.x | 63701u), 13201u), 451f, vec3<f32>(_wgslsmith_f_op_f32(-global1.c), -819f, _wgslsmith_div_f32(-413f, _wgslsmith_f_op_f32(221f + global2.c)))));
    var var_2 = select(select(vec4<bool>(true, true, (global1.b.x != global2.b.x) || any(vec2<bool>(true, true)), (0u ^ var_1.b.x) <= u_input.b), !select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), !vec4<bool>(var_0.x, var_0.x, false, true), var_1.b.x >= 1u), vec4<bool>(var_0.x & var_0.x, !var_0.x, 0i == min(-1i, u_input.c.x), true)), vec4<bool>(all(!vec3<bool>(var_0.x, var_0.x, false)), all(!select(vec2<bool>(var_0.x, false), var_0, var_0.x)), var_0.x, !(all(vec2<bool>(var_0.x, true)) | var_0.x)), all(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))));
    var var_3 = vec4<bool>(false, false, any(!(!var_2.xwz)), var_2.x);
    var_3 = vec4<bool>(!var_3.x, !var_0.x, var_3.x, !any(vec2<bool>(any(var_3.zz), any(var_3.xxz))));
    var var_4 = func_4(global2.a.x != max(var_1.a.x, abs(i32(-1i) * -2147483647i)), Struct_1(vec4<i32>(-14067i, -global2.a.x, -var_1.a.x, reverseBits(global2.a.x)), vec4<u32>(var_1.b.x, 4294967295u, ~1u, ~1u) >> (global2.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * global2.d.x)) * 1f), global1.d), Struct_1(-vec4<i32>(u_input.c.x, var_1.a.x, -6416i, -15727i) >> (global1.b % vec4<u32>(32u)), vec4<u32>(global1.b.x, ~_wgslsmith_div_u32(59109u, u_input.b), ~u_input.b, abs(var_1.b.x)), 1593f, vec3<f32>(-449f, var_1.c, -757f)));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(845f * -1098f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.c)) * _wgslsmith_f_op_f32(global2.d.x + global1.d.x)), global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(global2.c)), 65662i | _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global1.b.x, 3u)], func_4(false, Struct_1(vec4<i32>(0i, var_1.a.x, global2.a.x, 39173i), var_4.b, -229f, vec3<f32>(var_1.c, 2321f, var_1.d.x)), Struct_1(global2.a, vec4<u32>(17468u, 138167u, global2.b.x, 0u), global1.d.x, vec3<f32>(var_1.d.x, global1.d.x, 262f))).a.wyy), -firstTrailingBit(~12349i), i32(-1i) * -16203i);
}

