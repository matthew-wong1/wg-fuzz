struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
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

var<private> global0: array<f32, 8> = array<f32, 8>(-1805f, -237f, -1143f, -668f, 1095f, 775f, 186f, 563f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: i32) -> Struct_5 {
    let var_0 = arg_1.a;
    return arg_1;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, -1432f, -2317f, global0[_wgslsmith_index_u32(arg_1.x, 8u)])))), firstLeadingBit(arg_1.x), func_1(vec2<u32>(min(firstTrailingBit(arg_1.x), _wgslsmith_sub_u32(u_input.a, arg_1.x)), 0u), Struct_5(func_1(arg_1 | vec2<u32>(0u, 0u), arg_0, vec3<u32>(0u, 4294967295u, 0u) | vec3<u32>(arg_1.x, u_input.a, arg_1.x), arg_0.c.x).a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1105f, -1000f)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, arg_0.d.x, 1i), arg_0.d), arg_0.c, vec4<i32>(arg_0.d.x, 0i, -4406i, arg_0.d.x)), vec4<i32>(_wgslsmith_mult_i32(arg_0.d.x, 85692i), 2147483647i, _wgslsmith_mod_i32(arg_0.a.d, arg_0.a.d), -20053i)), ~vec3<u32>(_wgslsmith_add_u32(41346u, 1u), 4294967295u, u_input.a ^ arg_1.x), -_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.c.x, 32900i, arg_0.a.d, 69465i), vec4<i32>(arg_0.a.d, 1i, arg_0.a.d, 0i)), arg_0.c)).a, ~arg_1.x);
    var var_1 = !var_0.c.c;
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), true, var_0.c.d, !select(func_1(vec2<u32>(arg_1.x, 1u), Struct_5(arg_0.a, var_0.c.b.zx, vec4<i32>(var_0.c.d, 0i, -1i, 1i), vec4<i32>(var_0.c.d, arg_0.a.d, -27458i, var_0.c.d)), vec3<u32>(u_input.a, u_input.a, 4294967295u), -21423i).a.e, var_0.c.e, !var_0.c.e)), !(!select(!vec4<bool>(true, var_0.c.c, false, true), vec4<bool>(false, false, arg_0.a.e.x, var_0.c.e.x), true)));
    var var_3 = var_2.a;
    let var_4 = vec2<i32>(-2147483647i, 8100i);
    return var_2;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.a.b + func_1(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a, 34601u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 0u)), ~vec2<u32>(u_input.a, 42156u)), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), Struct_5(arg_0.a, arg_0.a.b.wz, vec4<i32>(arg_0.a.d, arg_2.x, 0i, arg_0.a.d), arg_2), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(63706u, 0u, 8589u) % vec3<u32>(32u)), countOneBits(arg_2.x)), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u)), i32(-1i) * -1i).a.b)));
    var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 801f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) - _wgslsmith_f_op_f32(f32(-1f) * -1131f)), var_0.x, _wgslsmith_f_op_f32(-func_1(~vec2<u32>(29323u, u_input.a), Struct_5(Struct_1(true, arg_0.a.b, true, -2147483647i, arg_0.a.e), var_0.wx, arg_2, arg_2), vec3<u32>(47629u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), func_1(vec2<u32>(0u, 532u), Struct_5(Struct_1(arg_1, vec4<f32>(global0[_wgslsmith_index_u32(112509u, 8u)], arg_0.a.b.x, 845f, -502f), false, arg_2.x, arg_0.b), var_0.xz, vec4<i32>(1i, 2147483647i, 2147483647i, arg_0.a.d), vec4<i32>(arg_0.a.d, 23413i, 24358i, arg_0.a.d)), vec3<u32>(1u, 0u, u_input.a), arg_2.x).c.x).a.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(func_2(Struct_5(Struct_1(arg_1, arg_0.a.b, arg_1, -12984i, arg_0.b), arg_0.a.b.ww, vec4<i32>(10426i, 1i, arg_0.a.d, arg_0.a.d), vec4<i32>(arg_0.a.d, arg_2.x, arg_0.a.d, 0i)), firstTrailingBit(vec2<u32>(u_input.a, 31664u))).a.b)) * _wgslsmith_f_op_vec4_f32(exp2(arg_0.a.b)))));
    global0 = array<f32, 8>();
    let var_1 = Struct_4(~vec2<u32>(u_input.a, u_input.a) | (_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 42530u) | vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 21117u), vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))), firstTrailingBit(vec4<i32>(-firstTrailingBit(arg_2.x), -62381i, func_1(max(vec2<u32>(48919u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), Struct_5(arg_0.a, vec2<f32>(arg_0.a.b.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]), arg_2, arg_2), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 103280u)), arg_0.a.d).d.x, _wgslsmith_mod_i32(-10915i >> (u_input.a % 32u), i32(-1i) * -7484i))));
    return ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.a.x), vec2<u32>(35617u, 64882u)), u_input.a & countOneBits(4294967295u), ~34852u, ~var_1.a.x) << (countOneBits(_wgslsmith_add_vec4_u32(countOneBits(max(vec4<u32>(var_1.a.x, 4294967295u, var_1.a.x, 16055u), vec4<u32>(0u, u_input.a, var_1.a.x, 1u))), vec4<u32>(var_1.a.x, u_input.a, 0u, 4294967295u) & (vec4<u32>(u_input.a, 0u, var_1.a.x, 0u) ^ vec4<u32>(var_1.a.x, 1u, u_input.a, u_input.a)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 8>();
    let var_0 = 910f;
    var var_1 = ~reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), vec4<u32>(0u, _wgslsmith_div_u32(102327u, 64492u), _wgslsmith_mod_u32(u_input.a, 0u), u_input.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -399f)));
    var var_3 = true;
    var_1 = func_3(func_2(func_1(vec2<u32>(var_1.x, 0u), Struct_5(Struct_1(false, vec4<f32>(579f, -1247f, var_2.x, -147f), true, -72005i, vec4<bool>(true, false, true, true)), var_2, vec4<i32>(2147483647i, 2147483647i, 5682i, -1i), vec4<i32>(-2147483647i, 0i, 1i, -1i)), ~var_1.wxw, abs(-28361i)), vec2<u32>(28749u, abs(var_1.x))), true, ~vec4<i32>(1i, 1i, 1i, 1i)) & _wgslsmith_mod_vec4_u32(~(countOneBits(vec4<u32>(18965u, var_1.x, 26626u, var_1.x)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 1u, u_input.a, var_1.x), vec4<u32>(var_1.x, 75791u, var_1.x, 38468u))), min(vec4<u32>(53218u << (u_input.a % 32u), 0u, 25758u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.x, var_1.x), vec4<u32>(var_1.x, 0u, u_input.a, 61813u))), ~vec4<u32>(24424u, var_1.x, u_input.a, u_input.a)));
    let var_4 = _wgslsmith_mod_vec3_i32(~firstTrailingBit(min(vec3<i32>(1i, 1i, 3865i), vec3<i32>(2147483647i, -1i, 35986i)) >> ((vec3<u32>(var_1.x, u_input.a, var_1.x) << (var_1.wyz % vec3<u32>(32u))) % vec3<u32>(32u))), -vec3<i32>(_wgslsmith_div_i32(1i, ~14878i), -29794i, -2147483647i));
    var_1 = ~firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, 52327u), vec4<u32>(1u, 4294967295u, var_1.x, 1u))));
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 315f, global0[_wgslsmith_index_u32(var_1.x, 8u)], var_0) - func_1(vec2<u32>(32260u, u_input.a), Struct_5(Struct_1(true, vec4<f32>(var_2.x, -1214f, 567f, -179f), false, -2147483647i, vec4<bool>(true, true, true, false)), var_2, vec4<i32>(var_4.x, var_4.x, 27279i, 0i), vec4<i32>(var_4.x, 21014i, 2147483647i, var_4.x)), var_1.xwz, var_4.x).a.b)))) - vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) + var_2.x)), global0[_wgslsmith_index_u32(func_3(func_2(func_1(var_1.yy, Struct_5(Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_2.x, var_0, var_0), true, var_4.x, vec4<bool>(false, false, false, true)), var_2, vec4<i32>(var_4.x, var_4.x, var_4.x, var_4.x), vec4<i32>(-1679i, 0i, var_4.x, -2147483647i)), vec3<u32>(u_input.a, 4294967295u, 1u), var_4.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_1.x), vec2<u32>(u_input.a, u_input.a))), true, vec4<i32>(reverseBits(var_4.x), -2147483647i, 1i, _wgslsmith_add_i32(-10402i, var_4.x))).x, 8u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 8u)]), var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec4<u32>(~select(9257u, 0u, false), ~(~u_input.a), u_input.a, var_1.x)));
}

