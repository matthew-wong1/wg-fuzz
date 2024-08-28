struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<i32>;

var<private> global2: array<vec3<bool>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_2 {
    global0 = arg_2;
    return global0.b;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global2 = array<vec3<bool>, 12>();
    global0 = Struct_3(u_input.b, func_2(_wgslsmith_f_op_f32(-global0.b.b.a.x), min(global0.b.a.b.x, ~1i), Struct_3(u_input.b << (vec4<u32>(1u, 0u, 4294967295u, global0.a.x) % vec4<u32>(32u)), func_2(_wgslsmith_f_op_f32(abs(global0.b.b.a.x)), countOneBits(0i), Struct_3(u_input.b, Struct_2(arg_0.b, arg_0.a)), ~vec2<i32>(global0.b.a.b.x, 14418i))), (firstTrailingBit(global0.b.a.b.xx) << ((global0.a.zz ^ global0.a.wz) % vec2<u32>(32u))) >> (vec2<u32>(0u, global0.a.x | u_input.b.x) % vec2<u32>(32u))));
    global0 = Struct_3(_wgslsmith_add_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(global0.a, select(vec4<u32>(global0.a.x, 0u, u_input.b.x, global0.a.x) | vec4<u32>(u_input.b.x, 4294967295u, 5518u, global0.a.x), u_input.b, select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))))), arg_0);
    global1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(~(-global1.x)), 1i, i32(-1i) * -60521i, ~(~global0.b.a.b.x ^ -2147483647i)), ~vec4<i32>(global0.b.b.b.x, max(global1.x, global1.x), -38981i, abs(global1.x)) & arg_0.b.b, global0.b.a.b);
    var var_0 = vec4<bool>(!(u_input.a > u_input.b.x), false, !any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), false);
    return -27248i;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.b.a.x), -418f))), vec4<i32>(~_wgslsmith_clamp_i32(~1i, i32(-1i) * -21696i, firstTrailingBit(-28348i)), func_3(func_2(_wgslsmith_f_op_f32(min(global0.b.b.c.x, global0.b.a.c.x)), global1.x, Struct_3(global0.a, Struct_2(global0.b.b, Struct_1(global0.b.a.c.yz, global0.b.b.b, vec3<f32>(global0.b.a.a.x, 2356f, global0.b.a.a.x)))), _wgslsmith_mult_vec2_i32(global0.b.a.b.yz, global0.b.a.b.zz))), ~(-(~global1.x)), -global0.b.a.b.x), vec3<f32>(-1000f, global0.b.b.c.x, _wgslsmith_f_op_f32(433f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -774f)))));
    var var_1 = var_0.c.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-237f - -572f));
    return StorageBuffer(-(var_0.b.ywx & max(-vec3<i32>(var_0.b.x, 38466i, global1.x), vec3<i32>(28315i, global1.x, global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 12>();
    let var_0 = false;
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.b.xx, vec2<u32>(u_input.a, 4294967295u), ~_wgslsmith_mod_vec2_u32(global0.a.yx, abs(vec2<u32>(global0.a.x, u_input.a)))), ~(~((vec2<u32>(global0.a.x, 62330u) << (vec2<u32>(global0.a.x, 0u) % vec2<u32>(32u))) >> (~vec2<u32>(4294967295u, 93380u) % vec2<u32>(32u)))));
    var var_2 = u_input.b.x;
    var var_3 = vec2<u32>(~100556u, u_input.b.x);
    var_2 = ~(~(~_wgslsmith_mult_u32(var_1.x, u_input.b.x)));
    global1 = max(select(vec4<i32>(global0.b.b.b.x, select(-2147483647i, global0.b.b.b.x, false), _wgslsmith_dot_vec2_i32(global0.b.b.b.zx, vec2<i32>(global1.x, global0.b.b.b.x)), 0i), firstTrailingBit(vec4<i32>(global0.b.b.b.x, global0.b.b.b.x, global1.x, -15172i)), !(!vec4<bool>(false, false, true, var_0))) & -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0.b.b.b.x, global1.x, global1.x), firstTrailingBit(vec4<i32>(global0.b.b.b.x, global1.x, global0.b.b.b.x, 1i))), select(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(global0.b.b.b << (u_input.b % vec4<u32>(32u)), ~global0.b.b.b), reverseBits(global0.b.b.b)), vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(17836i, -1i), min(global0.b.b.b.xx, vec2<i32>(0i, global1.x))), -1i, _wgslsmith_mult_i32(~global1.x, global1.x), _wgslsmith_clamp_i32(global1.x, -global0.b.a.b.x, _wgslsmith_add_i32(0i, 51947i))), true));
    let x = u_input.a;
    s_output = func_1();
}

