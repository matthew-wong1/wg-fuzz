struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<f32>) -> bool {
    let var_0 = 1u;
    var var_1 = arg_1;
    var_1 = Struct_2(var_1.a && !var_1.a);
    var var_2 = Struct_2(select(false, var_1.a, arg_1.a));
    var_1 = arg_1;
    return !any(!(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(arg_1.a, true, var_1.a), vec3<bool>(arg_0.b.b, arg_1.a, false))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> i32 {
    let var_0 = -(global0.yy << (u_input.b.yx % vec2<u32>(32u)));
    let var_1 = Struct_1(global0.x, arg_1.a.a || func_3(Struct_5(select(vec2<bool>(false, true), vec2<bool>(arg_1.a.a, arg_1.a.a), vec2<bool>(arg_1.a.a, true)), Struct_1(10100i, arg_1.a.a, 394f, vec4<i32>(global0.x, -279i, 0i, var_0.x))), arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.zx)))), _wgslsmith_f_op_f32(sign(arg_0.x)), vec4<i32>(_wgslsmith_mult_i32(1i, firstTrailingBit(i32(-1i) * -7282i)), global0.x, var_0.x, _wgslsmith_dot_vec2_i32(-global0.xx, var_0)));
    let var_2 = var_1.d.zyy;
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(var_2.x, var_0.x, -5634i)), vec3<i32>(~_wgslsmith_sub_i32(-var_0.x, 2147483647i & var_2.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(10303i, 1i, var_1.a, -2147483647i), -vec4<i32>(1i, var_0.x, global0.x, var_0.x), false), vec4<i32>(0i, var_0.x, -var_2.x, _wgslsmith_mod_i32(var_1.a, var_0.x))), ~_wgslsmith_sub_i32(global0.x, var_1.d.x) >> (abs(4294967295u) % 32u)));
    let var_3 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(22405u), _wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 599u, arg_1.b), vec3<u32>(arg_1.e, arg_1.e, u_input.b.x))), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(1u, u_input.a)), u_input.b.x), vec4<u32>(0u, ~firstLeadingBit(u_input.a), firstTrailingBit(u_input.a ^ u_input.b.x), u_input.a));
    return _wgslsmith_dot_vec4_i32(reverseBits(-var_1.d), countOneBits(-(~var_1.d >> (~var_3 % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: f32) -> i32 {
    global0 = select(_wgslsmith_add_vec3_i32(-select(vec3<i32>(1i, global0.x, 1i) & vec3<i32>(-1i, global0.x, global0.x), -vec3<i32>(0i, 5999i, -35611i), true), vec3<i32>(_wgslsmith_div_i32(reverseBits(1i), 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 0i, global0.x), ~vec3<i32>(global0.x, -2147483647i, global0.x)), global0.x)), vec3<i32>(_wgslsmith_add_i32(-1i, 2147483647i), 2147483647i, _wgslsmith_dot_vec4_i32(select(-vec4<i32>(-35191i, -29734i, 1i, global0.x), max(vec4<i32>(-34428i, -41201i, global0.x, global0.x), vec4<i32>(1i, global0.x, 1i, global0.x)), false), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, 371i, global0.x, 1i), ~vec4<i32>(65715i, 50810i, global0.x, global0.x)))), arg_2.x);
    let var_0 = abs(vec3<i32>(-global0.x, _wgslsmith_mult_i32(global0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(43593i, -1i, global0.x)), func_2(arg_1.ywz, Struct_3(Struct_2(true), 42852u, arg_1.xw, vec4<f32>(472f, arg_3, arg_1.x, arg_3), 0u)))), -_wgslsmith_mod_i32(global0.x, firstLeadingBit(1007i))));
    var var_1 = Struct_3(Struct_2(true), u_input.b.x, _wgslsmith_f_op_vec2_f32(abs(arg_1.wy)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-853f - -1000f), -553f, -409f, _wgslsmith_f_op_f32(2063f + arg_1.x))))), 44615u);
    var var_2 = Struct_3(Struct_2(any(arg_2)), var_1.e, arg_1.zz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, 1508f, _wgslsmith_f_op_f32(min(-842f, 202f)), 841f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1 - _wgslsmith_f_op_vec4_f32(arg_1 * var_1.d)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_1.d.x, 783f, arg_1.x) + var_1.d), arg_1)))), 38674u);
    var var_3 = Struct_1(~(~1i), !(!(!var_1.a.a)), 698f, max(~vec4<i32>(global0.x, var_0.x, var_0.x, var_0.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(53772u, var_2.e, 1u, 16545u), vec4<u32>(14720u, var_2.b, 4294967295u, 1u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-54384i, -74853i, global0.x, global0.x), vec4<i32>(var_0.x, 1i, var_0.x, var_0.x)) & firstLeadingBit(vec4<i32>(67169i, -15959i, global0.x, global0.x))) << (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, var_1.e, 100492u, 15825u)), ~vec4<u32>(49154u, 43238u, var_2.b, 4294967295u) & firstLeadingBit(vec4<u32>(1u, 4294967295u, 49583u, u_input.a))) % vec4<u32>(32u)));
    return max(var_3.d.x, abs(var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec3<i32>(i32(-1i) * -func_1(vec4<bool>(true, false, true, false), vec4<f32>(1830f, 348f, 140f, 774f), vec4<bool>(false, false, false, true), -781f), 39390i, 17980i);
    global0 = vec3<i32>(global0.x, firstTrailingBit(global0.x), _wgslsmith_sub_i32(17827i, ~_wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 13717i), vec3<i32>(5854i, global0.x, 2147483647i)))));
    var var_0 = vec4<u32>(u_input.b.x, ~u_input.b.x, 1u, 6567u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(656f - 218f))), _wgslsmith_f_op_f32(-1206f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-602f)))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-622f)), 1000f))) + 764f));
    let var_2 = Struct_1(23458i, !func_3(Struct_5(vec2<bool>(true, false), Struct_1(global0.x, true, var_1.x, vec4<i32>(43i, global0.x, global0.x, global0.x))), Struct_2(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -533f), vec2<f32>(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(-var_1.x), vec4<i32>(-53103i, global0.x, i32(-1i) * -global0.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(39586i, global0.x, 1i), vec3<i32>(1i, global0.x, global0.x)) >> (u_input.a % 32u))));
    let var_3 = Struct_3(Struct_2(var_2.b), ~((65298u << (_wgslsmith_sub_u32(u_input.a, 4294967295u) % 32u)) >> (var_0.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1565f + _wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, var_2.c, -590f, 399f))), firstLeadingBit(var_0.x));
    let var_4 = var_3;
    let var_5 = Struct_5(vec2<bool>(var_2.b, true), Struct_1(-1i, false, var_4.c.x, ~(-var_2.d) << (~vec4<u32>(0u, var_3.e, 13182u, var_3.e) % vec4<u32>(32u))));
    var var_6 = ~21488u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_5.b.c)), var_4.c.x), ~global0.x & ~global0.x, var_5.b.a);
}

