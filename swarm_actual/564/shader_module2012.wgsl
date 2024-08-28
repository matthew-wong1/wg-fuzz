struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, select(u_input.c.x, u_input.c.x, arg_0.x), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(13978u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), ~(vec4<u32>(3437u, 30591u, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, 7832u, u_input.c.x, 7552u) % vec4<u32>(32u))), countOneBits(u_input.c)), vec4<u32>(~1u, u_input.c.x, ~0u, u_input.c.x) << (vec4<u32>(41139u ^ u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.ww), _wgslsmith_mod_u32(0u, u_input.c.x), 1u) % vec4<u32>(32u)));
    global1 = false;
    return 4294967295u & var_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> vec4<i32> {
    var var_0 = u_input.c.x << (func_3(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false))), true)) % 32u);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, _wgslsmith_div_f32(945f, _wgslsmith_f_op_f32(-1137f - arg_0.x)))), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0.yyz, vec3<f32>(arg_0.x, -1000f, -798f))) - arg_0.zww))), true, !vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    global1 = true;
    let var_2 = false;
    var var_3 = arg_1;
    return max(select(~(vec4<i32>(73533i, 53076i, -53130i, arg_1) | vec4<i32>(3245i, 0i, 1i, -35068i)) >> (vec4<u32>(_wgslsmith_div_u32(49209u, u_input.c.x), u_input.c.x ^ 13505u, select(0u, u_input.c.x, var_2), ~4294967295u) % vec4<u32>(32u)), ~(vec4<i32>(u_input.a, 10185i, -836i, 1i) ^ max(vec4<i32>(arg_1, -1i, 2147483647i, arg_1), vec4<i32>(20025i, 32973i, -1i, arg_1))), !(true != select(var_1.b.x, true, false))), min(~((vec4<i32>(-2147483647i, -8776i, -1i, u_input.d.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) >> (vec4<u32>(65941u, u_input.c.x, u_input.c.x, 64590u) % vec4<u32>(32u))), ~reverseBits(firstTrailingBit(vec4<i32>(u_input.a, 15119i, arg_1, 30692i)))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = arg_0;
    global0 = array<Struct_1, 32>();
    let var_0 = !select(select(select(!vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), select(vec2<bool>(true, true), vec2<bool>(false, arg_0), vec2<bool>(false, true))), select(vec2<bool>(false, false), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(false, arg_0)), true), vec2<bool>(arg_0 | false, false)), vec2<bool>(!arg_0, true), !(!vec2<bool>(false, arg_0)));
    global1 = arg_0 | (u_input.c.x < ~(~_wgslsmith_mod_u32(0u, 1u)));
    var var_1 = _wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.x, arg_2.x, -6583i) & abs(arg_2.xwy), vec3<i32>(min(u_input.d.x, u_input.a), _wgslsmith_mod_i32(arg_2.x, 8648i), ~(-8266i))), arg_2.xwz);
    return Struct_2(global0[_wgslsmith_index_u32(~4294967295u, 32u)]);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-435f)) - _wgslsmith_f_op_f32(round(-1000f))), Struct_2(Struct_1(arg_1.d.b.zz, _wgslsmith_f_op_vec3_f32(round(arg_1.d.b)), arg_1.e.a.c, arg_1.e.a.d)));
    let var_1 = arg_1;
    let var_2 = func_4(false && !(!var_1.e.a.c), arg_1.e.a.b, ~func_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.c.b.x, arg_1.e.a.a.x, -762f, arg_1.b.x))), 1i));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    return _wgslsmith_sub_i32(u_input.a, ~(firstTrailingBit(-29945i) << (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec2<bool>(any(vec3<bool>(true, true, true)), false));
    let var_1 = -min(vec3<i32>(func_1(~u_input.c, Struct_3(-1038f, vec2<f32>(477f, -1000f), Struct_1(vec2<f32>(-617f, 2300f), vec3<f32>(-486f, 1000f, 1000f), true, vec2<bool>(var_0, false)), global0[_wgslsmith_index_u32(34884u, 32u)], Struct_2(global0[_wgslsmith_index_u32(u_input.c.x, 32u)]))), i32(-1i) * -1i, firstLeadingBit(countOneBits(0i))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(536f, 698f, 1515f, 964f))), vec4<f32>(-846f, -240f, 679f, -396f)), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, u_input.a, 0i)), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.b)))).xyz);
    global1 = select(var_0, select(var_0, _wgslsmith_f_op_f32(step(1437f, -664f)) <= -2168f, true), !((_wgslsmith_f_op_f32(sign(649f)) == _wgslsmith_f_op_f32(-1142f - -1000f)) && false));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(select(2147483647i, var_1.x, true), 41087i, i32(-1i) * -14139i, -65995i) & reverseBits(vec4<i32>(u_input.b, u_input.b, -26476i, var_1.x) ^ vec4<i32>(var_1.x, 2147483647i, u_input.d.x, var_1.x))), vec2<u32>(50705u, ~34827u));
}

