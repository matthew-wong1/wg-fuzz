struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: vec2<i32> = vec2<i32>(0i, 12885i);

var<private> global3: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: i32) -> f32 {
    global2 = vec2<i32>(-1i) * -vec2<i32>(~(~arg_1), _wgslsmith_mult_i32(-28495i, arg_0));
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(0u, 7u)], 23200u);
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-446f, global0.x))), global0.x))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-588f, global0.x, 686f, global0.x))))))))), var_0.a, ~(~firstTrailingBit(firstLeadingBit(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x))))));
    return -552f;
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global0 = vec4<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(-2147483647i, 31282i), -global2.x)))), _wgslsmith_div_f32(134f, 1000f), -138f, global0.x);
    let var_0 = _wgslsmith_mult_u32(~(1u ^ ~u_input.a), min(~0u, max(_wgslsmith_add_u32(u_input.a, u_input.b.x), _wgslsmith_mod_u32(4294967295u, u_input.b.x)))) <= 0u;
    global2 = ~(~(~_wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(32197i, global2.x)), vec2<i32>(global2.x, global2.x) >> (u_input.b % vec2<u32>(32u)))));
    let var_1 = ~abs(firstLeadingBit(u_input.a));
    var var_2 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(966f)), _wgslsmith_f_op_f32(func_3(~global2.x, 0i << (0u % 32u))), false))));
    return vec3<i32>(-1i) * -vec3<i32>(-global2.x, 0i, global2.x);
}

fn func_1() -> Struct_2 {
    var var_0 = !(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false))));
    global2 = countOneBits(vec2<i32>(1i, _wgslsmith_mult_i32(global2.x, -1i)));
    global2 = reverseBits(vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -15707i, 28402i), func_2(any(vec2<bool>(false, true)))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(30682i, 53542i, -12591i, global2.x), vec4<i32>(0i, 7765i, global2.x, -8482i)), vec4<i32>(global2.x, -18151i, -1i, -20044i) << (vec4<u32>(22423u, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u))) ^ _wgslsmith_mod_i32(-6595i, 4988i)));
    let var_1 = !select(select(false, any(vec4<bool>(true, false, false, false)) | true, true), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false)), all(vec2<bool>(true, true)));
    var var_2 = Struct_4(Struct_1(_wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-1677i, global2.x, -2905i), vec3<i32>(global2.x, -16036i, 0i)), countOneBits(vec3<i32>(global2.x, global2.x, global2.x))), vec2<u32>(u_input.b.x, 4294967295u), abs(~select(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 54331u), vec4<u32>(1u, 59348u, 59540u, 0u), var_1)), select(!(!vec3<bool>(true, var_1, var_1)), select(!vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, false, true)), (global2.x == -1i) && var_1), select(vec2<bool>(!var_1, false), select(vec2<bool>(var_1, var_1), !vec2<bool>(var_1, var_1), select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), false)), 48600u >= _wgslsmith_add_u32(u_input.a, u_input.b.x))), _wgslsmith_mult_u32(1u, ~_wgslsmith_div_u32(abs(u_input.b.x), abs(0u))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.yyy * global0.zzy)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, global0.x, global0.x))))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(2030f)), -128f)), global0.x, global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1194f - global0.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * global0.x)))))), var_2.a, abs(global2.x), global0.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = arg_1.a.c.c.x;
    var_0 = _wgslsmith_sub_u32(18218u, 12752u);
    return select(!arg_1.a.c.e, vec2<bool>(!(!arg_1.a.c.e.x), false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_4(_wgslsmith_div_vec3_i32(-vec3<i32>(global2.x, 4677i, global2.x), -vec3<i32>(global2.x, 2147483647i, -31387i)) >> (~vec3<u32>(50413u, 0u, 0u) % vec3<u32>(32u)), Struct_5(func_1(), max(vec2<i32>(-8153i, global2.x), vec2<i32>(1i, 1i))));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, 1000f, global0.x, global0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x))), func_1().b.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -882f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.ywy, _wgslsmith_f_op_f32(-global0.x));
}

