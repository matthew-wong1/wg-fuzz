struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: Struct_3,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(486f, 595f);

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: array<Struct_2, 30>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> f32 {
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(0u, 30u)]) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(global1.a, 30u)]))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(243f)), -109f))))));
    global1 = Struct_2(reverseBits(1u), global1.b);
    var var_0 = all(select(global1.b.a.zyy, global1.b.b.xyy, any(!global1.b.b.wzz)));
    return _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -264f)));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> f32 {
    let var_0 = !global1.b.b.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))) + _wgslsmith_f_op_f32(func_3(any(select(vec4<bool>(arg_0.c.b.b.a.x, false, true, var_0), global1.b.a, vec4<bool>(false, false, var_0, false))), -abs(vec4<i32>(0i, arg_0.b.x, 2147483647i, arg_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-436f - global0.x), _wgslsmith_div_f32(1000f, -282f), arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -911f)), !global1.b.b.x))));
    global1 = Struct_2(global1.a, Struct_1(select(global1.b.b, !arg_0.c.b.b.a, arg_0.c.b.b.a), select(vec4<bool>(arg_0.a || var_0, true, true, any(vec3<bool>(false, false, var_0))), !select(arg_0.c.b.b.b, global1.b.a, vec4<bool>(arg_0.c.b.b.b.x, arg_0.c.b.b.b.x, arg_0.a, true)), all(vec4<bool>(true, false, false, true)))));
    let var_2 = Struct_4(arg_1);
    let var_3 = -vec3<i32>(arg_0.b.x, u_input.b, _wgslsmith_mod_i32(-(~2147483647i), arg_0.b.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.x)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = 35845i;
    let var_1 = arg_1;
    global0 = arg_0.zw;
    global1 = global3[_wgslsmith_index_u32(~(~global1.a), 30u)];
    global1 = global3[_wgslsmith_index_u32(1u, 30u)];
    return global3[_wgslsmith_index_u32(abs(0u), 30u)];
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    global3 = array<Struct_2, 30>();
    let var_0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(max(1464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1542f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(global0.x))) * 1399f) - _wgslsmith_f_op_f32(trunc(global0.x))));
    global3 = array<Struct_2, 30>();
    global1 = func_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1330f + _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(min(-139f, _wgslsmith_f_op_f32(func_2(Struct_5(false, vec2<i32>(-2147483647i, -22913i), Struct_3(true, Struct_2(arg_2.a, global1.b), vec2<u32>(global1.a, global1.a)), vec3<u32>(arg_2.a, 40010u, arg_2.a)), 43968u))))), _wgslsmith_f_op_f32(-1328f * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1783f)) - -1458f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 489f) * var_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a, u_input.b), vec4<i32>(-39367i, 3293i, 2147483647i, u_input.b)), vec4<i32>(1i, -71021i, u_input.a, 69816i) | vec4<i32>(u_input.b, -1i, -49996i, 63166i)), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 27191i, u_input.a, u_input.a), vec4<i32>(17848i, u_input.a, 17757i, u_input.b)))), -firstTrailingBit(reverseBits(vec4<i32>(-1i, u_input.b, 0i, u_input.a)))), Struct_4(_wgslsmith_add_u32(max(23670u, global1.a), ~arg_2.a)));
    let var_1 = 1i;
    return StorageBuffer(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(all(global1.b.b.zz), !global1.b.a.x, global3[_wgslsmith_index_u32(0u, 30u)]);
}

