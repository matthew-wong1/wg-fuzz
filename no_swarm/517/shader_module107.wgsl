struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: Struct_3;

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global1 = array<vec3<i32>, 32>();
    var var_0 = global2.a;
    let var_1 = Struct_3(global2.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(global0.zwy)), vec3<u32>(min(var_1.a.a, var_0.a), _wgslsmith_div_u32(global2.a.a, 1u), ~var_1.a.a), Struct_1(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(4294967295u, 8u)], vec2<u32>(var_1.a.a, 0u)), _wgslsmith_mod_u32(var_0.a & 1u, _wgslsmith_mult_u32(var_0.a, var_0.a))), -vec4<i32>(1i, -u_input.a, -global2.a.b.x, var_1.a.b.x), 578f), Struct_1(var_1.a.a, vec4<i32>(-1i) * -vec4<i32>(global2.a.b.x, 16417i, 71707i, var_0.b.x), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1055f, global2.a.c, -2153f) - global0.xxx) - global0.yzy)));
    global1 = array<vec3<i32>, 32>();
    return firstTrailingBit(_wgslsmith_add_u32(32850u, abs(countOneBits(_wgslsmith_add_u32(60342u, global2.a.a)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_3(global2.a);
    let var_1 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(33538u, func_3())), vec2<u32>(global2.a.a, global2.a.a));
    let var_2 = firstLeadingBit(~(-9263i));
    let var_3 = Struct_1(~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, global2.a.a), ~4294967295u)), vec4<i32>(-1i) * -(~var_0.a.b), -251f);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.yzz) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_3.c, arg_1.a.c)), var_0.a.c, _wgslsmith_f_op_f32(f32(-1f) * -486f)), vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.c - 1077f), global0.x, 1f))), abs(min(~(~vec3<u32>(var_1.x, var_0.a.a, 0u)), select(vec3<u32>(arg_1.a.a, var_1.x, arg_1.a.a), _wgslsmith_add_vec3_u32(vec3<u32>(var_3.a, 58185u, 4294967295u), vec3<u32>(var_0.a.a, 16983u, arg_1.a.a)), !global4.x))), arg_1.a, var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.c + -1000f) * _wgslsmith_f_op_f32(ceil(-417f))), _wgslsmith_f_op_f32(-global0.x), var_3.c)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(622f))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1169f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(func_2(!vec2<bool>(global4.x, false), arg_1)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a, arg_2.a, 1u), vec3<u32>(7642u, arg_2.a, 43594u) << (vec3<u32>(arg_1.a.a, 39406u, arg_1.a.a) % vec3<u32>(32u))), ~reverseBits(arg_1.a.a)), _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-26405i, u_input.a, 16349i, u_input.a)), firstTrailingBit(vec4<i32>(0i, 15247i, global2.a.b.x, global2.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(260f - _wgslsmith_f_op_f32(trunc(-1151f))) + _wgslsmith_f_op_f32(-1011f * -1234f))));
    global2 = Struct_3(Struct_1(firstLeadingBit(~var_1.a.a), vec4<i32>(~select(-24301i, -22525i, true), -(~(-32154i)), var_1.a.b.x, arg_1.a.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1680f + -386f) - _wgslsmith_f_op_f32(select(global2.a.c, 1770f, true))))));
    global1 = array<vec3<i32>, 32>();
    var var_2 = Struct_2(arg_0.yxw, vec3<u32>(abs(68613u ^ arg_2.a), _wgslsmith_clamp_u32(~11995u & global2.a.a, func_3(), ~reverseBits(7866u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, 0u, arg_1.a.a), vec4<u32>(global2.a.a, 4423u, arg_1.a.a, arg_2.a)) & abs(1u)), Struct_1(32204u, vec4<i32>(countOneBits(arg_2.b.x) >> (~4294967295u % 32u), ~_wgslsmith_mod_i32(20763i, -1i), global2.a.b.x, -_wgslsmith_clamp_i32(arg_2.b.x, 2147483647i, global2.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f * 360f) - -1235f))), Struct_1(max(~1u, arg_2.a), vec4<i32>(arg_2.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.b.x, arg_2.b.x), var_1.a.b.zz), -var_1.a.b.x), 1i, abs(_wgslsmith_mult_i32(global2.a.b.x, global2.a.b.x))), 988f), vec3<f32>(1921f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(147f - _wgslsmith_div_f32(var_1.a.c, -263f)), _wgslsmith_f_op_f32(func_2(!vec2<bool>(false, global4.x), arg_1))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(!(!vec2<bool>(any(vec4<bool>(global4.x, global4.x, false, true)), !global4.x)), !vec2<bool>(func_1(vec4<f32>(610f, global0.x, -1607f, global0.x), Struct_3(Struct_1(global2.a.a, global2.a.b, global2.a.c)), Struct_1(global2.a.a, vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), 2005f)) | (global4.x && true), true), vec2<bool>(!(!global4.x || !global4.x), false));
    let var_0 = ~_wgslsmith_mod_u32(~(~global2.a.a) >> (global2.a.a % 32u), global2.a.a);
    let var_1 = vec4<bool>(global4.x, ((firstLeadingBit(u_input.a) != max(1i, global2.a.b.x)) || (655f == _wgslsmith_f_op_f32(-global2.a.c))) || !all(select(vec3<bool>(false, global4.x, false), vec3<bool>(global4.x, true, global4.x), true)), global4.x, true);
    global3 = array<vec2<u32>, 8>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 419f, 958f, global2.a.c)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global2.a.c, global0.x, 2020f)))), vec4<f32>(_wgslsmith_f_op_f32(global0.x * global0.x), global2.a.c, global0.x, -2054f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(890f, 1000f, -630f, -1680f) * _wgslsmith_div_vec4_f32(vec4<f32>(-680f, 1399f, -304f, global2.a.c), vec4<f32>(global0.x, -251f, 986f, global2.a.c))), vec4<f32>(-1329f, _wgslsmith_f_op_f32(sign(global0.x)), -1000f, -276f), var_1))));
    global4 = select(!var_1.yz, select(var_1.yx, var_1.xz, vec2<bool>(select(true, global0.x > -1000f, all(var_1.zz)), any(select(vec4<bool>(false, true, global4.x, true), vec4<bool>(global4.x, global4.x, true, global4.x), var_1.x)))), true);
    global3 = array<vec2<u32>, 8>();
    var var_2 = global2.a.c;
    global4 = var_1.zy;
    let x = u_input.a;
    s_output = StorageBuffer(-8752i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, global4.x))) + 344f)), -global1[_wgslsmith_index_u32(abs(~(~var_0)), 32u)], 7705i);
}

