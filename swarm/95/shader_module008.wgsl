struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, true, false, false, true, false, false, false, false, false, false, false, false, false, true, false, true, true, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global1 = array<bool, 23>();
    var var_0 = 24607u;
    var var_1 = 231f;
    let var_2 = -11768i;
    global1 = array<bool, 23>();
    return var_2;
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_3) -> i32 {
    let var_0 = arg_2;
    var var_1 = arg_2;
    var var_2 = firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(~var_1.b.x, 8381u), ~select(vec2<u32>(arg_2.d, arg_2.a.c.x), abs(var_1.a.c), !vec2<bool>(true, var_1.e))));
    global1 = array<bool, 23>();
    var_2 = _wgslsmith_div_vec2_u32(abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 4294967295u), arg_2.a.c), ~var_2.x)) ^ (vec2<u32>(var_2.x, countOneBits(20364u)) & _wgslsmith_add_vec2_u32(arg_2.b.xw, vec2<u32>(var_0.d, u_input.b.x))), ~firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14002u, var_2.x, 42201u), var_1.b.wxx), 30014u)));
    return var_0.a.d;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec2_i32(-(~max(vec2<i32>(-1i, -70181i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, 45760i)))), _wgslsmith_add_vec2_i32(vec2<i32>(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-358f, 302f, -331f) + vec3<f32>(131f, -1407f, -1000f))), _wgslsmith_dot_vec4_i32(vec4<i32>(17656i, 1i, -2147483647i, 2147483647i), vec4<i32>(-1i, -2147483647i, -1i, 0i))), vec2<i32>(func_3(_wgslsmith_div_i32(-1i, 1229i), -vec4<i32>(58436i, -16236i, -1i, -14972i), Struct_3(Struct_2(Struct_1(vec2<i32>(0i, 2147483647i)), vec4<f32>(439f, -619f, 236f, -176f), vec2<u32>(4294967295u, 20876u), 2147483647i), u_input.b, Struct_1(vec2<i32>(-1i, 19755i)), 3101u, false)), 1i)));
    return Struct_3(Struct_2(Struct_1(select(vec2<i32>(var_0.x, var_0.x) << (u_input.b.yw % vec2<u32>(32u)), abs(vec2<i32>(20729i, var_0.x)), any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 23u)], false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-443f)), _wgslsmith_f_op_f32(1273f * -379f), _wgslsmith_f_op_f32(-1265f * 1347f), -294f)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(u_input.b.x, u_input.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(46335u, 0u), u_input.a.yx)), 22686i), _wgslsmith_div_vec4_u32(max(u_input.b, select(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], false, true, false))) << (u_input.b % vec4<u32>(32u)), firstTrailingBit(~u_input.b)), Struct_1(abs(vec2<i32>(var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)))), u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a.x), 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(var_1.a.b.x - _wgslsmith_f_op_f32(select(var_1.a.b.x, 861f, var_1.e & !(global1[_wgslsmith_index_u32(var_1.a.c.x, 23u)] || var_1.e))));
    let var_3 = -vec2<i32>(var_1.c.a.x, var_1.a.a.a.x) & -vec2<i32>(var_1.a.d, -var_1.a.d);
    let var_4 = !select(vec4<bool>(select(true, global1[_wgslsmith_index_u32(62953u, 23u)] & true, any(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 23u)]))), func_1().e, !all(vec4<bool>(global1[_wgslsmith_index_u32(15725u, 23u)], true, global1[_wgslsmith_index_u32(32059u, 23u)], global1[_wgslsmith_index_u32(var_1.b.x, 23u)])), var_1.e), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 23u)], false, true, false), vec4<bool>(true, var_1.e, var_1.e, true), false), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(8461u, 23u)], false), vec4<bool>(true, var_1.e, true, true), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(var_1.d, 23u)])), true), global1[_wgslsmith_index_u32(func_1().d, 23u)]);
    let var_5 = reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(24662i, -22738i, -64996i, var_3.x), ~vec4<i32>(var_1.c.a.x, var_3.x, -49786i, -30299i), vec4<i32>(var_3.x, var_3.x, -59193i, -1i) << (vec4<u32>(44760u, u_input.a.x, 12933u, u_input.b.x) % vec4<u32>(32u))) >> (~select(u_input.b, var_1.b, var_4) % vec4<u32>(32u)), vec4<i32>(func_2(_wgslsmith_f_op_vec3_f32(max(var_1.a.b.yxz, var_1.a.b.xxz))), -2147483647i, ~(~2147483647i), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(var_5.x, var_3.x)), _wgslsmith_add_i32(var_1.a.d, var_5.x) << (u_input.b.x % 32u)), ~(~(~1u)), var_5.zxw, ~(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 0u, 39439u, 4294967295u), var_1.b) | ~min(vec4<u32>(var_1.d, var_1.a.c.x, 6529u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 0u))), 358f);
}

