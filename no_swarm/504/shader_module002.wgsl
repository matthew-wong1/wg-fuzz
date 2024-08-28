struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> bool {
    let var_0 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), true), vec2<bool>(true, true), true);
    return var_0.x;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> vec3<bool> {
    global0 = array<Struct_1, 7>();
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(reverseBits(abs(min(20466u, 4819u))))), 32u)];
    global0 = array<Struct_1, 7>();
    let var_1 = vec4<u32>(~var_0.b.x, 4294967295u, var_0.b.x, 4294967295u);
    global0 = array<Struct_1, 7>();
    return !vec3<bool>(true, var_0.b.x == (_wgslsmith_mult_u32(var_0.b.x, var_0.b.x) & ~var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -1335f) + 2976f) == 567f);
}

fn func_2() -> StorageBuffer {
    var var_0 = any(!func_3(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-202f + 598f), 767f), all(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -firstTrailingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~(firstLeadingBit(select(vec4<i32>(u_input.a, 2127i, -43995i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(true, true, true, false))) ^ firstTrailingBit(~vec4<i32>(-10056i, 0i, u_input.a, 0i))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 7u)];
    global1 = ~(123351u << (select((var_2.a ^ var_2.b.x) & ~var_2.b.x, _wgslsmith_mult_u32(~var_2.b.x, _wgslsmith_mult_u32(var_2.a, var_2.b.x)), false) % 32u));
    var var_3 = -countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-var_1.x, _wgslsmith_mult_i32(12061i, 10006i)), ~(-var_1.yx), var_2.d.xy));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e, 304f) * vec2<f32>(var_2.e, var_2.e))))), countOneBits(var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 69242i, u_input.a), vec3<i32>(u_input.a, u_input.a, 17227i)) <= select(u_input.a, u_input.a, false), true));
    let var_1 = Struct_1(4294967295u, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(194f))))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, 18536i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a)), (vec3<i32>(u_input.a, 2425i, 2147483647i) | vec3<i32>(u_input.a, 56165i, -2147483647i)) ^ vec3<i32>(u_input.a, -41564i, -2147483647i)) >> (_wgslsmith_mult_vec3_u32(~select(vec3<u32>(43900u, 1u, 7866u), vec3<u32>(48091u, 0u, 1036u), vec3<bool>(false, true, true)), _wgslsmith_mult_vec3_u32(~vec3<u32>(32668u, 1u, 0u), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(275f - _wgslsmith_f_op_f32(-356f + 256f)))) + -1159f));
    let var_2 = true;
    var_0 = func_1() & var_2;
    global2 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = func_2();
}

