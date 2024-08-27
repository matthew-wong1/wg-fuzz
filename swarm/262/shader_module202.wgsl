struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<f32>(-428f, 1030f), vec3<f32>(1400f, -1379f, -1374f)), Struct_1(vec2<f32>(-1103f, 861f), vec3<f32>(1000f, -1000f, -1648f)), Struct_1(vec2<f32>(-206f, 1369f), vec3<f32>(-109f, -1000f, -619f)), Struct_1(vec2<f32>(-192f, -945f), vec3<f32>(-782f, -151f, -319f)), Struct_1(vec2<f32>(-1900f, -110f), vec3<f32>(319f, -1350f, -1000f)), Struct_1(vec2<f32>(937f, -242f), vec3<f32>(652f, -514f, 940f)));

var<private> global1: vec3<bool>;

var<private> global2: f32;

var<private> global3: array<vec2<u32>, 1>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_1 {
    global3 = array<vec2<u32>, 1>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -368f, 1972f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-201f, 168f, 902f) + vec3<f32>(-887f, -631f, -1129f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1043f, -1006f, 835f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1300f, 898f, -427f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(307f, -1742f, -537f) * vec3<f32>(-136f, 1846f, 711f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(517f, 777f, 1323f) + vec3<f32>(-1563f, -235f, -2236f)))));
    let var_1 = global0[_wgslsmith_index_u32(max(100908u, ~_wgslsmith_mult_u32(u_input.d << (24730u % 32u), u_input.b.x & ~u_input.d)), 6u)];
    global0 = array<Struct_1, 6>();
    let var_2 = all(!(!(!vec4<bool>(false, false, global1.x, true))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_1.b.x), -1119f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 581f, _wgslsmith_f_op_f32(f32(-1f) * -2034f)));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(sign(871f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.b.x, -1858f) + var_0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(352f, arg_0.a.x, arg_0.a.x))), var_0.b, true)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b.x))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-673f)), _wgslsmith_f_op_f32(select(-546f, arg_0.a.x, false))), var_1.a.x, false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1766f * -1762f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, 260f)) - -823f))));
    let var_2 = !all(select(select(select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(false, false, true, true), vec4<bool>(false, true, global1.x, false)), vec4<bool>(global1.x, global1.x, global1.x, false), !vec4<bool>(true, global1.x, global1.x, global1.x)), select(select(vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, global1.x, false, false), global1.x), !vec4<bool>(global1.x, false, true, global1.x), all(vec3<bool>(false, false, global1.x))), any(!global1.zz)));
    global1 = vec3<bool>(global1.x, -2147483647i <= (~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 42521i, 41283i, -1i), vec4<i32>(-9949i, 0i, 0i, -2130i)) ^ 2147483647i), false);
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1838f))));
    global0 = array<Struct_1, 6>();
    let var_0 = func_3(func_2());
    global4 = array<Struct_1, 22>();
    global3 = array<vec2<u32>, 1>();
    return 479f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -1491f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(3204f, _wgslsmith_f_op_f32(1105f - -1112f)))))));
    var var_0 = _wgslsmith_add_i32(-2147483647i, 1i);
    global2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.c.x, vec3<i32>(-2147483647i, -2147483647i, -2147483647i))) - 1271f)), !global1.x & true)), 436f));
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, _wgslsmith_div_i32(-2147483647i, 6495i >> (u_input.a % 32u))), vec2<i32>(max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-27243i, -5422i, -61826i, 1i), vec4<i32>(10038i, -2147483647i, -1i, 36846i))), 1i)), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, i32(-1i) * -7909i), max(vec2<i32>(-2147483647i, 24972i), countOneBits(vec2<i32>(-54423i, -2147483647i))))));
    global3 = array<vec2<u32>, 1>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(676f, -1270f)), vec2<f32>(-818f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1850f, 563f, -1887f), vec3<f32>(-166f, -1126f, 789f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-667f, -1665f, 1723f))), vec3<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -926f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~15885i) << (_wgslsmith_sub_u32(18277u, ~_wgslsmith_mod_u32(u_input.d, u_input.d)) % 32u), var_1.b.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(0i, -1i, 1i), firstTrailingBit(max(_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i), 1i))), -_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-24641i, -1i), ~vec2<i32>(-2147483647i, -2147483647i)) >> (((vec2<u32>(1u, u_input.d) ^ ~global3[_wgslsmith_index_u32(1u, 1u)]) | u_input.c.ww) % vec2<u32>(32u)), countOneBits(~countOneBits(4294967295u)));
}

