struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<f32>(-957f, 217f, -234f), 150f));

var<private> global1: array<f32, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = all(vec3<bool>(any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))), true, false));
    let var_1 = ~(~u_input.b.x);
    let var_2 = ~vec2<u32>(0u, abs(_wgslsmith_sub_u32(22503u, countOneBits(4294967295u))));
    global1 = array<f32, 31>();
    let var_3 = vec3<bool>(true, select(true, true, u_input.a.x <= 2147483647i), false);
    return _wgslsmith_clamp_u32(14439u, ~var_1, 38878u);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(global0.a);
    var var_0 = Struct_2(Struct_1(global0.a.a, global1[_wgslsmith_index_u32(~(~u_input.b.x), 31u)]));
    let var_1 = Struct_3(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 66852u, u_input.b.x, u_input.b.x))), Struct_2(Struct_1(vec3<f32>(-1154f, _wgslsmith_f_op_f32(round(1619f)), _wgslsmith_f_op_f32(-global0.a.b)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(func_3(), 31u)])))), 36801i, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, 844f, -890f) * vec3<f32>(var_0.a.a.x, global0.a.a.x, 168f)) * global0.a.a), 280f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, 324f, -1788f, global1[_wgslsmith_index_u32(2699u, 31u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -264f, global1[_wgslsmith_index_u32(53949u, 31u)], -332f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, global0.a.b, global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global0.a.a.x))))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), true)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(var_0.a.a, vec3<f32>(-1644f, _wgslsmith_f_op_f32(-global0.a.b), -140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(var_1.b.a.b - 620f), true)))));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = 0u;
    global0 = func_2();
    let var_1 = ~_wgslsmith_mod_u32(select(max(u_input.b.x, u_input.b.x), _wgslsmith_sub_u32(0u, u_input.b.x), true) | min(~25284u, u_input.b.x), ~_wgslsmith_mult_u32(u_input.b.x, 1u) >> (select(~u_input.b.x, 1u, true) % 32u));
    let var_2 = var_1;
    var var_3 = func_2();
    return Struct_3(firstTrailingBit(vec4<u32>(var_2, _wgslsmith_mult_u32(u_input.b.x, var_1) & _wgslsmith_dot_vec4_u32(vec4<u32>(62483u, u_input.b.x, var_2, 20212u), vec4<u32>(var_1, 17082u, u_input.b.x, var_1)), 0u, _wgslsmith_mult_u32(countOneBits(36699u), 33936u))), Struct_2(func_2().a), ~u_input.a.x, func_2());
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = global0.a.b;
    var var_2 = arg_2.x | arg_2.x;
    let var_3 = _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(abs(-29720i), ~arg_0.c, arg_0.c)) | (countOneBits(vec3<i32>(82495i, u_input.a.x, 9642i) >> (~arg_0.a.zxx % vec3<u32>(32u))) << (select(max(vec3<u32>(0u, u_input.b.x, arg_1.a.x), ~arg_1.a.xxy), _wgslsmith_mult_vec3_u32(arg_0.a.wyz, _wgslsmith_mult_vec3_u32(arg_1.a.zyx, vec3<u32>(50177u, 25754u, arg_1.a.x))), false) % vec3<u32>(32u)));
    var var_4 = vec4<bool>(firstTrailingBit(abs(~arg_1.a.x)) != u_input.b.x, u_input.b.x > 1u, arg_2.x, true);
    return vec2<bool>(2004f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(arg_0.a.x, 31u)]))), var_4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_4(func_1(Struct_1(global0.a.a, global0.a.b)), func_1(func_2().a), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(func_1(Struct_1(global0.a.a, -1081f)).c, u_input.a.x, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, 7107i)) ^ _wgslsmith_sub_vec3_i32(u_input.a, u_input.a))), ~u_input.a.x, -abs(u_input.a.x) << (4294967295u % 32u));
    var_1 = abs(select(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 0i), select(var_1.x, u_input.a.x, var_0.x), _wgslsmith_sub_i32(u_input.a.x, -1i)), vec3<i32>(u_input.a.x, var_1.x, 1i) & vec3<i32>(21120i, 12661i, var_1.x), vec3<bool>(true, !var_0.x, false))) ^ -u_input.a;
    var var_2 = func_2();
    let var_3 = func_2();
    var var_4 = func_4(Struct_3(vec4<u32>(~u_input.b.x, ~u_input.b.x, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 5657u)), func_2(), 10118i, var_3), Struct_3(vec4<u32>(u_input.b.x, u_input.b.x, 46148u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(19088u, 4294967295u, 43882u, u_input.b.x)), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u))), var_3, ~(~select(1i, 27005i, false)), func_1(var_2.a).d), select(!select(!vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true), false & var_0.x), select(vec4<bool>(1042f != global1[_wgslsmith_index_u32(4294967295u, 31u)], true, var_0.x, var_0.x), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, true)), select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), false), vec4<bool>(true, true, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, var_0.x, false, var_0.x)))), select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, false), false), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, true, var_0.x, true)), !vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !(!vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x, any(vec2<bool>(false, true))))));
    var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 25260i, var_1.x), vec3<i32>(var_1.x & u_input.a.x, 32264i, var_1.x)));
}

