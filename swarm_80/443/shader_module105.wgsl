struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(466f, -352f, -366f, -597f));

var<private> global1: f32;

var<private> global2: vec4<f32> = vec4<f32>(-1430f, 410f, -846f, -592f);

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1340f)) - 597f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(arg_2.a.x, global2.x)))), -854f)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(var_0.x, var_0.x, global2.x, global0.a.x))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -780f, 2333f, -412f) * arg_2.a))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(948f - global0.a.x), _wgslsmith_f_op_f32(global0.a.x * global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.yx))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global2.x) * vec2<f32>(global0.a.x, -629f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(503f, global0.a.x)))))) + vec2<f32>(1f, 1f));
    let var_2 = 4294967295u;
    let var_3 = vec3<f32>(1620f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 1651f)))), -159f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1202f)))));
    return var_2;
}

fn func_2() -> Struct_4 {
    var var_0 = reverseBits(vec3<u32>(~_wgslsmith_sub_u32(func_3(Struct_1(vec3<bool>(false, false, false)), 32627u, Struct_3(vec4<f32>(133f, global0.a.x, global2.x, global0.a.x))), 0u >> (0u % 32u)), firstLeadingBit(1u), 1u));
    var var_1 = i32(-1i) * -2147483647i;
    global0 = Struct_3(global0.a);
    var var_2 = true | !select(true, !any(vec3<bool>(false, false, true)), true);
    let var_3 = Struct_4(-vec4<i32>(min(u_input.a.x, u_input.a.x), u_input.a.x, -10549i, -916i) & vec4<i32>(~1i, -3460i, u_input.a.x, u_input.a.x));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(1585f, -1535f, global0.a.x, -1000f)))))));
    global2 = global0.a;
    let var_1 = arg_2;
    var var_2 = vec2<f32>(1233f, 1001f);
    var var_3 = select(!vec3<bool>(arg_0.a.x, arg_3.a.x, arg_0.a.x), arg_3.a, !(countOneBits(abs(arg_2.a.x)) > _wgslsmith_div_i32(var_1.a.x, -29264i)));
    return _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-global0.a));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_3) -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(492f * global0.a.x);
    global2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.a.x + -1970f), _wgslsmith_f_op_f32(floor(-709f))))), arg_3.a.x, 1000f, -859f), arg_3.a, true));
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(!arg_0.a, vec3<u32>(1u, 25356u, 23655u)), _wgslsmith_f_op_f32(-global2.x), func_2(), Struct_1(vec3<bool>(true, true, arg_0.a.x))))));
    let var_1 = all(!(!(!vec2<bool>(true, arg_0.a.x)))) || true;
    var var_2 = ~min(~(~(vec4<u32>(0u, arg_0.b.x, 15057u, arg_0.b.x) & vec4<u32>(arg_0.b.x, 3877u, 50606u, 28928u))), ~vec4<u32>(~4294967295u, 40905u, ~1u, arg_0.b.x));
    return vec3<i32>(u_input.a.x, ~u_input.a.x, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x) < _wgslsmith_dot_vec3_i32(-u_input.a, u_input.a ^ func_1(Struct_2(vec2<bool>(false, true), vec3<u32>(44436u, 8539u, 0u)), global0.a.xz, Struct_4(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x)), Struct_3(vec4<f32>(global0.a.x, 895f, 165f, global0.a.x)))), firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x), firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, 23829i, u_input.a.x)))) == (i32(-1i) * -29938i));
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 1620u), vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(~vec4<u32>(1u, 0u, 1u, 23195u))), _wgslsmith_div_vec4_u32(~select(vec4<u32>(4294967295u, 1u, 14108u, 43163u), vec4<u32>(2770u, 4294967295u, 0u, 1u), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<u32>(~1u, ~21721u, _wgslsmith_sub_u32(4294967295u, 42887u), 1u))), (vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(34674u, 21221u), vec2<u32>(10593u, 20399u)), ~1u) >> (abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 75809u, 62847u), vec4<u32>(48600u, 4260u, 0u, 28617u))) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(77529u, 17981u), vec2<u32>(0u, 4294967295u)), _wgslsmith_add_u32(0u, 0u), ~0u, firstTrailingBit(4294967295u)), _wgslsmith_div_vec4_u32(~vec4<u32>(79071u, 11608u, 1u, 51147u), ~vec4<u32>(0u, 40053u, 41467u, 51264u))) % vec4<u32>(32u)));
    var var_2 = Struct_3(global0.a);
    global1 = global0.a.x;
    let var_3 = select(select(!vec3<bool>(var_0.x | true, var_0.x == var_0.x, true), vec3<bool>(var_0.x, var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)))), false), !select(select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), false), vec3<bool>(all(vec3<bool>(false, true, true)), true, !var_0.x), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, true)), var_0.x, false & var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec2<bool>(true, true), var_1.yyx), _wgslsmith_f_op_f32(global0.a.x + 1393f), func_2(), Struct_1(vec3<bool>(var_0.x, var_0.x, var_0.x)))).x) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(645f * global2.x))), _wgslsmith_f_op_f32(max(385f, _wgslsmith_f_op_f32(abs(var_2.a.x))))));
    var var_4 = func_2();
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x, -2396f, _wgslsmith_f_op_f32(select(-786f, var_2.a.x, true)))))));
    global1 = global2.x;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<i32>(-12594i, _wgslsmith_sub_i32(-26158i, ~firstTrailingBit(var_4.a.x))));
}

