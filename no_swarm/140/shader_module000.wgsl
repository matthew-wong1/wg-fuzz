struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28>;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 1u, 4294967295u);

var<private> global2: array<f32, 5> = array<f32, 5>(-399f, -379f, 1064f, -1000f, 1257f);

var<private> global3: array<f32, 5> = array<f32, 5>(-1379f, -259f, -1818f, -1257f, 313f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global3 = array<f32, 5>();
    let var_0 = -14703i | abs(u_input.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(25845u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)])) * -394f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(23586u, 5u)] * global2[_wgslsmith_index_u32(global1.x, 5u)]))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(step(1296f, 349f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(39590u, 5u)])))), global3[_wgslsmith_index_u32(global1.x, 5u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1581f - global3[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.x, 5u)])))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 5u)] + 1540f) * global3[_wgslsmith_index_u32(~global1.x, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f + global2[_wgslsmith_index_u32(62193u, 5u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global3[_wgslsmith_index_u32(global1.x, 5u)]) * _wgslsmith_f_op_f32(-714f - global3[_wgslsmith_index_u32(global1.x, 5u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(133668u, 5u)] - global2[_wgslsmith_index_u32(global1.x, 5u)]), -1713f))))));
    let var_2 = _wgslsmith_mod_vec2_u32(~(~global1.zx), ~global1.xx);
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_1.zx);
    return 2985u;
}

fn func_2() -> f32 {
    global2 = array<f32, 5>();
    var var_0 = global3[_wgslsmith_index_u32(61946u, 5u)];
    let var_1 = true && (_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global1.x, 5u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(86097u, 5u)]))), global2[_wgslsmith_index_u32(4294967295u, 5u)]) <= -1174f);
    var var_2 = vec3<u32>(global1.x, global1.x, global1.x);
    global0 = array<vec2<u32>, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(func_3(), 5u)] + _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, var_2.x), 5u)], global2[_wgslsmith_index_u32(var_2.x, 5u)]))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = all(!vec3<bool>(-1000f <= global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], any(vec4<bool>(true, true, true, false)), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.a.x, 5u)], -357f, global3[_wgslsmith_index_u32(3151u, 5u)], global2[_wgslsmith_index_u32(arg_1.a.x, 5u)]), vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], -1687f, 1366f)) * vec4<f32>(-932f, global2[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(global1.x, 5u)], 690f)), vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global1.x, 5u)]), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.x, 5u)] + -971f), _wgslsmith_f_op_f32(ceil(-383f))), all(vec4<bool>(true, var_0, true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 5u)]))), 1621f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(311f + global3[_wgslsmith_index_u32(global1.x, 5u)])), -1236f)));
    let var_2 = arg_1.c;
    var var_3 = var_1.wz;
    var var_4 = _wgslsmith_f_op_f32(-1743f - _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)));
    return (14477u >> (arg_1.d.x % 32u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(~global1.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(global1.xy, global1.yx))), ~84194u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 708f, global3[_wgslsmith_index_u32(10835u, 5u)], 978f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, global2[_wgslsmith_index_u32(34219u, 5u)], 2213f, 938f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-320f, global2[_wgslsmith_index_u32(global1.x, 5u)]), global3[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4561u, 5u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, 33167u), 5u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-467f, global2[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], -2262f), vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 5u)], 1743f, global3[_wgslsmith_index_u32(global1.x, 5u)], 340f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-172f, global2[_wgslsmith_index_u32(58611u, 5u)], global3[_wgslsmith_index_u32(global1.x, 5u)], -1001f), vec4<f32>(-128f, -479f, global3[_wgslsmith_index_u32(global1.x, 5u)], 1805f))) * _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 5u)], global2[_wgslsmith_index_u32(91312u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(global1.x, 5u)]), vec4<f32>(global3[_wgslsmith_index_u32(global1.x, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], -185f, -1097f))))));
    global1 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, min(global1.x, global1.x), 1u), vec3<u32>(global1.x, global1.x, global1.x));
    var var_2 = var_0.ywy;
    global1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, func_1(var_0.x, Struct_1(vec4<u32>(global1.x, global1.x, global1.x, 5306u), 13789u, 1i, vec3<u32>(56280u, global1.x, global1.x))), global1.x), vec3<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, 47178u), vec3<u32>(global1.x, 0u, global1.x))), global1.x, _wgslsmith_add_u32(~global1.x, _wgslsmith_sub_u32(82267u, 2942u)))), global1.x & ~_wgslsmith_div_u32(reverseBits(52273u), _wgslsmith_sub_u32(global1.x, global1.x)));
    global0 = array<vec2<u32>, 28>();
    let var_3 = !any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, true, true, true), true));
    var var_4 = ~countOneBits(vec3<u32>(global1.x, global1.x, 0u >> (global1.x % 32u)));
    let var_5 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_4.x, var_4.x, var_4.x) & (vec4<u32>(4294967295u, var_4.x, 54814u, 0u) & vec4<u32>(28513u, global1.x, 0u, 17327u)), vec4<u32>(4294967295u, 7437u, 27494u, var_4.x) >> (~vec4<u32>(var_4.x, 54640u, var_4.x, 4294967295u) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, 18180u, 4294967295u, global1.x))), 62386u, reverseBits(1i) << (_wgslsmith_add_u32(1u << (global1.x % 32u), ~_wgslsmith_div_u32(4294967295u, var_4.x)) % 32u), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(abs(select(vec3<u32>(1u, 47947u, var_4.x), vec3<u32>(var_4.x, var_4.x, 1u), vec3<bool>(false, false, false))), ~vec3<u32>(63851u, global1.x, global1.x)), vec3<u32>(55609u, global1.x, 3474u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_4.x, 18529u, 8410u), min(var_5.a.x, 0u)), ~global1.x), 5u)], -364f), _wgslsmith_f_op_f32(f32(-1f) * -318f), reverseBits(min(~vec2<u32>(var_4.x, 95976u), vec2<u32>(global1.x, var_5.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-841f, global3[_wgslsmith_index_u32(38127u, 5u)], global2[_wgslsmith_index_u32(var_5.a.x, 5u)], -387f), var_1, vec4<bool>(false, var_3, true, false))) * var_1), vec4<f32>(_wgslsmith_f_op_f32(-946f * global3[_wgslsmith_index_u32(global1.x, 5u)]), var_1.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(85218u, 5u)]), _wgslsmith_f_op_f32(-var_1.x)), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1000f, -1143f, var_1.x) + var_1) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1366f, global2[_wgslsmith_index_u32(var_4.x, 5u)], 217f, -1000f)))))));
}

