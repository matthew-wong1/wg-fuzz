struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, 3170i, 46231i);

var<private> global2: f32 = 1328f;

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(-1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))), 1293f, _wgslsmith_f_op_f32(sign(-317f))));
    global3 = Struct_1(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(1i, 6473i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -2147483647i), select(vec2<i32>(40403i, 0i), u_input.c.yz, true)), _wgslsmith_clamp_i32(-arg_1.x, ~u_input.c.x, arg_1.x ^ global1.x)), min(global3.b | _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -12033i, global1.x), u_input.c), u_input.c), vec3<i32>(arg_1.x, global1.x, ~1i)), countOneBits(-1i));
    let var_1 = !(u_input.b >= 68232u);
    let var_2 = ~select(countOneBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2000i, u_input.a, global3.c, arg_1.x), vec4<i32>(24196i, 49242i, -2147483647i, arg_1.x)))), -(~vec4<i32>(arg_1.x, -32231i, 39482i, global1.x)), vec4<bool>(var_1 | true, true, true, global1.x > global3.c));
    global3 = Struct_1(~reverseBits(u_input.b), reverseBits(firstTrailingBit(select(firstLeadingBit(global3.b), var_2.zyz, vec3<bool>(false, false, var_1)))), 0i);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 113f) - _wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_div_f32(789f, var_0.a.x)))), var_0.a.x, -574f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_div_f32(var_0.a.x, var_0.a.x)), 1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 246f, var_0.a.x, -721f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -912f, var_0.a.x, -696f) + vec4<f32>(var_0.a.x, var_0.a.x, -567f, var_0.a.x))))), vec4<bool>(!all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)) & !var_1, _wgslsmith_f_op_f32(sign(var_0.a.x)) < -169f, select(true, false, true), !any(!vec4<bool>(true, var_1, arg_0.x, true)))));
}

fn func_2() -> vec4<bool> {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1279f * -545f), 449f, -1000f, -1127f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(var_0, var_0), vec2<i32>(global3.b.x, global1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, -1000f, 1771f, -1099f) + vec4<f32>(-789f, 1375f, -717f, 1148f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(481f, 2904f, 1738f, -384f) + vec4<f32>(1466f, -1418f, 1185f, 284f)))))) + vec4<f32>(-887f, _wgslsmith_f_op_f32(ceil(-825f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(624f, 1000f), -1539f)) - _wgslsmith_f_op_f32(round(-478f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(129f, -416f)))))));
    global3 = Struct_1(global3.a, abs(_wgslsmith_div_vec3_i32(global3.b, vec3<i32>(_wgslsmith_mod_i32(u_input.a, 19271i), u_input.c.x, _wgslsmith_div_i32(8636i, global1.x)))), ~min(_wgslsmith_dot_vec2_i32(u_input.c.yz, vec2<i32>(-229i, 0i)) ^ _wgslsmith_add_i32(u_input.a, -32007i), global3.b.x));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(select(global3.a, 4294967295u, false), _wgslsmith_add_u32(1084u, u_input.b)), u_input.b), 21u)];
    var var_3 = global0[_wgslsmith_index_u32(var_2.a, 21u)];
    return select(vec4<bool>(~29773u > u_input.b, true, var_0, true), select(vec4<bool>(all(!vec4<bool>(true, var_0, var_0, false)), var_0, true, false), select(!select(vec4<bool>(true, var_0, true, false), vec4<bool>(var_0, false, var_0, false), true), select(vec4<bool>(true, true, false, var_0), !vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0)), select(vec4<bool>(true, var_0, true, false), select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0)), var_0)), select(!select(var_0, false, false), all(vec2<bool>(var_0, var_0)), var_0)), vec4<bool>(var_0, !(!(!var_0)), all(select(vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, var_0, var_0, false), u_input.a != var_3.b.x)), var_0));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = !func_2();
    global0 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))));
    let var_2 = Struct_1(1u, select(~vec3<i32>(u_input.a, countOneBits(global3.c), -1i), ~_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(1i, global3.b.x, 2147483647i), _wgslsmith_sub_vec3_i32(arg_2.b, vec3<i32>(-899i, -9289i, u_input.c.x))), !vec3<bool>(all(vec2<bool>(arg_1, true)), var_0.x, false)), abs(-min(-45241i, -global3.c)));
    let var_3 = -1i;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), all(vec3<bool>(false, false, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, func_1(Struct_2(vec3<f32>(1371f, -819f, 842f)), true, global0[_wgslsmith_index_u32(62739u, 21u)]))), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), false), vec3<bool>(true, !(global3.a < global3.a), true)), !vec3<bool>(!func_1(Struct_2(vec3<f32>(-1398f, 989f, -639f)), false, Struct_1(63534u, global3.b, 36233i)), all(vec4<bool>(true, true, true, true)), false));
    var var_1 = !(!select(func_2().x, !var_0.x, false));
    global1 = abs(~global3.b);
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(select(~reverseBits(vec2<u32>(global3.a, global3.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global3.a), ~vec2<u32>(global3.a, 0u)), vec2<bool>(true, true)), abs(abs(~vec2<u32>(u_input.b, 1u)))), vec3<i32>(42949i, 1i, ~u_input.c.x), -2147483647i | global1.x);
    let var_3 = global0[_wgslsmith_index_u32(select(var_2.a, min(u_input.b, 0u), ~24224u > _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, global3.a, var_2.a, 27020u)), abs(vec4<u32>(4294967295u, 15689u, 0u, 4294967295u)))), 21u)];
    var var_4 = global0[_wgslsmith_index_u32(max(43290u, abs(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 70294u, 62748u), vec4<u32>(var_2.a, 67464u, 14001u, var_3.a))))), 21u)];
    var var_5 = 3371i;
    let var_6 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, -311f, -1771f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-566f, -127f, -603f))))));
    let var_7 = -29870i;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.zx, abs(vec3<u32>(max(abs(4294967295u), var_2.a | var_4.a), var_3.a, ~global3.a)), _wgslsmith_f_op_f32(-var_6.a.x), reverseBits(~vec3<u32>(4294967295u >> (1u % 32u), var_4.a, 35333u)), var_4.a);
}

