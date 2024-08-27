struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_4, 10>;

var<private> global3: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(1210f, 801f, 421f), vec3<f32>(1299f, 186f, 1744f), vec3<f32>(625f, 334f, -166f), vec3<f32>(959f, -602f, 247f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> i32 {
    global3 = array<vec3<f32>, 4>();
    global2 = array<Struct_4, 10>();
    let var_0 = global1.b.d.yx ^ _wgslsmith_clamp_vec2_u32(min(global1.b.d.xx, ~arg_0.b.d.yw) & vec2<u32>(abs(57564u), _wgslsmith_div_u32(u_input.d, 28387u)), global1.b.a.zx, _wgslsmith_add_vec2_u32(max(abs(arg_0.a.b.d.yx), ~global1.b.a.yx), arg_0.a.b.a.zx | max(vec2<u32>(26466u, 0u), vec2<u32>(global1.a, 4080u))));
    var var_1 = global0.zy;
    global0 = select(select(vec3<bool>(true, var_1.x, !any(vec4<bool>(false, false, var_1.x, global0.x))), select(vec3<bool>(true, arg_1.x < -212f, true), select(select(vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, global1.c, false)), vec3<bool>(arg_0.b.c, var_1.x, arg_0.a.c), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(select(-1871f, 1000f, true)) != _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), all(vec4<bool>(false, arg_0.b.c, false, 81240u <= u_input.d))), select(!select(select(vec3<bool>(false, global1.b.c, var_1.x), vec3<bool>(var_1.x, false, global1.c), vec3<bool>(arg_0.b.c, global0.x, false)), !vec3<bool>(var_1.x, true, global1.b.c), vec3<bool>(var_1.x, false, arg_0.b.c)), !select(select(vec3<bool>(arg_0.a.b.c, false, true), vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, global1.c, false)), vec3<bool>(var_1.x, false, var_1.x), global0.x), select(vec3<bool>(global0.x, !global1.b.c, false), select(!vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(false, global0.x, global1.b.c), vec3<bool>(false, false, var_1.x), global1.c), select(vec3<bool>(false, var_1.x, true), vec3<bool>(true, arg_0.a.c, var_1.x), arg_0.a.c)), global0.x)), vec3<bool>(select(all(!global0.yy), false, global1.c), any(!select(vec2<bool>(true, arg_0.a.c), global0.yy, true)), (i32(-1i) * -3159i) != u_input.a.x));
    return select(u_input.a.x, u_input.c, any(vec2<bool>(global1.b.c, var_1.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = Struct_4(arg_3.c, global1.b, arg_2);
    var var_1 = ~1u < _wgslsmith_add_u32(32907u, _wgslsmith_sub_u32(4294967295u, countOneBits(_wgslsmith_sub_u32(global1.a, arg_0.x))));
    let var_2 = -475f;
    var var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1894u >> (u_input.d % 32u), 68620u, 41094u), arg_3.c.b.b, reverseBits(max(var_0.a.b.a, vec3<u32>(u_input.d, 54963u, arg_2)) ^ ~arg_3.c.b.a)), (arg_0.wyw ^ (global1.b.b & (vec3<u32>(arg_0.x, 0u, arg_0.x) >> (vec3<u32>(59187u, var_0.a.a, 33639u) % vec3<u32>(32u))))) << (arg_3.b.b % vec3<u32>(32u)), !all(global0.zy), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(global1.b.b.x, arg_2, u_input.d), ~1u, ~arg_0.x) ^ (~global1.b.d << (select(vec4<u32>(u_input.d, 1u, arg_0.x, 58562u), arg_3.c.b.d, vec4<bool>(false, arg_3.c.c, var_0.a.c, false)) % vec4<u32>(32u))), ~arg_0), global1.b.e);
    let var_4 = Struct_2(_wgslsmith_sub_u32(4294967295u, 18383u) & min(~u_input.d, _wgslsmith_mult_u32(~4294967295u, arg_2 ^ 1u)), arg_3.b, false == any(vec4<bool>(any(vec3<bool>(false, true, arg_3.c.b.c)), var_0.a.b.c, false, all(vec2<bool>(true, global0.x)))));
    return var_3.e;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = select(min(~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(21993i, 22634i, u_input.c, -84599i)), reverseBits(vec4<i32>(17302i, -36904i, u_input.c, -42305i))), vec4<i32>(reverseBits(~(-35614i)), i32(-1i) * -41339i, u_input.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<i32>(32245i, 2147483647i, u_input.a.x, 42038i), global1.c), vec4<i32>(u_input.a.x, 52147i, u_input.a.x, u_input.c) & vec4<i32>(-1i, u_input.b, u_input.c, u_input.b)))), vec4<i32>(u_input.c, 14576i, -14621i, -2147483647i), select(select(select(select(vec4<bool>(global1.b.c, global0.x, true, global1.c), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, global0.x)), vec4<bool>(global0.x, false, global0.x, global0.x), all(vec4<bool>(false, true, false, global1.c))), !select(vec4<bool>(global1.c, global0.x, global0.x, false), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global1.c, global0.x, false, global0.x)), vec4<bool>(true, true, true, true)), !(!(!vec4<bool>(false, true, global0.x, global0.x))), _wgslsmith_f_op_f32(func_4(~vec4<u32>(22633u, 10014u, arg_0, 0u), func_3(global2[_wgslsmith_index_u32(9095u, 10u)], vec4<f32>(global1.b.e, 2089f, global1.b.e, -1489f)), ~u_input.d, Struct_3(u_input.a.xy, global1.b, Struct_2(6921u, global1.b, global0.x), vec4<f32>(-1472f, -925f, -840f, global1.b.e), arg_0))) < -409f));
    global3 = array<vec3<f32>, 4>();
    var var_1 = Struct_1(global1.b.d.xxw, vec3<u32>(abs(_wgslsmith_add_u32(abs(u_input.d), select(arg_0, global1.b.a.x, true))), arg_0, ~global1.b.a.x), all(select(!vec4<bool>(global0.x, global1.b.c, false, true), !select(vec4<bool>(true, true, true, global1.b.c), vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global1.c, global0.x, true, false)), select(vec4<bool>(false, true, global1.c, false), !vec4<bool>(false, global1.c, global1.b.c, global0.x), all(vec3<bool>(false, global1.b.c, global1.b.c))))), global1.b.d, _wgslsmith_f_op_f32(round(global1.b.e)));
    let var_2 = Struct_2(71232u << (~firstLeadingBit(var_1.b.x) % 32u), Struct_1(~select(select(var_1.b, global1.b.a, true), vec3<u32>(4294967295u, arg_0, 7418u) ^ vec3<u32>(global1.a, var_1.a.x, u_input.d), true), global1.b.a, (var_1.e > -1000f) || all(!vec3<bool>(var_1.c, global1.c, global0.x)), global1.b.d, -196f), true);
    var var_3 = ~0u;
    return i32(-1i) * -(~func_3(global2[_wgslsmith_index_u32(83453u, 10u)], vec4<f32>(679f, global1.b.e, 627f, 615f)));
}

