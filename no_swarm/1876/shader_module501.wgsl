struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

var<private> global1: Struct_2;

var<private> global2: vec2<i32>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-352f, 1595f, -116f), -1369f, vec2<i32>(-10261i, 2147483647i), vec3<u32>(22798u, 1u, 0u));

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec3<u32> {
    var var_0 = select(vec2<bool>(global4.x, true), vec2<bool>(global4.x, !any(select(vec2<bool>(false, global4.x), vec2<bool>(true, global4.x), global4.x))), !(!global4.zx));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(0u) & ~countOneBits(global1.d.x), arg_1, _wgslsmith_mod_u32(1u & arg_1, ~global1.d.x) ^ max(_wgslsmith_mod_u32(13135u, arg_1), 2285u), 8590u), ~(reverseBits(vec4<u32>(arg_1, 28862u, 4294967295u, 9449u)) ^ ~min(vec4<u32>(global3.d.x, global1.d.x, global1.d.x, arg_1), vec4<u32>(arg_1, 12679u, global3.d.x, 0u))), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1, global3.d.x, global3.d.x, 23063u)), ~vec4<u32>(arg_1, 1u, arg_1, 0u)));
    global0 = array<vec4<i32>, 8>();
    var var_2 = Struct_1(abs(reverseBits(u_input.a)));
    let var_3 = vec3<i32>(~20536i, i32(-1i) * -18242i, 10273i);
    return vec3<u32>(~_wgslsmith_add_u32(reverseBits(0u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, global3.d.x, var_1.x), vec3<u32>(global1.d.x, 0u, var_1.x)), ~global3.d.x)), 1u, arg_1);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = ~global3.d.zy;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var_1 = arg_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) - _wgslsmith_f_op_f32(round(-976f)))), !all(vec3<bool>(false, global4.x, global4.x)) && (global4.x & select(global4.x, true, global4.x)))), 1707f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(arg_0 * 1474f), arg_0, arg_0);
    return Struct_2(global1.a, arg_0, global1.c, _wgslsmith_mult_vec3_u32(func_3(global3.a, global3.d.x), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, global3.d.x, 0u), vec3<u32>(92481u, global3.d.x, var_0.x)), ~select(vec3<u32>(5705u, global3.d.x, 34378u), vec3<u32>(var_0.x, 34376u, global3.d.x), true))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f)), 275f, -1691f))));
    var var_1 = Struct_1(29613i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-global1.a.zz);
    let var_3 = Struct_1(-1i);
    global4 = vec3<bool>(true, true, true);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    global2 = ~vec2<i32>(arg_0.a, _wgslsmith_sub_i32(u_input.a, -(arg_1 | 0i)));
    let var_0 = global1.a;
    global0 = array<vec4<i32>, 8>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1170f, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.b)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) - var_0.x), -189f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(ceil(var_0.x))))))), select(_wgslsmith_sub_vec2_i32(global1.c, global3.c), ~vec2<i32>(-arg_1, -1i), global4.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(global3.d.x | 18360u, 1u, 8210u | global1.d.x), global1.d));
    global3 = func_4(func_2(-799f, arg_0, 249f <= var_1.b), global4.x, Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.x, global2.x), global1.c, vec2<i32>(25679i, 34210i)), -global3.c), ~var_1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(abs(-517f))), global1.b))));
    return !(func_4(Struct_2(global1.a, _wgslsmith_f_op_f32(1311f - -1012f), abs(vec2<i32>(-2147483647i, u_input.a)), vec3<u32>(global1.d.x, 42965u, 9293u) << (global3.d % vec3<u32>(32u))), !(global4.x && global4.x), arg_0, func_4(Struct_2(vec3<f32>(var_1.b, global1.a.x, global3.a.x), var_0.x, vec2<i32>(arg_1, arg_1), var_1.d), true, Struct_1(2147483647i), -534f).a.x).c.x >= abs(abs(_wgslsmith_clamp_i32(global3.c.x, u_input.a, 66628i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(global3.d.x < global3.d.x, global1.a.x != -2101f, true, !any(global4.zx));
    let var_1 = -35576i;
    var var_2 = firstLeadingBit(firstTrailingBit(global1.d.x) ^ ~(~4294967295u));
    var_2 = 4294967295u;
    global4 = select(select(!vec3<bool>(global3.b <= global1.a.x, !global4.x, var_0.x), vec3<bool>(true, true, true), var_0.wyx), !select(vec3<bool>(func_1(Struct_1(0i), var_1), true, all(var_0)), vec3<bool>(global4.x, true, true), false), global4.x);
    var var_3 = min(vec4<i32>(24164i, _wgslsmith_add_i32(var_1, var_1 << (24904u % 32u)) ^ var_1, min(_wgslsmith_mod_i32(1i, u_input.a), countOneBits(2522i)) >> (~4294967295u % 32u), (1i >> (global1.d.x % 32u)) << (global3.d.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.c.x, -global3.c.x & _wgslsmith_clamp_i32(-2147483647i, global3.c.x, -1i), var_1, -5787i), _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(1946u, 8u)], global0[_wgslsmith_index_u32(32043u, 8u)]) & select(vec4<i32>(0i, global1.c.x, var_1, global3.c.x), global0[_wgslsmith_index_u32(global1.d.x, 8u)], false)), -select(min(global0[_wgslsmith_index_u32(global1.d.x, 8u)], global0[_wgslsmith_index_u32(global1.d.x, 8u)]), vec4<i32>(10108i, -30320i, 1i, global2.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.x, global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b)) * global1.a.x), -vec2<i32>(global1.c.x, 2147483647i));
}

