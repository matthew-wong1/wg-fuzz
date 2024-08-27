struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec3<f32> = vec3<f32>(400f, -749f, -839f);

var<private> global3: array<Struct_1, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = Struct_3(arg_3.a, arg_3.a.d, ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(-34495i, -1i, u_input.b.x, u_input.b.x)), arg_3.c), -701f);
    global0 = Struct_1(_wgslsmith_f_op_f32(round(arg_3.a.b)), min(vec2<i32>(countOneBits(_wgslsmith_mult_i32(-2147483647i, u_input.a)), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(u_input.b, arg_3.a.d.b))), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_2, 18157i), arg_3.c.yyz), u_input.b.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(abs(arg_3.d))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global0.a * -1323f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.c))))), arg_3.b.d);
    var var_1 = vec4<i32>(-28981i, 3585i, -353i, global0.b.x);
    var var_2 = arg_1;
    global3 = array<Struct_1, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d));
}

fn func_2(arg_0: f32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-382f, -523f) - _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.d, global0.d, 0u), vec3<u32>(global0.d, 973u, 1u)), vec4<bool>(true, true, true, true), ~global0.b.x, Struct_3(Struct_2(global0.b.x, arg_0, global0.d, Struct_1(250f, vec2<i32>(u_input.b.x, global0.b.x), vec2<f32>(global2.x, global0.a), 51968u)), global3[_wgslsmith_index_u32(global0.d, 1u)], vec4<i32>(-11136i, global0.b.x, 69688i, -2147483647i), 1018f)))), _wgslsmith_f_op_f32(-693f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1506f * arg_0), arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f) - _wgslsmith_f_op_f32(select(-422f, -140f, all(vec3<bool>(true, false, false))))))));
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(max(_wgslsmith_mod_i32(1i, 2147483647i), u_input.a), global0.b.x, global0.b.x), select(18090i, abs(u_input.b.x), global0.b.x != _wgslsmith_clamp_i32(2147483647i, 2147483647i, global0.b.x)), _wgslsmith_dot_vec2_i32(min(~u_input.b, vec2<i32>(-1i, global0.b.x)), abs(_wgslsmith_add_vec2_i32(global0.b, u_input.b)))), vec3<i32>(abs(u_input.a), global0.b.x, global0.b.x & (_wgslsmith_clamp_i32(1i, -67629i, global0.b.x) ^ 0i)));
    global3 = array<Struct_1, 1>();
    global0 = Struct_1(global2.x, vec2<i32>(_wgslsmith_add_i32(reverseBits(-37395i), 2147483647i), global0.b.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))), 882f), global0.d);
    return Struct_2(_wgslsmith_clamp_i32(reverseBits(~0i ^ _wgslsmith_mult_i32(0i, var_0.x)), -global0.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.yz, select(u_input.b, var_0.yx, true)), firstLeadingBit(min(var_0.x, global0.b.x)))), arg_0, 4580u, global3[_wgslsmith_index_u32(global0.d, 1u)]);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(1772f);
    let var_1 = vec2<bool>(true, true);
    let var_2 = vec3<bool>(var_1.x, all(select(!vec4<bool>(false, var_1.x, false, true), select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true), !vec4<bool>(false, false, var_1.x, var_1.x)), vec4<bool>(var_1.x, any(vec3<bool>(var_1.x, true, false)), !var_1.x, any(vec4<bool>(true, false, false, false))))), any(vec3<bool>(true, false, _wgslsmith_f_op_f32(exp2(var_0.b)) < _wgslsmith_f_op_f32(var_0.b + var_0.d.c.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 848f))) + 1085f), vec2<i32>(2147483647i, -5136i) << (abs(_wgslsmith_add_vec2_u32(~vec2<u32>(var_0.d.d, global0.d), firstLeadingBit(vec2<u32>(var_0.d.d, 35681u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(global2.zx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), var_0.d.c.x))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0.d, var_0.c) ^ ~vec2<u32>(0u, 17478u)), vec2<u32>(global0.d, 1u)));
    let var_4 = reverseBits(~select(abs(global1[_wgslsmith_index_u32(28082u, 6u)]), global1[_wgslsmith_index_u32(11223u, 6u)] | global1[_wgslsmith_index_u32(0u, 6u)], select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_2.x, var_1.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, var_1.x)))) << (global1[_wgslsmith_index_u32(~33776u | var_0.c, 6u)] % vec4<u32>(32u));
    return func_2(_wgslsmith_div_f32(-291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + 612f))));
}

fn func_4(arg_0: Struct_2) -> f32 {
    global0 = global3[_wgslsmith_index_u32(global0.d, 1u)];
    global1 = array<vec4<u32>, 6>();
    var var_0 = vec2<u32>(~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2197f))).c, countOneBits(select(arg_0.d.d, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.d.d), vec2<u32>(3026u, arg_0.d.d), vec2<u32>(global0.d, 1u)), vec2<u32>(arg_0.d.d, global0.d)), false)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(237f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_div_f32(-613f, 270f)).b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 19458u), vec3<u32>(71076u, 37062u, arg_0.c)), vec4<bool>(true, true, true, true), abs(global0.b.x), Struct_3(arg_0, arg_0.d, vec4<i32>(1i, global0.b.x, 32058i, -34415i), arg_0.d.c.x))))));
    var_0 = ~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(32528u, var_0.x)));
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1())), 1258f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f - -796f)))), -261f)));
    let var_1 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global0.d, 22502u), vec3<u32>(global0.d, 0u, 0u)), vec3<u32>(4294967295u, 11800u, 1u), ~vec3<u32>(global0.d, 4294967295u, 1u)) << ((~vec3<u32>(0u, 4294967295u, global0.d) >> (abs(vec3<u32>(1u, global0.d, global0.d)) % vec3<u32>(32u))) % vec3<u32>(32u))), abs(firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(global0.d, global0.d), global0.d, 4294967295u))));
    let var_2 = var_1;
    var var_3 = func_1().d;
    global0 = global3[_wgslsmith_index_u32(var_3.d, 1u)];
    var_3 = global3[_wgslsmith_index_u32(var_3.d, 1u)];
    var_3 = global3[_wgslsmith_index_u32(41791u, 1u)];
    var var_4 = func_2(global0.a).d;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(i32(-1i) * -43538i), global2.x, _wgslsmith_f_op_f32(1228f * _wgslsmith_f_op_f32(abs(global2.x))));
}

