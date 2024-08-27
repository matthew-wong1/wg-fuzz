struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: vec4<i32> = vec4<i32>(0i, -33591i, -2901i, i32(-2147483648));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<u32>) -> vec3<i32> {
    global0 = array<vec2<bool>, 25>();
    var var_0 = Struct_2(Struct_1(vec4<i32>(arg_1, 29995i, ~global1.x, 0i), _wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, 0u, 0u, 81356u), vec4<u32>(arg_2.x, 1u, 0u, 4294967295u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 50282u, arg_2.x, 44607u), vec4<u32>(1u, arg_2.x, 4294967295u, 22105u))), global1.ywy << ((_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, 3950u), vec3<u32>(arg_2.x, arg_2.x, 10257u)) | countOneBits(vec3<u32>(7702u, 67270u, arg_2.x))) % vec3<u32>(32u)), !global0[_wgslsmith_index_u32(~63453u, 25u)], arg_0.xxy), Struct_1(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -2147483647i)), _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -33367i), vec4<i32>(u_input.a.x, -26356i, -1i, 7793i))), vec4<u32>(arg_2.x, 11095u, ~(arg_2.x & arg_2.x), arg_2.x), vec3<i32>(~_wgslsmith_dot_vec3_i32(global1.yyz, u_input.a), arg_1, countOneBits(max(-11955i, 58598i))), vec2<bool>(all(global0[_wgslsmith_index_u32(~4294967295u, 25u)]), !(false && arg_0.x)), arg_0.wyz), Struct_1(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_1, arg_1, 1i), vec4<i32>(arg_1, -1i, 6267i, u_input.a.x), vec4<i32>(1i, arg_1, global1.x, 52453i))), vec4<u32>(~_wgslsmith_sub_u32(arg_2.x, arg_2.x), _wgslsmith_mult_u32(arg_2.x, 1u), _wgslsmith_mult_u32(~arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, 0u), vec3<u32>(15938u, 343u, arg_2.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, 31807u, arg_2.x), ~vec4<u32>(arg_2.x, 4294967295u, arg_2.x, arg_2.x))), global1.zyx, !global0[_wgslsmith_index_u32(arg_2.x, 25u)], !vec3<bool>(arg_0.x, arg_0.x, true)), !all(arg_0), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1051f, -145f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1011f, -444f)), _wgslsmith_f_op_f32(2190f * 1444f)))), -949f));
    return -var_0.a.a.xww ^ min(countOneBits(~var_0.b.a.xwx), (-vec3<i32>(2147483647i, var_0.b.c.x, global1.x) >> (var_0.c.b.zwz % vec3<u32>(32u))) ^ firstTrailingBit(-vec3<i32>(1i, 2147483647i, -2147483647i)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global0 = array<vec2<bool>, 25>();
    let var_0 = arg_3.e.x;
    global1 = max(~arg_3.a, vec4<i32>(_wgslsmith_div_i32(1910i, 0i ^ _wgslsmith_add_i32(40367i, global1.x)), arg_1.c.x, arg_1.c.x, -1i));
    var var_1 = true;
    global1 = -vec4<i32>(_wgslsmith_add_i32((u_input.a.x << (arg_1.b.x % 32u)) | 2147483647i, ~(-2147483647i)), -(~countOneBits(arg_1.c.x)), -12308i, -1i);
    return any(select(select(!(!vec4<bool>(true, true, arg_1.e.x, true)), !(!vec4<bool>(var_0, var_0, var_0, false)), !(!vec4<bool>(arg_3.d.x, var_0, var_0, true))), !(!vec4<bool>(true, true, arg_1.e.x, true)), !vec4<bool>(arg_1.d.x, false, true, true)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> vec3<i32> {
    global1 = ~countOneBits(_wgslsmith_div_vec4_i32(firstLeadingBit(arg_0.b.a), ~arg_0.c.a) ^ vec4<i32>(0i, -global1.x, -2147483647i, ~arg_0.c.c.x));
    var var_0 = func_4(4294967295u, Struct_1(~reverseBits(-arg_0.a.a), arg_0.c.b, func_3(!select(vec4<bool>(true, arg_0.c.e.x, arg_0.b.e.x, arg_0.c.e.x), vec4<bool>(arg_0.d, arg_0.c.d.x, arg_0.a.e.x, false), vec4<bool>(arg_0.d, true, arg_0.c.e.x, true)), arg_0.a.a.x, ~(vec2<u32>(arg_2, arg_2) ^ arg_0.b.b.ww)), global0[_wgslsmith_index_u32(arg_0.b.b.x, 25u)], vec3<bool>(false, arg_0.a.e.x, 293f == arg_1)), arg_0.a.b, arg_0.a);
    global0 = array<vec2<bool>, 25>();
    let var_1 = global1.xz;
    var var_2 = Struct_2(arg_0.b, Struct_1(firstLeadingBit(vec4<i32>(var_1.x, u_input.a.x, var_1.x, i32(-1i) * -54309i)), ~vec4<u32>(~arg_0.c.b.x, arg_0.a.b.x | 123u, 71101u, arg_2), global1.zzz, !vec2<bool>(all(arg_0.a.e), arg_0.e.x < arg_0.e.x), arg_0.b.e), Struct_1(vec4<i32>(-1i) * -firstTrailingBit(arg_0.b.a), firstLeadingBit(~(~vec4<u32>(arg_2, 40834u, arg_0.b.b.x, arg_2))), global1.xyy, global0[_wgslsmith_index_u32(~(~16676u), 25u)], !(!vec3<bool>(arg_0.b.d.x, false, arg_0.d))), false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(arg_0.e)))), arg_0.e)));
    return firstLeadingBit(_wgslsmith_sub_vec3_i32(var_2.a.a.xxx, global1.yzw));
}

