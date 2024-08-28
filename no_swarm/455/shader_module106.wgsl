struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<u32, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<i32> {
    global1 = array<u32, 22>();
    global0 = array<Struct_2, 5>();
    let var_0 = Struct_2(vec4<u32>(~u_input.c, 0u, arg_1.a.x, arg_1.a.x), countOneBits(arg_1.b));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1130f))), -1380f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1180f, -1437f), _wgslsmith_f_op_f32(sign(377f)))), -165f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(363f, 2028f))))))), _wgslsmith_mult_vec3_i32(max(~(vec3<i32>(13269i, u_input.e.x, 2147483647i) | vec3<i32>(35913i, -1i, arg_1.b.x)), vec3<i32>(u_input.a.x ^ 1i, _wgslsmith_clamp_i32(var_0.b.x, 33330i, 1i), ~(-2147483647i))), vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-1i, arg_2.b.x, u_input.a.x)), arg_2.b.x, firstLeadingBit(2147483647i))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_1.b.x << (global1[_wgslsmith_index_u32(4294967295u, 22u)] % 32u), var_1.b.x, firstTrailingBit(0i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 49148i, arg_0), u_input.e.yyw)), vec3<i32>(u_input.e.x, _wgslsmith_sub_i32(~(-53830i), -1i), _wgslsmith_clamp_i32(firstLeadingBit(u_input.e.x), 20604i, arg_2.b.x))));
    return var_2.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    let var_0 = arg_2;
    global0 = array<Struct_2, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1505f, -937f, 362f)))), vec3<f32>(-312f, _wgslsmith_f_op_f32(round(947f)), _wgslsmith_f_op_f32(135f + 560f)))), vec3<i32>(i32(-1i) * -_wgslsmith_mod_i32(2147483647i, arg_2.b.x), 1i, abs(u_input.e.x)));
    var var_2 = arg_0.ww;
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-639f)))), -908f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * var_1.a.x))), func_3(arg_2.b.x, Struct_2(~var_0.a, arg_2.b & var_0.b), Struct_2(~vec4<u32>(29998u, arg_2.a.x, arg_2.a.x, 26513u), vec2<i32>(-35312i, var_1.b.x))) >> (var_0.a.xxy % vec3<u32>(32u)));
    return var_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_div_vec3_i32(u_input.e.wzz, ~(~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i), func_2(vec4<bool>(true, false, true, true), true, Struct_2(vec4<u32>(4294967295u, u_input.c, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 22u)]), u_input.a), true))));
    global0 = array<Struct_2, 5>();
    let var_2 = global1[_wgslsmith_index_u32(~60663u, 22u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1119f)), _wgslsmith_f_op_f32(round(687f))))))));
    return Struct_1(vec3<f32>(-779f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f * -569f)))), _wgslsmith_f_op_f32(min(-435f, -836f))), func_2(vec4<bool>((0u >= global1[_wgslsmith_index_u32(u_input.c, 22u)]) & true, true, any(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, true))), true, global0[_wgslsmith_index_u32(u_input.b, 5u)], all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), true))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    var var_0 = func_1();
    var var_1 = ~countOneBits(~arg_1.x >> (arg_1.x % 32u));
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(3966i)), -2147483647i);
    global1 = array<u32, 22>();
    let var_3 = Struct_1(var_0.a, var_0.b);
    return _wgslsmith_sub_u32(28731u, ~firstTrailingBit(0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~(~vec3<u32>(1u, 1u, 1u) >> ((vec3<u32>(0u, u_input.d, global1[_wgslsmith_index_u32(1u, 22u)]) & _wgslsmith_mod_vec3_u32(vec3<u32>(69944u, global1[_wgslsmith_index_u32(74467u, 22u)], u_input.d), vec3<u32>(u_input.b, 1u, u_input.b))) % vec3<u32>(32u))), ~vec3<u32>(~_wgslsmith_mult_u32(0u, global1[_wgslsmith_index_u32(121225u, 22u)]), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.b, 22u)], _wgslsmith_dot_vec3_u32(vec3<u32>(2491u, 0u, 44402u), vec3<u32>(17998u, 66772u, 3373u))), _wgslsmith_clamp_u32(1u, 58041u, global1[_wgslsmith_index_u32(0u, 22u)] & 0u)), func_1(), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec3<bool>(true, false, false)), !(-53129i == u_input.e.x), true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true))));
    global0 = array<Struct_2, 5>();
    global1 = array<u32, 22>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(countOneBits(3601u)), 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(-3019i, 4294967295u, 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1501f, -970f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1114f, 1196f))))))));
}

