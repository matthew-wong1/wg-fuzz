struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, -1079f, 497f, 596f);

var<private> global1: vec4<u32>;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(1i, 0i, 135i, 12103i), Struct_1(vec3<f32>(1242f, 152f, -1043f), 10884i), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec2<u32>(4294967295u, 1u), 0i);

var<private> global3: array<i32, 28>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec4<i32> {
    var var_0 = ~_wgslsmith_clamp_u32(u_input.b, 21904u, 74111u);
    var var_1 = global2.b.a.x;
    var var_2 = u_input.b;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4.b.a.x, _wgslsmith_f_op_f32(select(444f, _wgslsmith_f_op_f32(233f + _wgslsmith_f_op_f32(-867f + -965f)), arg_0.x != -51461i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-465f))), _wgslsmith_f_op_f32(min(-556f, _wgslsmith_f_op_f32(global4.b.a.x - global4.b.a.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.a.x), global2.b.a.x)) + _wgslsmith_f_op_f32(trunc(1175f))), 369f));
    return vec4<i32>(-global2.b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(global4.d.x, 28u)], global4.e), u_input.a.xy << (abs(min(vec2<u32>(arg_1.x, 51831u), vec2<u32>(global2.d.x, 100442u))) % vec2<u32>(32u))), -19801i, ~_wgslsmith_clamp_i32(abs(select(2147483647i, -2147483647i, false)), arg_0.x, ~arg_0.x));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global2 = Struct_2(_wgslsmith_sub_vec4_i32(func_3(select(~vec4<i32>(global4.b.b, 2147483647i, 0i, -20072i), vec4<i32>(global4.c.x, u_input.a.x, global2.c.x, u_input.d.x), select(arg_0, arg_0, true)), vec4<u32>(global4.d.x, global1.x | global4.d.x, global4.d.x, select(u_input.b, 1u, arg_0.x))), abs(vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, global2.e), 0i, ~20992i, 0i))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(global4.b.a, vec3<f32>(global2.b.a.x, global4.b.a.x, 942f)), _wgslsmith_f_op_vec3_f32(max(global0.wzy, vec3<f32>(global2.b.a.x, global0.x, -1000f)))))), -26982i), u_input.a.wzz, ~vec2<u32>(global1.x, global1.x), -2039i);
    global3 = array<i32, 28>();
    let var_0 = global4.b;
    let var_1 = 418f;
    let var_2 = !select(select(vec4<bool>(arg_0.x, global4.b.a.x >= -391f, any(vec2<bool>(arg_0.x, arg_0.x)), false), vec4<bool>(true, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, all(vec3<bool>(false, arg_0.x, true))), select(select(vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0, arg_0.x), !arg_0, select(arg_0.x, arg_0.x, arg_0.x))), arg_0, true);
    return Struct_2(u_input.d, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 808f), -886f, var_1), var_0.b), ~(-(func_3(u_input.a, vec4<u32>(global1.x, global2.d.x, u_input.b, global4.d.x)).wzw << ((global1.yzz | global1.xwx) % vec3<u32>(32u)))), (~_wgslsmith_sub_vec2_u32(global4.d, global1.yw) ^ ~vec2<u32>(32895u, global2.d.x)) >> (reverseBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(43591u, 45811u), global2.d, vec2<u32>(1u, u_input.b)))) % vec2<u32>(32u)), 0i);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = vec4<f32>(global2.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.b.a.x)) + _wgslsmith_f_op_f32(global2.b.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -158f)))), -2061f, -1527f);
    global3 = array<i32, 28>();
    let var_0 = global4.b;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.b.a.x, global4.b.a.x, global2.b.a.x, 1000f), vec4<f32>(-503f, -625f, -347f, global4.b.a.x))) - vec4<f32>(var_0.a.x, -496f, global2.b.a.x, global2.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2354f, 1367f, global2.b.a.x, 1360f))))));
    global2 = func_2(vec4<bool>(all(vec3<bool>(false, false, true)), !(!arg_0), arg_0, all(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, false)))));
    return Struct_2(~global4.a, global4.b, vec3<i32>(-select(-global3[_wgslsmith_index_u32(global1.x, 28u)], global2.a.x, false), var_0.b, ~_wgslsmith_sub_i32(global2.c.x >> (global4.d.x % 32u), 1i)), ~vec2<u32>(u_input.b, select(29553u, global4.d.x, true)), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true);
    let var_1 = func_1(u_input.d.x >= _wgslsmith_div_i32(0i, firstTrailingBit(_wgslsmith_mult_i32(-52699i, u_input.d.x))));
    let var_2 = Struct_2(u_input.d, func_1(false).b, vec3<i32>(0i, (_wgslsmith_dot_vec2_i32(u_input.d.wx, var_1.a.xw) ^ abs(u_input.a.x)) >> (68226u % 32u), 14146i), ~_wgslsmith_add_vec2_u32(var_0.d, max(var_0.d, global4.d)) >> (vec2<u32>(u_input.b, ~func_1(false).d.x) % vec2<u32>(32u)), _wgslsmith_mult_i32(var_0.b.b, -(~(-51734i))));
    let var_3 = true;
    let var_4 = global4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(ceil(var_1.b.a.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -426f)).b.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.a.x)) + _wgslsmith_f_op_f32(1621f - -551f)), _wgslsmith_f_op_f32(select(-596f, _wgslsmith_div_f32(-1228f, 282f), var_3 & var_3)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.a.x))))));
}

