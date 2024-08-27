struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: f32;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: array<f32, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var var_1 = Struct_1(~vec3<u32>(4294967295u, ~4294967295u, 19069u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1997f * global4[_wgslsmith_index_u32(0u, 9u)]) - 1437f)))));
    global0 = array<Struct_1, 32>();
    let var_2 = vec3<u32>(global3.a.x, ~(_wgslsmith_mult_u32(global3.a.x, 4294967295u) >> (reverseBits(_wgslsmith_dot_vec3_u32(arg_3.a, vec3<u32>(63382u, global3.a.x, 46935u))) % 32u)), _wgslsmith_mod_u32(arg_3.a.x, global3.a.x));
    let var_3 = ~11050u;
    return global2.b;
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~abs(~61288u), 32u)];
    let var_1 = select(!(!vec2<bool>(all(vec3<bool>(true, true, true)), select(true, false, true))), vec2<bool>(select(true, true, any(vec3<bool>(true, true, false))) != true, true), !(-countOneBits(u_input.a) < (i32(-1i) * -36231i)));
    var var_2 = _wgslsmith_sub_vec3_i32(-(~(vec3<i32>(-1i, u_input.a, 26830i) << ((vec3<u32>(4294967295u, var_0.a.x, 4294967295u) & vec3<u32>(var_0.a.x, global2.a.x, 54060u)) % vec3<u32>(32u)))), ~reverseBits(vec3<i32>(u_input.a, 55691i, u_input.a)) & _wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, _wgslsmith_add_i32(-1i, u_input.a), select(-1i, u_input.a, var_1.x)), min(vec3<i32>(u_input.a, 0i, u_input.a), -vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var_2 = firstTrailingBit(countOneBits(vec3<i32>(-10441i, abs(~33503i), u_input.a)));
    return 822f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(global3.a.x, 32u)];
    var var_1 = vec2<f32>(-1652f, 928f);
    let var_2 = !(u_input.a >= -(~(-9551i >> (var_0.a.x % 32u))));
    var var_3 = _wgslsmith_f_op_f32(func_3(1f));
    var var_4 = _wgslsmith_dot_vec2_u32(global3.a.xy, vec2<u32>(global2.a.x ^ global2.a.x, abs(reverseBits(firstLeadingBit(4294967295u)))));
    return 16786u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    global4 = array<f32, 9>();
    global2 = Struct_1(global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(13471u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(0u, 14827u, global3.a.x), 489f), vec3<bool>(true, true, true), ~global2.a, Struct_1(global3.a, global2.b)))))));
    let var_0 = all(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_mult_u32(global3.a.x, ~(~(func_2(Struct_1(vec3<u32>(19942u, global2.a.x, 0u), global3.b), vec4<i32>(6063i, u_input.a, u_input.a, -2147483647i), -1203f) & 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global2.a.x, 51055u, 0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b, global4[_wgslsmith_index_u32(global2.a.x, 9u)], -785f, global2.b)))) + vec4<f32>(-473f, _wgslsmith_f_op_f32(-global2.b), -2523f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(837f - global4[_wgslsmith_index_u32(1u, 9u)]) + global2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-2170f))))), -1380f, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.a.x, global3.a.x), 9u)] * _wgslsmith_f_op_f32(select(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(global2.a.x, global3.a.x, global2.a.x), -1197f), vec3<bool>(var_0, var_0, true), vec3<u32>(4294967295u, 0u, 80181u), global0[_wgslsmith_index_u32(4294967295u, 32u)]))), !all(vec4<bool>(var_0, false, var_0, false))))));
}