fn func_1() -> f32 {
    var var_0 = global1.b.d;
    var_0 = global1.b.d;
    var var_1 = vec2<i32>(1i, func_2(4294967295u));
    var var_2 = Struct_3(vec2<i32>(~_wgslsmith_sub_i32(var_1.x, firstLeadingBit(-1i)), firstTrailingBit(_wgslsmith_mod_i32(-u_input.c, func_2(0u)))), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 0u, 0u), ~vec3<u32>(4294967295u, var_0.x, 26635u)) << (var_0.yww % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_0.x, u_input.d, global1.a), max(vec3<u32>(global1.a, var_0.x, 75182u), vec3<u32>(var_0.x, 4294967295u, 51332u))), vec3<u32>(~4294967295u, var_0.x, u_input.d & 72376u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, global1.a, 0u), vec3<u32>(0u, var_0.x, global1.b.d.x)) | ~vec3<u32>(u_input.d, 627u, 12600u)), global1.b.c, global1.b.d << (global1.b.d % vec4<u32>(32u)), global1.b.e), Struct_2(_wgslsmith_clamp_u32(~(var_0.x | global1.b.d.x), _wgslsmith_div_u32(global1.a, 1u << (global1.a % 32u)), _wgslsmith_mult_u32(u_input.d >> (72400u % 32u), ~var_0.x)), global1.b, !global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(round(global1.b.e)), var_1.x >= -1i)), -203f, _wgslsmith_f_op_f32(sign(1000f)))), reverseBits(14696u));
    var var_3 = -u_input.a;
    return _wgslsmith_f_op_f32(var_2.c.b.e + _wgslsmith_f_op_f32(823f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1129f, -241f)), _wgslsmith_f_op_f32(1155f * 1000f))), -874f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 10>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 10u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -305f), -466f, true))))));
    let var_2 = var_0.b;
    var var_3 = Struct_3(firstLeadingBit(u_input.a.zy), Struct_1(abs(vec3<u32>(global1.b.b.x, var_2.a.x, u_input.d)), _wgslsmith_sub_vec3_u32(var_2.b, ~vec3<u32>(global1.b.b.x, u_input.d, global1.a)), var_0.b.c, var_2.d, global1.b.e), Struct_2(76705u, Struct_1(vec3<u32>(_wgslsmith_add_u32(4294967295u, 0u), global1.b.b.x, _wgslsmith_mult_u32(var_2.b.x, global1.b.d.x)), firstTrailingBit(var_0.a.b.a >> (var_0.a.b.a % vec3<u32>(32u))), var_2.c, var_2.d, 936f), var_0.a.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-3035f, global1.b.e, var_0.a.b.e, var_1))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, -1476f, -999f, var_1))), !vec4<bool>(var_2.c, global0.x, var_2.c, var_2.c)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-297f, -1311f, global1.b.e, var_1))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1651f, var_1, global1.b.e, var_2.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1557f, var_2.e, var_0.b.e, 267f))))), countOneBits(global1.a ^ u_input.d));
    let var_4 = Struct_3(var_3.a, Struct_1(vec3<u32>(29926u, _wgslsmith_mod_u32(var_3.e, 19798u), min(36458u, 13850u)) | (select(vec3<u32>(26753u, var_3.b.d.x, var_0.b.b.x), global1.b.d.xww, vec3<bool>(true, var_2.c, global0.x)) << (~vec3<u32>(u_input.d, 0u, var_0.a.b.a.x) % vec3<u32>(32u))), var_0.b.a, any(vec2<bool>(!global1.c, 493f >= global1.b.e)), var_3.c.b.d, var_1), Struct_2(~_wgslsmith_add_u32(76914u, ~var_0.a.a), global1.b, true), _wgslsmith_f_op_vec4_f32(var_3.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.e, var_0.a.b.e, _wgslsmith_f_op_f32(var_0.a.b.e * var_0.b.e)) * var_3.d)), var_2.a.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.e - var_4.c.b.e), _wgslsmith_div_f32(global1.b.e, 1000f)))), _wgslsmith_f_op_f32(-var_0.b.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~21062u, var_4.b.b.x << (max(1u, 1u) % 32u), 4294967295u, _wgslsmith_mult_u32(~30646u, var_3.b.d.x)), vec4<i32>(32034i, -26838i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-18055i), ~var_3.a.x), var_3.a), _wgslsmith_sub_i32(-(~var_3.a.x), 36347i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1286f, -451f, -829f)))))), -622f);
}

