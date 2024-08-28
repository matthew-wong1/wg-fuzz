struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

var<private> global1: array<vec3<u32>, 17>;

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: array<vec2<bool>, 24>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.c, abs(u_input.c.xz), u_input.e.x, select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], u_input.d, 1u, 0u), u_input.a), 31u)], ~_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(3713u, 17u)], u_input.a.wzz)), 14u)], vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(false, false)), u_input.d <= 61825u), select(vec2<bool>(true, true), vec2<bool>(false, true), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(137364u, u_input.a.x), 14u)]), all(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(0u, 31u)], u_input.a.x), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19045u, 31u)], 17u)]), 14u)]))), select(vec3<bool>(all(vec3<bool>(true, true, true)), true || any(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)) && true), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(all(global2[_wgslsmith_index_u32(30786u, 14u)]), all(vec3<bool>(true, false, true)), true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), any(vec3<bool>(true, false, true))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), vec3<bool>(true, true, true))));
    let var_1 = u_input.e.x;
    var var_2 = Struct_4(firstLeadingBit(u_input.e.x) ^ _wgslsmith_dot_vec4_i32(~max(vec4<i32>(var_0.a.x, 13427i, 1i, -10742i), vec4<i32>(-41917i, var_0.a.x, 2147483647i, 0i)), vec4<i32>(var_1, var_1, var_1, u_input.c.x) & _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.b.x, var_0.c, var_1), vec4<i32>(1i, u_input.e.x, u_input.c.x, 7751i), vec4<i32>(var_0.b.x, u_input.c.x, 2147483647i, 12252i))), select(vec4<bool>(select(true, any(vec2<bool>(var_0.d.x, var_0.d.x)), true), true, var_0.e.x, all(vec3<bool>(var_0.d.x, true, var_0.d.x))), vec4<bool>(!var_0.d.x, true, any(vec3<bool>(false, false, false)), select(1i, var_1, false) != 42516i), !all(!vec4<bool>(true, var_0.d.x, false, false))), Struct_2(vec2<bool>(var_0.d.x, true), var_0, ~u_input.a.x, ~(~vec4<u32>(1u, 89420u, global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(1u, 31u)]) ^ ~u_input.a), Struct_1(var_0.a | vec3<i32>(16498i, var_0.b.x, u_input.b.x), var_0.a.zx, abs(i32(-1i) * -2147483647i), !(!vec2<bool>(var_0.d.x, true)), select(select(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), vec3<bool>(var_0.e.x, true, var_0.e.x), var_0.e.x), var_0.e, !vec3<bool>(true, var_0.e.x, var_0.d.x)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(768f, -484f)))), _wgslsmith_f_op_f32(f32(-1f) * -166f), -869f));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.d.zy + var_2.d.xz)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), -1978f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.d.yz, var_2.d.yz), _wgslsmith_f_op_vec2_f32(exp2(var_2.d.xx)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-268f, var_2.d.x), _wgslsmith_f_op_f32(max(var_2.d.x, -567f))))) * var_2.d.xy), any(var_2.b)));
    var var_4 = ~_wgslsmith_mult_u32(select(~_wgslsmith_mult_u32(97798u, u_input.a.x), 37376u, var_0.e.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 7758u, u_input.a.x)), vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(var_2.c.c, 31u)], global0[_wgslsmith_index_u32(16754u, 31u)]) ^ vec3<u32>(0u, global0[_wgslsmith_index_u32(4294967295u, 31u)], 10396u)));
    return ~var_2.c.c >> (var_2.c.d.x % 32u);
}