fn func_1() -> vec4<bool> {
    global0 = array<vec2<bool>, 25>();
    var var_0 = vec4<i32>(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(func_2(Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, global1.x, 1i), vec4<u32>(1u, 110451u, 1u, 38132u), u_input.a, global0[_wgslsmith_index_u32(4294967295u, 25u)], vec3<bool>(true, false, true)), Struct_1(vec4<i32>(global1.x, u_input.a.x, -3995i, -1i), vec4<u32>(0u, 31248u, 1u, 48091u), u_input.a, vec2<bool>(true, true), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-2147483647i, 27089i, 46061i, global1.x), vec4<u32>(4294967295u, 115807u, 38774u, 17072u), u_input.a, vec2<bool>(false, true), vec3<bool>(true, true, false)), false, vec4<f32>(-509f, -986f, -1843f, -1743f)), -2573f, 0u), vec3<i32>(-18013i, 2147483647i, -108261i) & global1.xyz), _wgslsmith_div_vec3_i32(select(vec3<i32>(-2147483647i, -37975i, global1.x), global1.zww, vec3<bool>(true, false, false)), -u_input.a)), u_input.a.x, u_input.a.x, max(_wgslsmith_add_i32(global1.x, u_input.a.x), _wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(u_input.a.x, global1.x, max(1i, 11430i)))));
    global1 = ~(-vec4<i32>(global1.x, _wgslsmith_div_i32(var_0.x, var_0.x), firstTrailingBit(-1i), abs(global1.x)) & ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, 1i, -1i, global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, global1.x, u_input.a.x, -2147483647i), vec4<i32>(global1.x, global1.x, 11191i, var_0.x))));
    var var_1 = _wgslsmith_div_f32(722f, _wgslsmith_f_op_f32(abs(1065f)));
    var var_2 = select(countOneBits(vec3<i32>(1i, global1.x, _wgslsmith_add_i32(-60428i, ~global1.x))), global1.xyw, true);
    return !select(select(vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, all(global0[_wgslsmith_index_u32(1u, 25u)]), true, true)), vec4<bool>(true, true, false, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, true, false, true), !func_1(), vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 25u)]), false, true, true));
    let var_1 = Struct_2(Struct_1(-reverseBits(vec4<i32>(-15734i, u_input.a.x, -92401i, -22334i) ^ vec4<i32>(global1.x, -1i, u_input.a.x, -32968i)), vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(10009u, 19561u), 49214u >> (0u % 32u)), max(4294967295u, 1u), firstLeadingBit(1u << (0u % 32u)), 28199u), reverseBits(u_input.a), var_0.yz, !vec3<bool>(select(true, false, true), !var_0.x, var_0.x)), Struct_1(~(~vec4<i32>(-1i, 18206i, -1i, global1.x)), vec4<u32>(1u, 1u, reverseBits(4294967295u), 1u), u_input.a, vec2<bool>(var_0.x, false), var_0.xzz), Struct_1(vec4<i32>(global1.x, func_2(Struct_2(Struct_1(vec4<i32>(global1.x, -13112i, -271i, global1.x), vec4<u32>(4294967295u, 20252u, 4294967295u, 0u), global1.xwy, vec2<bool>(false, false), vec3<bool>(true, var_0.x, var_0.x)), Struct_1(vec4<i32>(6123i, 2147483647i, -1422i, 31255i), vec4<u32>(4294967295u, 25160u, 30669u, 4294967295u), global1.zww, var_0.yy, vec3<bool>(true, true, var_0.x)), Struct_1(vec4<i32>(global1.x, 51500i, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, 20837u, 20189u), u_input.a, var_0.zw, var_0.wyw), true, vec4<f32>(523f, 928f, 552f, 1222f)), _wgslsmith_f_op_f32(-484f + 1000f), 45280u).x, -1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(16290i, 55i, global1.x)), global1.wxy)), ~vec4<u32>(abs(0u), 1u, 0u, 92141u), vec3<i32>(-5241i, abs(_wgslsmith_mult_i32(-50950i, u_input.a.x)), global1.x), !func_1().xx, select(var_0.zwx, func_1().xxx, var_0.xwx)), true, vec4<f32>(1f, 1f, 1f, 1f));
    global1 = vec4<i32>(var_1.a.c.x, -1i, u_input.a.x, -1i);
    var var_2 = Struct_2(Struct_1(var_1.a.a, var_1.c.b, reverseBits(u_input.a), select(!var_0.zx, vec2<bool>(var_1.b.e.x || true, var_0.x), var_1.d), !(!var_0.xyw)), Struct_1(var_1.b.a, var_1.b.b, ~(global1.zxz & vec3<i32>(-1i, 23165i, u_input.a.x)) | _wgslsmith_add_vec3_i32(var_1.a.c, _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.a.x, u_input.a.x, u_input.a.x), vec3<i32>(var_1.c.a.x, u_input.a.x, u_input.a.x))), vec2<bool>(var_0.x, true != var_0.x), select(vec3<bool>(true, true, var_1.a.d.x), var_0.yxy, func_1().zwy)), Struct_1(select(vec4<i32>(1i, var_1.c.a.x, var_1.a.a.x, -38806i), var_1.a.a, select(select(vec4<bool>(false, var_0.x, var_1.c.e.x, var_1.a.d.x), var_0, vec4<bool>(var_0.x, true, var_1.a.d.x, var_0.x)), func_1(), var_0)), _wgslsmith_sub_vec4_u32(max(var_1.c.b, vec4<u32>(97131u, var_1.b.b.x, 26160u, var_1.a.b.x)), vec4<u32>(var_1.b.b.x, var_1.c.b.x, var_1.a.b.x, var_1.b.b.x)) | (~var_1.b.b & ~var_1.a.b), (_wgslsmith_clamp_vec3_i32(global1.zxz, u_input.a, global1.yww) >> (firstLeadingBit(vec3<u32>(61091u, 39030u, 19886u)) % vec3<u32>(32u))) | vec3<i32>(global1.x, global1.x, ~(-20745i)), !var_0.yz, vec3<bool>(any(vec4<bool>(var_1.a.d.x, var_1.a.e.x, var_0.x, var_1.d)), true, all(select(var_0.xxz, vec3<bool>(var_0.x, true, false), var_1.a.e.x)))), all(vec4<bool>(!var_0.x, true, !var_1.c.e.x, var_1.b.e.x)) & var_0.x, vec4<f32>(_wgslsmith_f_op_f32(-806f - var_1.e.x), 986f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.e.x)) * _wgslsmith_f_op_f32(-1000f * var_1.e.x))));
    let var_3 = Struct_1(abs(var_1.c.a) >> (vec4<u32>(30504u, ~_wgslsmith_clamp_u32(var_2.b.b.x, 36712u, var_1.a.b.x), 4294967295u, 50926u) % vec4<u32>(32u)), ~min(_wgslsmith_clamp_vec4_u32(var_2.a.b, var_1.a.b, ~vec4<u32>(var_1.b.b.x, var_1.a.b.x, var_1.c.b.x, 0u)), var_1.a.b), abs(vec3<i32>(-1i) * -(global1.zxy >> (vec3<u32>(var_2.a.b.x, 1u, var_1.c.b.x) % vec3<u32>(32u)))), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.b.b.x, ~var_1.b.b.x) & firstLeadingBit(var_1.b.b.x), 25u)], !func_1().zzz);
    var var_4 = vec4<u32>(var_3.b.x, max(_wgslsmith_mult_u32(var_1.b.b.x >> (~0u % 32u), ~(4294967295u >> (1u % 32u))), var_1.a.b.x ^ _wgslsmith_mult_u32(4294967295u, var_3.b.x)), (var_2.c.b.x ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_3.b.x, var_2.c.b.x), select(var_3.b.x, var_1.c.b.x, true), _wgslsmith_sub_u32(29743u, 28439u))) & ~(~var_2.a.b.x), ~var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(_wgslsmith_clamp_i32(var_2.c.a.x, 33282i, u_input.a.x) & 1i)), abs(u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.x) * _wgslsmith_div_f32(-259f, var_1.e.x)) - var_1.e.x), u_input.a.x, 0u);
}

