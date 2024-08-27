struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<Struct_4, 1>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec3<i32> = vec3<i32>(-60417i, 2756i, -40643i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool) -> bool {
    global1 = array<Struct_4, 1>();
    global1 = array<Struct_4, 1>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(1347f)), Struct_1(_wgslsmith_mult_i32(-23818i, global3.x), 4294967295u, 4294967295u, vec3<u32>(arg_1.c, max(1u, ~u_input.b), 4294967295u << (~arg_1.b % 32u)), _wgslsmith_f_op_vec4_f32(select(arg_1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.e.x, -1214f, 367f, arg_1.e.x), vec4<f32>(599f, 830f, arg_1.e.x, 1767f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, arg_1.e.x, arg_1.e.x, arg_1.e.x))), any(!arg_0.xx)))));
    global3 = u_input.a.wxx;
    let var_1 = 737f;
    return !arg_2;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = any(!(!select(select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, true, false), vec4<bool>(arg_2.a.x, arg_2.e.x, arg_2.a.x, false)), vec4<bool>(true, true, true, true), !arg_2.e.x)));
    var var_1 = vec2<bool>(func_2(vec3<bool>(true, true, select(var_0, false, arg_2.e.x)), Struct_1(select(1i, arg_0.x, false), arg_2.c, _wgslsmith_mod_u32(1u, u_input.b), arg_1.d, vec4<f32>(arg_1.e.x, _wgslsmith_f_op_f32(-arg_1.e.x), arg_1.e.x, _wgslsmith_f_op_f32(arg_1.e.x * -1407f))), false), var_0);
    let var_2 = Struct_1(global3.x, 31030u, arg_1.d.x, vec3<u32>(16249u, arg_1.d.x >> (arg_2.c % 32u), arg_1.d.x), arg_1.e);
    var_1 = select(!(!vec2<bool>(func_2(arg_2.a, arg_1, var_1.x), true)), !select(!select(arg_2.a.zy, arg_2.a.zx, vec2<bool>(arg_2.e.x, var_1.x)), vec2<bool>(false, var_2.e.x <= arg_1.e.x), arg_2.a.zz), vec2<bool>(var_1.x, true));
    global0 = arg_1.a ^ arg_2.d.x;
    return 18246u;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_mult_u32(~4294967295u, u_input.b);
    let var_1 = !all(!vec4<bool>(any(vec3<bool>(arg_2.x, arg_2.x, arg_0.x)), func_2(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), Struct_1(-4896i, 46306u, arg_1.b, arg_1.d, vec4<f32>(1000f, arg_1.e.x, -1050f, arg_1.e.x)), arg_2.x), arg_2.x, arg_0.x));
    let var_2 = Struct_1(18906i, firstTrailingBit(_wgslsmith_div_u32(4294967295u, var_0)), 1u, ~((countOneBits(vec3<u32>(u_input.b, 0u, 4294967295u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(27983u, var_0, arg_1.b), arg_1.d, vec3<u32>(59843u, var_0, 27856u)) % vec3<u32>(32u))) << (_wgslsmith_add_vec3_u32(arg_1.d ^ vec3<u32>(104u, u_input.b, u_input.b), vec3<u32>(arg_1.d.x, var_0, 32194u) | vec3<u32>(arg_1.d.x, arg_1.b, 1u)) % vec3<u32>(32u))), arg_1.e);
    let var_3 = _wgslsmith_div_i32(0i, -(~min(max(-2147483647i, var_2.a), _wgslsmith_mult_i32(global3.x, 8129i))));
    let var_4 = arg_1.b;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, func_1(u_input.a.wzx, global2[_wgslsmith_index_u32(u_input.b, 3u)], Struct_4(vec3<bool>(true, true, true), vec2<i32>(2147483647i, u_input.c.x), u_input.b, global3.zy, vec2<bool>(true, true))), 1u), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 64869u, u_input.b), vec3<u32>(70522u, 68885u, u_input.b)), vec3<u32>(4294967295u, 11719u, u_input.b))), ~vec3<u32>(_wgslsmith_sub_u32(1u, u_input.b), 0u, u_input.b));
    let var_1 = 34591u;
    global1 = array<Struct_4, 1>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-136f, -220f, 477f))) * vec3<f32>(-379f, 1157f, 1139f)))));
    let var_3 = 33716i;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec4<i32>(var_3, var_3, _wgslsmith_mod_i32(u_input.c.x, 0i), 1i)), -_wgslsmith_div_vec4_i32(u_input.a, u_input.a) & ~firstLeadingBit(u_input.a), true), -u_input.a, select(select(_wgslsmith_add_vec4_u32(vec4<u32>(18065u, var_1, var_1, u_input.b), vec4<u32>(20475u, u_input.b, 58364u, 0u)), vec4<u32>(1u, u_input.b, 24189u, u_input.b), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true))), select(vec4<u32>(u_input.b, 4294967295u, var_1, u_input.b), vec4<u32>(var_1, 1u, 53355u, var_1), true), select(func_3(vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.b, 3u)], vec2<bool>(false, true)), 1i != var_3, all(vec4<bool>(false, true, true, true)))) | vec4<u32>(1u, _wgslsmith_sub_u32(31160u, 0u), min(_wgslsmith_div_u32(var_1, u_input.b), countOneBits(u_input.b)), abs(48962u)), firstLeadingBit(u_input.a), global3.x);
}