fn func_2() -> bool {
    var var_0 = select(vec2<bool>(!(!all(vec3<bool>(false, false, false))), !select(true, any(vec3<bool>(false, false, false)), true)), vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)))), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true))), false));
    global2 = array<vec2<bool>, 14>();
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-701f, _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-394f, _wgslsmith_f_op_f32(-2161f - -1000f))))))));
    var var_2 = Struct_2(!(!(!global3[_wgslsmith_index_u32(1u, 24u)])), Struct_1(~u_input.c, firstTrailingBit(u_input.b), _wgslsmith_div_i32(-u_input.b.x, 22304i), select(global3[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(u_input.d, 34306u), func_3()), 24u)], !vec2<bool>(var_0.x, true), select(global2[_wgslsmith_index_u32(4294967295u, 14u)], select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19484u, 31u)], 24u)], vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), global3[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x))), vec3<bool>(!(!var_0.x), any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, true), true)), all(select(global2[_wgslsmith_index_u32(59915u, 14u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], 31u)], 14u)], true)))), ~57001u, u_input.a, Struct_1(countOneBits(vec3<i32>(u_input.b.x, 0i, 29018i) | vec3<i32>(u_input.b.x, -1i, u_input.e.x)) >> (global1[_wgslsmith_index_u32(0u, 17u)] % vec3<u32>(32u)), _wgslsmith_mult_vec2_i32(u_input.e, vec2<i32>(u_input.c.x, u_input.c.x)) >> (u_input.a.yz % vec2<u32>(32u)), countOneBits(_wgslsmith_div_i32(u_input.e.x, 1i) & 23975i), global3[_wgslsmith_index_u32(max(1u, _wgslsmith_add_u32(~u_input.d, func_3())), 24u)], vec3<bool>(var_0.x, !(u_input.b.x >= -1i), !all(global3[_wgslsmith_index_u32(21905u, 24u)]))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(-var_1.x), any(var_2.b.e))) + var_1.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -618f, var_2.e.e.x)) + var_1.x), var_1.x), any(!vec4<bool>(true, false, var_2.a.x, var_0.x)))));
    return !(var_3 > _wgslsmith_f_op_f32(sign(var_3)));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: bool) -> Struct_2 {
    global3 = array<vec2<bool>, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -445f))), -692f))));
    global2 = array<vec2<bool>, 14>();
    var var_1 = Struct_2(vec2<bool>(func_2(), all(select(select(vec3<bool>(arg_3, false, arg_2), vec3<bool>(false, false, true), arg_3), vec3<bool>(true, arg_2, true), arg_2))), Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), ~(~(~vec2<i32>(u_input.c.x, -58030i))), select(20319i, -2147483647i | countOneBits(u_input.e.x), any(select(vec2<bool>(arg_3, arg_2), global3[_wgslsmith_index_u32(0u, 24u)], vec2<bool>(arg_2, arg_3)))), vec2<bool>(true, false), vec3<bool>(all(select(vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_3, true, arg_2, arg_3), vec4<bool>(true, true, true, false))), u_input.b.x >= -u_input.b.x, true)), 4294967295u, vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(global0[_wgslsmith_index_u32(arg_1.x, 31u)]), 4294967295u), 4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.d), 17u)], vec3<u32>(81283u, 4294967295u, u_input.d)), (global0[_wgslsmith_index_u32(4294967295u, 31u)] >> (u_input.a.x % 32u)) & 31311u), arg_1.x), Struct_1(u_input.c, ~(-u_input.c.zy | u_input.c.xz), u_input.e.x, !(!global3[_wgslsmith_index_u32(~1u, 24u)]), select(vec3<bool>(arg_3, arg_2 | arg_3, any(vec3<bool>(arg_3, arg_3, false))), select(vec3<bool>(arg_3, false, arg_3), !vec3<bool>(arg_2, true, arg_3), true), true)));
    var var_2 = 1123f;
    return Struct_2(!var_1.a, var_1.b, ~firstTrailingBit(arg_0), var_1.d, Struct_1(vec3<i32>(var_1.e.b.x, 22439i, i32(-1i) * -u_input.c.x), vec2<i32>(~var_1.b.c, reverseBits(_wgslsmith_mult_i32(47880i, -29246i))), -u_input.b.x, vec2<bool>(arg_2, all(var_1.b.e)), !vec3<bool>(!var_1.b.d.x, false, all(global2[_wgslsmith_index_u32(arg_0, 14u)]))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1.a.x;
    global3 = array<vec2<bool>, 24>();
    var var_1 = Struct_3(func_1(~max(0u, 1u), _wgslsmith_mod_vec2_u32(u_input.a.wy, (vec2<u32>(4294967295u, 55447u) ^ u_input.a.wz) & firstTrailingBit(arg_1.d.xx)), true, !(all(vec3<bool>(arg_1.e.e.x, false, false)) && true)).e);
    var var_2 = _wgslsmith_add_i32(-1i, -1i);
    var var_3 = firstTrailingBit(27438i) >> (~(~global0[_wgslsmith_index_u32(1u, 31u)]) % 32u);
    return Struct_1(vec3<i32>(u_input.e.x, -2147483647i, -(var_1.a.a.x & 1i)), _wgslsmith_div_vec2_i32(var_1.a.a.zy, ~var_1.a.a.zx), select(var_1.a.b.x, var_1.a.b.x, false), vec2<bool>(arg_2.x, any(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_1.d.wzw, u_input.a.zwz), 24u)])), !arg_2.xzw);
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    let var_0 = arg_0.e.x;
    let var_1 = Struct_3(arg_0);
    let var_2 = func_4(func_3(), func_1(~0u, ~(~u_input.a.yy & ~u_input.a.wz), true, any(!func_1(u_input.d, vec2<u32>(u_input.d, u_input.d), true, true).b.e.zz)), vec4<bool>(false, true, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, u_input.d))) == ~61635u, false));
    global0 = array<u32, 31>();
    global0 = array<u32, 31>();
    return Struct_4(countOneBits(_wgslsmith_sub_i32(~u_input.c.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, arg_0.c), vec4<i32>(1i, 1i, 1i, var_1.a.b.x)))), select(select(!(!vec4<bool>(false, var_0, true, false)), select(vec4<bool>(var_2.d.x, var_2.e.x, true, var_0), !vec4<bool>(arg_0.e.x, var_1.a.d.x, var_2.e.x, arg_0.d.x), select(vec4<bool>(false, var_2.d.x, true, true), vec4<bool>(true, var_1.a.d.x, var_0, true), false)), func_4(u_input.d, func_1(u_input.a.x, u_input.a.yw, true, arg_0.d.x), vec4<bool>(true, true, true, true)).e.x), !select(vec4<bool>(true, var_2.e.x, var_1.a.d.x, false), vec4<bool>(arg_0.d.x, var_0, true, var_0), all(vec3<bool>(var_1.a.d.x, var_2.e.x, false))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-739f + 1501f))) != 316f), Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, var_2.d.x), vec2<bool>(var_2.e.x, arg_0.d.x), true)), func_1(_wgslsmith_sub_u32(1u, func_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13126u, 31u)], 31u)], u_input.a.zx, false, false).d.x), ~select(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d, 31u)]), u_input.a.zw, arg_0.e.zy), var_1.a.d.x, !(arg_0.e.x == false)).b, max(~global0[_wgslsmith_index_u32(u_input.a.x, 31u)], abs(90950u)) ^ 4294967295u, u_input.a, func_1(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(u_input.a.x, 31u)] ^ 72145u), firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.a.zy, u_input.a.ww)), func_2(), true).b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(-1326f - -1791f), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-932f, -1000f, -294f), vec3<f32>(-857f, -104f, 410f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-366f)), _wgslsmith_f_op_f32(-164f * 728f), _wgslsmith_f_op_f32(select(2022f, 543f, true))))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    global2 = array<vec2<bool>, 14>();
    var var_0 = Struct_3(func_1(~abs(~0u), ~arg_0.c.d.yx, arg_0.b.x & false, func_5(arg_2.c.b).b.x).e);
    let var_1 = 37166u;
    var var_2 = select(~max(vec4<u32>(firstLeadingBit(arg_0.c.d.x), arg_2.c.c, 26274u, ~77496u), ~u_input.a | ~arg_0.c.d), select(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(12847u, global0[_wgslsmith_index_u32(arg_0.c.d.x, 31u)], var_1, 40256u), vec4<u32>(68784u, arg_1.d.x, arg_0.c.c, 14559u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, 25242u, 0u), u_input.a.zyw), max(4294967295u, arg_2.c.d.x)), arg_1.c), max(vec4<u32>(global0[_wgslsmith_index_u32(var_1, 31u)], global0[_wgslsmith_index_u32(56085u, 31u)], 69659u, 4294967295u), vec4<u32>(_wgslsmith_add_u32(arg_0.c.c, 85943u), global0[_wgslsmith_index_u32(4294967295u, 31u)] | arg_0.c.d.x, ~arg_0.c.d.x, _wgslsmith_sub_u32(arg_2.c.d.x, 4294967295u))), !select(select(arg_2.b, vec4<bool>(true, false, true, arg_0.c.a.x), true), arg_0.b, all(vec3<bool>(true, false, false)))), true);
    var var_3 = Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, var_0.a.b.x) ^ vec3<i32>(42095i, -1i, 5360i), arg_2.c.b.a), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 19664i), vec2<i32>(1i, -2147483647i)) | ~(-2147483647i), arg_0.a) << (~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), u_input.a.zxw), 105177u & var_2.x) % vec2<u32>(32u)), -1i, func_5(func_5(func_4(~var_2.x, arg_0.c, !vec4<bool>(false, true, arg_0.b.x, var_0.a.d.x))).c.e).b.wz, vec3<bool>(true, !func_2(), func_2()));
    return Struct_3(Struct_1(countOneBits(countOneBits(vec3<i32>(-2147483647i, 1989i, -1i))) ^ (_wgslsmith_mod_vec3_i32(vec3<i32>(7171i, -38285i, 43454i), var_0.a.a) >> (min(arg_0.c.d.yyy, vec3<u32>(0u, arg_0.c.d.x, var_2.x)) % vec3<u32>(32u))), vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-17408i, 5088i, var_3.c), arg_1.e.a), -2147483647i), 2147483647i, var_3.d, arg_0.c.e.e));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 24>();
    let var_0 = func_6(func_5(func_4(0u << (0u % 32u), func_1(_wgslsmith_div_u32(u_input.a.x, 0u), vec2<u32>(0u, 1u), false, true), vec4<bool>(true, false, func_2(), false))), Struct_2(vec2<bool>(true | all(vec3<bool>(true, false, true)), true), Struct_1(vec3<i32>(_wgslsmith_sub_i32(0i, u_input.b.x), func_1(21523u, u_input.a.zx, false, false).b.c, u_input.b.x), abs(firstLeadingBit(vec2<i32>(-25500i, u_input.e.x))), ~u_input.e.x >> (~0u % 32u), global3[_wgslsmith_index_u32(~u_input.d & ~u_input.a.x, 24u)], func_5(func_1(global0[_wgslsmith_index_u32(4294967295u, 31u)], u_input.a.ww, false, false).e).c.b.e), abs(u_input.a.x), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 31u)], 31u)], 31u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.d, 31u)])), max(u_input.a, u_input.a)), firstLeadingBit(~vec4<u32>(global0[_wgslsmith_index_u32(38216u, 31u)], 33330u, 24770u, 0u))), Struct_1(u_input.c, u_input.e, i32(-1i) * -2147483647i, global2[_wgslsmith_index_u32(33815u, 14u)], vec3<bool>(true, true, any(vec3<bool>(true, true, true))))), func_5(func_5(Struct_1(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(-7784i, u_input.b.x, u_input.e.x)), ~vec2<i32>(u_input.c.x, -2147483647i), -9745i, vec2<bool>(true, true), vec3<bool>(false, true, true))).c.b));
    var var_1 = func_5(func_5(Struct_1(u_input.c, min(min(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.c.x)), select(vec2<i32>(-39623i, 0i), vec2<i32>(2147483647i, var_0.a.b.x), var_0.a.d)), ~abs(u_input.b.x), vec2<bool>(!var_0.a.e.x, !var_0.a.e.x), var_0.a.e)).c.b);
    var var_2 = var_1.d.x;
    var var_3 = ~var_1.a;
    let var_4 = firstTrailingBit(var_0.a.a) ^ _wgslsmith_clamp_vec3_i32(select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.b.x, -15005i, var_1.c.b.a.x), vec4<i32>(-46031i, var_0.a.b.x, 22854i, -25250i)), ~5511i, ~u_input.e.x), vec3<i32>(func_1(u_input.a.x, vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], 79433u), var_1.c.b.d.x, false).e.a.x, var_0.a.a.x, i32(-1i) * -1i), !var_1.b.xyw), countOneBits(select(vec3<i32>(-4390i, var_1.a, -1i), var_1.c.b.a, var_1.b.zwx)), vec3<i32>(-39783i, -23316i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.c.e.c), abs(var_1.c.b.b))));
    var var_5 = _wgslsmith_mod_i32(func_6(Struct_4(_wgslsmith_div_i32(2147483647i, -var_0.a.b.x), var_1.b, func_1(global0[_wgslsmith_index_u32(max(var_1.c.c, 16252u), 31u)], _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 32966u), u_input.a.xy), !var_1.b.x, true), _wgslsmith_f_op_vec3_f32(sign(var_1.d))), func_5(func_4(max(751u, 1u), var_1.c, var_1.b)).c, func_5(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.a.x, 17772i, var_1.c.b.b.x), vec3<i32>(var_1.a, 1i, 1i)), reverseBits(var_1.c.e.b), -1i, vec2<bool>(true, true), !vec3<bool>(true, var_0.a.d.x, var_1.c.b.d.x)))).a.a.x, firstLeadingBit(var_1.c.e.b.x));
    let var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(667f + 413f), var_1.d.x, -1000f, _wgslsmith_f_op_f32(-113f * var_1.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, 474f, var_1.d.x, -1010f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(203f, var_1.d.x, var_1.d.x, 1026f), vec4<f32>(-491f, var_1.d.x, var_1.d.x, 239f))))));
    var var_7 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-firstLeadingBit(var_1.a), 23269i), ~1u, 1u, firstTrailingBit(_wgslsmith_mod_vec4_u32(~(~u_input.a), reverseBits(_wgslsmith_div_vec4_u32(u_input.a, var_1.c.d)))), max(vec4<i32>(-1i) * -vec4<i32>(-1i, 28415i, -24585i, 23839i), vec4<i32>(-(-21426i | var_7.a.x), func_4(1u, var_1.c, vec4<bool>(true, false, false, var_0.a.d.x)).a.x, -abs(u_input.e.x), -16837i)));
}

