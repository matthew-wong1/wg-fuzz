struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: u32;

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

var<private> global3: array<vec2<u32>, 29>;

var<private> global4: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec3<bool> {
    return !(!(!select(select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, global0.a, global0.a), vec3<bool>(global0.a, global0.a, false)), !vec3<bool>(true, global0.a, false), select(vec3<bool>(false, false, global0.a), vec3<bool>(global0.a, true, global0.a), false))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 28720i, -40959i), vec3<i32>(global4.a.x, -232i, arg_0))), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(1i, arg_0, arg_0)), select(~vec3<i32>(global4.a.x, arg_0, global4.a.x), -vec3<i32>(global4.a.x, -22240i, global4.a.x), all(vec2<bool>(true, false))), firstTrailingBit(~vec3<i32>(arg_0, global4.a.x, arg_0)))), ((vec3<i32>(67073i, arg_0, -2147483647i) & (vec3<i32>(arg_0, 0i, 2147483647i) | vec3<i32>(global4.a.x, 2147483647i, -2147483647i))) & vec3<i32>(74596i, -1i, global4.a.x)) << (~(~(~u_input.b)) % vec3<u32>(32u)));
    global0 = global2[_wgslsmith_index_u32(154u, 28u)];
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(~vec3<i32>(global4.a.x, var_0.x, 1i), vec3<i32>(arg_0, arg_0, 1i)), ~arg_0), -2147483647i, -37546i, arg_0);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -930f), -433f)), _wgslsmith_f_op_f32(f32(-1f) * -433f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) - _wgslsmith_div_f32(var_2, var_2)), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, 114f, true))) + _wgslsmith_f_op_f32(var_2 + 671f)))));
    return (~u_input.a << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a)), vec4<u32>(38548u, 81u, 8293u, global4.b.x)) % 32u)) >> (74751u % 32u);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    global1 = 1u;
    let var_0 = -1093f;
    var var_1 = -2147483647i;
    let var_2 = !all(!select(vec3<bool>(global0.a, true, global0.a), func_2(), vec3<bool>(false, global0.a, false)));
    var var_3 = Struct_1(!(false | (-1056f >= _wgslsmith_div_f32(var_0, -1000f))));
    return Struct_2(global4.a, arg_0.xzz, ~func_3((-1i << (u_input.a % 32u)) & min(global4.a.x, global4.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~(-global4.a), global4.b, ~select(1u, ~(~global4.b.x), false));
    global1 = ~26486u;
    var var_1 = !(global0.a == global0.a);
    global2 = array<Struct_1, 28>();
    var var_2 = _wgslsmith_f_op_f32(min(873f, 1180f));
    let var_3 = func_1(~select(vec4<u32>(20044u, var_0.b.x, firstTrailingBit(46145u), var_0.b.x), min(vec4<u32>(u_input.b.x, 0u, 0u, global4.c), ~vec4<u32>(5542u, u_input.b.x, global4.b.x, global4.c)), vec4<bool>(global0.a, global0.a, !global0.a, global0.a)));
    var var_4 = var_3;
    let var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(29191u, u_input.b.x) | max(~vec2<u32>(u_input.c.x, 0u), var_5.xx)), select(var_4.b ^ abs(min(global4.b, vec3<u32>(var_0.c, 4294967295u, 4294967295u))), ~(~vec3<u32>(42809u, 4294967295u, u_input.a) & ~vec3<u32>(41159u, var_4.c, 1u)), vec3<bool>(all(vec4<bool>(global0.a, global0.a, true, false)), global0.a, global0.a)), reverseBits(max(vec3<i32>(-2147483647i, var_3.a.x, 0i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-9292i, var_4.a.x, global4.a.x), vec3<i32>(-1i, global4.a.x, -2147483647i)), _wgslsmith_mod_vec3_i32(min(vec3<i32>(global4.a.x, 1i, var_0.a.x), vec3<i32>(2147483647i, global4.a.x, var_4.a.x)), vec3<i32>(var_4.a.x, global4.a.x, -48718i) & vec3<i32>(var_3.a.x, var_4.a.x, -9027i)))), ~14374u, ~0u);
}

