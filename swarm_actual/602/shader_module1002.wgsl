struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(655f, 76924i);

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 0u);

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(980f, 16360i), Struct_2(235f, 0i), Struct_2(-1048f, 1i));

var<private> global3: array<bool, 31> = array<bool, 31>(true, true, false, false, false, true, true, true, true, true, false, false, true, false, true, true, true, true, false, true, true, false, false, false, true, false, true, false, false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = 0i;
    global2 = array<Struct_2, 3>();
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, global0.a, -1000f, 941f))))), vec3<i32>(global0.b >> (~abs(1u) % 32u), min(1i, -24804i), ~var_0), vec2<i32>(_wgslsmith_clamp_i32(var_0, 33655i, _wgslsmith_mult_i32(-2740i, ~global0.b)), ~(-2147483647i)));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(86810u, 0u), vec2<u32>(global1.x, 0u)) << (max(~min(u_input.a.x, global1.x), _wgslsmith_div_u32(75747u, min(u_input.a.x, global1.x))) % 32u));
    global3 = array<bool, 31>();
    return _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -var_0) & _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global0.b), vec2<i32>(var_0, global0.b)), var_1.d) & var_1.d.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(0u <= (max(~17646u, 1u) << (u_input.a.x % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(-202f + global0.a), global0.a) * _wgslsmith_div_vec4_f32(vec4<f32>(327f, global0.a, global0.a, -882f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, 1293f, 1067f, global0.a)))))), vec3<i32>(-func_3(), ~(-(global0.b >> (10512u % 32u))), global0.b), vec2<i32>(global0.b >> (~_wgslsmith_mult_u32(49603u, u_input.a.x) % 32u), -16052i));
    var var_1 = select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0, var_0.a, arg_0, global0.a >= 1144f), select(!vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(57335u, 31u)]), !vec4<bool>(var_0.a, true, true, false), all(vec2<bool>(false, var_0.a)))), !vec4<bool>(!var_0.a, var_0.a, var_0.a, true), arg_0), select(select(!vec4<bool>(true, global3[_wgslsmith_index_u32(global1.x, 31u)], arg_0, var_0.a), vec4<bool>(all(vec4<bool>(false, false, false, false)), global3[_wgslsmith_index_u32(33479u, 31u)], false, true || arg_0), var_0.a & !var_0.a), select(!select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(22113u, 31u)], var_0.a), vec4<bool>(true, true, true, true), arg_0), !(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)], var_0.a, true, arg_0)), select(!vec4<bool>(global3[_wgslsmith_index_u32(global1.x, 31u)], arg_0, var_0.a, arg_0), !vec4<bool>(var_0.a, true, arg_0, arg_0), !vec4<bool>(arg_0, true, true, true))), select(!(-17809i > global0.b), !all(vec3<bool>(arg_0, false, false)), var_0.b.x < _wgslsmith_f_op_f32(global0.a + 1000f))), true);
    let var_2 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-global0.b, 19842i, select(-56772i, var_0.c.x, var_1.x), -32496i), select(vec4<i32>(var_0.d.x, var_0.c.x, 4921i, -2147483647i), vec4<i32>(2147483647i, 0i, global0.b, var_0.d.x), global1.x <= 1u)), ~(~min(vec4<i32>(global0.b, global0.b, global0.b, -40520i), vec4<i32>(var_0.c.x, global0.b, -1i, 2147483647i))), any(var_1.xx)), vec4<i32>(_wgslsmith_sub_i32(-1i, select(var_0.c.x, global0.b, true)) ^ -35912i, -(~(-1i)), -_wgslsmith_div_i32(global0.b, var_0.d.x), (global0.b & global0.b) & var_0.c.x));
    var var_3 = 82724u;
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a)))))), ~(-1i));
    return Struct_1(var_0.a, var_0.b, max(_wgslsmith_mult_vec3_i32(var_0.c << (u_input.a.xzz % vec3<u32>(32u)), select(var_0.c, var_0.c, true) << (~vec3<u32>(10356u, 4294967295u, 120u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(var_4.b & 6716i, _wgslsmith_clamp_i32(var_4.b, global0.b, var_0.d.x)), ~(~global0.b), _wgslsmith_add_i32(34653i, ~global0.b))), vec2<i32>(-1518i, abs((global0.b ^ global0.b) & var_4.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global3[_wgslsmith_index_u32(0u, 31u)]);
    let var_1 = _wgslsmith_mod_vec4_u32(max(u_input.a, firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 61081u, u_input.a.x), vec4<u32>(u_input.a.x, global1.x, 16681u, u_input.a.x)))), abs(firstLeadingBit(abs(firstTrailingBit(u_input.a)))));
    global1 = var_1.xyy;
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global1.yz, vec2<u32>(80797u, 1u)), global1.zx), vec2<u32>(u_input.a.x, 13402u))), 31u)];
    var var_1 = global1.x;
    var_1 = global1.x;
    var var_2 = func_1();
    var var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, reverseBits(u_input.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(76549u, 30135u, 1144u, 65470u) << (u_input.a % vec4<u32>(32u))) & firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 33081u, global1.x, 84831u), u_input.a)), ~(~u_input.a)));
    var var_4 = vec4<f32>(_wgslsmith_div_f32(106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(463f, global0.a)))) + var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, global1.x), u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_4.yw, var_2.b.zy)), _wgslsmith_div_vec2_f32(var_2.b.zz, vec2<f32>(_wgslsmith_f_op_f32(abs(-152f)), var_4.x))));
}

