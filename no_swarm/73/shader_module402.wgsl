struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>) -> f32 {
    global1 = !(any(vec4<bool>(false, true, true, select(true, false, true))) & any(vec2<bool>(select(true, false, true), all(vec3<bool>(false, true, true)))));
    let var_0 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1480f)) * _wgslsmith_f_op_f32(max(683f, -641f))) * -944f)));
    let var_1 = false;
    global1 = false;
    let var_2 = arg_1.yy;
    return -514f;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1376f, 636f, -1096f, 278f), vec4<f32>(-1000f, -483f, 1236f, -849f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, -1000f, -399f, -1826f))) + vec4<f32>(_wgslsmith_f_op_f32(-1069f * -1122f), _wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(func_3(vec3<u32>(3891u, u_input.e.x, u_input.b.x), vec4<f32>(984f, 450f, 1000f, -343f))), 506f))), _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(16694i, -6312i), _wgslsmith_mod_i32(u_input.d.x, u_input.c.x)) & _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.d.x, -2147483647i, -2147483647i), reverseBits(u_input.d.x)), u_input.d.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-498f, -2245f, -1089f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1956f, -456f, 958f) + vec3<f32>(1168f, -596f, -771f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-141f, 773f, 179f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1696f, -583f, -1207f), vec3<f32>(580f, 241f, -1683f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(f32(-1f) * -1723f), _wgslsmith_f_op_f32(-1179f * 1361f)))), 189f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(660f)), _wgslsmith_f_op_f32(abs(-476f))))));
    return ~u_input.b.zz;
}

fn func_1(arg_0: bool) -> bool {
    global1 = arg_0;
    global2 = array<Struct_1, 19>();
    var var_0 = ~abs(max(vec2<u32>(100982u, u_input.a.x), u_input.b.zy)) | ~func_2();
    global0 = true;
    global1 = !arg_0;
    return arg_0;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> StorageBuffer {
    var var_0 = true;
    var var_1 = Struct_1(vec4<f32>(-421f, arg_2.c.x, -541f, -366f), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.d.x, arg_3), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d, vec2<i32>(u_input.c.x, arg_3)), reverseBits(u_input.d))), vec2<i32>(_wgslsmith_sub_i32(-arg_3, reverseBits(arg_3)), abs(u_input.d.x))), arg_2.a.zwy);
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(~reverseBits(vec3<i32>(-1i, u_input.c.x, 0i))), vec3<i32>(~u_input.c.x, 75700i, abs(_wgslsmith_div_i32(arg_2.b, 2147483647i)))), arg_3, var_1.b, arg_3);
    global1 = false;
    var var_3 = arg_3;
    return StorageBuffer(vec4<u32>(u_input.b.x, _wgslsmith_div_u32(67280u, u_input.b.x) >> (u_input.b.x % 32u), _wgslsmith_mod_u32(33833u, _wgslsmith_sub_u32(u_input.a.x, u_input.b.x)), ~102006u) >> (abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.e.x, u_input.a.x, u_input.e.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.e.x, u_input.b.x, 42708u), vec4<u32>(0u, u_input.b.x, 13387u, 66617u)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 19>();
    var var_0 = all(vec2<bool>(true, true));
    var var_1 = ~u_input.c.x;
    global1 = true;
    var var_2 = global2[_wgslsmith_index_u32(u_input.e.x, 19u)];
    let x = u_input.a;
    s_output = func_4(vec3<bool>(func_1(true), true, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1307f, _wgslsmith_f_op_f32(-var_2.a.x))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x), var_2.c.x, -547f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1916f, var_2.c.x, 1000f, 2065f)))), _wgslsmith_mult_i32(~(-2147483647i), var_2.b) >> (~select(25033u, 19659u, true) % 32u), vec3<f32>(_wgslsmith_f_op_f32(floor(1231f)), var_2.c.x, -1646f)), u_input.d.x);
}

