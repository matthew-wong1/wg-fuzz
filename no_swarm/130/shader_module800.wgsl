struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 1u, 64458u);

var<private> global1: array<i32, 3> = array<i32, 3>(0i, 20689i, 63997i);

var<private> global2: Struct_3;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    global0 = array<u32, 3>();
    var var_0 = select(vec3<bool>(_wgslsmith_mult_u32(~4294967295u, u_input.b.x << (29574u % 32u)) > _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.c.x, 16433u, 6970u), _wgslsmith_mult_vec4_u32(vec4<u32>(22409u, u_input.b.x, 22960u, 59902u), u_input.b)), !(false == (arg_0.x >= arg_0.x)), true), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), !(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))));
    let var_1 = Struct_3(vec2<i32>(abs(global1[_wgslsmith_index_u32(countOneBits(77968u), 3u)]), abs(i32(-1i) * -2147483647i)));
    var var_2 = vec3<i32>(35627i, -42303i, -1i);
    let var_3 = var_0.x | (var_2.x <= global2.a.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-2461f, 145f, var_0.x))) * 448f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1831f)))) * -766f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(1000f, -713f)))), _wgslsmith_f_op_f32(f32(-1f) * -109f)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_3(vec2<i32>(~_wgslsmith_clamp_i32(global2.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global2.a.x), abs(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c.x, 3u)]))) << (~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], 3u)], 4294967295u) % vec2<u32>(32u)));
    global0 = array<u32, 3>();
    let var_1 = Struct_1(1445f >= _wgslsmith_f_op_f32(func_3(vec4<i32>(0i, -20847i, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]) & vec4<i32>(0i, global2.a.x, var_0.a.x, 80488i), 44575u)), firstTrailingBit(-abs(global2.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1746f, -1209f, -1911f))), vec3<f32>(_wgslsmith_div_f32(1525f, -1002f), _wgslsmith_f_op_f32(sign(2289f)), 891f), vec3<bool>(true, true, u_input.c.x >= 63019u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, 329f, 875f)))))), 54732u, -9746i);
    var var_2 = Struct_3(global2.a);
    global0 = array<u32, 3>();
    return vec2<bool>(select(all(!vec2<bool>(var_1.a, false)), true, any(vec3<bool>(var_1.c.x < var_1.c.x, any(vec3<bool>(var_1.a, var_1.a, var_1.a)), !var_1.a))), !var_1.a);
}

fn func_1() -> u32 {
    let var_0 = ~(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(29770u, 3u)], 43968i, global1[_wgslsmith_index_u32(u_input.a, 3u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-34035i, 1i, -3625i, global1[_wgslsmith_index_u32(1u, 3u)]), vec4<i32>(global2.a.x, -47821i, -17754i, -11368i)))));
    global0 = array<u32, 3>();
    var var_1 = select(vec2<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), true, select(-2147483647i != global2.a.x, true, true)), false), func_2(), func_2());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(751f, 1721f)) * -3046f) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2157f + -196f) - _wgslsmith_f_op_f32(select(2059f, -175f, false))))));
    global1 = array<i32, 3>();
    return 1u;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = vec3<i32>(31515i, countOneBits(_wgslsmith_clamp_i32(max(global2.a.x, -arg_1.b), ~arg_1.b, 1i)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~func_1(), ~countOneBits(u_input.b.x)), 3u)]);
    var var_1 = Struct_3(~((vec2<i32>(-2147483647i, arg_1.b) >> (~u_input.c.yy % vec2<u32>(32u))) ^ vec2<i32>(global2.a.x, ~var_0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) * arg_2));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(914f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_2.x, 2108f)))));
    global0 = array<u32, 3>();
    return Struct_2(true, arg_1.c.x, -136f, _wgslsmith_add_vec4_i32(abs(-vec4<i32>(-3166i, var_0.x, -14743i, 21861i)), vec4<i32>(_wgslsmith_add_i32(reverseBits(1i), countOneBits(global1[_wgslsmith_index_u32(4949u, 3u)])), _wgslsmith_div_i32(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], var_0.x), arg_1.b), -2147483647i, -1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    let var_0 = func_4(func_1(), arg_3, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b), -540f, 710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))));
    var var_1 = -(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_0.d.x), -6150i, select(arg_1.d.x, arg_2.a.x, true), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(110261u, 3u)], 3u)], arg_3.b)), var_0.d) | arg_1.d);
    let var_2 = var_0;
    let var_3 = !((any(select(vec3<bool>(true, var_0.a, false), vec3<bool>(arg_3.a, arg_1.a, arg_1.a), true)) || all(select(vec3<bool>(true, arg_3.a, false), vec3<bool>(false, var_2.a, var_0.a), var_2.a))) || true);
    var var_4 = arg_3.c.zx;
    return Struct_3(-firstLeadingBit(var_2.d.yw) << (vec2<u32>(~firstLeadingBit(arg_3.d), 5197u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<i32>(_wgslsmith_sub_i32(21577i << (u_input.a % 32u), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 2147483647i)), global1[_wgslsmith_index_u32(76894u, 3u)]));
    global2 = func_5(1374f, func_4(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(func_1(), 3u)] << (131609u % 32u)), 3u)], Struct_1(_wgslsmith_div_i32(global2.a.x, 2147483647i) <= ~global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global2.a.x, vec3<f32>(1000f, -1912f, _wgslsmith_f_op_f32(trunc(-1385f))), ~59433u, _wgslsmith_clamp_i32(var_0.x, i32(-1i) * -34114i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -26893i, -29920i), vec3<i32>(36062i, 2147483647i, global2.a.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1129f, _wgslsmith_div_f32(248f, 1406f), 1f)))), Struct_3(global2.a), Struct_1(select(true, all(vec4<bool>(true, true, true, true)), true), ~1i << (func_1() % 32u), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(453f)))), 1914f, _wgslsmith_f_op_f32(509f * _wgslsmith_f_op_f32(f32(-1f) * -246f))), 34753u, 33433i));
    let var_1 = true;
    var var_2 = ~vec3<u32>(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(firstTrailingBit(78044u), 3u)], 0u, !var_1), 3u)], firstLeadingBit(17465u), ~0u) & (vec3<u32>(~1u ^ u_input.b.x, firstTrailingBit(~15464u), ~(~17351u)) & u_input.b.wyz);
    let var_3 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1137f, _wgslsmith_div_f32(1281f, -1000f), _wgslsmith_f_op_f32(min(550f, 1167f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -431f), -707f, _wgslsmith_f_op_f32(sign(1265f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, 1040f, -126f) + vec3<f32>(-1000f, -156f, -439f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1155f, -2063f, 1673f), vec3<f32>(-295f, 2433f, -1018f), vec3<bool>(var_1, false, var_1))))))), 267f);
}

