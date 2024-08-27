struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_4;

var<private> global2: array<bool, 14>;

var<private> global3: array<Struct_3, 7>;

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    global4 = arg_0;
    var var_0 = global4.b.x;
    var var_1 = Struct_2(global1.c);
    var var_2 = arg_0.a;
    let var_3 = global4.a;
    return ~_wgslsmith_dot_vec4_i32(~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-46908i, global4.b.x, arg_0.b.x, arg_0.b.x), vec4<i32>(arg_0.b.x, global4.b.x, 22896i, 71882i))), ~vec4<i32>(global4.b.x, 26521i, arg_0.b.x, arg_0.b.x) >> (~(~vec4<u32>(u_input.a, 14815u, 1u, 0u)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(global4.b.x | min(global1.b.b.x, global4.b.x), func_3(global3[_wgslsmith_index_u32(~52820u, 7u)], Struct_2(Struct_1(global1.c.a, 19915u))));
    global1 = Struct_4(global1.a, Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0, true, false), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(52495u, 33394u)))), abs(abs(vec2<i32>(1i, global4.b.x) << (vec2<u32>(global4.a.a.b, 1u) % vec2<u32>(32u)))), arg_3.a.x, any(vec4<bool>(!global2[_wgslsmith_index_u32(19279u, 14u)], any(vec2<bool>(false, false)), true, all(vec4<bool>(false, global1.b.c, arg_0, true))))), Struct_1(global4.a.a.a, global0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1500f * 249f))), _wgslsmith_f_op_f32(floor(global1.a.x)))));
    global1 = Struct_4(global1.a, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_3.b, 0u, 4294967295u), vec3<u32>(51580u, 40837u, 2724u), global0.a.x), _wgslsmith_add_vec3_u32(~vec3<u32>(global0.b, 0u, 4571u), ~vec3<u32>(79260u, 13790u, 0u))), 7u)], Struct_1(arg_3.a, 4294967295u));
    var var_2 = 0u;
    return Struct_1(select(vec3<bool>(global4.d, any(arg_3.a.yx), !(!global0.a.x)), global1.b.a.a.a, true), global4.a.a.b);
}

fn func_1() -> Struct_2 {
    var var_0 = global1.b.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1769f + global1.a.x));
    let var_2 = var_1;
    var var_3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(abs(var_2)))), global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.x)))), global1.b, func_2(global0.a.x, -countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-14159i, -15755i, global1.b.b.x, global1.b.b.x), vec4<i32>(global1.b.b.x, global1.b.b.x, global4.b.x, global4.b.x))), 1u, Struct_1(vec3<bool>(!var_0.a.a.x, var_0.a.a.x, 0i <= global1.b.b.x), 34502u)));
    let var_4 = Struct_1(!global1.c.a, max(u_input.b.x & 14012u, 1u));
    return var_3.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4.a.a;
    var var_0 = func_1();
    var var_1 = global4.a.a.a.xy;
    var var_2 = ~(abs(_wgslsmith_mod_u32(global4.a.a.b, 1u) >> (global1.c.b % 32u)) | _wgslsmith_add_u32(~_wgslsmith_clamp_u32(global0.b, var_0.a.b, 1u), global0.b));
    global4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-(~(-48833i)))));
}

