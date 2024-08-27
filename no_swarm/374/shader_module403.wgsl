struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-35025i, -27019i, 27300i));

var<private> global1: Struct_1;

var<private> global2: vec2<f32>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, -42674i), -21736i, false, 1000f);

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-global3.a.x & -1i, _wgslsmith_mod_i32(~global3.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, global3.b), vec2<i32>(1i, global1.b))), -2147483647i), global1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-35102i, -global3.b, firstTrailingBit(16275i), ~(-5450i)), vec4<i32>(global3.a.x, global3.b, _wgslsmith_sub_i32(global1.a.x, global3.a.x), -1i)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global1.a, global1.a), -3201i)), 0i, true, global2.x);
    let var_1 = select(var_0.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(30084i, 0i, -3403i, -2147483647i)), _wgslsmith_sub_vec4_i32(-global1.a, vec4<i32>(var_0.b, global3.b, -1i, var_0.b))), firstLeadingBit(~firstLeadingBit(var_0.a))), vec4<bool>(false, false, false, true));
    var var_2 = global4[_wgslsmith_index_u32(~arg_0, 16u)];
    global1 = Struct_1(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(var_2.a, 0i, _wgslsmith_clamp_i32(-1i, -2147483647i, var_0.b), _wgslsmith_div_i32(11721i, 1i))), vec4<i32>(global1.a.x, 0i, global3.a.x, (2147483647i >> (u_input.a % 32u)) >> (~arg_0 % 32u))), _wgslsmith_mod_i32(38718i, ~(-var_2.a)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d)) - -326f));
    return _wgslsmith_f_op_f32(var_0.d - -957f);
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(21624u, 16u)];
    let var_1 = -min(var_0.a, global3.b);
    var var_2 = false;
    global0 = array<vec3<i32>, 1>();
    let var_3 = _wgslsmith_div_f32(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a))))));
    return Struct_1(-global1.a, 1i, select(true, false, !all(select(vec3<bool>(true, arg_0, global1.c), vec3<bool>(true, false, false), true))), 348f);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_div_vec3_i32(max(vec3<i32>(~0i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.a.x, 1i), _wgslsmith_mod_i32(-14110i, global3.b)), -_wgslsmith_sub_i32(global3.b, 1i)), -min(countOneBits(vec3<i32>(-7859i, -18189i, arg_0.b)), arg_0.a.xyy & global0[_wgslsmith_index_u32(23284u, 1u)])), vec3<i32>(-1i) * -global0[_wgslsmith_index_u32(abs(u_input.a), 1u)]);
    var var_1 = ~min(~select(_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(12456u, 87299u)), !global3.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 123851u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, u_input.a, 0u)), ~(~u_input.a), u_input.a));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.d, -1447f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1517f, -786f), vec2<f32>(1378f, 1000f)))) * vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f), global2.x))));
    let var_2 = arg_0.d;
    let var_3 = Struct_2(0i);
    return _wgslsmith_mod_i32(var_3.a, -2147483647i) << (~(~u_input.a) % 32u);
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = any(vec4<bool>(all(select(vec4<bool>(false, true, global1.c, true), !vec4<bool>(global1.c, false, true, true), true)), !global1.c, true, any(!select(vec2<bool>(false, false), vec2<bool>(false, global1.c), global1.c))));
    var var_1 = _wgslsmith_mod_i32(~arg_0.a, min(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(41552i, global1.a.x, 1i, 2147483647i), vec4<i32>(global3.b, arg_0.a, global3.b, global3.a.x))), global3.a.x & -27300i));
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-39508i, func_4(func_2(global1.c)), i32(-1i) * -global1.a.x, 0i), select(vec4<i32>(1i, global1.a.x, arg_0.a, 0i), _wgslsmith_div_vec4_i32(global1.a, global1.a), !vec4<bool>(global3.c, global1.c, true, true)) >> (max(min(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(12741u, 45401u, u_input.a, u_input.a)), vec4<u32>(2510u, u_input.a, 0u, u_input.a)) % vec4<u32>(32u))), select(0i, -abs(-global3.a.x), any(!vec3<bool>(global3.c, global1.c, var_0)) & !(true & global1.c)), false, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-284f, -369f)), global1.d, any(select(vec3<bool>(true, var_0, false), vec3<bool>(false, var_0, true), global3.c))))));
    let var_3 = Struct_2(23695i);
    global4 = array<Struct_2, 16>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f), _wgslsmith_f_op_f32(step(699f, global2.x))) + _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -430f)))) + global1.d);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, 1627f) * vec2<f32>(1469f, global3.d)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1810f, arg_1.d), vec2<f32>(189f, global3.d)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.d, arg_1.d))), vec2<f32>(global3.d, global2.x)), vec2<f32>(_wgslsmith_f_op_f32(120f + 963f), _wgslsmith_f_op_f32(global1.d + -954f))))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d, _wgslsmith_f_op_f32(step(-824f, _wgslsmith_f_op_f32(func_1(Struct_2(9095i))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(518f, global2.x)), 682f)), global2.x)));
    global2 = _wgslsmith_f_op_vec2_f32(var_0.yy + _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(global3.d <= global3.d).d, 778f)));
    let var_1 = Struct_2(-(~(func_4(Struct_1(vec4<i32>(arg_1.b, -1i, 17498i, global1.a.x), 19456i, true, global1.d)) << ((u_input.a & arg_2.x) % 32u))));
    var var_2 = func_2(any(!select(!vec4<bool>(global3.c, false, false, global1.c), !vec4<bool>(false, arg_1.c, global1.c, false), vec4<bool>(arg_1.c, global3.c, false, true))));
    return Struct_1(~func_2(true).a, arg_1.a.x, global1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-1605f + arg_1.d))))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: i32) -> StorageBuffer {
    var var_0 = global2.x;
    global4 = array<Struct_2, 16>();
    let var_1 = -272f;
    var var_2 = func_2(func_2(global1.c).c && (true || (!global3.c || true)));
    var var_3 = global4[_wgslsmith_index_u32(31908u >> (u_input.a % 32u), 16u)];
    return StorageBuffer(vec4<i32>(0i, 6506i, -1i >> (~u_input.a % 32u), 50512i), 16807i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec2<bool>(global3.c, false), !vec2<bool>(global3.c | true, true), vec2<bool>(global3.d <= global2.x, global1.c));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-global1.b, global1.b), global1.a.x, i32(-1i) * -(~global1.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d, _wgslsmith_f_op_f32(-global3.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - _wgslsmith_div_f32(global2.x, global1.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.d * -106f)))))));
    var var_3 = _wgslsmith_mod_i32(var_1.x, var_1.x);
    var var_4 = Struct_1(global1.a, ~(-34885i), global3.c, _wgslsmith_f_op_f32(-global2.x));
    var var_5 = global4[_wgslsmith_index_u32(u_input.a, 16u)];
    let x = u_input.a;
    s_output = func_6(func_5(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(u_input.a, 9758u, u_input.a)), vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), abs(u_input.a), ~0u), vec3<u32>(4294967295u, ~u_input.a, u_input.a)), Struct_1(countOneBits(-var_4.a), _wgslsmith_mod_i32(-1i, var_1.x), -var_4.b != _wgslsmith_add_i32(global1.a.x, 3197i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_2(global1.b))))), vec3<u32>(~abs(u_input.a), u_input.a, min(_wgslsmith_div_u32(u_input.a, 1u), u_input.a)), Struct_2(_wgslsmith_clamp_i32(var_1.x, global1.a.x << (u_input.a % 32u), max(global3.b, global1.a.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, var_4.d, -296f)), vec3<f32>(1364f, 196f, global2.x))) - vec3<f32>(_wgslsmith_f_op_f32(sign(global3.d)), _wgslsmith_f_op_f32(-global2.x), global2.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, var_2.x, 429f), vec3<f32>(global1.d, -772f, var_4.d)) * vec3<f32>(global2.x, 1000f, var_2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1266f, -513f, -1153f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(337f, global2.x)))))), ~_wgslsmith_sub_i32(-global3.a.x, -2147483647i));
}

