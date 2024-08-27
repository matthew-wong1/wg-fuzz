struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4464u, 0u, 28831u);

var<private> global1: array<Struct_3, 3>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = select(!(select(_wgslsmith_mult_u32(17167u, 29421u), 45073u ^ global0.x, true) != ~(~global0.x)), !all(vec3<bool>(true, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, true, true, true)))), true);
    global1 = array<Struct_3, 3>();
    let var_1 = !(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    global3 = array<Struct_2, 26>();
    var var_2 = global3[_wgslsmith_index_u32(1u, 26u)];
    return vec4<bool>(false, true, true, !all(!(!var_1)));
}

fn func_2() -> i32 {
    var var_0 = -443f;
    global1 = array<Struct_3, 3>();
    let var_1 = -1i;
    let var_2 = all(select(!vec4<bool>(true, -34062i < u_input.c, false, -2147483647i >= var_1), func_3(), func_3()));
    global3 = array<Struct_2, 26>();
    return i32(-1i) * -2147483647i;
}

fn func_1() -> Struct_3 {
    var var_0 = firstLeadingBit(u_input.e.x);
    var var_1 = -reverseBits(vec4<i32>(-43110i, u_input.c, i32(-1i) * -6100i, ~u_input.c)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(-10577i, u_input.c), u_input.c, min(max(u_input.c, u_input.c), -u_input.c), u_input.c ^ -u_input.c), vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<i32>(21384i, min(u_input.c, -10841i), func_2(), u_input.c));
    var_0 = ~_wgslsmith_add_u32(~30854u, reverseBits(u_input.b));
    let var_2 = _wgslsmith_div_vec3_u32(global0.zwx, ~select(~firstTrailingBit(vec3<u32>(1u, 36617u, u_input.d)), ~vec3<u32>(44899u, 20731u, u_input.d), true));
    var var_3 = -1i >= (u_input.c << (~abs(35662u) % 32u));
    return Struct_3(global3[_wgslsmith_index_u32(~global0.x, 26u)], Struct_1(_wgslsmith_add_i32(-1i, 6889i), firstTrailingBit(var_1.zz), ~reverseBits(4294967295u) > (49975u | u_input.a.x), ~min(~global0.yyy, countOneBits(vec3<u32>(0u, 1u, var_2.x))), var_2.x ^ global0.x), min(_wgslsmith_div_vec3_i32(var_1.zyz, ~(~vec3<i32>(-7143i, u_input.c, var_1.x))), countOneBits(countOneBits(_wgslsmith_sub_vec3_i32(var_1.zyx, vec3<i32>(var_1.x, var_1.x, u_input.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1270f, -779f, 1000f, -1032f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, -1000f, -403f, -588f)) - vec4<f32>(500f, -514f, 1307f, -1181f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(975f, 1000f, -291f, 1534f) + vec4<f32>(236f, 1000f, 631f, 231f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-750f, 2166f, 120f, -1351f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1839f, 1000f, 1973f, 235f) * vec4<f32>(-994f, -384f, 330f, -699f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1115f, -290f, -157f, -1000f), vec4<f32>(355f, -2009f, 698f, 700f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1359f, -680f, 1000f, -1217f), vec4<f32>(222f, 1000f, 499f, -941f))) * vec4<f32>(_wgslsmith_f_op_f32(399f * -647f), _wgslsmith_f_op_f32(499f + -407f), _wgslsmith_f_op_f32(1000f * -344f), 658f))));
    let var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.e.x), ~_wgslsmith_div_u32(93204u, _wgslsmith_mod_u32(4294967295u, u_input.b))), _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_sub_u32(~1u, 1u)), global0.x);
    let var_2 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(var_1), ~var_1), 1u), 26u)], Struct_1(u_input.c, max(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, u_input.c)), (vec2<i32>(u_input.c, -2147483647i) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))) << (~global0.xx % vec2<u32>(32u))), true, global0.xww, ~4294967295u), ~vec3<i32>(u_input.c, u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -26567i, 1i, u_input.c), vec4<i32>(-20727i, -7657i, u_input.c, u_input.c))));
    let var_3 = ~u_input.e;
    var var_4 = _wgslsmith_f_op_f32(-var_0.x);
    let var_5 = func_1();
    var_4 = _wgslsmith_f_op_f32(round(-525f));
    let x = u_input.a;
    s_output = StorageBuffer(min(9100i, -9481i >> (firstTrailingBit(5347u) % 32u)), var_0.x, _wgslsmith_mult_vec4_i32(-(~(~vec4<i32>(2147483647i, -1i, u_input.c, var_5.a.b.a))), ~vec4<i32>(var_5.b.a, -2147483647i, var_2.b.a, var_5.b.b.x)), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -101f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))), 970f), -2275f);
}

