struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<u32, 21> = array<u32, 21>(4294967295u, 4294967295u, 4294967295u, 0u, 5066u, 39228u, 15428u, 27234u, 1u, 9766u, 29855u, 4768u, 6850u, 0u, 13311u, 4294967295u, 0u, 4294967295u, 32368u, 47057u, 42024u);

var<private> global2: Struct_1 = Struct_1(vec4<i32>(708i, 0i, 0i, 2147483647i), vec2<u32>(20461u, 26313u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = array<f32, 9>();
    var var_0 = firstTrailingBit(4294967295u);
    global2 = Struct_1(arg_1.a, arg_1.b);
    var_0 = u_input.b.x;
    global1 = array<u32, 21>();
    return ~4294967295u;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = arg_1.a.a;
    let var_1 = 0u;
    var var_2 = -1000f;
    var var_3 = all(vec2<bool>(!(_wgslsmith_clamp_u32(70732u, 0u, var_1) != firstTrailingBit(global2.b.x)), -1i <= _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, arg_1.a.a.a.x), vec2<i32>(arg_1.a.a.a.x, 5683i), arg_2.x), vec2<i32>(global2.a.x, var_0.a.x))));
    var var_4 = Struct_2(Struct_1(var_0.a, vec2<u32>(_wgslsmith_clamp_u32(4294967295u, global2.b.x, 4220u), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, var_0.b.x), vec2<u32>(4294967295u, u_input.b.x)))));
    return !vec3<bool>(all(vec4<bool>(true, true, false, all(arg_2.xz))), any(select(select(arg_1.c, vec3<bool>(false, false, arg_1.c.x), arg_1.c.x), arg_1.c, vec3<bool>(false, true, arg_1.c.x))), all(arg_1.c));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>((global0[_wgslsmith_index_u32(min(firstLeadingBit(27061u), func_2(vec3<f32>(-1429f, -1111f, global0[_wgslsmith_index_u32(0u, 9u)]), Struct_1(global2.a, global2.b), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], 21u)])), 9u)] < 2871f) | all(vec4<bool>(true, true, true, true)), true);
    var var_1 = Struct_3(!select(!vec3<bool>(false, false, var_0.x), select(!vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true)), func_3(~u_input.b, Struct_4(Struct_2(Struct_1(vec4<i32>(-2147483647i, -2147483647i, global2.a.x, u_input.a), u_input.b)), 1u, vec3<bool>(true, false, true)), !vec3<bool>(var_0.x, var_0.x, var_0.x))), true);
    global2 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-13605i, 1i, global2.a.x, u_input.a), global2.a), vec4<i32>(-36471i, u_input.a, 11695i, 0i)), global2.a.x, u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)), vec4<i32>(~(-26001i), _wgslsmith_dot_vec3_i32(global2.a.xwx, ~vec3<i32>(-37091i, -9939i, 42689i)), 27323i, global2.a.x), global2.a), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(59844u, global1[_wgslsmith_index_u32(u_input.b.x, 21u)]) << (vec2<u32>(6626u, 27139u) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(vec2<u32>(~global2.b.x, abs(u_input.b.x)), vec2<u32>(~global1[_wgslsmith_index_u32(0u, 21u)], 57233u))));
    var_0 = vec2<bool>(var_1.b, var_1.b);
    var var_2 = ~0u;
    return Struct_1(abs(_wgslsmith_mod_vec4_i32(abs(select(global2.a, vec4<i32>(52604i, global2.a.x, global2.a.x, -2147483647i), var_1.b)), vec4<i32>(_wgslsmith_clamp_i32(1i, 2147483647i, -6350i), -1i, select(u_input.a, 1i, false), -2147483647i))), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = 164f;
    let var_1 = -2407f;
    let var_2 = Struct_4(Struct_2(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, -15837i, 13389i), global2.a) & func_1().a, u_input.b)), ~select(global2.b.x, global2.b.x, (-458f == var_0) & true), vec3<bool>(false, true & any(vec2<bool>(false, false)), all(vec2<bool>(true, true))));
    let var_3 = !var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 891f, var_0, global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1174f, 1379f, 608f, -449f)))))), global0[_wgslsmith_index_u32(1u, 9u)], select(var_2.a.a.a.yy, ~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i) | vec2<i32>(global2.a.x, u_input.a), vec2<i32>(6298i, -2147483647i)), var_2.c.zx));
}

