struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25>;

var<private> global1: Struct_4;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), 23068i));

var<private> global3: array<f32, 3>;

var<private> global4: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec3<bool> {
    global4 = Struct_1(global2.a.a, (global2.a.b & global4.b) & (i32(-1i) * -10289i));
    global0 = array<vec4<i32>, 25>();
    var var_0 = global1.a.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.yy)));
    var var_2 = any(vec3<bool>(true, any(!(!vec4<bool>(global4.a.x, var_0.x, false, true))), !all(vec3<bool>(global2.a.a.x, global2.a.a.x, false))));
    return select(select(global2.a.a, vec3<bool>(global1.c.x, true, global4.a.x), select(vec3<bool>(0u < global1.b.b.x, true, global1.a.a.x), vec3<bool>(all(global1.c.yzz), !var_0.x, !global4.a.x), select(vec3<bool>(global4.a.x, false, true), global1.a.a, select(vec3<bool>(true, global4.a.x, global2.a.a.x), vec3<bool>(false, global4.a.x, true), false)))), !global1.c.zzz, global4.a.x == any(vec2<bool>(all(global2.a.a.zx), any(vec3<bool>(true, true, false)))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(Struct_1(select(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(893f, -860f, -458f, arg_1.x) + vec4<f32>(-1375f, global3[_wgslsmith_index_u32(18474u, 3u)], 423f, -1090f)), vec3<i32>(0i, -1i, -38117i), -global1.e), vec3<bool>(all(vec3<bool>(true, false, global2.a.a.x)), true, true), any(func_3(vec4<f32>(arg_1.x, global3[_wgslsmith_index_u32(1u, 3u)], arg_1.x, global1.b.a), global1.e.xzw, global0[_wgslsmith_index_u32(global1.d, 25u)]).xx)), -(~_wgslsmith_div_i32(global1.a.b, global4.b))));
    let var_1 = Struct_1(!global1.c.wwz, 18958i);
    var var_2 = global1.a;
    global2 = Struct_2(var_1);
    global2 = var_0;
    return var_0.a.b;
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_clamp_i32(func_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3[_wgslsmith_index_u32(global1.b.b.x, 3u)], 773f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-692f, -224f) + vec2<f32>(global1.b.a, -672f)))))), global2.a.b >> (global1.d % 32u), func_2(global1.c.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 920f) + vec2<f32>(-1319f, -831f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(7889u, 3u)], -466f) * vec2<f32>(global3[_wgslsmith_index_u32(1u, 3u)], global1.b.a)))));
    global4 = global2.a;
    global2 = Struct_2(Struct_1(!global4.a, -(~(2147483647i << (global1.d % 32u)))));
    var_0 = global2.a.b;
    var var_1 = 2147483647i;
    return Struct_4(Struct_1(select(select(!global2.a.a, select(global4.a, global4.a, global4.a.x), func_3(vec4<f32>(global3[_wgslsmith_index_u32(0u, 3u)], global1.b.a, global3[_wgslsmith_index_u32(global1.b.b.x, 3u)], -1515f), global1.e.xxw, vec4<i32>(global2.a.b, 2147483647i, global1.a.b, 40685i))), global1.a.a, global1.c.x), min(abs(_wgslsmith_sub_i32(u_input.a.x, 0i)), global2.a.b)), global1.b, global1.c, 4819u, ~(~select(vec4<i32>(global4.b, -2147483647i, 1i, 2147483647i), vec4<i32>(arg_0, global1.b.c, global4.b, arg_0), select(vec4<bool>(true, true, global4.a.x, true), vec4<bool>(false, global4.a.x, true, true), vec4<bool>(true, false, global2.a.a.x, global4.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global1.a;
    var var_0 = global2.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.b.b.x, 3u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1173f - global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.b.b.x, global1.b.b.x), 3u)]) * -930f), true || (_wgslsmith_sub_u32(4294967295u, global1.d) <= 1u))), vec4<u32>(global1.b.b.x, 22741u, global1.d, global1.b.b.x), _wgslsmith_mult_i32(var_0.b, firstTrailingBit(var_0.b)));
    global0 = array<vec4<i32>, 25>();
    global1 = func_1(abs(var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global4.b).b.b.x, vec3<i32>(-reverseBits(54765i), _wgslsmith_mult_i32(var_1.c, abs(var_0.b)), reverseBits(global1.a.b)), global1.b.b.x, vec3<i32>(global1.b.c, _wgslsmith_add_i32(max(31697i, -2147483647i), i32(-1i) * -var_1.c), var_0.b));
}

