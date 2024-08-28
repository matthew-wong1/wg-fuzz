struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-861f, 604f, -1947f), vec3<f32>(-1000f, -260f, 737f), vec3<f32>(1180f, 585f, -621f), vec3<f32>(-778f, -471f, -489f), vec3<f32>(-1000f, -1759f, 1000f), vec3<f32>(-1096f, -1748f, 417f), vec3<f32>(-1364f, -138f, -317f), vec3<f32>(-749f, -689f, 514f));

var<private> global1: i32;

var<private> global2: array<f32, 13> = array<f32, 13>(1000f, -1000f, -862f, 1299f, 124f, 1000f, -1000f, -471f, 885f, 569f, 781f, -585f, 861f);

var<private> global3: array<vec4<f32>, 23>;

var<private> global4: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = -370f;
    global0 = array<vec3<f32>, 8>();
    let var_1 = Struct_4(Struct_2(~select(-6325i, ~u_input.c, all(vec3<bool>(true, true, arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1259f + -907f) + _wgslsmith_f_op_f32(select(var_0, 1074f, true)))), !vec4<bool>(arg_1.x, !arg_1.x, true, arg_1.x)), arg_1.x & false, !arg_1.x, arg_0 > (arg_0 | ~(69109u | arg_0)));
    var var_2 = Struct_3(var_1.a, Struct_1(any(var_1.a.c)), any(!select(select(vec4<bool>(false, true, var_1.d, true), var_1.a.c, arg_1.x), var_1.a.c, vec4<bool>(var_1.c, false, true, arg_1.x))));
    let var_3 = select(!(!select(var_2.a.c.xyy, vec3<bool>(true, arg_1.x, var_1.a.c.x), var_1.a.c.zxw)), select(!vec3<bool>(!var_1.b, all(arg_1), !var_1.b), vec3<bool>(var_2.b.a, true, false), var_1.a.c.ywy), var_1.b);
    return firstTrailingBit(min(vec2<u32>(arg_0, arg_0), ~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(9265u, 110842u)))));
}

fn func_2() -> vec2<u32> {
    global3 = array<vec4<f32>, 23>();
    global0 = array<vec3<f32>, 8>();
    var var_0 = Struct_1(!(!any(vec4<bool>(true, false, true, false))));
    global1 = ~u_input.a;
    global4 = true;
    return func_3(31593u, select(vec2<bool>(true, var_0.a), !(!vec2<bool>(false, var_0.a)), vec2<bool>(any(select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, true, true), false)), _wgslsmith_div_i32(u_input.a, u_input.b.x) <= ~0i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> i32 {
    let var_0 = ~func_2().x;
    global2 = array<f32, 13>();
    global4 = !(!(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0) | (arg_0.x | arg_0.x), 13u)] == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4562u, 13u)] + 1000f), _wgslsmith_f_op_f32(-884f + global2[_wgslsmith_index_u32(arg_0.x, 13u)])))));
    global1 = abs(max(-reverseBits(1i), _wgslsmith_add_i32(2147483647i & arg_1.x, u_input.a))) ^ -23777i;
    let var_1 = Struct_3(Struct_2(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2239f)) - -1035f), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, select(true, true, false), true, true), true)), Struct_1(!(true == any(vec4<bool>(false, true, true, false)))), all(select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), vec3<bool>(true, 1u < var_0, true), true)));
    return u_input.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global2 = array<f32, 13>();
    global0 = array<vec3<f32>, 8>();
    var var_0 = u_input.c;
    global4 = true;
    var var_1 = func_4(~(vec2<u32>(min(1u, 4294967295u), _wgslsmith_mod_u32(0u, 1u)) & func_2()), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, 2147483647i, -41668i, 1i), abs(vec4<i32>(arg_0.x, -42812i, u_input.a, arg_0.x))), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -55442i, arg_0.x, 2147483647i), vec4<i32>(1i, u_input.c, u_input.c, u_input.b.x)) | abs(vec4<i32>(2147483647i, u_input.a, 1i, 67238i)))));
    return Struct_2(max(2147483647i, arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1608f), vec4<bool>(true, 291f != _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~42361u, 13u)])), select(true, all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), all(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(vec2<i32>(-1i, -2147483647i)), false, !any(select(vec3<bool>(true, true, true), func_1(vec2<i32>(2147483647i, 2147483647i)).c.yzw, vec3<bool>(false, true, true))), false);
    global3 = array<vec4<f32>, 23>();
    global1 = countOneBits(reverseBits(_wgslsmith_sub_i32(-9308i, 1961i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(u_input.b).b, var_0.a.b, var_0.a.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 13u)])) * global3[_wgslsmith_index_u32(1u, 23u)]);
    var var_2 = vec4<u32>(_wgslsmith_add_u32(~0u, 0u), _wgslsmith_sub_u32(22904u, select(1u, 43130u, any(select(vec4<bool>(var_0.b, true, true, true), var_0.a.c, vec4<bool>(var_0.a.c.x, var_0.c, var_0.a.c.x, false))))), abs(min(25345u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(43018u, 25423u), vec2<u32>(0u, 4294967295u)), _wgslsmith_mult_u32(13779u, 1u)))), ~(~1u));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -808f);
    global3 = array<vec4<f32>, 23>();
    global4 = var_0.c;
    let var_4 = Struct_4(func_1(~(-u_input.b)), false, !var_0.b, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(var_1.zyw)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xyw + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(0u, 13u)], 1173f, -1000f))) + _wgslsmith_div_vec3_f32(var_1.zzw, vec3<f32>(-280f, var_1.x, -682f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_2.x, 13u)], var_4.a.b, -1266f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(var_1.x + var_1.x)))));
}

