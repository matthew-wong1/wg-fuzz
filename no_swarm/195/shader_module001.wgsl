struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -19295i;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true));

var<private> global3: f32;

var<private> global4: array<i32, 3> = array<i32, 3>(-27709i, -17511i, i32(-2147483648));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global2 = array<vec4<bool>, 4>();
    var var_1 = _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(1u, 3u)], abs(reverseBits(-u_input.c)), ~u_input.d.x);
    global4 = array<i32, 3>();
    global0 = u_input.d.x >> (var_0.a % 32u);
    return 48727u;
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_2(vec3<bool>(false, true, !select(true, true, true)), Struct_1(u_input.b.x));
    global1 = var_0.b;
    let var_1 = _wgslsmith_add_i32(arg_0.x, 66958i);
    let var_2 = abs(vec2<u32>(global1.a, global1.a)) ^ vec2<u32>(firstTrailingBit(var_0.b.a), _wgslsmith_dot_vec2_u32(u_input.b.yz, ~max(u_input.b.xy, u_input.b.zy)));
    global1 = Struct_1(firstLeadingBit(~1u));
    return ~(global1.a >> (global1.a % 32u));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-465f)) + -683f) + 1071f);
    let var_1 = -_wgslsmith_clamp_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.d, vec2<i32>(global4[_wgslsmith_index_u32(arg_3.a, 3u)], global4[_wgslsmith_index_u32(0u, 3u)])) | vec2<i32>(0i, global4[_wgslsmith_index_u32(15661u, 3u)]), ~vec2<i32>(-39142i, u_input.d.x) << (abs(arg_0.wx) % vec2<u32>(32u)), select(!arg_2.a.yx, arg_2.a.zy, !arg_2.a.x)), -select(abs(vec2<i32>(-2147483647i, u_input.e.x)), ~vec2<i32>(u_input.c, 18361i), arg_2.a.x), u_input.e);
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(select(reverseBits(~31806u), func_2(Struct_1(arg_1.b.a)), arg_1.a.x), 4294967295u), ~arg_0.x);
    let var_3 = any(!vec4<bool>(func_3(vec3<i32>(1i, var_1.x, u_input.e.x)) < (0u ^ arg_3.a), true, true, !(!arg_1.a.x)));
    var var_4 = Struct_1(38002u << (arg_0.x % 32u));
    return Struct_1(arg_3.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    global4 = array<i32, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1065f, -2050f)) * 133f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1281f)), _wgslsmith_f_op_f32(-403f - -1000f)), _wgslsmith_f_op_f32(max(-359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(191f)) * -1442f)))));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_clamp_vec4_i32(select(firstTrailingBit(~arg_0) >> ((~u_input.b | ~arg_2) % vec4<u32>(32u)), arg_0, vec4<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), false, (576u == global1.a) || select(false, true, true), global1.a > ~4294967295u)), arg_1, vec4<i32>(_wgslsmith_sub_i32(arg_0.x, -(~global4[_wgslsmith_index_u32(13071u, 3u)])), global4[_wgslsmith_index_u32(global1.a, 3u)], arg_0.x, max(arg_0.x, -(i32(-1i) * -49259i))));
    let var_3 = Struct_2(vec3<bool>(false, 75137u >= arg_2.x, true), func_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, 59334u, 4294967295u, 1u), ~u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(3891u, 7164u, 70412u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 9167u, 16882u, 1u), vec4<u32>(u_input.b.x, arg_2.x, 15474u, arg_3.a)))), Struct_2(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, false, false), all(vec2<bool>(false, true))), func_1(countOneBits(u_input.b), Struct_2(vec3<bool>(true, false, true), arg_3), Struct_2(vec3<bool>(true, true, true), arg_3), arg_3)), Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), arg_3), func_1((vec4<u32>(0u, u_input.b.x, 0u, 5430u) ^ u_input.b) | abs(vec4<u32>(56229u, 16445u, 0u, u_input.b.x)), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), Struct_1(global1.a)), Struct_2(vec3<bool>(false, true, true), func_1(u_input.b, Struct_2(vec3<bool>(true, true, true), Struct_1(arg_3.a)), Struct_2(vec3<bool>(true, true, true), arg_3), Struct_1(68777u))), Struct_1(arg_2.x))));
    return Struct_3(u_input.b.xw << (u_input.b.wz % vec2<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_1.b;
    return !select(!(!(!arg_1.a)), !arg_1.a, all(select(select(vec4<bool>(arg_3, arg_3, true, arg_3), global2[_wgslsmith_index_u32(u_input.a, 4u)], true), !vec4<bool>(arg_3, arg_3, false, arg_1.a.x), arg_3)));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_0.x & (false || any(vec2<bool>(false, true)));
    let var_1 = Struct_2(select(vec3<bool>(true, var_0, func_5(Struct_3(vec2<u32>(global1.a, global1.a)), Struct_2(arg_0, arg_1), arg_1, true).x), !arg_0, true), arg_1);
    var var_2 = vec2<bool>(!var_0, true);
    let var_3 = func_4(max(~vec4<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 0i, -50434i, 31663i), vec4<i32>(1i, -2147483647i, u_input.c, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(1u, 3u)], 0i), vec3<i32>(global4[_wgslsmith_index_u32(var_1.b.a, 3u)], -23805i, 1i)), 1i), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, u_input.c), abs(global4[_wgslsmith_index_u32(4294967295u, 3u)])), -47155i, _wgslsmith_div_i32(-u_input.d.x, global4[_wgslsmith_index_u32(1u, 3u)]), abs(61479i))), abs(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, u_input.c, 73526i, -45611i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, 1i, -2147483647i, 1i) ^ vec4<i32>(-110186i, -23703i, global4[_wgslsmith_index_u32(u_input.a, 3u)], global4[_wgslsmith_index_u32(23183u, 3u)]), countOneBits(vec4<i32>(global4[_wgslsmith_index_u32(u_input.b.x, 3u)], global4[_wgslsmith_index_u32(global1.a, 3u)], 2147483647i, -32455i))))), u_input.b, func_1(abs(firstTrailingBit(abs(vec4<u32>(15763u, 0u, 40419u, 4294967295u)))), var_1, var_1, func_1(_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(2698u, u_input.b.x, 19237u, var_1.b.a))), var_1, var_1, var_1.b)));
    let var_4 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(var_3.a.x, 1u, select(global1.a, 0u, var_1.a.x), ~u_input.b.x)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1298f, 645f, -504f, -705f), vec4<f32>(-102f, -2517f, -452f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, -984f, -188f, 1137f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-919f, 1363f, -1216f, -2309f), vec4<f32>(-279f, -407f, -990f, -1210f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(654f, -2064f, 304f, -1000f), vec4<f32>(-903f, 792f, -1469f, 708f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1204f, -785f)))), _wgslsmith_f_op_f32(round(200f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1180f, -477f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1846f + -1748f), -342f, var_1.a.x)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-511f, -564f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zz;
    global4 = array<i32, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_6(func_5(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(40651i, global4[_wgslsmith_index_u32(global1.a, 3u)], u_input.c, u_input.d.x), vec4<i32>(global4[_wgslsmith_index_u32(global1.a, 3u)], u_input.c, -2147483647i, -34747i)), ~vec4<i32>(u_input.e.x, global4[_wgslsmith_index_u32(78257u, 3u)], global4[_wgslsmith_index_u32(1u, 3u)], -408i), u_input.b, func_1(vec4<u32>(25031u, 4294967295u, 1u, 4294967295u), Struct_2(vec3<bool>(false, false, true), Struct_1(33354u)), Struct_2(vec3<bool>(false, true, false), Struct_1(var_0.x)), Struct_1(43591u))), Struct_2(vec3<bool>(true, true, true), Struct_1(4294967295u)), func_1(u_input.b, Struct_2(vec3<bool>(true, false, true), Struct_1(7842u)), Struct_2(vec3<bool>(false, false, false), Struct_1(0u)), func_1(u_input.b, Struct_2(vec3<bool>(true, false, false), Struct_1(4294967295u)), Struct_2(vec3<bool>(false, false, false), Struct_1(0u)), Struct_1(45925u))), true), Struct_1(abs(func_2(Struct_1(0u))))))));
    let var_2 = func_4(_wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(2147483647i, 27418i, 67730i, -61981i)), vec4<i32>(u_input.e.x, -(i32(-1i) * -24217i), (-11249i >> (global1.a % 32u)) << (_wgslsmith_mod_u32(4294967295u, var_0.x) % 32u), u_input.e.x)), vec4<i32>(-u_input.c, 447i, countOneBits(u_input.d.x), min(_wgslsmith_sub_i32(u_input.d.x, 20705i ^ global4[_wgslsmith_index_u32(3427u, 3u)]), u_input.c)), u_input.b, func_1(u_input.b, Struct_2(vec3<bool>(true, true, true), Struct_1(_wgslsmith_dot_vec2_u32(u_input.b.wz, var_0))), Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_add_u32(u_input.b.x, 30336u))), Struct_1(1u)));
    var var_3 = u_input.a;
    var var_4 = select(vec4<u32>(abs(u_input.a), 43043u, var_2.a.x, ~(~8199u)), u_input.b, _wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(var_2.a.x, 8449u, var_0.x, 8747u))), u_input.a) == 1u);
    let var_5 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~72515u, var_0.x << (var_2.a.x % 32u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2440f))), _wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_vec4_f32(func_6(vec3<bool>(true, true, true), Struct_1(var_2.a.x))).x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-881f)), -152f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, var_5, var_5, 1611f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_6(vec3<bool>(true, false, false), Struct_1(3598u))), var_1))), global2[_wgslsmith_index_u32(~1u, 4u)])));
}

