struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(1000f, 257f);

var<private> global2: i32 = -98578i;

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec2<i32> {
    global2 = _wgslsmith_div_i32(firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 37089i), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 27297i, u_input.a), vec3<i32>(-1i, global0.b.x, global0.b.x)))), global0.b.x);
    let var_0 = vec3<u32>(~(~firstLeadingBit(37705u)), 36856u, global0.a);
    global3 = _wgslsmith_f_op_vec2_f32(-arg_3);
    global2 = -22366i;
    var var_1 = abs(~vec3<u32>(1u, 1u, reverseBits(~57360u)));
    return vec2<i32>(-u_input.a, -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(16631u, abs(func_3(~u_input.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1.x, 489f, -157f) * vec4<f32>(global3.x, global1.x, -1010f, global3.x)), vec2<bool>(true, true), vec2<f32>(global1.x, global3.x))) | firstLeadingBit(global0.b >> (vec2<u32>(u_input.b, global0.a) % vec2<u32>(32u))));
    global0 = Struct_1(49807u << (((var_0.a ^ ~0u) & (abs(u_input.b) & global0.a)) % 32u), vec2<i32>(11228i, global0.b.x));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-185f, global3.x))))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-154f * global1.x) - -300f) + global1.x)));
    var var_1 = Struct_1(var_0.a, ~vec2<i32>(1i, firstLeadingBit(-1i)));
    var var_2 = Struct_1(5450u, vec2<i32>(-1i) * -abs(~var_0.b));
    return Struct_1(1u, (-reverseBits(vec2<i32>(var_0.b.x, -1i)) | vec2<i32>(-37529i, countOneBits(-1i))) ^ vec2<i32>(_wgslsmith_mod_i32(var_0.b.x, 1i), firstLeadingBit(-41066i)));
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1297f * _wgslsmith_div_f32(global1.x, global1.x)) - global1.x))));
    global0 = func_2();
    let var_1 = Struct_1(~min(global0.a, 13964u ^ global0.a), -vec2<i32>(global0.b.x << (0u % 32u), u_input.a));
    let var_2 = Struct_2(func_2(), vec3<u32>(_wgslsmith_mod_u32(var_1.a, 43325u), ~80403u, u_input.b));
    let var_3 = vec4<i32>(-33567i, -30411i, 21389i, -firstTrailingBit(~_wgslsmith_mod_i32(-623i, 14670i)));
    return StorageBuffer(select(-((u_input.a << (124094u % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, u_input.b, global0.a), var_2.b) % 32u)), firstLeadingBit(-39327i), any(vec2<bool>(true, true))), select(var_3.zyx, _wgslsmith_mult_vec3_i32(var_3.wxw, vec3<i32>(global0.b.x, var_3.x << (41449u % 32u), var_3.x)), vec3<bool>(true, true, true)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -989f;
    let x = u_input.a;
    s_output = func_1();
}

