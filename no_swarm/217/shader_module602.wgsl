struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, -379f, vec3<bool>(true, true, true)), Struct_1(true, -767f, vec3<bool>(true, true, true)), Struct_1(false, -628f, vec3<bool>(false, false, true)), Struct_1(true, 2223f, vec3<bool>(true, false, false)), Struct_1(true, -606f, vec3<bool>(false, false, true)), Struct_1(true, -370f, vec3<bool>(true, true, false)), Struct_1(false, 688f, vec3<bool>(true, false, true)), Struct_1(false, 1477f, vec3<bool>(true, false, true)), Struct_1(true, 476f, vec3<bool>(true, true, false)), Struct_1(true, 1000f, vec3<bool>(true, false, false)), Struct_1(false, 1237f, vec3<bool>(true, false, false)), Struct_1(true, -785f, vec3<bool>(true, true, false)), Struct_1(false, 457f, vec3<bool>(true, false, false)), Struct_1(false, 1096f, vec3<bool>(true, true, false)), Struct_1(false, -584f, vec3<bool>(true, false, false)), Struct_1(true, 238f, vec3<bool>(false, true, true)), Struct_1(false, -1406f, vec3<bool>(false, true, false)), Struct_1(false, 233f, vec3<bool>(true, false, false)));

var<private> global1: Struct_1 = Struct_1(false, 395f, vec3<bool>(true, false, true));

var<private> global2: array<Struct_1, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    global1 = Struct_1(false, global1.b, select(!global1.c, global1.c, select(global1.c, vec3<bool>(global1.c.x, -914f != global1.b, true), !global1.c)));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(select(~u_input.b.x, ~(~arg_0.x), true), u_input.b.x, arg_0.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, u_input.b.x), 89054u)), ~countOneBits(vec4<u32>(_wgslsmith_mult_u32(1u, 83767u), u_input.b.x, abs(u_input.b.x), 1u))), 18u)];
    var var_0 = global1.b;
    let var_1 = vec3<f32>(global1.b, _wgslsmith_f_op_f32(327f - 1000f), global1.b);
    global0 = array<Struct_1, 18>();
    return global1.c;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = !func_2(min(select(~u_input.b.ww, select(u_input.b.yx, u_input.b.xx, true), vec2<bool>(arg_0.c.x, arg_0.c.x)), (vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(u_input.b.x, 1u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 5514u), vec2<u32>(1u, u_input.b.x)) % vec2<u32>(32u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    let var_0 = Struct_1(global1.c.x, _wgslsmith_f_op_f32(max(global1.b, global1.b)), vec3<bool>(any(select(vec2<bool>(false, global1.a), global1.c.zy, global1.c.xz)) && global1.a, global1.c.x, func_1(global0[_wgslsmith_index_u32(17891u, 18u)], _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x)) && true));
    let var_1 = !(!vec4<bool>(-841f >= _wgslsmith_div_f32(var_0.b, var_0.b), !(!global1.a), firstTrailingBit(1u) <= (51037u >> (u_input.b.x % 32u)), !global1.c.x));
    global2 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3044f)))) * var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * -341f), var_1.x))), -1711f, abs(~(~u_input.a.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(22360i, u_input.a.x, -26292i, 0i) | vec4<i32>(1i, u_input.a.x, 2147483647i, 24377i), -abs(vec4<i32>(1i, 2147483647i, 1i, u_input.a.x))), vec4<i32>(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -(i32(-1i) * -2147483647i), -2147483647i, u_input.a.x)));
}

