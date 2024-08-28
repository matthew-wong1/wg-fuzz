struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 25>;

var<private> global2: Struct_1 = Struct_1(-1623f);

var<private> global3: Struct_2 = Struct_2(vec2<i32>(1424i, 1i), vec3<u32>(4294967295u, 22136u, 1u), Struct_1(-151f));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool) -> vec2<i32> {
    global2 = global3.c;
    let var_0 = global0.www;
    var var_1 = Struct_1(global2.a);
    let var_2 = vec4<i32>(select(u_input.d.x, global3.a.x, true), -1i, -firstTrailingBit(0i), global0.x);
    global1 = array<i32, 25>();
    return firstTrailingBit(vec2<i32>(-62466i, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.a, 0i, var_2.x)), global0.wzw & (vec3<i32>(global1[_wgslsmith_index_u32(global3.b.x, 25u)], var_2.x, -2147483647i) & u_input.b.www))));
}

fn func_2() -> u32 {
    var var_0 = select(vec2<bool>(true, select(global3.a.x >= ~42869i, all(vec4<bool>(true, true, false, true)) && false, any(vec3<bool>(true, true, true)))), vec2<bool>(true, false), !(_wgslsmith_add_u32(global3.b.x, u_input.c) < countOneBits(111195u)));
    var var_1 = global3.c;
    var_0 = !(!select(vec2<bool>(var_0.x, true), !(!vec2<bool>(var_0.x, var_0.x)), !select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), true)));
    global3 = Struct_2(_wgslsmith_clamp_vec2_i32(~func_3(global3.c.a >= 229f), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 16238i), func_3(true))), vec2<i32>(_wgslsmith_mod_i32(874i, abs(-9438i)), _wgslsmith_dot_vec3_i32(~u_input.b.yyx, vec3<i32>(64228i, global1[_wgslsmith_index_u32(0u, 25u)], 4702i)))), min(vec3<u32>(~countOneBits(1u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, 1u), global3.b), 4294967295u), u_input.e), _wgslsmith_div_vec3_u32(~(~global3.b), vec3<u32>(global3.b.x, 6195u, firstTrailingBit(global3.b.x)))), global3.c);
    let var_2 = -2007f;
    return 104320u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(-681f);
    global1 = array<i32, 25>();
    let var_1 = vec4<bool>(true, _wgslsmith_div_u32(1u ^ func_2(), 1u) < 0u, all(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true)), arg_0.a >= _wgslsmith_f_op_f32(-250f - -1752f), any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))))), all(!vec4<bool>(true, all(vec3<bool>(false, true, false)), false, true)));
    let var_2 = select(select(vec2<bool>(true || var_1.x, all(!vec4<bool>(var_1.x, true, var_1.x, false))), select(select(var_1.yy, !var_1.yz, all(vec4<bool>(false, var_1.x, true, var_1.x))), vec2<bool>(all(var_1.xwz), true), select(vec2<bool>(var_1.x, var_1.x), !var_1.zw, vec2<bool>(false, var_1.x))), !var_1.yx), select(vec2<bool>(any(select(vec4<bool>(var_1.x, false, true, var_1.x), var_1, true)), all(var_1.wxy) != true), !var_1.wx, select(select(var_1.xw, select(var_1.yy, vec2<bool>(var_1.x, var_1.x), var_1.x), !var_1.wz), vec2<bool>(true, true), !var_1.yz)), false);
    let var_3 = _wgslsmith_f_op_f32(-2389f * _wgslsmith_f_op_f32(max(524f, _wgslsmith_f_op_f32(f32(-1f) * -1238f))));
    return Struct_2(-(global0.xx | global3.a), (select(global3.b, select(vec3<u32>(global3.b.x, global3.b.x, 13607u), global3.b, false), select(vec3<bool>(true, false, true), vec3<bool>(true, var_2.x, var_2.x), true)) << (global3.b % vec3<u32>(32u))) & ~global3.b, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.a, -595f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3.c, vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.e, 25u)], -2147483647i));
    var var_1 = func_1(var_0.c, _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(44421i, global1[_wgslsmith_index_u32(global3.b.x, 25u)], global3.a.x, global3.a.x), u_input.b), -2147483647i, u_input.b.x | global0.x) | _wgslsmith_div_vec3_i32(min(u_input.b.wyz, u_input.b.wwy), -global0.xwx), vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_0.a) ^ _wgslsmith_div_i32(global1[_wgslsmith_index_u32(2481u, 25u)], u_input.b.x), _wgslsmith_dot_vec4_i32(u_input.b >> (vec4<u32>(global3.b.x, var_0.b.x, 42228u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-16431i, 2147483647i, 0i, 61621i), u_input.b)), var_0.a.x)));
    var var_2 = var_0.c;
    let var_3 = select(!vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), false), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, false, true, true)), global2.a != global2.a, true, global2.a >= global3.c.a)), select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(-14615i < global1[_wgslsmith_index_u32(var_1.b.x, 25u)], true, true, select(false, true, true)), vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, any(vec3<bool>(false, true, false)))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, any(vec3<bool>(false, false, true)), global3.a.x == 2147483647i), true)));
    var var_4 = vec2<i32>(global3.a.x & func_1(Struct_1(_wgslsmith_f_op_f32(floor(var_0.c.a))), global0.wyw).a.x, 21826i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-15072i, -42508i, -firstLeadingBit(global1[_wgslsmith_index_u32(u_input.e, 25u)]) & _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.a.x, global3.a.x), -1167i), u_input.a), firstLeadingBit(select(4294967295u, var_1.b.x, all(var_3))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(var_1.c.a - _wgslsmith_div_f32(-612f, -605f)))), _wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) - _wgslsmith_f_op_f32(global2.a * -110f))), var_2.a));
}

