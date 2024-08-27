struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(20737i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -26599i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-26949i, 53742i), vec2<i32>(11629i, -8925i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(51886i, 21603i), vec2<i32>(-12836i, 0i), vec2<i32>(39302i, -5336i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-35350i, i32(-2147483648)), vec2<i32>(9670i, -4778i), vec2<i32>(29564i, -9355i), vec2<i32>(-7786i, 38724i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(11077i, 2147483647i), vec2<i32>(47336i, -17940i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(4853i, 2673i), vec2<i32>(10300i, -1i), vec2<i32>(2147483647i, 14004i), vec2<i32>(2147483647i, -39372i), vec2<i32>(1i, 2147483647i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = 1i;
    global1 = array<vec2<i32>, 24>();
    return global0[_wgslsmith_index_u32(select(4294967295u, _wgslsmith_mod_u32(~(~1166u), reverseBits(4294967295u)), true), 14u)];
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec4<i32>(arg_0.d.x, func_1(-2147483647i).d.x, -1i, -2147483647i);
    let var_1 = !select(!vec2<bool>(true, arg_0.c), arg_0.a.yy, !((arg_0.c && arg_0.a.x) || false));
    let var_2 = func_1(10785i);
    let var_3 = _wgslsmith_dot_vec2_i32(arg_0.d.ww & firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, 0i) & var_2.d.xy, vec2<i32>(650i, var_2.d.x))), max(vec2<i32>(var_0.x, ~_wgslsmith_div_i32(-1i, arg_0.d.x)), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(arg_0.d.x, var_2.d.x) ^ vec2<i32>(-1i, var_0.x)), arg_0.d.yx)));
    let var_4 = !(all(var_2.a) != (arg_0.e.x != var_2.e.x));
    return -1000f;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, u_input.a.x, any(func_1(-1i).a.zz), -(~vec4<i32>(arg_1, arg_0.d.x, arg_1, arg_1)), ~abs(vec2<u32>(0u, 23288u)))))));
    var var_1 = arg_0.a.zx;
    let var_2 = ~arg_0.d.yxy;
    let var_3 = var_1.x;
    var_1 = !select(vec2<bool>(any(arg_0.a), false || any(vec4<bool>(false, arg_0.c, true, false))), !(!(!arg_0.a.xz)), arg_0.a.yy);
    return StorageBuffer(~(-1i), 73998u & ~(1u << (abs(arg_0.b) % 32u)), vec3<u32>(select(arg_0.b, ~arg_0.e.x, all(!arg_0.a)), _wgslsmith_mult_u32(4294967295u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.e.x, u_input.a.x, u_input.a.x), vec4<u32>(50142u, arg_0.b, arg_0.b, u_input.a.x)), _wgslsmith_add_u32(arg_0.b, u_input.a.x), true)), _wgslsmith_mult_u32(reverseBits(arg_0.e.x), ~arg_0.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global1 = array<vec2<i32>, 24>();
    var var_0 = _wgslsmith_clamp_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_add_vec2_i32(((vec2<i32>(78777i, 2147483647i) ^ global1[_wgslsmith_index_u32(25267u, 24u)]) >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) ^ global1[_wgslsmith_index_u32(1u, 24u)], min(~(-global1[_wgslsmith_index_u32(0u, 24u)]), reverseBits(-vec2<i32>(9888i, -2147483647i)))), ~global1[_wgslsmith_index_u32(1u, 24u)]);
    let x = u_input.a;
    s_output = func_2(func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -21337i, 9046i), vec3<i32>(2147483647i, var_0.x, 58082i)), (vec3<i32>(-4962i, var_0.x, 1i) << (vec3<u32>(1u, 23687u, 42484u) % vec3<u32>(32u))) << (u_input.a % vec3<u32>(32u)))), firstLeadingBit(-(~_wgslsmith_div_i32(var_0.x, 52342i))));
}

