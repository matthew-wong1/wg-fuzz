struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, 33744i, 26889i);

var<private> global1: vec3<f32>;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.d.yyy >> (vec3<u32>(_wgslsmith_div_u32(23025u, ~min(arg_1.a.x, u_input.b)), _wgslsmith_mult_u32(~4294967295u, 55983u), arg_1.d.x) % vec3<u32>(32u));
    let var_1 = global1.zz;
    global1 = _wgslsmith_f_op_vec3_f32(max(arg_1.b.zyw, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_1.x, global1.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(377f, global1.x, global1.x))))))))));
    var var_2 = var_1.x != var_1.x;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1597f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f + 133f)))), _wgslsmith_f_op_f32(455f * -147f));
    return -(~32907i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    let var_0 = Struct_1(arg_2);
    let var_1 = var_0;
    let var_2 = true;
    var var_3 = 62607u;
    var var_4 = arg_0.a;
    return abs(1i);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    global0 = abs(vec4<i32>(-1i) * -(~select(vec4<i32>(2147483647i, 1i, 1i, u_input.a.x), vec4<i32>(75601i, global0.x, -2147483647i, global0.x), vec4<bool>(true, false, arg_1.c.x, false))));
    global0 = abs(vec4<i32>(-((2147483647i & u_input.a.x) >> (~arg_1.a.x % 32u)), ~(-2147483647i), u_input.a.x, 3695i));
    global0 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_2(Struct_1(true), _wgslsmith_f_op_vec3_f32(vec3<f32>(281f, arg_1.b.x, arg_1.b.x) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b.x, global1.x, arg_1.b.x)))), !arg_1.c.x), _wgslsmith_div_i32(2147483647i, func_1(Struct_1(arg_1.c.x), Struct_2(vec2<u32>(arg_0.a.x, 53689u), vec4<f32>(arg_1.b.x, -1000f, global1.x, -1792f), vec3<bool>(arg_0.c.x, false, false), vec4<u32>(39299u, 33966u, 4294967295u, 0u)))), -global0.x, func_1(global2[_wgslsmith_index_u32(u_input.b, 14u)], Struct_2(vec2<u32>(55763u, 0u), arg_1.b, select(vec3<bool>(false, arg_0.c.x, arg_1.c.x), arg_0.c, false), ~arg_1.d))), countOneBits(min(abs(vec4<i32>(global0.x, -2891i, -1i, 2147483647i)) | vec4<i32>(-83139i, -5271i, -16617i, global0.x), firstTrailingBit(reverseBits(vec4<i32>(1i, global0.x, global0.x, 1659i))))));
    var var_0 = global2[_wgslsmith_index_u32(arg_1.a.x, 14u)];
    let var_1 = var_0.a;
    return ~vec4<i32>(select(u_input.a.x >> (arg_1.a.x % 32u), ~(~global0.x), arg_1.b.x == -1652f), global0.x, ~701i << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, max(u_input.a.x, -2147483647i)), global0.zy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-17655i), select(1i, u_input.a.x, true)), _wgslsmith_mult_i32(-25935i, 1i >> (u_input.b % 32u)), u_input.a.x, _wgslsmith_dot_vec3_i32(~global0.xzz, vec3<i32>(u_input.a.x, 31201i, 6742i))), vec4<i32>(2147483647i, ~firstTrailingBit(-1i), -16460i, -func_1(Struct_1(false), Struct_2(vec2<u32>(u_input.b, 1u), vec4<f32>(global1.x, -827f, global1.x, global1.x), vec3<bool>(true, true, false), vec4<u32>(0u, u_input.b, 1u, 36065u))))), vec4<i32>(_wgslsmith_mult_i32(1i, -_wgslsmith_div_i32(u_input.a.x, 1i)), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, _wgslsmith_add_i32(global0.x, -25076i), func_2(global2[_wgslsmith_index_u32(u_input.b, 14u)], vec3<f32>(2078f, global1.x, global1.x), false), 0i), ~func_3(Struct_2(vec2<u32>(59151u, 62230u), vec4<f32>(global1.x, global1.x, -392f, global1.x), vec3<bool>(true, true, true), vec4<u32>(1u, 12753u, u_input.b, 13503u)), Struct_2(vec2<u32>(u_input.b, 45904u), vec4<f32>(global1.x, global1.x, 622f, global1.x), vec3<bool>(true, false, false), vec4<u32>(u_input.b, 15571u, 0u, 84677u)))), -39286i));
    let var_1 = -vec2<i32>(countOneBits(-(var_0 >> (u_input.b % 32u))), (~global0.x << (countOneBits(287u) % 32u)) << (u_input.b % 32u));
    let var_2 = -570f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 - global1.x), _wgslsmith_f_op_f32(sign(-741f)))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(84021i) | max(u_input.a.x, u_input.a.x)), ~global0.wy ^ u_input.a, ~reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(global0.x, -26615i, 1i, var_0), -vec4<i32>(28046i, -1i, -15051i, u_input.a.x))));
}

