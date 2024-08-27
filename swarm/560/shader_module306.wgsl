struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 19191u;

var<private> global1: array<i32, 21> = array<i32, 21>(59667i, 2147483647i, 0i, 18419i, 16872i, 448i, 1i, 2147483647i, 2147483647i, -27716i, 0i, 0i, 30280i, -21004i, 3013i, -16543i, -1i, 68716i, i32(-2147483648), 2147483647i, 0i);

var<private> global2: f32 = 813f;

var<private> global3: vec4<u32>;

var<private> global4: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_3 {
    global2 = global4.a.x;
    global2 = -2110f;
    let var_0 = ~global1[_wgslsmith_index_u32(global3.x, 21u)];
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global4.a.x, -1300f) * vec3<f32>(906f, global4.a.x, -748f)) * vec3<f32>(global4.a.x, global4.a.x, 359f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global4.a.zzz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, -219f, global4.a.x))))));
    global2 = _wgslsmith_f_op_f32(trunc(global4.d.x));
    return var_1;
}

fn func_3() -> vec2<bool> {
    global1 = array<i32, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global4.a)))), global4.b != true, vec3<u32>(~0u, ~(~u_input.a), u_input.a), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1967f, -664f, 1044f, 1000f), global4.a))))))), global4.c);
    var var_1 = global4.b | (u_input.b.x >= (global1[_wgslsmith_index_u32(~global3.x, 21u)] << (~(~0u) % 32u)));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(floor(global4.d.x))))) - global4.d.x);
    return select(vec2<bool>((firstLeadingBit(u_input.d.x) & -global1[_wgslsmith_index_u32(global4.e.x, 21u)]) > 0i, all(vec4<bool>(all(vec3<bool>(false, false, global4.b)), var_0.a.x != -1000f, true, !var_0.b))), select(!select(select(vec2<bool>(true, false), vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b)), !vec2<bool>(global4.b, var_0.b), select(vec2<bool>(false, false), vec2<bool>(global4.b, var_0.b), vec2<bool>(global4.b, var_0.b))), vec2<bool>(true, select(!var_0.b, any(vec3<bool>(true, global4.b, true)), true)), vec2<bool>(all(!vec4<bool>(global4.b, global4.b, global4.b, var_0.b)), var_0.b)), !(global3.x >= _wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, global4.e.x, 5937u), vec4<u32>(global4.c.x, 26003u, global3.x, u_input.a)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = func_3();
    let var_1 = arg_0;
    let var_2 = ~arg_3;
    var var_3 = Struct_1(global4.a, !(abs(u_input.a) > firstTrailingBit(1u)) & (u_input.b.x >= _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_2, 21u)] ^ 17093i, -28395i)), ~vec3<u32>(select(var_2, _wgslsmith_add_u32(var_2, u_input.a), false), _wgslsmith_sub_u32(26145u, global4.e.x), 42908u), vec4<f32>(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(-851f))) - -960f), func_1(arg_1.x, arg_1).a.x, _wgslsmith_f_op_f32(sign(arg_0.a.x))), global3.zyx);
    var var_4 = func_1(select(true, !var_0.x, select(all(vec3<bool>(true, true, arg_1.x)), var_0.x, var_3.b) && global4.b), func_3());
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-121f, -1377f)) - global4.d.x), var_4.a.x, _wgslsmith_f_op_f32(max(-265f, var_4.a.x)))), !global4.b, _wgslsmith_mult_vec3_u32(var_3.c, ~var_3.e) | vec3<u32>(~var_2, 0u, var_3.e.x), global4.d, firstTrailingBit(var_3.e | _wgslsmith_add_vec3_u32(var_3.e, var_3.c)) & global3.xyw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(func_1(false, select(select(vec2<bool>(true, true), !vec2<bool>(global4.b, true), true), vec2<bool>(true, true), vec2<bool>(global4.b, false))), vec2<bool>(true, true), abs(-1i), ~global4.e.x);
    let var_1 = 4294967295u;
    let var_2 = Struct_2(true);
    global2 = global4.a.x;
    let var_3 = select(countOneBits(vec4<i32>(-u_input.d.x, 2147483647i, -81597i, 19482i)), _wgslsmith_div_vec4_i32(abs(-firstTrailingBit(vec4<i32>(0i, 1i, u_input.d.x, u_input.c))), vec4<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b.x, -2147483647i), u_input.c << (33927u % 32u)), u_input.d.x, countOneBits(global1[_wgslsmith_index_u32(global3.x, 21u)]))), true);
    let var_4 = vec3<u32>(_wgslsmith_div_u32(0u, ~(global4.c.x << (abs(4294967295u) % 32u))), _wgslsmith_add_u32(reverseBits(1u), firstTrailingBit(countOneBits(1u))), ~abs(global3.x));
    var var_5 = ~var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), vec3<u32>(1u, var_0.c.x, u_input.a), _wgslsmith_f_op_f32(step(-604f, _wgslsmith_f_op_f32(func_2(Struct_3(global4.a.zxz), vec2<bool>(false, false), var_5.x, global4.e.x >> (var_4.x % 32u)).a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f - global4.d.x))))));
}

