struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

var<private> global1: array<vec2<bool>, 5>;

var<private> global2: bool = false;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: f32) -> u32 {
    let var_0 = Struct_2(any(select(vec3<bool>(false, !arg_1.x, any(vec3<bool>(arg_1.x, false, arg_1.x))), vec3<bool>(true, any(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x), arg_1.x)), vec2<bool>(arg_1.x, !all(!vec4<bool>(true, arg_1.x, arg_1.x, false))), u_input.a, abs(abs(-u_input.d.x ^ -10873i)));
    let var_1 = arg_2;
    let var_2 = Struct_3(vec3<i32>(min(-_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.d.x, u_input.e.x)), max(-var_0.d, u_input.d.x)), 2147483647i, -1i));
    global1 = array<vec2<bool>, 5>();
    global1 = array<vec2<bool>, 5>();
    return firstTrailingBit(reverseBits(~69942u));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = arg_0;
    let var_1 = -vec3<i32>(abs(abs(_wgslsmith_mod_i32(-2635i, 2147483647i))), -60399i, var_0.c);
    global1 = array<vec2<bool>, 5>();
    var var_2 = Struct_4(any(arg_0.b));
    var var_3 = Struct_4(true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) - 1000f) - 546f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-579f - _wgslsmith_f_op_f32(-arg_2)) * 460f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-100f, 964f) - _wgslsmith_f_op_f32(f32(-1f) * -836f)) + _wgslsmith_f_op_f32(func_4(Struct_2(true, vec2<bool>(true, false), u_input.a, 2147483647i), func_3(vec4<u32>(0u, u_input.c, 53261u, 2314u), vec4<bool>(true, false, true, false), 567f), 2238f))) < 1016f);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1482f);
    let var_2 = Struct_2(!(var_0.a & var_0.a), global1[_wgslsmith_index_u32(u_input.c, 5u)], _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-u_input.d.x, abs(u_input.a), u_input.e.x), -2147483647i), u_input.d.x);
    global0 = array<Struct_3, 3>();
    var var_3 = -vec3<i32>(-69298i, max(i32(-1i) * -2147483647i, reverseBits(-var_2.d)), _wgslsmith_sub_i32(~(-1i), abs(1i)));
    return Struct_1(vec2<bool>(all(select(select(vec3<bool>(var_0.a, false, false), vec3<bool>(var_2.a, false, true), false), select(vec3<bool>(true, var_2.b.x, var_0.a), vec3<bool>(var_0.a, true, false), false), vec3<bool>(false, var_2.b.x, true))), any(vec3<bool>(var_2.b.x, var_0.a, var_0.a)) == !(!var_2.a)), firstTrailingBit(select(-abs(vec2<i32>(-2147483647i, 1i)), vec2<i32>(46124i, -var_2.d), select(select(vec2<bool>(true, false), var_2.b, vec2<bool>(var_2.a, var_0.a)), select(var_2.b, vec2<bool>(var_0.a, false), var_0.a), all(vec2<bool>(var_2.b.x, var_2.b.x))))), vec4<f32>(var_1, _wgslsmith_f_op_f32(func_4(Struct_2(27314u > u_input.c, select(vec2<bool>(var_0.a, false), var_2.b, var_2.b.x), 1i, var_2.d), max(~u_input.c, 33976u), _wgslsmith_f_op_f32(func_4(Struct_2(var_2.b.x, vec2<bool>(var_2.b.x, var_0.a), u_input.d.x, var_2.c), _wgslsmith_mod_u32(4294967295u, u_input.b), _wgslsmith_f_op_f32(floor(var_1)))))), -357f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> vec3<f32> {
    global1 = array<vec2<bool>, 5>();
    let var_0 = func_2();
    let var_1 = var_0.c.x;
    global2 = var_0.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(true, vec2<bool>(var_0.a.x, var_0.a.x), var_0.b.x, var_0.b.x), 20910u, 1000f))) - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1)))))));
    return var_0.c.wzw;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    global2 = !(true || (_wgslsmith_f_op_f32(f32(-1f) * -274f) > arg_2.x));
    global1 = array<vec2<bool>, 5>();
    global2 = true;
    global0 = array<Struct_3, 3>();
    var var_0 = select(vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x * 1000f))) >= arg_1.x, true, !(_wgslsmith_f_op_f32(f32(-1f) * -1135f) <= _wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, true)))), select(vec4<bool>(!select(true, false, false), true, all(vec4<bool>(false, false, false, true)), !(1i <= arg_0.x)), vec4<bool>(all(vec3<bool>(true, true, true)), any(global1[_wgslsmith_index_u32(~u_input.b, 5u)]), _wgslsmith_add_i32(arg_0.x, -2147483647i) < (2147483647i << (u_input.c % 32u)), 1000f > _wgslsmith_f_op_f32(select(-1506f, 2868f, false))), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), true), vec4<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, false)), select(true, false, true), select(true, false, true)), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, false))), !any(vec2<bool>(true, true)) & ((arg_0.x >> (~u_input.b % 32u)) <= _wgslsmith_div_i32(u_input.a, -8301i)));
    return Struct_1(vec2<bool>(true, true), ~_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.e, u_input.e), firstTrailingBit(vec2<i32>(-52512i, -16832i))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(abs(vec3<u32>(u_input.b, u_input.c, 1u)), 818f)).x), 115f, -218f, _wgslsmith_f_op_f32(func_4(Struct_2(var_0.x, select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false)), reverseBits(-1i), 1i), 57548u, arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-vec3<i32>(1i, _wgslsmith_div_i32(firstLeadingBit(-2147483647i), -41152i), u_input.d.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -1561f)), _wgslsmith_f_op_f32(718f * -1858f)), -164f, 1536f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(vec3<u32>(0u, u_input.c, u_input.b), -1000f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-804f, 433f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-814f, 1000f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-176f, 140f)))), global1[_wgslsmith_index_u32(abs(u_input.b), 5u)])) - vec2<f32>(364f, _wgslsmith_f_op_f32(394f * -154f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-857f)), 510f, 1021f));
    let var_1 = vec4<u32>(2384u, ~(u_input.c | 35987u), 0u, select(max(_wgslsmith_mod_u32(countOneBits(4764u), abs(u_input.c)), 4294967295u), u_input.c, !(true != any(global1[_wgslsmith_index_u32(u_input.c, 5u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.yxx);
}

