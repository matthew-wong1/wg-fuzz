struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 2>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 89594u);

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1152f))) - -129f))));
    let var_1 = all(!vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true));
    var var_2 = -465f;
    var var_3 = 36328u;
    var_2 = _wgslsmith_f_op_f32(ceil(880f));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-984f + _wgslsmith_div_f32(656f, 1675f)), 1425f)) * 1954f), _wgslsmith_f_op_f32(-var_0)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(global3.a.yx, ~(~max(vec2<i32>(1i, global3.a.x), _wgslsmith_mod_vec2_i32(u_input.a.zz, vec2<i32>(-65i, global3.a.x)))));
    var var_1 = abs(~global3.a.zz);
    var_1 = _wgslsmith_div_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(select(countOneBits(global0.d.x), global2.x << (23610u % 32u), true), 2u)], u_input.a.x), vec2<i32>(0i, 11073i), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), false)), ~_wgslsmith_sub_vec2_i32(global0.c.a.xx, vec2<i32>(22240i, var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(func_3(vec4<i32>(-1782i, _wgslsmith_mod_i32(u_input.a.x, countOneBits(var_1.x)), _wgslsmith_sub_i32(1i | firstLeadingBit(global0.a.a.x), global1[_wgslsmith_index_u32(~6882u, 2u)]), -firstTrailingBit(1i) & -(~var_1.x))));
    var var_3 = u_input.b.zw;
    return Struct_2(global0.c, u_input.a.x, Struct_1(vec3<i32>(countOneBits(18865i), var_0.x, global3.a.x | ~33505i)), select(vec2<u32>(~31521u, global0.d.x) | _wgslsmith_clamp_vec2_u32(u_input.b.yy, vec2<u32>(26950u, var_3.x), global0.d), vec2<u32>(_wgslsmith_sub_u32(~5474u, global2.x), var_3.x), vec2<bool>(false, true)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(-_wgslsmith_add_vec3_i32(global0.a.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(-58098i, 34352i, global1[_wgslsmith_index_u32(1u, 2u)]))));
    var var_1 = !any(vec3<bool>(false, any(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x)) && true, all(vec2<bool>(arg_3.x, arg_3.x))));
    global2 = u_input.b;
    var var_2 = !arg_3.zx;
    global3 = arg_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(-753f, global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, _wgslsmith_f_op_f32(-556f - -1281f), _wgslsmith_f_op_f32(-1422f * _wgslsmith_f_op_f32(501f + 1000f)), 740f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1053f, 3480f, -356f, -422f), vec4<f32>(1000f, 812f, 1098f, 726f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(248f, 1445f, 618f, 1993f))))), vec3<bool>(true, (false & (global3.a.x < global1[_wgslsmith_index_u32(u_input.b.x, 2u)])) && true, !(u_input.a.x > firstLeadingBit(1i))));
    var var_0 = !vec2<bool>(select(false, select(31342u >= u_input.c.x, true, all(vec4<bool>(true, false, false, true))), true), false);
    global0 = Struct_2(Struct_1(vec3<i32>(-u_input.a.x, _wgslsmith_mult_i32(10215i, global1[_wgslsmith_index_u32(global0.d.x, 2u)]), 13743i) & abs(max(global0.a.a, vec3<i32>(u_input.a.x, 1i, 3416i)))), global3.a.x, func_1(732f, func_1(1145f, Struct_1(vec3<i32>(global0.b, u_input.a.x, global3.a.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(149f, -356f, 1763f, -1000f))), vec3<bool>(true, any(vec2<bool>(true, var_0.x)), false)).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2051f, 105f, 309f, -983f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 963f, -929f, -466f), vec4<f32>(1561f, 947f, 1358f, 525f)))), vec3<bool>(false, select(false, true, var_0.x) || var_0.x, true)).a, vec2<u32>(global0.d.x << (_wgslsmith_mod_u32(global0.d.x ^ global2.x, reverseBits(50837u)) % 32u), 0u));
    var_0 = select(select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), any(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(false, true), false), !vec2<bool>(true, var_0.x)), vec2<bool>(var_0.x, any(vec4<bool>(false, var_0.x, true, false)))), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, any(vec4<bool>(true, true, true, var_0.x))), (i32(-1i) * -1i) != (34915i & global1[_wgslsmith_index_u32(1u, 2u)]))), !(!(!(!vec2<bool>(var_0.x, var_0.x)))), vec2<bool>(true, var_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-219f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -2489f) - _wgslsmith_f_op_f32(f32(-1f) * -277f))), -1166f));
    let var_2 = select(func_2().a.a, vec3<i32>(i32(-1i) * -45754i, global1[_wgslsmith_index_u32(reverseBits(23292u), 2u)], -1i), !select(!(!vec3<bool>(var_0.x, var_0.x, true)), vec3<bool>(var_0.x, false, false), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(20633u, 2u)], global3.a.x, 31382i), _wgslsmith_mod_vec3_i32(~vec3<i32>(-8580i, -1i, global3.a.x), vec3<i32>(-1i, 1i, -558i))), 1i, _wgslsmith_dot_vec3_i32(var_2, ~vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(global2.x, 2u)], -2147483647i))), vec4<i32>(20567i, global1[_wgslsmith_index_u32(select(select(global0.d.x, 4294967295u, any(vec3<bool>(var_0.x, var_0.x, false))), ~4294967295u, !all(vec4<bool>(false, true, var_0.x, false))), 2u)], abs(48373i >> ((u_input.c.x >> (0u % 32u)) % 32u)), firstTrailingBit(func_2().a.a.x << (~86717u % 32u))), -countOneBits(_wgslsmith_dot_vec3_i32(global3.a, -var_2)), global1[_wgslsmith_index_u32(~1u >> (_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(91356u, 1u, 1u), vec3<u32>(u_input.c.x, global2.x, global0.d.x)), u_input.b.x), ~(u_input.b.x & 5074u)) % 32u), 2u)]);
}

