struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<f32>(-966f, -933f, 1000f));

var<private> global1: Struct_1 = Struct_1(vec2<i32>(14192i, 0i), vec3<f32>(-133f, -117f, 779f));

var<private> global2: vec4<u32> = vec4<u32>(1u, 70641u, 4294967295u, 1699u);

var<private> global3: Struct_1 = Struct_1(vec2<i32>(-27929i, -49510i), vec3<f32>(220f, -344f, 227f));

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    var var_0 = arg_0;
    return firstTrailingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(-vec3<i32>(-23236i, global0.a.x, global0.a.x)) | max(vec3<i32>(global0.a.x, 2147483647i, -39822i), vec3<i32>(0i, -1i, global1.a.x)), -(~max(vec3<i32>(global1.a.x, var_0.a.x, global3.a.x), vec3<i32>(arg_0.a.x, 2147483647i, 8314i)))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> vec3<f32> {
    global1 = global4[_wgslsmith_index_u32(4294967295u >> (firstLeadingBit(~global2.x) % 32u), 2u)];
    let var_0 = Struct_1(global3.a, global1.b);
    var var_1 = Struct_1(func_2(var_0, -668f).xx, vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(sign(global3.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0, global0.b.x)))))));
    var var_2 = Struct_1(vec2<i32>(2147483647i, 8855i) ^ min(u_input.b, firstTrailingBit(vec2<i32>(arg_1.x, var_0.a.x))), global0.b);
    global2 = abs(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, global2.x, 48453u, global2.x), vec4<u32>(global2.x, 4294967295u, 0u, global2.x), vec4<u32>(32465u, 7096u, global2.x, global2.x)), vec4<u32>(u_input.c, 18652u, 4294967295u, 4294967295u) ^ vec4<u32>(11717u, u_input.a, 4294967295u, u_input.c)) ^ ~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.e, 1u, u_input.d.x, global2.x), vec4<u32>(54571u, u_input.d.x, global2.x, 1u), false), abs(vec4<u32>(global2.x, global2.x, global2.x, u_input.a))));
    return global3.b;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_1(firstLeadingBit(arg_3.a), arg_3.b);
    global2 = firstTrailingBit(max(min(vec4<u32>(_wgslsmith_mod_u32(6022u, arg_2), 34811u, 9208u, abs(0u)), ~(~vec4<u32>(arg_2, global2.x, arg_1, u_input.c))), vec4<u32>(~1u, 1u, arg_2, ~u_input.e)));
    let var_1 = max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(~18186i, i32(-1i) * -1i, -2147483647i), ~select(vec3<i32>(2147483647i, -1i, arg_3.a.x), vec3<i32>(u_input.b.x, -2147483647i, var_0.a.x), vec3<bool>(true, arg_0, true)), true), func_2(Struct_1(u_input.b, vec3<f32>(1056f, var_0.b.x, global0.b.x)), global0.b.x) | abs(vec3<i32>(-17992i, global0.a.x, 1i) << (u_input.d % vec3<u32>(32u)))), ~firstTrailingBit(vec3<i32>(17911i & global1.a.x, firstLeadingBit(-1i), global3.a.x)));
    global1 = Struct_1(global1.a ^ _wgslsmith_mult_vec2_i32(~max(vec2<i32>(-15280i, -4433i), vec2<i32>(arg_3.a.x, 0i)), vec2<i32>(u_input.b.x, _wgslsmith_div_i32(global3.a.x, global0.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(-557f, vec4<i32>(5914i, global1.a.x, -43228i, 2147483647i))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global3.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(1887f, var_0.b.x, global0.b.x) + vec3<f32>(global3.b.x, -903f, -316f)))))));
    global4 = array<Struct_1, 2>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, arg_3.b.x, -838f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global3.b, global0.b)), _wgslsmith_f_op_vec3_f32(arg_3.b - vec3<f32>(-1163f, -1201f, global0.b.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i == ~u_input.b.x;
    global3 = Struct_1(max(firstLeadingBit(firstTrailingBit(global3.a)), -(vec2<i32>(global0.a.x, 1i) & min(u_input.b, global0.a))), _wgslsmith_f_op_vec3_f32(func_1(any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), global2.x, _wgslsmith_mult_u32(14269u, 1u), Struct_1(global0.a, global1.b))));
    global0 = global4[_wgslsmith_index_u32(~abs(1u), 2u)];
    let var_1 = global4[_wgslsmith_index_u32(0u, 2u)];
    var var_2 = vec3<f32>(1015f, _wgslsmith_f_op_f32(-487f + 754f), global1.b.x);
    var var_3 = global4[_wgslsmith_index_u32(firstTrailingBit(global2.x), 2u)];
    var var_4 = !select(vec2<bool>(u_input.d.x == 1u, select(true, true, true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true)), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, global0.b.x >= global0.b.x)), vec2<bool>(true, true));
    global2 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.x, select(_wgslsmith_sub_u32(u_input.a, u_input.c), 25868u, !var_4.x) ^ ~(~global2.x), 0u), countOneBits(~((vec4<u32>(0u, global2.x, 0u, global2.x) | vec4<u32>(4642u, u_input.c, 1u, u_input.d.x)) ^ min(vec4<u32>(u_input.a, 11755u, 87667u, 1320u), vec4<u32>(u_input.e, 1u, u_input.d.x, u_input.e)))));
    global0 = global4[_wgslsmith_index_u32(u_input.a & 1u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(~(~(-vec2<i32>(9466i, var_3.a.x))), firstLeadingBit(u_input.b)));
}

