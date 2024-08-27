struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<u32, 2>;

var<private> global2: vec4<f32> = vec4<f32>(166f, -741f, -1185f, -552f);

var<private> global3: bool = false;

var<private> global4: Struct_5 = Struct_5(vec4<u32>(36419u, 1u, 4294967295u, 11257u), vec4<f32>(-1648f, -721f, 857f, 385f), vec3<f32>(-109f, -1439f, -223f), vec3<i32>(-19828i, 0i, -51250i), false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, _wgslsmith_f_op_f32(global2.x + 1088f), _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(-global4.b.x))), global4.b)));
    var var_0 = Struct_5(global4.a, global4.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global4.b.x * 1206f), -1499f, _wgslsmith_f_op_f32(-648f + global4.c.x)) - global4.c)), -(vec3<i32>(87366i | u_input.c.x, abs(global4.d.x), global4.d.x) << (select(vec3<u32>(global4.a.x, global0.x, 4294967295u), ~global4.a.xwx, !vec3<bool>(global4.e, global4.e, global4.e)) % vec3<u32>(32u))), false);
    global3 = true;
    var_0 = Struct_5((_wgslsmith_clamp_vec4_u32(~global4.a, countOneBits(vec4<u32>(var_0.a.x, global4.a.x, u_input.a, global1[_wgslsmith_index_u32(global0.x, 2u)])), vec4<u32>(global1[_wgslsmith_index_u32(70172u, 2u)], 4294967295u, global4.a.x, var_0.a.x) >> (global4.a % vec4<u32>(32u))) >> (vec4<u32>(abs(global4.a.x), _wgslsmith_clamp_u32(0u, 4294967295u, 11595u), u_input.a, global1[_wgslsmith_index_u32(84656u, 2u)] | 61796u) % vec4<u32>(32u))) ^ var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-448f, -376f, _wgslsmith_f_op_f32(global2.x - 226f), global4.b.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.b.x, global4.c.x, -1350f, global2.x)))), vec4<f32>(-970f, _wgslsmith_div_f32(-1354f, var_0.c.x), _wgslsmith_f_op_f32(round(-1111f)), _wgslsmith_f_op_f32(-var_0.b.x)), select(!vec4<bool>(global4.e, true, true, false), !vec4<bool>(var_0.e, true, true, var_0.e), vec4<bool>(false, var_0.e, global4.e, false))))), _wgslsmith_f_op_vec3_f32(-global2.xwy), var_0.d, ~max(abs(-2147483647i), select(u_input.c.x, -2147483647i, false)) <= firstTrailingBit(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, global4.d.x, 1i, var_0.d.x), vec4<i32>(-1i, u_input.b, 56677i, global4.d.x), global4.e), vec4<i32>(1i, global4.d.x, 1i, 74831i))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return vec3<i32>(abs(2147483647i), firstTrailingBit(select(countOneBits(2147483647i), var_0.d.x, !all(vec3<bool>(var_0.e, global4.e, global4.e)))), 0i);
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    let var_0 = arg_0.a.a;
    let var_1 = u_input.a;
    global3 = true;
    global4 = Struct_5(global4.a, global4.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(-2138f)), _wgslsmith_f_op_f32(floor(global2.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.yxw)) - global2.wyw)) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, 1000f), _wgslsmith_f_op_f32(max(var_0, 1470f)))), 182f, global2.x)), arg_0.a.c.yxx ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(func_3(), global4.d), vec3<i32>(u_input.b, global4.d.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(40872i, u_input.c.x))), ~(arg_0.a.c.xzz >> (global4.a.yxw % vec3<u32>(32u)))), global4.e);
    let var_2 = select(!vec3<bool>(any(select(vec2<bool>(global4.e, global4.e), vec2<bool>(false, global4.e), vec2<bool>(global4.e, global4.e))), !global4.e, true), !vec3<bool>(!(3516u != global0.x), global4.e, any(vec2<bool>(true, false)) && (var_1 >= 1u)), vec3<bool>(all(vec4<bool>(any(vec2<bool>(global4.e, global4.e)), false, true, all(vec3<bool>(false, global4.e, false)))), true, global2.x < arg_0.a.a));
    return Struct_5(global4.a, global4.b, global2.xwy, global4.d, var_2.x);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_5, arg_3: f32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-167f))))));
    var var_1 = abs(max(u_input.b | -3458i, -max(_wgslsmith_mult_i32(-1i, 2147483647i), -global4.d.x)));
    let var_2 = select(select(!select(select(vec2<bool>(global4.e, arg_2.e), vec2<bool>(global4.e, arg_2.e), vec2<bool>(global4.e, false)), vec2<bool>(arg_2.e, true), vec2<bool>(false, global4.e)), select(!vec2<bool>(true, arg_1), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global4.e, global4.e)), select(vec2<bool>(false, true), vec2<bool>(arg_2.e, false), vec2<bool>(true, arg_2.e)), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-396f + global2.x) >= arg_3), arg_1), !vec2<bool>(arg_2.e, true), select(vec2<bool>(any(!vec4<bool>(false, true, true, arg_2.e)), true), select(vec2<bool>(any(vec4<bool>(true, true, arg_1, true)), select(false, global4.e, false)), vec2<bool>(true, false), func_2(Struct_4(arg_0.a)).e), !all(select(vec2<bool>(global4.e, true), vec2<bool>(global4.e, arg_1), vec2<bool>(arg_2.e, arg_2.e)))));
    let var_3 = global4.a.xxz;
    global4 = func_2(Struct_4(arg_0.a));
    return Struct_3(arg_0.a, arg_2.d.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c), vec3<f32>(_wgslsmith_div_f32(293f, 584f), _wgslsmith_f_op_f32(floor(165f)), _wgslsmith_f_op_f32(-1429f + -1242f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.yzz + global2.xyw) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1028f, arg_2.c.x, arg_3)))))), _wgslsmith_f_op_f32(max(func_2(Struct_4(arg_0.a)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + 1000f)) + arg_2.b.x))));
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = ~vec2<u32>(abs(~firstLeadingBit(u_input.a)), 0u);
    global0 = ~vec2<u32>(u_input.a, 4294967295u);
    let var_1 = global4.d.yy;
    let var_2 = Struct_5(~(global4.a << (global4.a % vec4<u32>(32u))) ^ ~global4.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.a.a, -440f, global4.c.x))) + _wgslsmith_f_op_vec4_f32(global4.b * vec4<f32>(arg_0.a.a, global2.x, global4.b.x, global2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1487f, global2.x, arg_0.c.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(global4.b.x, 507f, arg_0.d)) + arg_0.c)), arg_0.a.c.zwx, all(vec2<bool>(global4.e, all(vec4<bool>(global4.e, global4.e, global4.e, true)))) | !(true || global4.e));
    global3 = (true == var_2.e) || any(vec2<bool>(!(!var_2.e), false || global4.e));
    return var_2.c;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_sub_u32(u_input.a, 0u) < (global1[_wgslsmith_index_u32(firstTrailingBit(min(firstTrailingBit(49373u), 1u)), 2u)] | 43318u);
    global4 = Struct_5(vec4<u32>(24467u, ~_wgslsmith_sub_u32(12924u, global0.x), u_input.a, 28133u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), global2.x, _wgslsmith_f_op_f32(1f - -633f), -914f) * _wgslsmith_f_op_vec4_f32(arg_1 + global4.b)), _wgslsmith_f_op_vec3_f32(min(global4.b.wzy, _wgslsmith_f_op_vec3_f32(func_5(func_4(Struct_3(Struct_1(arg_1.x, u_input.b, vec4<i32>(global4.d.x, u_input.b, 0i, 1i)), global4.d.x, vec3<f32>(global4.c.x, -1461f, -715f), arg_1.x), true, func_2(Struct_4(Struct_1(global4.c.x, 30314i, vec4<i32>(8947i, global4.d.x, -2147483647i, 17729i)))), -1413f))))), global4.d, false);
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_1)))), _wgslsmith_div_vec4_f32(vec4<f32>(global4.b.x, _wgslsmith_f_op_f32(global2.x + 2034f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -113f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_1)))), !vec4<bool>(true, !global4.e, false, all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec4_f32(-global4.b));
    let var_1 = false;
    global1 = array<u32, 2>();
    return Struct_5(global4.a, _wgslsmith_div_vec4_f32(arg_1, _wgslsmith_f_op_vec4_f32(global4.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(global4.b.x, -1462f, -1851f, global2.x)) * global4.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.zyw))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1294f)), arg_1.x, arg_1.x)))), _wgslsmith_mult_vec3_i32(-vec3<i32>(global4.d.x, 43412i, u_input.c.x) & vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, -21911i), 1i, -9620i), min(global4.d, ~(global4.d | global4.d))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_add_u32(1u, reverseBits(~7759u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.b * vec4<f32>(122f, global4.c.x, 423f, -768f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1363f, 769f, global4.c.x, 1274f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global2.x, global4.c.x, global4.c.x)))))))));
    var var_1 = ~global4.a.x;
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), 572f, 133f, global2.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.b.x)), 227f, global4.c.x, 2090f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1685f, global2.x, global4.c.x, global2.x))))), global4.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1050f, global2.x, global4.c.x)), vec4<f32>(-1000f, global4.b.x, 2086f, var_0.b.x), !vec4<bool>(global4.e, false, global4.e, false))) + _wgslsmith_f_op_vec4_f32(-global4.b))), global4.b, vec4<bool>(false, true, false, all(select(vec3<bool>(false, global4.e, true), vec3<bool>(global4.e, false, true), global4.e)) && global4.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, 1u, global2.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x))));
}

