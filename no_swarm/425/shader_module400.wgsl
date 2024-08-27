struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> bool {
    global0 = array<Struct_4, 20>();
    return true == any(!vec2<bool>(select(false, true, true), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: bool) -> f32 {
    global0 = array<Struct_4, 20>();
    return -566f;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>) -> u32 {
    var var_0 = u_input.a.x;
    global0 = array<Struct_4, 20>();
    var var_1 = Struct_5(Struct_3(arg_0 >> (arg_0 % vec3<u32>(32u)), firstLeadingBit(~arg_0.x), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1670f, -164f, -303f, -165f)))));
    global0 = array<Struct_4, 20>();
    let var_2 = countOneBits(firstLeadingBit(var_1.a.a));
    return 65159u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 20>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1037f)) + _wgslsmith_div_f32(-518f, -238f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + 133f), _wgslsmith_f_op_f32(sign(-2095f)), func_1(52621i, Struct_1(vec3<f32>(-1013f, -1250f, -191f), 2147483647i), 4294967295u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 35812u, 14342u), vec4<bool>(true, false, true, true), true)), 442f, 56331i <= u_input.a.x)))), -195f);
    let var_1 = Struct_5(Struct_3(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(10294u, 4294967295u, 42495u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 16849u), vec3<u32>(6761u, 1u, 0u)), vec3<u32>(4294967295u, 62579u, 4294967295u)), vec3<u32>(firstTrailingBit(1u), ~87903u, ~56699u), true), _wgslsmith_sub_u32(~(~0u), func_3(vec3<u32>(0u, 0u, 4294967295u), true, ~u_input.a.wyw)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-678f, var_0.x, var_0.x, var_0.x), vec4<f32>(-260f, 765f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -357f, var_0.x, var_0.x)))))));
    var var_2 = Struct_3(_wgslsmith_mod_vec3_u32(~var_1.a.a, ~(vec3<u32>(4294967295u, var_1.a.b, var_1.a.b) & vec3<u32>(32177u, var_1.a.b, var_1.a.a.x))), _wgslsmith_mult_u32(var_1.a.a.x, ~_wgslsmith_add_u32(var_1.a.b, firstLeadingBit(var_1.a.a.x))), var_1.a.c);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_2.c.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(668f)), var_1.a.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c.a.x)) * var_2.c.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(469f, 599f), -211f))))), 62513i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(8999u, ~70927u, var_2.a.x), _wgslsmith_sub_i32(var_3.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i >> (var_2.b % 32u), -u_input.a.x), select(u_input.a.x, var_3.b, true))), 745f);
}

