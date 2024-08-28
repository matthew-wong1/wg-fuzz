struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, vec4<u32>(25660u, 24723u, 27062u, 22361u)), vec3<f32>(1513f, 214f, 924f), Struct_1(-1i, vec4<u32>(45819u, 1u, 4294967295u, 28943u)), vec2<i32>(4454i, i32(-2147483648)), vec4<bool>(true, true, true, false));

var<private> global1: Struct_3 = Struct_3(-487f);

var<private> global2: array<vec2<u32>, 9>;

var<private> global3: array<vec2<bool>, 8>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    global2 = array<vec2<u32>, 9>();
    global2 = array<vec2<u32>, 9>();
    let var_0 = global0.c;
    let var_1 = -10920i;
    var var_2 = global0.e.yw;
    return ~select(~global0.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -2147483647i, u_input.a), vec3<i32>(global0.a.a, var_1, global0.c.a)), u_input.a, -var_1), _wgslsmith_sub_vec3_i32(vec3<i32>(-18414i, 29144i, 52249i) & vec3<i32>(-34991i, 1i, var_1), vec3<i32>(2147483647i, u_input.a, -8850i))), false);
}

fn func_2() -> i32 {
    let var_0 = select(select(global0.e.x, func_3(global0.a.b.x, global0.b.xy, true) < (2147483647i & min(2147483647i, u_input.a)), (~global0.a.b.x >= abs(global0.c.b.x)) != global0.e.x), true, true);
    global3 = array<vec2<bool>, 8>();
    global3 = array<vec2<bool>, 8>();
    global3 = array<vec2<bool>, 8>();
    global3 = array<vec2<bool>, 8>();
    return countOneBits(~(max(-2147483647i, u_input.a) >> (~98446u % 32u))) & u_input.a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = Struct_2(arg_2.c, global0.b, Struct_1(~(-1i), global0.c.b), _wgslsmith_mod_vec2_i32(abs(~(-vec2<i32>(u_input.a, -23141i))), -vec2<i32>(func_2(), -arg_2.c.a)), !arg_2.e);
    var var_1 = var_0.b.zy;
    let var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-28084i, -2147483647i, arg_0, u_input.a), vec4<i32>(global0.d.x, -1i, 54104i, arg_0)) ^ ~(-vec4<i32>(0i, -8355i, 111i, global0.c.a)), vec4<i32>(arg_0, arg_1, -53762i, _wgslsmith_div_i32(firstLeadingBit(-3960i), -1i))), -(~vec4<i32>(reverseBits(arg_1), arg_0, 1i, abs(arg_2.a.a))));
    global3 = array<vec2<bool>, 8>();
    let var_3 = u_input.c.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 8>();
    var var_0 = any(global0.e);
    var_0 = !func_1(1i, _wgslsmith_add_i32(u_input.a, ~40545i), Struct_2(Struct_1(1i, global0.c.b), _wgslsmith_f_op_vec3_f32(select(global0.b, global0.b, vec3<bool>(global0.e.x, false, global0.e.x))), global0.c, global0.d >> (global0.c.b.wy % vec2<u32>(32u)), global0.e)) && !(global0.a.b.x > ~u_input.c.x);
    var var_1 = Struct_3(-1497f);
    var var_2 = i32(-1i) * -1i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x * -1000f))) * 1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(0u << (global0.a.b.x % 32u)), -4395i, _wgslsmith_sub_vec4_i32(countOneBits(select(-vec4<i32>(global0.c.a, -2147483647i, u_input.a, u_input.a), reverseBits(vec4<i32>(-20725i, global0.d.x, global0.a.a, u_input.a)), true)), min(vec4<i32>(global0.c.a, 1i, u_input.a, u_input.a) & vec4<i32>(u_input.a, global0.a.a, -2147483647i, 0i), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 7692i, global0.a.a, 1i), vec4<i32>(global0.a.a, global0.c.a, 10590i, 2147483647i)), abs(vec4<i32>(u_input.a, global0.a.a, 36715i, global0.c.a))))), -(~vec2<i32>(~global0.c.a, u_input.a)));
}

