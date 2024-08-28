struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool>;

var<private> global2: array<f32, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    global1 = select(select(!(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, true), false)), !select(select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, true)), !vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, true)), vec3<bool>(global1.x, true, !all(global1.zz))), select(vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b.x, 23u)] >= 1276f, false, any(!vec3<bool>(true, global1.x, true))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1289f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1066f))))), true);
    global2 = array<f32, 23>();
    var var_0 = global1.xx;
    global1 = select(vec3<bool>(global1.x, any(select(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, false, global1.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x)), vec4<bool>(true, false, var_0.x, false), var_0.x)), !(!global1.x)), select(vec3<bool>(all(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(true, global1.x, true, var_0.x), var_0.x)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 23u)] <= _wgslsmith_f_op_f32(max(-1000f, -282f)), global1.x), !(!vec3<bool>(false, true, global1.x)), vec3<bool>(true, _wgslsmith_mod_i32(2147483647i, u_input.d) <= (u_input.a.x << (u_input.b.x % 32u)), any(global1.zz))), var_0.x);
    let var_1 = _wgslsmith_div_vec3_u32(~abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 21153u, 0u), vec3<u32>(u_input.b.x, 0u, 1u)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), reverseBits(~_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(50037u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 70723u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)))));
    return select(vec3<bool>(all(!select(vec3<bool>(false, true, true), vec3<bool>(true, global1.x, false), true)), all(vec4<bool>(any(vec3<bool>(false, true, true)), global1.x && var_0.x, var_0.x != true, true)), any(!vec2<bool>(var_0.x, true))), select(!select(select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(var_0.x, false, false)), select(vec3<bool>(true, var_0.x, false), vec3<bool>(global1.x, true, var_0.x), false), false), select(vec3<bool>(var_0.x, true, 1611f >= global2[_wgslsmith_index_u32(1u, 23u)]), select(vec3<bool>(false, false, true), !vec3<bool>(var_0.x, global1.x, global1.x), true), !(!vec3<bool>(global1.x, true, var_0.x))), select(vec3<bool>(true, !global1.x, any(vec3<bool>(global1.x, global1.x, false))), vec3<bool>(true, !global1.x, !var_0.x), vec3<bool>(true, true, true))), !(!select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, global1.x)), !vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_5(Struct_4(Struct_1(31807u, arg_0.d.c, select(!arg_0.c.b.b, select(vec3<bool>(false, arg_0.d.b.x, true), vec3<bool>(false, global1.x, arg_0.d.c.x), vec3<bool>(global1.x, arg_0.d.b.x, false)), !vec3<bool>(global1.x, global1.x, arg_0.a.b.x))), Struct_2(arg_1.x, Struct_1(0u, vec3<bool>(true, true, true), select(vec3<bool>(false, true, global1.x), arg_0.d.c, arg_0.c.b.c)), Struct_1(~56678u, !vec3<bool>(arg_0.b.c.c.x, arg_0.b.b.c.x, true), select(vec3<bool>(arg_0.d.b.x, true, arg_0.b.b.c.x), vec3<bool>(arg_0.c.b.c.x, arg_0.c.b.c.x, true), arg_0.a.b))), u_input.b), Struct_3(arg_0.a, Struct_2(114f, Struct_1(~u_input.b.x, func_3(), vec3<bool>(true, true, false)), Struct_1(4294967295u, !vec3<bool>(arg_0.d.c.x, global1.x, true), vec3<bool>(global1.x, false, false))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * arg_1.x), arg_0.c.c, Struct_1(arg_0.b.c.a, arg_0.a.c, arg_0.d.b)), Struct_1(_wgslsmith_add_u32(~u_input.b.x, select(u_input.b.x, 20856u, global1.x)), vec3<bool>(true, true & arg_0.b.b.b.x, false), !vec3<bool>(true, false, arg_0.a.b.x))), _wgslsmith_div_f32(-171f, _wgslsmith_f_op_f32(step(-1232f, arg_0.c.a))));
    global0 = 1000f;
    let var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(abs(arg_0.b.a)) != _wgslsmith_f_op_f32(-arg_1.x)), true, true, all(!vec4<bool>(arg_0.a.b.x, false, arg_0.d.b.x, true))), !(!vec4<bool>(arg_0.b.a < -597f, global1.x == false, true, 1403f < arg_0.b.a)), select(!(!select(vec4<bool>(true, false, arg_0.c.b.c.x, var_0.a.a.c.x), vec4<bool>(var_0.b.d.c.x, var_0.a.a.b.x, global1.x, var_0.a.b.b.c.x), vec4<bool>(false, arg_0.b.c.c.x, true, false))), !select(!vec4<bool>(false, true, false, var_0.b.d.c.x), vec4<bool>(var_0.b.d.b.x, arg_0.a.c.x, arg_0.c.c.b.x, false), vec4<bool>(global1.x, var_0.b.a.b.x, true, global1.x)), all(vec4<bool>(!var_0.b.a.b.x, true, true, all(var_0.b.d.c)))));
    let var_2 = Struct_1(~_wgslsmith_dot_vec2_u32(var_0.a.c, var_0.a.c), !func_3(), !func_3());
    global2 = array<f32, 23>();
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_5 {
    global0 = arg_1.c.a;
    let var_0 = u_input.b.x;
    let var_1 = select(!select(!(!vec4<bool>(false, false, arg_1.a.b.x, arg_1.b.c.c.x)), !(!vec4<bool>(true, false, global1.x, false)), vec4<bool>(371f <= arg_1.b.a, true | arg_1.c.b.b.x, global1.x, func_2(arg_1, vec4<f32>(arg_0.a, global2[_wgslsmith_index_u32(1u, 23u)], -232f, arg_1.c.a)))), !select(!(!vec4<bool>(global1.x, global1.x, false, arg_1.a.b.x)), select(!vec4<bool>(false, true, false, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, arg_0.b.b.x), vec4<bool>(global1.x, arg_0.c.b.x, arg_0.b.c.x, arg_0.b.c.x), false), any(vec4<bool>(arg_1.c.b.b.x, false, true, arg_0.c.c.x))), any(select(vec3<bool>(arg_1.b.b.b.x, arg_0.c.c.x, arg_0.c.c.x), vec3<bool>(global1.x, true, arg_0.c.b.x), vec3<bool>(true, global1.x, false)))), vec4<bool>(arg_0.b.b.x && any(!arg_1.d.b.zy), true, !any(!vec4<bool>(arg_1.a.c.x, true, arg_0.b.b.x, true)), !arg_1.a.c.x));
    var var_2 = arg_1;
    var var_3 = ~vec4<u32>(_wgslsmith_mult_u32(countOneBits(0u), ~arg_1.a.a) >> (1u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1267u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 6549u, 0u), vec3<u32>(arg_1.b.b.a, 4294967295u, arg_0.b.a)), abs(vec3<u32>(arg_0.b.a, 1u, arg_1.b.b.a))), select(select(vec3<u32>(108279u, 0u, 5217u), vec3<u32>(0u, 0u, 0u), true), vec3<u32>(arg_1.b.c.a, 1u, 4406u) >> (vec3<u32>(var_0, var_0, 4294967295u) % vec3<u32>(32u)), true)), reverseBits(28650u), var_2.d.a);
    return Struct_5(Struct_4(Struct_1(firstTrailingBit(var_3.x), select(var_1.wxx, !var_2.b.c.c, all(vec2<bool>(global1.x, global1.x))), vec3<bool>(arg_0.b.b.x, true, false)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1485f, global2[_wgslsmith_index_u32(55981u, 23u)])), arg_0.b, var_2.b.b), u_input.b), Struct_3(Struct_1(arg_0.c.a, select(vec3<bool>(false, global1.x, var_1.x), !vec3<bool>(var_1.x, false, global1.x), select(arg_0.b.c, arg_0.c.c, false)), vec3<bool>(false, !var_1.x, all(var_1))), arg_1.b, arg_0, arg_1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a + 479f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.b.a, arg_1.c.a)) - 1000f)), arg_0.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec2_i32(max(u_input.a.zz, firstLeadingBit(~u_input.a.xy)), vec2<i32>(_wgslsmith_sub_i32(-1i, ~abs(u_input.c)), i32(-1i) * -15458i));
    let var_1 = Struct_4(Struct_1(1u, vec3<bool>(u_input.b.x >= arg_1.a.c.x, 1u < _wgslsmith_clamp_u32(1u, arg_1.a.a.a, arg_0.b.a), global1.x), select(vec3<bool>(!arg_0.b.b.x, any(vec4<bool>(arg_0.b.b.x, arg_1.a.b.c.c.x, arg_1.a.b.c.c.x, global1.x)), false), !(!arg_0.c.b), true)), func_1(arg_0, arg_1.b).a.b, min(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, arg_1.a.a.a)), ~(~arg_1.a.c)), min(vec2<u32>(abs(u_input.b.x), reverseBits(4294967295u)), ~vec2<u32>(4294967295u, arg_1.a.c.x))));
    global2 = array<f32, 23>();
    let var_2 = arg_0.c.b.x;
    global1 = vec3<bool>(true | !(!all(arg_1.a.b.c.c)), !global1.x, !arg_1.a.a.b.x);
    return Struct_1(abs(_wgslsmith_div_u32(~7593u, arg_1.b.a.a)), var_1.a.b, arg_0.b.c);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    let var_0 = abs(_wgslsmith_clamp_vec4_i32(~u_input.a, u_input.a, -vec4<i32>(-u_input.a.x, 0i, u_input.c >> (arg_0.a.a % 32u), _wgslsmith_mult_i32(u_input.a.x, 10809i))));
    let var_1 = _wgslsmith_sub_u32(26283u, u_input.b.x);
    let var_2 = u_input.a.xw;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1, 23u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1459f), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_1.b.b.a, 23u)], -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f + -1428f) * _wgslsmith_f_op_f32(-1727f * arg_0.b.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(930f, arg_0.b.a, 486f) * vec3<f32>(arg_0.b.a, global2[_wgslsmith_index_u32(arg_1.d.a, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2111f, 1117f, -849f) + vec3<f32>(1587f, global2[_wgslsmith_index_u32(arg_1.d.a, 23u)], arg_1.b.a)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1061f, arg_1.c.a, var_3.x))))), vec3<f32>(-839f, _wgslsmith_f_op_f32(select(382f, -1000f, true)), _wgslsmith_f_op_f32(1305f * 194f)))));
    return Struct_1(~(_wgslsmith_dot_vec2_u32(arg_0.c, arg_0.c) >> (max(22500u, arg_1.b.b.a) % 32u)) & _wgslsmith_add_u32(~_wgslsmith_add_u32(34403u, var_1), abs(_wgslsmith_mult_u32(arg_0.a.a, var_1))), func_1(arg_1.c, arg_1).b.c.b.c, !(!vec3<bool>(true, false, any(vec3<bool>(arg_0.b.b.c.x, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global2 = array<f32, 23>();
    let var_1 = Struct_3(func_5(Struct_4(func_4(Struct_2(1000f, Struct_1(678u, vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, false, true))), func_1(Struct_2(1070f, Struct_1(21118u, vec3<bool>(true, false, true), vec3<bool>(false, true, global1.x)), Struct_1(0u, vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x))), Struct_3(Struct_1(1u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x)), Struct_2(1047f, Struct_1(0u, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(1u, vec3<bool>(false, false, global1.x), vec3<bool>(false, false, false))), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(0u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(1u, vec3<bool>(global1.x, true, true), vec3<bool>(true, global1.x, global1.x))), Struct_1(u_input.b.x, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x)))), any(vec4<bool>(false, global1.x, false, global1.x))), func_1(func_1(Struct_2(-2042f, Struct_1(1u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(true, true, global1.x), vec3<bool>(false, global1.x, global1.x))), Struct_3(Struct_1(1u, vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, false)), Struct_2(1149f, Struct_1(1u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, false, true))), Struct_2(1666f, Struct_1(12683u, vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false))), Struct_1(120661u, vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, true)))).a.b, func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(2330u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x)), Struct_1(u_input.b.x, vec3<bool>(false, false, false), vec3<bool>(false, true, global1.x))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(false, true, false), vec3<bool>(global1.x, false, true)), Struct_1(0u, vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, false, global1.x))), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(89815u, vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, true, global1.x)), Struct_1(4294967295u, vec3<bool>(true, true, global1.x), vec3<bool>(false, global1.x, global1.x))), Struct_1(1u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false)))).b).a.b, vec2<u32>(0u, 29695u)), func_1(func_1(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, true)), Struct_1(u_input.b.x, vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, true, false))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, global1.x)), Struct_2(106f, Struct_1(0u, vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(4294967295u, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false))), Struct_2(global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(u_input.b.x, vec3<bool>(false, false, global1.x), vec3<bool>(true, false, global1.x)), Struct_1(87026u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x))), Struct_1(53368u, vec3<bool>(false, global1.x, false), vec3<bool>(false, true, global1.x)))).a.b, func_1(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(37090u, vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, true))), Struct_3(Struct_1(6151u, vec3<bool>(false, false, true), vec3<bool>(false, false, global1.x)), Struct_2(-2367f, Struct_1(u_input.b.x, vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, true, true)), Struct_1(u_input.b.x, vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, false, global1.x))), Struct_2(2264f, Struct_1(u_input.b.x, vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, false)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, false))), Struct_1(0u, vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, global1.x)))).b).a.b, Struct_3(Struct_1(u_input.b.x, vec3<bool>(false, true, false), vec3<bool>(true, global1.x, global1.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, false)), Struct_1(9086u, vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x))), func_1(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(13634u, vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, true, global1.x)), Struct_1(u_input.b.x, vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x))), Struct_3(Struct_1(1u, vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x)), Struct_2(-1383f, Struct_1(78088u, vec3<bool>(true, global1.x, true), vec3<bool>(false, false, global1.x)), Struct_1(1u, vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, true, global1.x))), Struct_2(global2[_wgslsmith_index_u32(1727u, 23u)], Struct_1(3049u, vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, false)), Struct_1(45275u, vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, true))), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x)))).b.c, Struct_1(u_input.b.x, vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, global1.x)))).b), Struct_2(608f, Struct_1(u_input.b.x | _wgslsmith_mult_u32(u_input.b.x, 41724u), !vec3<bool>(false, global1.x, global1.x), vec3<bool>(u_input.c != 2147483647i, -692f > global2[_wgslsmith_index_u32(u_input.b.x, 23u)], !global1.x)), Struct_1(func_1(func_1(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, global1.x))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, global1.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(true, global1.x, false), vec3<bool>(false, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, false, true))), Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], Struct_1(u_input.b.x, vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, false))), Struct_1(0u, vec3<bool>(false, false, global1.x), vec3<bool>(false, global1.x, true)))).b.c, func_1(Struct_2(-880f, Struct_1(9288u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x)), Struct_1(1u, vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, false))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(false, global1.x, true), vec3<bool>(false, false, false)), Struct_2(-399f, Struct_1(4647u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, false)), Struct_1(u_input.b.x, vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, false))), Struct_2(global2[_wgslsmith_index_u32(4932u, 23u)], Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x)), Struct_1(15904u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false))), Struct_1(u_input.b.x, vec3<bool>(false, true, true), vec3<bool>(global1.x, false, true)))).b).b.d.a, !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, true), global1.x), vec3<bool>(true, true, !global1.x))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 30733u, u_input.b.x), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 89992u))) | countOneBits(1u), 23u)], Struct_1(u_input.b.x, !vec3<bool>(global1.x, false, true), func_1(Struct_2(449f, Struct_1(0u, vec3<bool>(true, false, true), vec3<bool>(global1.x, false, true)), Struct_1(u_input.b.x, vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, true))), func_1(Struct_2(1560f, Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, global1.x)), Struct_1(40704u, vec3<bool>(false, true, global1.x), vec3<bool>(false, false, false))), Struct_3(Struct_1(37021u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(1u, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, false, global1.x)), Struct_1(14412u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, global1.x))), Struct_2(241f, Struct_1(1u, vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, false))), Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))).b).a.b.b.b), func_5(func_1(func_1(Struct_2(global2[_wgslsmith_index_u32(12545u, 23u)], Struct_1(1u, vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, true, true))), Struct_3(Struct_1(2442u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(true, global1.x, false)), Struct_2(919f, Struct_1(u_input.b.x, vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, false, false)), Struct_1(1u, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, global1.x))), Struct_2(-2325f, Struct_1(89445u, vec3<bool>(true, false, global1.x), vec3<bool>(false, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(true, false, false), vec3<bool>(true, global1.x, global1.x))), Struct_1(1u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))).b.b, Struct_3(Struct_1(12192u, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_2(899f, Struct_1(4294967295u, vec3<bool>(true, false, false), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(1u, vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x))), Struct_2(global2[_wgslsmith_index_u32(10266u, 23u)], Struct_1(47756u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, true)), Struct_1(u_input.b.x, vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, global1.x, false))), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x)))).a, Struct_3(Struct_1(u_input.b.x, vec3<bool>(global1.x, true, false), vec3<bool>(true, true, global1.x)), func_1(Struct_2(-1821f, Struct_1(0u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, global1.x)), Struct_1(27532u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, global1.x, false))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, true, false)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(96077u, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(1u, vec3<bool>(true, false, true), vec3<bool>(false, true, true))), Struct_2(global2[_wgslsmith_index_u32(8015u, 23u)], Struct_1(u_input.b.x, vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, true, true)), Struct_1(u_input.b.x, vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, global1.x))), Struct_1(1u, vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))).b.b, Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(true, global1.x, false), vec3<bool>(true, true, false)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false))), func_5(Struct_4(Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, true)), Struct_2(-569f, Struct_1(0u, vec3<bool>(true, true, global1.x), vec3<bool>(true, false, true)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, global1.x, false))), u_input.b), Struct_3(Struct_1(0u, vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, false)), Struct_2(global2[_wgslsmith_index_u32(72441u, 23u)], Struct_1(43162u, vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, false)), Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(false, false, true))), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(u_input.b.x, vec3<bool>(true, false, true), vec3<bool>(true, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, false))), Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x))))))), func_1(Struct_2(-1525f, Struct_1(~u_input.b.x, select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), false), !vec3<bool>(global1.x, false, global1.x)), Struct_1(1u, func_4(Struct_2(-683f, Struct_1(82470u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x)), Struct_1(u_input.b.x, vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x))), Struct_5(Struct_4(Struct_1(u_input.b.x, vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, true)), Struct_2(-1491f, Struct_1(u_input.b.x, vec3<bool>(true, true, global1.x), vec3<bool>(false, false, global1.x)), Struct_1(56252u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, true))), u_input.b), Struct_3(Struct_1(u_input.b.x, vec3<bool>(false, true, false), vec3<bool>(global1.x, true, false)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, global1.x, true)), Struct_1(4294967295u, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x))), Struct_2(1954f, Struct_1(16940u, vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false))), Struct_1(u_input.b.x, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, false, global1.x))), -713f), global1.x).c, vec3<bool>(true, global1.x, global1.x))), Struct_3(Struct_1(92445u, vec3<bool>(global1.x, true, false), !vec3<bool>(false, global1.x, false)), func_1(Struct_2(global2[_wgslsmith_index_u32(3647u, 23u)], Struct_1(1u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, false, true)), Struct_1(43615u, vec3<bool>(global1.x, false, false), vec3<bool>(true, true, false))), Struct_3(Struct_1(89700u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_2(global2[_wgslsmith_index_u32(1u, 23u)], Struct_1(u_input.b.x, vec3<bool>(false, false, true), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(4294967295u, vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, true))), Struct_2(1199f, Struct_1(64939u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), Struct_1(u_input.b.x, vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, true))), Struct_1(1u, vec3<bool>(false, true, global1.x), vec3<bool>(true, true, global1.x)))).b.c, func_1(func_1(Struct_2(-1462f, Struct_1(96846u, vec3<bool>(true, false, global1.x), vec3<bool>(true, global1.x, global1.x)), Struct_1(1u, vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false))), Struct_3(Struct_1(u_input.b.x, vec3<bool>(true, false, global1.x), vec3<bool>(global1.x, true, global1.x)), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(0u, vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, true)), Struct_1(30064u, vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, true, true))), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], Struct_1(0u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x)), Struct_1(64967u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true))), Struct_1(1u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, false, false)))).b.b, Struct_3(Struct_1(57222u, vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, true)), Struct_2(global2[_wgslsmith_index_u32(10830u, 23u)], Struct_1(28333u, vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, false)), Struct_1(u_input.b.x, vec3<bool>(false, true, false), vec3<bool>(global1.x, global1.x, true))), Struct_2(-769f, Struct_1(u_input.b.x, vec3<bool>(true, true, true), vec3<bool>(false, global1.x, global1.x)), Struct_1(4378u, vec3<bool>(global1.x, true, false), vec3<bool>(false, false, global1.x))), Struct_1(124535u, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, true)))).b.b, Struct_1(4294967295u, vec3<bool>(false, false, false), vec3<bool>(false, false, false)))).a.a);
    let var_2 = func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f + var_1.b.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(abs(-1101f))))), var_1.b.b, func_5(func_1(var_1.c, Struct_3(var_1.b.b, var_1.b, Struct_2(var_1.c.a, Struct_1(u_input.b.x, vec3<bool>(true, global1.x, global1.x), var_1.d.b), var_1.c.b), var_1.d)).a, Struct_3(var_1.a, Struct_2(var_1.b.a, Struct_1(25491u, var_1.b.b.c, vec3<bool>(var_1.c.c.b.x, false, false)), Struct_1(13298u, var_1.b.b.b, var_1.d.c)), func_1(var_1.c, Struct_3(Struct_1(1u, vec3<bool>(var_1.a.c.x, false, global1.x), var_1.c.b.b), Struct_2(global2[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(63541u, var_1.a.b, vec3<bool>(true, true, global1.x)), Struct_1(46206u, var_1.c.b.c, vec3<bool>(true, false, false))), Struct_2(global2[_wgslsmith_index_u32(48744u, 23u)], var_1.b.c, Struct_1(var_1.b.c.a, var_1.d.b, var_1.d.c)), var_1.d)).b.b, var_1.b.b))), var_1).b;
    global1 = func_5(func_1(var_1.b, var_1).a, func_1(var_1.c, func_1(func_1(var_1.c, var_1).b.b, Struct_3(func_4(var_1.b, Struct_5(Struct_4(Struct_1(1u, var_2.b.b.b, var_1.c.c.c), var_1.b, u_input.b), var_1, var_2.b.a), var_1.a.c.x), func_1(Struct_2(var_1.c.a, Struct_1(var_1.b.c.a, var_1.a.c, var_2.d.b), var_1.c.c), Struct_3(var_1.b.b, var_1.c, Struct_2(-546f, Struct_1(var_2.b.b.a, vec3<bool>(var_2.a.c.x, var_1.d.c.x, var_1.b.c.c.x), var_1.a.c), Struct_1(0u, var_2.c.b.c, vec3<bool>(false, true, global1.x))), Struct_1(57921u, vec3<bool>(var_2.d.c.x, true, true), var_2.b.b.b))).b.b, Struct_2(var_2.b.a, Struct_1(12365u, vec3<bool>(false, true, true), var_1.b.c.b), var_2.d), var_2.d)).b).b).b;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(121f, -210f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1435f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], var_2.c.a), vec2<f32>(2261f, var_1.c.a)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b.a, -583f), vec2<f32>(var_1.c.a, -186f), var_1.a.b.zz))))));
    let var_4 = !vec4<bool>(global1.x, var_1.c.b.b.x, var_1.d.c.x, true);
    let var_5 = func_1(var_2.c, var_1).b;
    let var_6 = _wgslsmith_mod_vec3_u32(reverseBits(~min(vec3<u32>(16662u, 62946u, 6804u), _wgslsmith_clamp_vec3_u32(vec3<u32>(22388u, 1u, 4294967295u), vec3<u32>(45822u, var_1.a.a, u_input.b.x), vec3<u32>(var_2.d.a, var_5.c.c.a, var_2.d.a)))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(22333u, ~var_2.c.b.a, select(27948u, var_2.a.a, var_4.x)), ~(vec3<u32>(var_1.c.c.a, u_input.b.x, var_1.d.a) & vec3<u32>(30848u, var_1.d.a, 1u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a.a, 20641u), vec3<u32>(var_1.a.a, var_1.c.b.a, 40486u)) & var_1.d.a, firstLeadingBit(~var_5.a.a), func_4(var_1.b, Struct_5(Struct_4(Struct_1(u_input.b.x, vec3<bool>(var_2.c.b.b.x, true, true), var_1.a.b), Struct_2(var_3.x, Struct_1(u_input.b.x, var_5.c.b.b, vec3<bool>(var_5.a.c.x, false, false)), Struct_1(var_1.c.b.a, var_2.b.c.b, var_1.c.b.b)), vec2<u32>(4294967295u, var_5.d.a)), Struct_3(Struct_1(u_input.b.x, vec3<bool>(var_4.x, false, true), vec3<bool>(var_1.d.c.x, var_2.b.c.b.x, true)), Struct_2(var_5.b.a, Struct_1(var_1.a.a, vec3<bool>(var_1.a.b.x, var_5.c.b.c.x, var_4.x), vec3<bool>(false, true, false)), Struct_1(45434u, var_5.d.b, var_1.c.c.c)), Struct_2(var_5.c.a, var_5.d, Struct_1(var_5.b.c.a, vec3<bool>(var_4.x, true, true), var_4.yyy)), var_1.d), var_1.b.a), all(var_4)).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.a, var_5.c.a, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_1.b.a, 2395f)) - vec3<f32>(1f, 1f, 1f)))))), firstLeadingBit(vec4<u32>(var_5.b.b.a, var_1.a.a, 49872u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.a, var_5.c.b.a, var_6.x, 4294967295u), abs(vec4<u32>(var_1.c.b.a, var_1.b.c.a, var_1.b.c.a, 67286u))))), ~vec4<u32>(~var_2.d.a, u_input.b.x ^ 18839u, func_4(func_1(Struct_2(global2[_wgslsmith_index_u32(41716u, 23u)], Struct_1(var_6.x, var_4.zzw, vec3<bool>(true, false, true)), var_1.b.b), Struct_3(Struct_1(u_input.b.x, var_5.d.b, var_2.a.b), var_1.c, var_1.b, Struct_1(35173u, vec3<bool>(false, var_5.b.c.b.x, var_4.x), var_4.wxy))).a.b, func_1(Struct_2(var_5.c.a, var_1.c.b, Struct_1(0u, vec3<bool>(var_2.c.b.c.x, false, var_5.b.b.c.x), var_2.b.c.c)), Struct_3(Struct_1(0u, var_4.wwy, vec3<bool>(var_1.a.c.x, var_1.c.b.b.x, var_1.c.b.c.x)), Struct_2(var_3.x, var_2.d, Struct_1(u_input.b.x, vec3<bool>(true, var_5.d.c.x, var_4.x), var_5.b.b.c)), Struct_2(var_1.c.a, Struct_1(var_2.d.a, vec3<bool>(var_2.d.b.x, var_5.d.b.x, true), var_1.d.c), Struct_1(var_1.d.a, vec3<bool>(var_2.a.c.x, true, var_5.a.b.x), vec3<bool>(false, global1.x, false))), Struct_1(55825u, vec3<bool>(false, true, var_5.d.c.x), vec3<bool>(var_5.d.b.x, var_5.b.c.c.x, true)))), false).a, ~13622u), _wgslsmith_f_op_f32(347f * var_3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_6.x, 0u), 23u)], var_5.c.a)))))));
}

