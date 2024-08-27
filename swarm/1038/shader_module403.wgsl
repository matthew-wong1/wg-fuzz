struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<f32>(-461f, -1650f), vec3<bool>(true, false, true), vec2<f32>(2763f, -1575f), 751f);

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, 7683i);

var<private> global3: vec4<i32>;

var<private> global4: array<vec2<f32>, 16>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c) * _wgslsmith_f_op_vec2_f32(-global4[_wgslsmith_index_u32(arg_0.x, 16u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global0.a))));
}

fn func_3() -> vec4<u32> {
    global3 = _wgslsmith_mult_vec4_i32(~select(_wgslsmith_mult_vec4_i32(-vec4<i32>(27189i, 2147483647i, u_input.b, global2.x), select(vec4<i32>(1i, global2.x, global2.x, 0i), vec4<i32>(2147483647i, global2.x, 1i, -1i), vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x))), vec4<i32>(59617i, 15733i, _wgslsmith_mult_i32(global3.x, 18634i), countOneBits(2147483647i)), global0.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-9312i, -10846i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b, global3.x), -2147483647i), 0i), (vec4<i32>(1i, global2.x, global3.x, 45630i) | vec4<i32>(global2.x, -1i, global3.x, -1i)) & vec4<i32>(-global3.x, u_input.b, global3.x, u_input.b)));
    return ~(~vec4<u32>(~(~15433u), 1u, 18247u, u_input.a));
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> u32 {
    let var_0 = global0.b;
    var var_1 = func_3();
    let var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2866f) - global0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -413f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(trunc(1291f)))))));
    var var_3 = _wgslsmith_add_vec3_i32(-global3.zzx, global3.yxz);
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.d))))), 0i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(~vec4<u32>(1u, var_1.x, 0u, var_1.x), !arg_0.b, _wgslsmith_f_op_f32(var_2.x + var_2.x))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))));
    return ~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_1.zyx, vec3<u32>(var_1.x, 23589u, 19431u))), var_1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_vec2_f32(func_1(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 16109u, u_input.a) << (vec4<u32>(u_input.a, 4294967295u, 65829u, 7116u) % vec4<u32>(32u)), vec4<u32>(28207u, u_input.a, 92140u, 1u), vec4<u32>(0u, u_input.a, 1u, u_input.a))), !global0.b, _wgslsmith_f_op_f32(f32(-1f) * -700f))), vec3<bool>(firstLeadingBit(16792u) >= ~func_2(Struct_5(global0.c, vec3<bool>(false, true, false), vec2<f32>(global0.c.x, global0.d), global0.a.x), -1071f), global0.b.x, global0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(global0.a.x, global0.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(max(-722f, 114f)), _wgslsmith_f_op_f32(sign(global0.c.x))))), global0.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(242f, -443f, global0.a.x) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1469f, global0.d, 499f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(131f, -1116f, -1086f) + vec3<f32>(var_0.c.x, 1000f, var_0.a.x))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.c.x, 243f, -1610f), vec3<f32>(275f, var_0.c.x, -1651f)))))))));
    global1 = array<vec2<bool>, 28>();
    let var_2 = var_0.c.x;
    var var_3 = global3.wzy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(1u, 16u)] - _wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(223f, var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(round(-1901f)), var_1.x))), reverseBits(global3.xx), vec4<u32>(u_input.a, u_input.a, ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(20529u, u_input.a)), u_input.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, 292f, -1092f, -414f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(463f, var_2, -525f, var_0.a.x) + vec4<f32>(-916f, 348f, -942f, 1228f))))))));
}

