struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(6145i, 2147483647i, -62507i), 8214u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -927f)));
    let var_1 = 4294967295u;
    global0 = Struct_3(Struct_2(global0.a.a, -max(2147483647i, global1.a.x << (global0.a.a.b % 32u)), _wgslsmith_clamp_u32(abs(var_1 >> (4294967295u % 32u)), 2605u, ~firstLeadingBit(4294967295u))));
    let var_2 = select(~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(10720u, var_1)), u_input.c.zx), global0.a.c), abs(vec2<u32>(u_input.a.x, u_input.b.x) >> (vec2<u32>(_wgslsmith_clamp_u32(var_1, 56210u, 3193u), firstTrailingBit(u_input.c.x)) % vec2<u32>(32u))), arg_2);
    var var_3 = min(select(-min(vec2<i32>(global0.a.b, arg_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.a.a.a.x, 48485i), global1.a.xz)), _wgslsmith_mult_vec2_i32(-vec2<i32>(-39692i, -1i), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.xz, vec2<i32>(global1.a.x, 2147483647i)), vec2<i32>(-5143i, -9463i))), _wgslsmith_sub_u32(global1.b, var_2.x) != u_input.a.x), vec2<i32>(-4834i, global0.a.a.a.x));
    return select(select(select(vec3<bool>(any(vec2<bool>(arg_1, true)), arg_2 | arg_2, arg_2), vec3<bool>(arg_2, true, var_2.x >= var_2.x), true), !select(!vec3<bool>(true, arg_1, true), vec3<bool>(true, false, true), !arg_1), false), !vec3<bool>(all(!vec3<bool>(false, false, arg_1)), arg_2, true), select(select(!(!vec3<bool>(false, false, arg_2)), vec3<bool>(arg_1, arg_2 != arg_1, true), arg_2), vec3<bool>(true, arg_2, true), var_0 < _wgslsmith_f_op_f32(-var_0)));
}

fn func_2() -> u32 {
    global1 = Struct_1(vec3<i32>(-global0.a.a.a.x, abs(0i), global1.a.x), ~abs(global1.b ^ 9525u) << ((_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(global1.b, global1.b)) >> (28431u % 32u)) % 32u));
    let var_0 = vec3<bool>(select(true, any(func_3(global0.a.a.a, true, true)), true), !(!any(vec3<bool>(false, true, true))), false);
    global1 = Struct_1(global1.a | _wgslsmith_sub_vec3_i32(reverseBits(-vec3<i32>(global1.a.x, global0.a.b, global0.a.b)), _wgslsmith_mod_vec3_i32(global0.a.a.a, vec3<i32>(-3438i, global1.a.x, 0i)) & vec3<i32>(global0.a.b, 15451i, -2147483647i)), u_input.a.x);
    let var_1 = vec3<bool>(_wgslsmith_mult_u32(13134u, _wgslsmith_div_u32(~u_input.a.x, 1u)) > ~abs(0u), true, true);
    var var_2 = Struct_4(countOneBits(countOneBits(abs(_wgslsmith_div_vec2_u32(u_input.b.yy, u_input.a.zx)))), global0.a, var_1.x);
    return ~(~(var_2.b.c ^ global0.a.c));
}

fn func_1() -> Struct_1 {
    var var_0 = firstTrailingBit(vec3<i32>(-1i) * -global1.a);
    let var_1 = ~u_input.b.yx;
    global1 = Struct_1(~(global0.a.a.a & vec3<i32>(-1769i, 0i, select(global0.a.a.a.x, -1i, false))), ~max(func_2(), ~(~global0.a.a.b)));
    let var_2 = ~(-select(_wgslsmith_mod_i32(-1i, -2147483647i), select(global1.a.x ^ var_0.x, ~0i, global1.b < 1u), any(vec2<bool>(false, true))));
    global1 = global0.a.a;
    return global0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a.a;
    global1 = global0.a.a;
    global1 = func_1();
    global0 = Struct_3(Struct_2(Struct_1(global1.a, reverseBits(u_input.a.x)), abs(abs(1i)), ~4294967295u));
    global1 = global0.a.a;
    let var_0 = 34800u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(48231u), ~_wgslsmith_add_i32(abs(global1.a.x), ~0i));
}

