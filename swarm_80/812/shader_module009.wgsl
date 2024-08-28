struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_4 = Struct_4(Struct_1(1i, vec2<i32>(37494i, -11840i), 1479f, vec4<f32>(-1479f, 1150f, -621f, -1006f), 1175f));

var<private> global2: array<Struct_4, 24>;

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> i32 {
    return (u_input.c.x | select(u_input.b, -1i, arg_3.b)) & 340i;
}

fn func_3() -> f32 {
    global0 = true;
    global3 = 0u;
    global1 = Struct_4(Struct_1(-1i, vec2<i32>(0i, 44911i), -937f, _wgslsmith_f_op_vec4_f32(round(global1.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(892f + 1239f)))));
    global1 = Struct_4(Struct_1(_wgslsmith_div_i32(abs(global1.a.a), 0i) & _wgslsmith_add_i32(min(global1.a.a, 16049i), min(global1.a.a, global1.a.a)), vec2<i32>(_wgslsmith_mult_i32(0i & global1.a.b.x, firstTrailingBit(-1i)), _wgslsmith_mod_i32(u_input.c.x, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1009f + 1092f) - -445f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1738f, global1.a.e, global1.a.d.x, 315f)), _wgslsmith_div_vec4_f32(vec4<f32>(837f, global1.a.e, global1.a.c, 445f), vec4<f32>(global1.a.c, 1000f, global1.a.c, 1266f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-225f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_0 = select((select(vec4<u32>(0u, 0u, 30374u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, true)) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & ~select(vec4<u32>(18823u, 8499u, 1u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<bool>(true, false, true, false)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, 80503u), ~u_input.a, ~0u, u_input.a) & _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), select(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 0u, u_input.a), vec4<bool>(false, false, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false))) << (~(~countOneBits(~vec4<u32>(u_input.a, u_input.a, 14614u, 4294967295u))) % vec4<u32>(32u));
    return 584f;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    global1 = global2[_wgslsmith_index_u32(select(arg_0.x, 48566u >> ((_wgslsmith_div_u32(0u, abs(u_input.a)) & arg_0.x) % 32u), true), 24u)];
    var var_0 = false;
    var var_1 = Struct_1(~(-(~arg_1.a.a)), global1.a.b, 1740f, _wgslsmith_f_op_vec4_f32(select(arg_1.a.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -689f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.d.x))), _wgslsmith_f_op_f32(-1f)), arg_1.b)), 1000f);
    var var_2 = select(!vec4<bool>(!arg_1.b, arg_1.b, !arg_1.b, true), !vec4<bool>(!arg_1.b, arg_1.b, _wgslsmith_div_f32(-649f, var_1.e) != var_1.e, any(select(vec3<bool>(true, arg_1.b, false), vec3<bool>(arg_1.b, true, true), vec3<bool>(arg_1.b, arg_1.b, false)))), vec4<bool>(!all(select(vec2<bool>(arg_1.b, false), vec2<bool>(true, false), arg_1.b)), select(any(vec4<bool>(arg_1.b, true, false, arg_1.b)), false, all(!vec4<bool>(false, arg_1.b, true, arg_1.b))), false, true));
    var var_3 = select(vec3<bool>(!(!(!var_2.x)), true, true), !var_2.wxw, any(vec3<bool>(any(!vec4<bool>(var_2.x, true, var_2.x, true)), true, var_2.x)));
    return true;
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = Struct_3(global1.a);
    global1 = Struct_4(var_0.a);
    global1 = global2[_wgslsmith_index_u32(1u, 24u)];
    global2 = array<Struct_4, 24>();
    var var_1 = vec4<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(abs(global1.a.c)) != _wgslsmith_div_f32(490f, 1000f), true, true, func_2(vec2<u32>(u_input.a, 4294967295u), Struct_2(Struct_1(1i, vec2<i32>(var_0.a.b.x, 19666i), 390f, vec4<f32>(712f, -258f, global1.a.d.x, 1520f), -114f), true)))), all(vec4<bool>(!(-1929f > global1.a.d.x), true, _wgslsmith_f_op_f32(-var_0.a.c) != 123f, ~(-1i) != global1.a.b.x)), (true || all(vec3<bool>(false, false, false))) & false, all(vec2<bool>(~u_input.a >= _wgslsmith_add_u32(u_input.a, 6190u), func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(46780u, 1u)), Struct_2(Struct_1(-1i, u_input.c.zx, -1462f, var_0.a.d, -1220f), true)))));
    return _wgslsmith_f_op_f32(-700f - global1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(~min(vec4<u32>(0u, 1u, u_input.a, select(1u, u_input.a, true)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 51680u, u_input.a, 1u), vec4<u32>(1u, 59146u, 0u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 14343u, 4796u), vec4<u32>(u_input.a, 0u, 3463u, 4294967295u)))), countOneBits(vec4<u32>(~(~u_input.a), abs(u_input.a), ~_wgslsmith_add_u32(u_input.a, u_input.a), ~(~u_input.a))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.a.a, 2147483647i) ^ u_input.b, ~reverseBits(47487i)) ^ (5007i << (1u % 32u)), ~(abs(u_input.c.x) >> ((40034u >> (0u % 32u)) % 32u)) | -32886i, abs(u_input.b));
    let var_2 = Struct_1(-(~var_1.x), ~vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(var_1.x, 1i) ^ var_1.xz), 7037i), _wgslsmith_f_op_f32(func_4(select(-func_1(u_input.a, -224f, true, Struct_2(Struct_1(-37716i, vec2<i32>(-62873i, global1.a.a), global1.a.e, vec4<f32>(global1.a.c, global1.a.c, global1.a.c, 1173f), global1.a.e), true)), ~u_input.c.x, func_2(var_0.zw, Struct_2(Struct_1(2147483647i, u_input.c.zz, global1.a.d.x, global1.a.d, global1.a.e), false))))), _wgslsmith_f_op_vec4_f32(step(global1.a.d, vec4<f32>(_wgslsmith_f_op_f32(-1f), 1f, _wgslsmith_f_op_f32(-global1.a.c), global1.a.e))), global1.a.e);
    global0 = func_2(firstTrailingBit(var_0.zz), Struct_2(var_2, !any(vec3<bool>(false, true, true)))) | func_2(vec2<u32>(1u, u_input.a), Struct_2(Struct_1(var_2.a, var_1.yy, _wgslsmith_f_op_f32(var_2.e * var_2.c), var_2.d, _wgslsmith_f_op_f32(-global1.a.d.x)), true));
    let var_3 = ~(~vec4<u32>(abs(~var_0.x), 3810u, u_input.a, ~1u));
    let var_4 = true;
    global3 = ~4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(848f * _wgslsmith_f_op_f32(abs(-189f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.c))), any(vec4<bool>(false, true, var_4, var_4)))), 1219f), var_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.a.d.xw, _wgslsmith_f_op_vec2_f32(-var_2.d.yz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-653f, -421f), var_2.d.xw)))) + vec2<f32>(-1255f, -1413f))));
}

