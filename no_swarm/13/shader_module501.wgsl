struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec4<i32> = vec4<i32>(22056i, 0i, -1i, -52714i);

var<private> global2: Struct_5 = Struct_5(Struct_3(283f, -22932i, 47518u, 7417u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>) -> u32 {
    let var_0 = global2.a.b;
    var var_1 = global2.a;
    let var_2 = -3203i;
    var var_3 = ~(~(select(vec4<u32>(1u, 0u, var_1.c, global2.a.d) | vec4<u32>(u_input.c, 1u, global2.a.d, 995u), vec4<u32>(global0[_wgslsmith_index_u32(global2.a.d, 18u)], 67359u, 110142u, global0[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<bool>(true, true, true, true)) | ~vec4<u32>(0u, 18777u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75930u, 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67564u, 18u)], 18u)])));
    var_1 = arg_0.a;
    return arg_0.a.c;
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(599f, arg_0.a) - vec2<f32>(arg_0.a, arg_0.a)) - vec2<f32>(676f, arg_0.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, global2.a.a) - vec2<f32>(arg_0.a, -128f)) * vec2<f32>(-1790f, -791f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.a, 1374f))), any(vec3<bool>(true, true, true))))), vec3<u32>(~_wgslsmith_div_u32(reverseBits(u_input.c), 1u), firstTrailingBit(~_wgslsmith_add_u32(1u, global2.a.c)), ~21393u), Struct_1(all(vec3<bool>(false, true, false)) || false, !vec2<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)))));
    let var_1 = _wgslsmith_f_op_f32(max(504f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))) * 565f), _wgslsmith_f_op_f32(f32(-1f) * -837f)))));
    let var_2 = -reverseBits(_wgslsmith_mult_vec2_i32(global1.yx, global1.yz));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(-1000f, arg_0.a)))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1000f), -1050f)))), var_0.b, Struct_1(all(select(!vec3<bool>(var_0.c.b.x, var_0.c.a, true), !vec3<bool>(false, var_0.c.a, var_0.c.a), all(vec4<bool>(true, var_0.c.a, var_0.c.a, var_0.c.a)))), select(vec2<bool>(true, true), !select(var_0.c.b, var_0.c.b, vec2<bool>(var_0.c.b.x, true)), var_0.c.a)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), var_0.a)), ~vec3<u32>(3457u, abs(u_input.c & global2.a.d), arg_0.d), var_0.c);
    return ~(~_wgslsmith_mod_vec4_i32(~(vec4<i32>(global1.x, 12250i, -1i, var_2.x) << (vec4<u32>(var_0.b.x, arg_0.c, arg_0.c, arg_0.d) % vec4<u32>(32u))), ~vec4<i32>(arg_0.b, -2147483647i, -2612i, -26850i)));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.c, 0u, global2.a.c), vec4<u32>(4294967295u, u_input.c, 19430u, 4294967295u)), func_2(Struct_5(global2.a), vec3<f32>(global2.a.a, -490f, global2.a.a)), firstLeadingBit(global2.a.c))) >> (~(~abs(vec3<u32>(0u, 0u, 0u))) % vec3<u32>(32u)), ~vec3<u32>(func_2(Struct_5(global2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(2183f, global2.a.a, global2.a.a) - vec3<f32>(-1239f, global2.a.a, global2.a.a))), u_input.c, 56089u | ~u_input.c));
    var var_1 = 51028u != _wgslsmith_clamp_u32(max(~firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(~var_0.zz, reverseBits(var_0.xz))), 1u, 13312u >> (global2.a.d % 32u));
    global0 = array<u32, 18>();
    let var_2 = any(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), vec3<bool>(true, 33702u < u_input.c, u_input.c < 4294967295u)), vec3<bool>((global1.x < global2.a.b) || false, false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), false));
    global1 = ~(vec4<i32>(-1i) * -(countOneBits(vec4<i32>(14428i, global1.x, -1i, 0i)) | (vec4<i32>(1i, u_input.a, u_input.a, global2.a.b) << (vec4<u32>(36752u, 1u, 43450u, 59212u) % vec4<u32>(32u)))));
    return StorageBuffer(countOneBits(func_3(Struct_3(global2.a.a, global1.x, global2.a.c << (var_0.x % 32u), 70713u))), select(firstLeadingBit(~(global1.zzy >> (vec3<u32>(global0[_wgslsmith_index_u32(global2.a.c, 18u)], var_0.x, 9256u) % vec3<u32>(32u)))), func_3(global2.a).xxy, !(!vec3<bool>(false, var_2, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = 4294967295u;
    let x = u_input.a;
    s_output = func_1();
}

