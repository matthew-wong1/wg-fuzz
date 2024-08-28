struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -1161f, -1000f);

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1000f, 1427f, -1257f, -1653f));

var<private> global2: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(Struct_1(i32(-2147483648), vec4<bool>(false, false, false, true), true, 702f)), Struct_4(Struct_1(-1i, vec4<bool>(true, false, true, true), false, 1816f)), Struct_4(Struct_1(32245i, vec4<bool>(true, false, false, false), true, -1012f)), Struct_4(Struct_1(71363i, vec4<bool>(false, false, true, true), true, 312f)), Struct_4(Struct_1(0i, vec4<bool>(true, true, false, true), false, -1681f)), Struct_4(Struct_1(-21694i, vec4<bool>(true, true, false, true), true, -437f)), Struct_4(Struct_1(-55504i, vec4<bool>(false, false, true, true), false, 1000f)), Struct_4(Struct_1(0i, vec4<bool>(false, false, true, true), true, 1184f)), Struct_4(Struct_1(-8148i, vec4<bool>(false, true, true, false), false, -647f)), Struct_4(Struct_1(1i, vec4<bool>(true, false, false, false), true, -1070f)), Struct_4(Struct_1(-23796i, vec4<bool>(false, false, false, true), true, 1504f)), Struct_4(Struct_1(-1i, vec4<bool>(true, true, true, false), true, 255f)), Struct_4(Struct_1(-13896i, vec4<bool>(true, true, false, true), true, -121f)), Struct_4(Struct_1(21237i, vec4<bool>(false, false, false, false), true, -302f)), Struct_4(Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true), false, -1356f)), Struct_4(Struct_1(87072i, vec4<bool>(true, true, false, true), true, 1000f)), Struct_4(Struct_1(0i, vec4<bool>(false, false, true, true), true, 1279f)), Struct_4(Struct_1(22512i, vec4<bool>(true, true, true, true), false, 1401f)), Struct_4(Struct_1(1i, vec4<bool>(true, false, true, true), true, 1229f)), Struct_4(Struct_1(28997i, vec4<bool>(true, true, true, true), false, -737f)), Struct_4(Struct_1(0i, vec4<bool>(true, false, true, false), false, -453f)), Struct_4(Struct_1(-94305i, vec4<bool>(true, true, true, false), true, -1928f)), Struct_4(Struct_1(10751i, vec4<bool>(true, true, true, false), false, -973f)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    global2 = array<Struct_4, 23>();
    global2 = array<Struct_4, 23>();
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, 1i, -13867i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -19212i, 20254i), vec4<i32>(55469i, arg_0.b.x, 605i, 2147483647i))), -vec4<i32>(u_input.b, arg_0.a.x, -9183i, arg_0.a.x)), 1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 830u, 1u), ~vec4<u32>(85610u, 4294967295u, 81655u, 24430u)) % 32u)), reverseBits(0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(348f, -1412f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -809f), vec3<f32>(global0.x, 1284f, global0.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x), global0.x, -1000f)), Struct_2(_wgslsmith_add_vec2_i32(u_input.a, -vec2<i32>(u_input.b, -2966i)), u_input.a));
    var var_1 = reverseBits(vec4<i32>(func_1(var_0.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.c.a.x, u_input.b, -46610i), vec4<i32>(39427i, u_input.a.x, -2420i, 22218i)), -2147483647i) | max(1i, -32681i), _wgslsmith_add_i32(u_input.a.x ^ ~var_0.c.b.x, _wgslsmith_mod_i32(var_0.c.a.x << (1u % 32u), ~(-25914i))), ~0i));
    var var_2 = var_1.x;
    var_1 = max(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.b), vec4<i32>(2147483647i, u_input.b, -24120i, 1i), ~vec4<i32>(var_1.x, var_0.c.b.x, 32168i, var_1.x)) & _wgslsmith_sub_vec4_i32(firstTrailingBit(-vec4<i32>(16187i, var_0.c.b.x, 1i, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.b.x, var_0.c.a.x, var_1.x, 1i), vec4<i32>(1i, -32926i, -1i, 2147483647i)) << (vec4<u32>(39570u, 1u, 1u, 23495u) % vec4<u32>(32u))), min(~(vec4<i32>(u_input.b, var_0.c.a.x, var_1.x, -33505i) | vec4<i32>(2147483647i, -1i, var_0.c.b.x, 1i)), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -1i, 31220i), var_0.c.a.x, _wgslsmith_mult_i32(var_1.x, 1i), firstTrailingBit(u_input.b))) << (vec4<u32>(max(_wgslsmith_mult_u32(43234u, 47668u), 0u), 21913u, ~(~1u), max(1u, ~3289u)) % vec4<u32>(32u)));
    let var_3 = global2[_wgslsmith_index_u32(min(56561u, 4294967295u >> (1u % 32u)), 23u)];
    global2 = array<Struct_4, 23>();
    let var_4 = i32(-1i) * -25991i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b), -1484f, countOneBits(18364i), _wgslsmith_clamp_u32(54072u, 1u, 4294967295u));
}

