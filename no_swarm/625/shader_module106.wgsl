struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool;

var<private> global2: array<Struct_2, 3>;

var<private> global3: u32 = 1u;

var<private> global4: f32 = 615f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = 33139u & ~arg_0.b.x;
    var var_1 = false;
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1177i, arg_3.a.x, -26110i), ~min(arg_0.a, -53405i)), arg_1.zx), arg_3.d.yx);
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(256f + -286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f * 1000f)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f))));
    var var_3 = Struct_1(countOneBits(arg_1.x), vec2<u32>(_wgslsmith_clamp_u32(var_0 << (_wgslsmith_mod_u32(arg_3.b.x, var_0) % 32u), _wgslsmith_add_u32(var_0, _wgslsmith_dot_vec4_u32(arg_3.b, vec4<u32>(var_0, u_input.a, arg_0.b.x, var_0))), 1u | u_input.a), ~u_input.a));
    return _wgslsmith_add_vec3_i32(~(-(vec3<i32>(var_2.x, 1i, u_input.b.x) << (abs(vec3<u32>(4294967295u, 0u, 12485u)) % vec3<u32>(32u)))), vec3<i32>(0i, arg_1.x, ~_wgslsmith_div_i32(arg_2, 1i) & select(1i << (var_3.b.x % 32u), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(var_2.x, 0i, arg_1.x, u_input.b.x)), true)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: u32) -> vec4<f32> {
    global3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a | ~u_input.a, _wgslsmith_clamp_u32(max(u_input.a, arg_3), 1u, arg_3)), (vec3<u32>(arg_3, 11784u, arg_3) & _wgslsmith_add_vec3_u32(vec3<u32>(52104u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(7700u, u_input.a, arg_3), abs(vec3<u32>(0u, 1u, 0u)))), select(firstTrailingBit(abs(abs(vec3<u32>(1u, arg_3, arg_3)))), abs(vec3<u32>(u_input.a, min(33425u, arg_3), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a))), (arg_3 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, u_input.a, u_input.a), vec3<u32>(1u, arg_3, 21189u)) % 32u)) <= 4294967295u));
    global0 = arg_2;
    let var_0 = Struct_1(u_input.c, vec2<u32>(41193u, ~_wgslsmith_add_u32(arg_3, _wgslsmith_sub_u32(u_input.a, arg_3))));
    let var_1 = var_0;
    let var_2 = Struct_1(-_wgslsmith_clamp_i32(-20558i, _wgslsmith_mod_i32(8467i, var_0.a), _wgslsmith_mod_i32(var_1.a, ~u_input.b.x)), var_1.b);
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0 - arg_1))), 404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1901f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = vec3<i32>(-1i) * -(~min(u_input.b, func_2(arg_0.c, vec4<i32>(u_input.c, arg_0.a.x, -2147483647i, 48439i), arg_0.c.a, global2[_wgslsmith_index_u32(arg_0.b.x, 3u)])));
    var var_1 = vec4<i32>(func_2(Struct_1(68667i, _wgslsmith_clamp_vec2_u32(arg_1.zy, arg_1.xx, vec2<u32>(arg_1.x, 1u)) >> (~arg_0.c.b % vec2<u32>(32u))), -vec4<i32>(abs(arg_0.d.x), ~(-58719i), -13469i, ~var_0.x), firstLeadingBit(~(~(-1i))), global2[_wgslsmith_index_u32(arg_1.x, 3u)]).x, -arg_0.a.x, u_input.c & ~var_0.x, _wgslsmith_add_i32(36751i, arg_0.c.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(func_3(165f, -475f, true, _wgslsmith_sub_u32(arg_0.c.b.x, _wgslsmith_clamp_u32(reverseBits(58953u), 20676u, 30325u))));
    return select(vec2<bool>(true, !any(vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, true)), !(abs(select(arg_0.c.b.x, 53454u, true)) > ~28656u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.a;
    global0 = false;
    var var_0 = !vec2<bool>(all(!func_1(Struct_2(u_input.b.xy, vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), Struct_1(u_input.b.x, vec2<u32>(u_input.a, u_input.a)), vec3<i32>(1i, -32111i, -6235i)), vec3<u32>(4294967295u, 0u, u_input.a))), true);
    let var_1 = Struct_1(_wgslsmith_div_i32(0i, u_input.b.x) ^ -u_input.b.x, ~select(~(vec2<u32>(u_input.a, 1u) & vec2<u32>(u_input.a, 67906u)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(67691u, 4294967295u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(1u, u_input.a)), all(vec2<bool>(false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~7056u, -32999i);
}

