struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: bool;

var<private> global2: array<bool, 3> = array<bool, 3>(true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = false;
    global2 = array<bool, 3>();
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(95329u, 0u, 0u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(10247u, 12116u, 1u)), vec3<u32>(1u, 1u, 1u))), vec3<u32>(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13280u, 0u, 23086u), vec4<u32>(77513u, 0u, 1u, 93554u)), min(~0u, countOneBits(462u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(10338u, 55635u)), ~51845u, max(1u, 58198u))));
    let var_2 = !vec3<bool>(var_0, false, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1247f, _wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(731f + _wgslsmith_f_op_f32(f32(-1f) * -191f)) * 169f), 1440f));
    return !vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, abs(var_1.x) ^ _wgslsmith_div_u32(var_1.x, var_1.x)), 3u)], var_0, var_3.x > _wgslsmith_div_f32(-1031f, var_3.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), -1268f));
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.d.x)), arg_1.d.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(step(503f, var_0)))), _wgslsmith_f_op_f32(select(arg_1.d.x, 459f, global2[_wgslsmith_index_u32(49050u, 3u)])))));
    global1 = any(select(vec3<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(arg_3, 3u)], false)), !(!global2[_wgslsmith_index_u32(104147u, 3u)]), global2[_wgslsmith_index_u32(arg_3, 3u)]), func_3(), global2[_wgslsmith_index_u32(arg_2.x << (firstTrailingBit(~arg_2.x) % 32u), 3u)]));
    return Struct_3(Struct_1(true, _wgslsmith_div_f32(956f, -121f) >= arg_0, _wgslsmith_f_op_vec3_f32(arg_1.d + arg_1.d), arg_1.c.x & ~_wgslsmith_clamp_i32(arg_1.c.x, -8757i, arg_1.b.x), _wgslsmith_div_vec2_f32(arg_1.d.yy, arg_1.d.zy)), Struct_1(!func_3().x, global2[_wgslsmith_index_u32(arg_1.a, 3u)], _wgslsmith_f_op_vec3_f32(-arg_1.d), _wgslsmith_dot_vec2_i32(arg_1.c, vec2<i32>(1i, countOneBits(u_input.a))), _wgslsmith_f_op_vec2_f32(-arg_1.d.zz)));
}

fn func_1() -> Struct_3 {
    global1 = false;
    var var_0 = vec4<bool>(any(vec2<bool>(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28613u, 21727u, 4294967295u), vec3<u32>(4294967295u, 21748u, 1u)), 3u)], false)), true, !(!(!any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 3u)], true, false, false)))), false);
    return func_2(-622f, Struct_2(0u, vec2<i32>(abs(-1i), ~0i), reverseBits(max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-51740i, u_input.a)), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -154f, -1522f) + vec3<f32>(-2087f, 998f, -1683f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-623f, -1230f, -200f) + vec3<f32>(353f, -814f, 1920f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(398f, 581f, -305f))))), ~vec3<u32>(1u, 93420u, 1u) | vec3<u32>(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_add_u32(38013u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 28494u, 504u), vec4<u32>(0u, 21679u, 4294967295u, 17922u))), 71300u), 17047u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(var_0.b, func_1(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(796f, _wgslsmith_f_op_f32(var_0.b.e.x - _wgslsmith_f_op_f32(exp2(var_0.a.c.x))), 993f), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c.x * 1000f) - var_0.a.e.x), -245f), !(!global2[_wgslsmith_index_u32(~1687u, 3u)]))), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 69800u), vec2<u32>(1u, 94014u)), abs(~vec2<u32>(1u, 0u)))));
    var_0 = var_1.b;
    var var_2 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(var_1.a.d ^ (1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, 37665u, 4294967295u), vec3<u32>(55428u, 66309u, 206u)) % 32u)), 1i));
    let var_3 = any(select(select(vec3<bool>(false, false, false), !vec3<bool>(global2[_wgslsmith_index_u32(var_1.d.x, 3u)], true, var_0.a.a), all(vec2<bool>(false, false))), vec3<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.d.x, 29096u), 3u)], var_0.b.a || true), false)) && global2[_wgslsmith_index_u32(var_1.d.x, 3u)];
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(391f + var_0.a.e.x), _wgslsmith_f_op_f32(step(-2436f, 912f)), func_3().x)), -615f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d.x, 4294967295u, var_1.d.x) >> (vec3<u32>(var_1.d.x, var_1.d.x, var_1.d.x) % vec3<u32>(32u)), select(vec3<u32>(88293u, var_1.d.x, var_1.d.x), vec3<u32>(0u, 44987u, 4294967295u), vec3<bool>(var_3, var_3, var_3)))));
}

