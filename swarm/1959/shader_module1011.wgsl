struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2287f, arg_0.x, 934f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(999f, -677f, arg_0.x, -467f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1167f, 1269f, 1033f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1225f, arg_0.x, arg_0.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -751f, 602f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(arg_0.x, -701f, 308f, -1311f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x)));
    var var_1 = false;
    var var_2 = -1578f;
    let var_3 = Struct_2(-967f, firstTrailingBit(firstLeadingBit(~(-vec4<i32>(u_input.d, -2147483647i, 1i, 1i)))), Struct_1(arg_1 <= arg_1, u_input.a.x));
    var var_4 = Struct_1(false != var_3.c.a, -countOneBits(firstTrailingBit(abs(u_input.a.x))));
    return ~u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = arg_0.a;
    var_0 = arg_1.c.a;
    var var_1 = _wgslsmith_f_op_f32(1012f * arg_2.a);
    var var_2 = !(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, -632f, arg_2.a))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-705f, arg_2.a, 1936f)))), _wgslsmith_sub_u32(18879u, u_input.c)) <= arg_3.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, -1554f) - _wgslsmith_f_op_f32(f32(-1f) * -945f)))));
    return _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, u_input.e ^ firstLeadingBit(arg_3.x), ~arg_3.x, u_input.e)), ~vec4<u32>(select(0u, ~arg_3.x, arg_2.c.a), u_input.b.x, arg_3.x, 50841u), (vec4<u32>(74098u, arg_3.x, 1u, ~0u) >> (~vec4<u32>(u_input.b.x, 0u, arg_3.x, 0u) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_3.x, u_input.b.x, arg_3.x, u_input.c) | vec4<u32>(19616u, 4294967295u, 1u, 4294967295u)), ~max(vec4<u32>(5965u, 0u, 56942u, 14121u), vec4<u32>(4294967295u, 4294967295u, arg_3.x, 37961u))) % vec4<u32>(32u)));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(924f))) - 607f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1244f), -343f))), (vec4<i32>(-2147483647i, -41605i, 1i, _wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.a.x)) ^ (~vec4<i32>(1i, u_input.a.x, u_input.a.x, 1i) >> (vec4<u32>(33346u, u_input.b.x, 17441u, u_input.e) % vec4<u32>(32u)))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 6032u, 13143u, u_input.b.x), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, u_input.c, u_input.e, 5822u), vec4<u32>(u_input.c, 4294967295u, u_input.c, 62671u), vec4<u32>(u_input.b.x, 0u, 1u, 4294967295u)), func_2(Struct_1(true, u_input.a.x), Struct_2(2134f, vec4<i32>(-19753i, u_input.d, 0i, u_input.d), Struct_1(true, 7371i)), Struct_2(-423f, vec4<i32>(-10918i, -54774i, 18939i, 1i), Struct_1(false, 2147483647i)), vec3<u32>(u_input.e, 92326u, 1u)))) % vec4<u32>(32u)), Struct_1(true, ~u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a, -1609f)))), _wgslsmith_f_op_f32(min(var_0.a, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(675f, 1009f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1030f) - vec2<f32>(-1711f, 582f)))))));
    return 616f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + 414f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-138f - -492f)))));
    let var_1 = _wgslsmith_mult_u32(func_2(Struct_1(all(vec3<bool>(true, true, true)), ~_wgslsmith_clamp_i32(u_input.a.x, -6354i, -60113i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-702f + var_0.x)), vec4<i32>(_wgslsmith_add_i32(0i, -18935i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 55618i, u_input.a.x, -19754i), vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, 2147483647i)), u_input.d, 23213i), Struct_1(1309f >= var_0.x, _wgslsmith_clamp_i32(8816i, 2147483647i, u_input.a.x))), Struct_2(_wgslsmith_f_op_f32(var_0.x * var_0.x), -vec4<i32>(u_input.a.x, -7187i, -28549i, u_input.a.x), Struct_1(all(vec2<bool>(true, false)), max(-26490i, u_input.a.x))), ~(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) >> (vec3<u32>(1u, u_input.e, u_input.c) % vec3<u32>(32u)))).x, ~4294967295u);
    let var_2 = Struct_1(true, -14543i);
    let var_3 = !select(!vec3<bool>(all(vec4<bool>(true, true, var_2.a, var_2.a)), true & var_2.a, var_0.x >= -729f), !vec3<bool>(true | var_2.a, false, var_2.a), vec3<bool>(true, true, true));
    let var_4 = _wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.zx);
    var var_5 = !(_wgslsmith_f_op_f32(-var_0.x) > -455f);
    var_5 = false;
    var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(35326u << (u_input.e % 32u)) ^ select(u_input.b.x, 1u, false), 4294967295u, 4294967295u), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + -838f), var_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-138f + var_0.x) - _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec2_f32(trunc(var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(abs(var_0.x))), var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -272f))));
}

