struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    return Struct_1(-max(firstTrailingBit(1i), -2147483647i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(~(-vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), max(vec4<i32>(-26388i, 0i, 45261i, arg_0.a), max(vec4<i32>(arg_0.a, 0i, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, arg_0.a, 4682i)))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(7518i, arg_0.a, -6934i, -37347i), reverseBits(vec4<i32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), abs(vec4<i32>(1i, 4154i, -13196i, -38313i)))), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, -2147483647i), countOneBits(vec2<i32>(38407i, 48677i))), -1i, (reverseBits(arg_0.a) ^ ~arg_0.a) << (~4294967295u % 32u), firstTrailingBit(reverseBits(countOneBits(1i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -409f)), _wgslsmith_f_op_f32(f32(-1f) * -156f))));
    var var_2 = 4294967295u > _wgslsmith_mult_u32(_wgslsmith_sub_u32(24562u, ~4294967295u), ~u_input.a);
    var var_3 = var_0.x;
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(-vec4<i32>(arg_0.a, 52895i, arg_0.a, 14290i)), var_0), _wgslsmith_div_vec4_i32(-max(var_0, vec4<i32>(-43390i, 1321i, -21686i, var_0.x)), vec4<i32>(var_0.x, -14922i, 1i, 2147483647i) & firstLeadingBit(var_0))));
    return ~(~(~(~4294967295u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = true;
    var_0 = all(vec4<bool>(any(vec4<bool>(u_input.a == arg_2, any(vec2<bool>(false, true)), select(true, false, false), all(vec4<bool>(false, true, false, false)))), select(_wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_f_op_f32(select(506f, arg_0.x, true)), true, !all(vec4<bool>(false, true, true, true))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) > arg_0.x));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x) == _wgslsmith_f_op_f32(-705f * _wgslsmith_f_op_f32(sign(995f)));
    var_0 = !any(vec3<bool>(true, false, !select(true, true, true)));
    var_1 = false;
    return select(vec4<bool>(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, all(vec3<bool>(true, true, true)))), !all(vec4<bool>(true, true, true, true))), vec4<bool>(!select(any(vec2<bool>(false, true)), select(true, true, false), arg_0.x == -1036f), select(all(vec4<bool>(true, true, false, false)), true, true), true, !(select(arg_1.a, arg_1.a, true) > arg_1.a)), select(vec4<bool>(!select(false, false, true), _wgslsmith_f_op_f32(trunc(arg_0.x)) < -881f, false, all(vec3<bool>(true, true, true))), !vec4<bool>(true, true, false, 0u != u_input.a), select(vec4<bool>(true, true, false, 46938i > arg_1.a), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c.zx) - arg_2), arg_1.d, _wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, 4294967295u), arg_1.e) | (func_3(func_2(), true) << (~0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(round(-1579f)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -590f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x)))));
    var var_1 = arg_0;
    var_1 = any(!(!vec4<bool>(arg_1.b.x, true, false, arg_1.d.a > arg_1.d.a)));
    var_1 = true;
    var var_2 = Struct_1(-2147483647i);
    return vec4<bool>(!(arg_1.d.a >= var_2.a), firstTrailingBit(u_input.a) < (~(u_input.a & arg_1.e) << (56164u % 32u)), false, false);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_div_i32(abs(49184i), func_2().a));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_1.a - arg_1.c.zzz), arg_1.c.zxy)), _wgslsmith_f_op_vec3_f32(arg_1.c.xwz * arg_1.c.wzx), !arg_1.b)) + _wgslsmith_f_op_vec3_f32(-arg_1.a)), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_1.a.xz))), func_2(), ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(step(arg_1.c, vec4<f32>(arg_1.c.x, arg_1.c.x, 516f, -539f)))))).xxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.c - arg_1.c))))), arg_2.a, select(4294967295u, arg_1.e, any(func_1(true, arg_1, _wgslsmith_div_vec2_f32(arg_1.c.xx, vec2<f32>(435f, -787f))).wwz)));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(arg_1.c)))))), _wgslsmith_f_op_vec4_f32(var_1.c * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.c + vec4<f32>(-257f, var_1.a.x, 318f, -997f))), vec4<f32>(_wgslsmith_f_op_f32(862f * 783f), _wgslsmith_f_op_f32(-542f * 1000f), -103f, var_1.c.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, vec3<f32>(var_2.x, var_2.x, var_1.a.x), arg_1.b))))), var_1.a) * var_1.a);
    var var_4 = var_1;
    return StorageBuffer(countOneBits(max(~firstTrailingBit(vec4<u32>(62004u, u_input.a, var_4.e, u_input.a)), ~vec4<u32>(var_4.e, var_1.e, 3929u, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(select(func_1(all(vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-288f, 172f, -490f)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(474f, -1181f, -1000f, 1000f))), Struct_1(30692i), 4294967295u ^ u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-256f, 990f))))), vec4<bool>(true, !all(vec4<bool>(false, true, true, false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), true), false), Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-708f, 392f, -1766f)))))), !vec3<bool>(any(vec3<bool>(false, true, true)), true, func_1(false, Struct_3(vec3<f32>(-1447f, -844f, 484f), vec3<bool>(false, true, false), vec4<f32>(-477f, -1000f, 120f, -233f), Struct_1(0i), u_input.a), vec2<f32>(1411f, -680f)).x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_f_op_f32(step(749f, 277f)), _wgslsmith_f_op_f32(step(-858f, -1468f)), _wgslsmith_div_f32(341f, -280f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, 500f, 169f, 1162f)))), Struct_1(func_2().a), firstLeadingBit(~_wgslsmith_div_u32(u_input.a, u_input.a))), Struct_2(Struct_1(_wgslsmith_mult_i32(max(67212i, 35014i), select(-47710i, -29578i, false))), !(!(4294967295u >= u_input.a))));
}

