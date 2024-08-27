struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 16>;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-540f));
    global2 = array<Struct_2, 15>();
    global1 = vec2<i32>(_wgslsmith_mult_i32(abs(-2147483647i >> (0u % 32u)), -(~global1.x)) ^ ~31722i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.e, 1i, 37536i, 0i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(10514i, u_input.a, arg_2, arg_2)), ~vec4<i32>(1i, 0i, 13734i, 0i))) & max(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2, -6038i), vec3<i32>(1i, global1.x, u_input.a)), ~(-83173i), -u_input.e)));
    let var_1 = -global1.x;
    global0 = array<vec4<f32>, 16>();
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_2, 15>();
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(~45067u, 16u)])), vec3<bool>(!((u_input.a != 2147483647i) && false), false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), -1i, !any(vec3<bool>(true, false, true)) || true);
    let var_1 = global1.x;
    global0 = array<vec4<f32>, 16>();
    let var_2 = vec3<f32>(-2631f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(911f - -733f), _wgslsmith_f_op_f32(-235f - -512f)) + _wgslsmith_f_op_f32(floor(-696f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1106f * -957f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(454f, -478f))) + 353f))));
    return Struct_2(Struct_1(select(vec3<i32>(-14245i, global1.x, ~(-10405i)), abs(vec3<i32>(u_input.b.x, -21764i, 1i)), false), vec4<i32>(global1.x, global1.x, 1i, ~_wgslsmith_mult_i32(-1i, global1.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -805f), select(~vec3<u32>(u_input.c, 73378u, 6756u), select(~vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(1u, u_input.c, 13090u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true)))));
}

fn func_1() -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(57809u, ~4294967295u), vec2<u32>(1u, u_input.c) << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))) & ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(~23904u, ~1u));
    var var_1 = func_1();
    global0 = array<vec4<f32>, 16>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(var_0.x, 16u)]);
    let var_3 = vec4<i32>(-u_input.d.x, var_1.a.b.x, firstTrailingBit(_wgslsmith_mult_i32(global1.x, (u_input.b.x << (27493u % 32u)) | min(2147483647i, -1i))), -27619i);
    let var_4 = func_1().a.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), abs(func_3(global0[_wgslsmith_index_u32(~var_1.a.d.x & var_4.x, 16u)], vec3<bool>(true, true, true), -30686i, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(var_1.a.c.x - -1112f));
}

