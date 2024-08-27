struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, vec3<u32>(15527u, 0u, 1u)), Struct_1(true, vec3<u32>(47323u, 4294967295u, 0u)), Struct_1(false, vec3<u32>(4294967295u, 59176u, 0u)), Struct_1(true, vec3<u32>(5817u, 11411u, 1u)), Struct_1(false, vec3<u32>(50080u, 0u, 1u)), Struct_1(true, vec3<u32>(0u, 25022u, 33254u)), Struct_1(false, vec3<u32>(88335u, 1507u, 26012u)), Struct_1(false, vec3<u32>(1u, 0u, 0u)), Struct_1(false, vec3<u32>(44502u, 44942u, 49397u)), Struct_1(false, vec3<u32>(59652u, 1u, 27460u)), Struct_1(true, vec3<u32>(15990u, 1u, 8070u)));

var<private> global1: vec4<f32> = vec4<f32>(1000f, 1000f, -1226f, -923f);

var<private> global2: array<f32, 13> = array<f32, 13>(1113f, 241f, 421f, -1050f, -831f, 717f, -1189f, -986f, 1062f, 595f, -1665f, 951f, -477f);

var<private> global3: array<Struct_3, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_1))));
    global3 = array<Struct_3, 29>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1221f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -119f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(global1.x - arg_1.x))), arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), true)));
    var var_2 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(33115i, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x)) ^ -firstTrailingBit(~vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x));
    var var_3 = arg_0.b.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)), -1299f, -358f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = vec3<f32>(-250f, 211f, global2[_wgslsmith_index_u32(u_input.b.x | 1u, 13u)]);
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 11u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -624f, 655f, -911f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, global1.x, global1.x, 1375f), vec4<f32>(612f, var_0.x, global1.x, global2[_wgslsmith_index_u32(arg_1.x, 13u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(590f, -123f, true)) * global1.x), var_0.x, global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-700f))))))), vec4<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(max(~u_input.b.x, 4294967295u), 13u)], _wgslsmith_f_op_f32(abs(-1000f))), -714f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1021f)), global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 13u)]), -953f)));
    var var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true)), !any(vec2<bool>(true, true))), true);
    global2 = array<f32, 13>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -658f), var_0.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(39889u, u_input.a), 13u)])))));
    return Struct_3(Struct_2(_wgslsmith_add_u32(1u, 4870u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(9438u, 13u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - global2[_wgslsmith_index_u32(arg_1.x, 13u)]) + _wgslsmith_f_op_f32(1516f + -2194f)))), Struct_1(false, vec3<u32>(min(arg_1.x, arg_1.x), abs(555u), ~29411u)), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), Struct_2(arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-342f * var_0.x))))), global0[_wgslsmith_index_u32(~max(~145010u, arg_1.x), 11u)], abs(abs(u_input.b))));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = firstLeadingBit(u_input.c.x);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f))));
    global1 = vec4<f32>(214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 1606f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2027f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3063u, 13u)])))), global2[_wgslsmith_index_u32(u_input.a, 13u)]);
    let var_2 = func_2(-(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.c.x, 6057i, 3851i, u_input.c.x)) << (~(~vec4<u32>(u_input.b.x, 1u, u_input.a, u_input.b.x)) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec2_u32(u_input.b.xw, max(u_input.b.ww, abs(vec2<u32>(arg_0, u_input.a))), vec2<u32>(~u_input.a, 1u)));
    var var_3 = var_2;
    return var_2.a.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 13>();
    var var_0 = select(vec3<bool>(all(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, false)), any(vec4<bool>(global1.x != -207f, u_input.a > u_input.b.x, 0u == u_input.b.x, true)), true), vec3<bool>(1i <= select(13460i, min(u_input.c.x, u_input.c.x), all(vec3<bool>(false, true, true))), false | (-1195f >= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 13u)])), select(func_1(1u), false, true)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), any(vec2<bool>(true, true))), (1000f >= global2[_wgslsmith_index_u32(1u, 13u)]) && true), vec3<bool>(true, true, true), true));
    global3 = array<Struct_3, 29>();
    global2 = array<f32, 13>();
    var var_1 = func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c.x), ~(u_input.c.x << (17922u % 32u)), max(u_input.c.x << (u_input.d % 32u), ~u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-9617i, u_input.c.x, u_input.c.x, 35686i), vec4<i32>(0i, 1i, u_input.c.x, u_input.c.x) >> (vec4<u32>(u_input.b.x, u_input.a, u_input.d, 30363u) % vec4<u32>(32u)))), ~(~vec4<i32>(0i, u_input.c.x, 10020i, u_input.c.x)) & (max(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)) | -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i))), u_input.b.zy).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, ~(~u_input.c.x), 0i >> (1u % 32u), u_input.c.x), select(-vec4<i32>(2147483647i, u_input.c.x, -115928i, u_input.c.x) ^ firstTrailingBit(vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<i32>(16513i, u_input.c.x, -29371i, u_input.c.x)), _wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)), (vec4<i32>(-5725i, -23500i, u_input.c.x, u_input.c.x) >> (u_input.b % vec4<u32>(32u))) << (var_1.d % vec4<u32>(32u))), global1.x < 1087f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, -1000f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.wz), _wgslsmith_f_op_vec2_f32(global1.wz - global1.ww), true)))), vec3<u32>(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -9440i, u_input.c.x, -2409i), vec4<i32>(17069i, -70889i, u_input.c.x, u_input.c.x), vec4<i32>(5908i, 0i, -26455i, u_input.c.x)), abs(vec2<u32>(u_input.a, var_1.a))).a.c.b.x, u_input.b.x, var_1.d.x) << (var_1.d.wyy % vec3<u32>(32u)), var_1.b);
}

