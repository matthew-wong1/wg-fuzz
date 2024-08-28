struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: vec2<i32> = vec2<i32>(8825i, -1680i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_1 {
    return global1[_wgslsmith_index_u32(~u_input.c, 25u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    var var_0 = u_input.e.x;
    var var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(max(5221u, arg_1) & ~u_input.e.x)), 25u)];
    var var_2 = global1[_wgslsmith_index_u32(1u, 25u)];
    var var_3 = arg_0;
    global3 = _wgslsmith_sub_vec2_i32(vec2<i32>(~var_2.c.x, -var_1.c.x), u_input.d.wz);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1150f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -760f) + _wgslsmith_f_op_f32(-arg_0.x)))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = vec2<bool>((arg_0.x | arg_0.x) && arg_0.x, arg_0.x);
    let var_1 = func_2();
    let var_2 = ~u_input.e.x;
    let var_3 = 102f;
    var var_4 = var_1.c.x;
    return Struct_1(var_1.b.wxy, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x - var_3), -256f, true)), -2355f), _wgslsmith_f_op_f32(max(126f, _wgslsmith_f_op_f32(func_3(vec4<f32>(-582f, var_3, 981f, 421f), 0u, ~vec3<u32>(46457u, 47701u, 51467u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-804f)))))), vec2<i32>(19199i, _wgslsmith_add_i32(select(0i, var_1.c.x, var_0.x), countOneBits(var_1.c.x ^ var_1.c.x))));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = func_1(vec2<bool>(2147483647i < u_input.a.x, false));
    global1 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.a.zzx, u_input.a.xzx);
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.e.x, 4294967295u, 4294967295u, 1u), vec4<u32>(0u, u_input.e.x, 4294967295u, 1u) >> (vec4<u32>(4294967295u, u_input.c, 1u, 5129u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.e.x), vec4<u32>(1u, u_input.e.x, u_input.e.x, 4294967295u))), vec4<u32>(u_input.c, u_input.c, ~18808u, _wgslsmith_mult_u32(reverseBits(u_input.c), _wgslsmith_div_u32(u_input.e.x, u_input.e.x)))), firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.c, 0u, u_input.c) << ((vec4<u32>(29426u, 4294967295u, u_input.c, 0u) | vec4<u32>(1u, 8247u, u_input.c, 0u)) % vec4<u32>(32u)), vec4<u32>(~4372u, abs(u_input.c), select(24583u, u_input.c, false), ~4294967295u))));
    var var_3 = ~firstLeadingBit(_wgslsmith_mod_u32(~(u_input.c & u_input.e.x), abs(~7344u)));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1257f, arg_0.a.x, true)) * _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)))), 415f, -886f, -1058f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(1u, 25u)];
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_2 = global1[_wgslsmith_index_u32(41850u, 25u)];
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -125f);
    let var_4 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u >> (u_input.c % 32u), u_input.e.x)), 25u)];
    let x = u_input.a;
    s_output = func_4(func_1(global2[_wgslsmith_index_u32(4294967295u, 27u)]));
}

