struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: vec2<bool>;

var<private> global1: vec4<i32> = vec4<i32>(-20956i, 53414i, -44865i, 47854i);

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false));

var<private> global3: vec2<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> vec4<i32> {
    global0 = !vec2<bool>(select(false, true, all(select(vec2<bool>(false, global0.x), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)))), all(vec3<bool>(true, true, true)));
    global1 = vec4<i32>(select(_wgslsmith_div_i32(firstLeadingBit(1i), global3.x), abs(reverseBits(0i)) | u_input.b, !arg_0), global3.x, firstTrailingBit(0i) | 62175i, 1i);
    var var_0 = global2[_wgslsmith_index_u32(~u_input.a, 12u)];
    let var_1 = vec2<bool>(all(!var_0.zzy), var_0.x);
    global1 = ~(-vec4<i32>(1i, 22224i, -6747i, min(u_input.c.x, 0i)) & ~arg_2);
    return vec4<i32>(0i, -46814i, u_input.c.x, global1.x);
}

fn func_2() -> Struct_5 {
    let var_0 = global1.x | 46426i;
    let var_1 = Struct_5(Struct_2(Struct_1(global3.x, global1.zww), Struct_1(~(~var_0), global1.xyz)), ~(~(~func_3(global0.x, global1.x, vec4<i32>(-2147483647i, u_input.b, u_input.c.x, var_0)))), 303f, vec3<u32>(u_input.a, u_input.a, u_input.a & ~u_input.a) >> (vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 53056u))), _wgslsmith_div_u32(~u_input.a, u_input.a), firstTrailingBit(32151u)) % vec3<u32>(32u)), Struct_4(vec3<i32>(1519i, 40277i, global1.x), vec4<i32>(abs(min(-1i, 12433i)), _wgslsmith_mult_i32(411i, u_input.c.x), var_0, -11250i)));
    let var_2 = Struct_5(var_1.a, var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.c)))), vec3<u32>(4294967295u, 13975u, _wgslsmith_div_u32(_wgslsmith_sub_u32(43247u, 1u) & ~u_input.a, 3388u)), var_1.e);
    let var_3 = Struct_4(~(-global1.xwz), var_2.e.b);
    let var_4 = var_1;
    return var_1;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> bool {
    var var_0 = func_2();
    global1 = vec4<i32>(var_0.a.a.b.x, -18611i, -2147483647i, -1i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c, var_0.c))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c, var_0.c), vec2<f32>(var_0.c, var_0.c)))))));
    global2 = array<vec4<bool>, 12>();
    var var_2 = var_1;
    return !global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-2555f, -505f, 236f), global0.x && func_1(Struct_4(vec3<i32>(global3.x, 2147483647i, global1.x), vec4<i32>(-2147483647i, global3.x, global1.x, -2147483647i)), vec2<u32>(u_input.a, 4294967295u)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1437f, 257f, -1660f)))));
    let var_1 = ~(~(-_wgslsmith_mult_vec4_i32(~vec4<i32>(global1.x, u_input.c.x, -23536i, 37785i), -vec4<i32>(4383i, 2147483647i, 27534i, u_input.b))));
    var var_2 = func_2().a;
    global1 = vec4<i32>(func_3(false, -u_input.c.x << (abs(_wgslsmith_mult_u32(u_input.a, 1u)) % 32u), _wgslsmith_clamp_vec4_i32(abs(-var_1), ~vec4<i32>(1i, var_2.a.b.x, global3.x, u_input.b), var_1)).x, global1.x, -global3.x, -42224i >> (_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a, u_input.a)), reverseBits(u_input.a)) % 32u));
    var var_3 = Struct_3(select(any(vec2<bool>(any(vec2<bool>(true, global0.x)), !global0.x)), global0.x, all(!vec2<bool>(false, global0.x))));
    let var_4 = ~(~vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_1, var_1), var_1), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, global3.x), ~vec2<i32>(2147483647i, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(676f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -157f), var_0.x)), var_0.x, -659f))));
}

