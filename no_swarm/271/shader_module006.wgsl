struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 14>;

var<private> global3: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> i32 {
    return global3.c.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec4<f32>) -> f32 {
    var var_0 = true;
    global3 = Struct_2(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.b.x, arg_0.x) - _wgslsmith_f_op_f32(1234f - global2[_wgslsmith_index_u32(u_input.b, 14u)])), -1016f))), -global1.c | vec4<i32>(min(global1.c.x, min(8914i, -3054i)), firstTrailingBit(-21323i), ~2147483647i, ~_wgslsmith_div_i32(-19975i, 22642i)), global3.d, -248f);
    global3 = Struct_2(_wgslsmith_div_f32(-151f, -289f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.d.a.x, 14u)]) * arg_3.x), global1.a)), -abs(select(select(global3.c, global3.c, vec4<bool>(global0.x, arg_1, arg_1, global0.x)), _wgslsmith_mod_vec4_i32(global3.c, vec4<i32>(u_input.c, -1i, global1.c.x, 22381i)), false && arg_1)), Struct_1(vec3<u32>(~1u << (global1.d.a.x % 32u), 4433u, 58603u << (reverseBits(global3.d.a.x) % 32u)), global1.d.b), _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1525f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 14u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1653f, arg_3.x))), true))));
    global1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.a)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_3.ywx - arg_3.wwz))), ~_wgslsmith_mod_vec4_i32(global1.c, -_wgslsmith_mult_vec4_i32(global3.c, vec4<i32>(-1i, global3.c.x, 21668i, -2147483647i))), global3.d, arg_0.x);
    let var_1 = min(_wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(-2147483647i, -1i), 1i), vec2<i32>(abs(u_input.c), -17178i) << ((_wgslsmith_mult_vec2_u32(vec2<u32>(global3.d.a.x, global1.d.a.x), vec2<u32>(1u, global3.d.a.x)) ^ firstTrailingBit(global3.d.a.xx)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, ~(-global3.c.x)), _wgslsmith_sub_vec2_i32(~vec2<i32>(global1.c.x, arg_2.x) ^ firstLeadingBit(arg_2), select(vec2<i32>(2147483647i, global1.c.x), vec2<i32>(1i, 1i), global0.x | arg_1))));
    return _wgslsmith_f_op_f32(-global3.a);
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = -global1.c.xwy;
    var var_1 = Struct_2(_wgslsmith_div_f32(global3.d.b.x, global1.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global1.d.b, true, var_0.yx, vec4<f32>(-409f, arg_0.x, 2420f, global1.d.b.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(sign(global3.d.b)), all(vec4<bool>(false, false, true, true)), _wgslsmith_div_vec2_i32(global1.c.wz, global3.c.zx), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e, global3.b.x, -696f, global1.d.b.x) * arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.b.x, global1.a, global0.x)))) * _wgslsmith_f_op_vec3_f32(exp2(arg_0.yxz))), -(~(global3.c << ((vec4<u32>(0u, 0u, 111160u, 26064u) ^ vec4<u32>(67827u, 11227u, 31023u, global3.d.a.x)) % vec4<u32>(32u)))), Struct_1(vec3<u32>(global1.d.a.x, global3.d.a.x, abs(_wgslsmith_div_u32(u_input.a, 4294967295u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d.b) + _wgslsmith_f_op_vec4_f32(select(global1.d.b, vec4<f32>(global2[_wgslsmith_index_u32(0u, 14u)], -986f, -365f, 305f), select(vec4<bool>(false, global0.x, true, false), vec4<bool>(false, true, false, true), true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f))))));
    let var_2 = Struct_2(1872f, vec3<f32>(1008f, _wgslsmith_f_op_f32(select(global1.e, global2[_wgslsmith_index_u32(global3.d.a.x, 14u)], any(!global0.xx))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_div_f32(-170f, var_1.a)))), reverseBits(min(_wgslsmith_clamp_vec4_i32(global3.c, firstTrailingBit(vec4<i32>(var_1.c.x, u_input.c, global1.c.x, var_1.c.x)), abs(vec4<i32>(var_0.x, -13352i, global3.c.x, 1i))), ~_wgslsmith_clamp_vec4_i32(global3.c, vec4<i32>(1i, var_1.c.x, u_input.c, 39804i), vec4<i32>(-1i, global3.c.x, var_1.c.x, u_input.c)))), global3.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.d.b.x, global3.d.b.x)), var_1.a)), _wgslsmith_f_op_f32(select(-875f, -952f, true)))) - global3.e));
    var var_3 = !(!(!select(global0.x, false, global0.x))) && global0.x;
    var var_4 = max(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_2.d.a, global3.d.a), _wgslsmith_add_u32(4294967295u, var_2.d.a.x)) << (_wgslsmith_mod_u32(~global3.d.a.x, var_1.d.a.x) % 32u)), (~(1u << (global1.d.a.x % 32u)) << ((select(7798u, 1u, global0.x) ^ reverseBits(var_1.d.a.x)) % 32u)) ^ (u_input.b >> (~(~global3.d.a.x) % 32u)));
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f - 147f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(946f * _wgslsmith_f_op_f32(-817f - 1039f))))));
    let var_1 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(exp2(global3.d.b.wwx)), vec4<i32>(0i, -func_1(-1000f, global3.d), func_2(global3.d.b), ~firstLeadingBit(~(-2147483647i))), Struct_1(_wgslsmith_mod_vec3_u32(reverseBits(global1.d.a ^ global1.d.a), global3.d.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d.b))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(~global1.d.a, vec3<u32>(global1.d.a.x, 4294967295u, 1u) << (global1.d.a % vec3<u32>(32u))), global1.d.a), 14u)]));
    var var_2 = var_1.d;
    var var_3 = min(countOneBits(vec2<u32>((var_2.a.x << (1u % 32u)) << (global3.d.a.x % 32u), firstLeadingBit(abs(4710u)))), vec2<u32>(69183u, u_input.b));
    let var_4 = vec2<u32>(0u, ~global3.d.a.x & ~countOneBits(25511u ^ var_2.a.x));
    global3 = var_1;
    global2 = array<f32, 14>();
    global2 = array<f32, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, 691f)), _wgslsmith_f_op_vec2_f32(-var_2.b.zz))), var_2.b.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(57222u, 14u)], var_2.b.x, global0.x)), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(1u, 14u)], -534f))) - _wgslsmith_div_vec2_f32(vec2<f32>(222f, global1.b.x), global3.b.yx))));
}

