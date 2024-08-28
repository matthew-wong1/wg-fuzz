struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = -33896i;

var<private> global2: array<Struct_4, 30>;

var<private> global3: array<bool, 14>;

var<private> global4: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_2(85439u, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b | 13001i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(-17954i, u_input.b))), ~vec3<i32>(u_input.b, u_input.b, -25597i)));
    var_0 = Struct_2(abs(u_input.a), firstLeadingBit(firstLeadingBit(_wgslsmith_mod_i32(u_input.b >> (43447u % 32u), u_input.b))));
    let var_1 = ~(~(~var_0.a));
    global1 = var_0.b;
    let var_2 = select(u_input.b, select(u_input.b, ~1i, true), false);
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-625f, -1174f)), _wgslsmith_f_op_f32(sign(1264f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), 1000f))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    var var_0 = vec4<u32>(reverseBits(arg_2.a), _wgslsmith_sub_u32(arg_2.a, ~1u) & (firstLeadingBit(max(3914u, arg_2.a)) >> (arg_2.a % 32u)), ~max(47949u, ~arg_2.a), 37957u);
    var var_1 = Struct_4(Struct_3(firstTrailingBit(~_wgslsmith_mult_u32(2862u, arg_2.a))), global3[_wgslsmith_index_u32(abs(4294967295u), 14u)], any(vec2<bool>(any(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 14u)], true, true, arg_3.c)), arg_3.c)), vec3<u32>(~var_0.x, firstLeadingBit(1u), arg_2.a));
    let var_2 = -412f;
    let var_3 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(6159u, var_0.x, u_input.a, var_0.x)), abs(~vec4<u32>(var_1.a.a, arg_2.a, 15595u, var_0.x))), max(vec4<u32>(4294967295u, 50870u, ~58953u, ~4294967295u), ~select(vec4<u32>(1u, var_0.x, 2939u, 0u), vec4<u32>(var_0.x, 0u, var_0.x, 13407u), true))));
    var var_4 = arg_3.c;
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(var_1.d.x, 17987u), vec2<u32>(0u, var_0.x), var_1.c), vec2<u32>(var_1.a.a, arg_2.a), vec2<u32>(1u, var_1.d.x)), _wgslsmith_sub_vec2_u32(~var_0.zx, abs(vec2<u32>(4294967295u, 1u))))), ~reverseBits(~(~arg_2.a)), var_0.x), 30u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<f32>) -> bool {
    global4 = array<vec2<bool>, 23>();
    var var_0 = -_wgslsmith_mult_i32(arg_0.b, 2147483647i);
    global4 = array<vec2<bool>, 23>();
    var var_1 = func_3(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(703f, arg_2.x, arg_2.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1671f, arg_2.x, arg_2.x) - vec3<f32>(arg_2.x, -2667f, 744f))))), _wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_clamp_vec2_i32(select(-select(vec2<i32>(u_input.b, arg_0.b), vec2<i32>(0i, u_input.b), global3[_wgslsmith_index_u32(arg_1.x, 14u)]), vec2<i32>(u_input.b, _wgslsmith_add_i32(arg_0.b, arg_0.b)), vec2<bool>(true, !global3[_wgslsmith_index_u32(arg_0.a, 14u)])), -(~vec2<i32>(u_input.b, 5097i)) >> (vec2<u32>(u_input.a, arg_0.a) % vec2<u32>(32u)), -(~vec2<i32>(u_input.b, arg_0.b)) ^ ~vec2<i32>(arg_0.b, 10873i)), arg_0, Struct_1(arg_2, -1000f, global3[_wgslsmith_index_u32(0u, 14u)]));
    global0 = firstTrailingBit(~(_wgslsmith_mult_i32(u_input.b, -9409i) ^ arg_0.b)) << (~(~arg_0.a) % 32u);
    return all(vec3<bool>(true, any(vec4<bool>(global3[_wgslsmith_index_u32(~var_1.a.a, 14u)], all(vec3<bool>(true, global3[_wgslsmith_index_u32(29220u, 14u)], true)), global3[_wgslsmith_index_u32(var_1.a.a, 14u)], func_3(vec3<f32>(arg_2.x, 1412f, arg_2.x), vec2<i32>(-6921i, 53909i), Struct_2(77567u, u_input.b), Struct_1(arg_2, arg_2.x, false)).c)), any(!select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 14u)], true, false), vec3<bool>(true, false, global3[_wgslsmith_index_u32(0u, 14u)]), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 23>();
    var var_0 = !vec4<bool>(!(!any(global4[_wgslsmith_index_u32(0u, 23u)])), true, !func_1(Struct_2(u_input.a, u_input.b), vec4<u32>(u_input.c, u_input.d, 16743u, u_input.d), vec2<f32>(-497f, 256f)) & true, global3[_wgslsmith_index_u32(~(~u_input.c >> (~89206u % 32u)), 14u)]);
    var var_1 = any(!(!select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 14u)], true), global4[_wgslsmith_index_u32(~u_input.d, 23u)], var_0.x)));
    let var_2 = func_3(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1958f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)), _wgslsmith_f_op_f32(-281f * _wgslsmith_f_op_f32(max(-1512f, -1604f)))), -vec2<i32>(-8979i, ~u_input.b), Struct_2(u_input.c, max(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(37881i, -3858i), vec2<i32>(u_input.b, 1i)), select(u_input.b, u_input.b, false)), ~1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-527f, 177f), _wgslsmith_f_op_f32(step(266f, -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(875f)))))), global3[_wgslsmith_index_u32(~u_input.d, 14u)])).a;
    var_1 = func_1(Struct_2(countOneBits(33301u >> (1u % 32u)), 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(30494u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, var_2.a), vec2<u32>(0u, 23691u))) % 32u)), select(min(~firstLeadingBit(vec4<u32>(var_2.a, 50522u, 82444u, var_2.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, var_2.a, var_2.a), vec4<u32>(40214u, var_2.a, 1u, 11874u)), ~vec4<u32>(20847u, 25535u, u_input.d, u_input.a), firstTrailingBit(vec4<u32>(1u, u_input.a, 0u, 87638u)))), reverseBits(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(27611u, 13674u, 3681u, u_input.a), vec4<u32>(u_input.d, 0u, var_2.a, 14614u)))), vec4<bool>(true, true, global3[_wgslsmith_index_u32(6218u, 14u)], _wgslsmith_mult_u32(var_2.a, 38972u) < (u_input.d & u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1355f), _wgslsmith_f_op_f32(-409f * -660f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))))));
    global3 = array<bool, 14>();
    global3 = array<bool, 14>();
    global2 = array<Struct_4, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(8983u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 948f, 692f, -1356f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(403f, -246f, -490f, -317f))))), vec4<f32>(_wgslsmith_f_op_f32(-1154f * 148f), 217f, _wgslsmith_f_op_f32(floor(1341f)), _wgslsmith_div_f32(-352f, 541f)), select(select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 14u)], true, global3[_wgslsmith_index_u32(var_2.a, 14u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(21362u, 14u)], var_0.x)), select(vec4<bool>(global3[_wgslsmith_index_u32(39602u, 14u)], true, false, true), vec4<bool>(var_0.x, false, false, true), true), !var_0.x))), var_0.x)));
}

