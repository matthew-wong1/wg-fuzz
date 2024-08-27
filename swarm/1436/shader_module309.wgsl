struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
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

var<private> global0: Struct_2;

var<private> global1: array<i32, 10> = array<i32, 10>(2147483647i, 0i, 0i, -21276i, 1i, 4909i, i32(-2147483648), -9643i, 28896i, i32(-2147483648));

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: bool) -> bool {
    var var_0 = Struct_4(Struct_2(arg_3, arg_0.a.b, -33600i, arg_0.a), !select(vec2<bool>(true, arg_0.a.d.x), arg_0.a.d.xy, select(global0.d.d.zx, select(vec2<bool>(true, false), vec2<bool>(global0.d.d.x, global0.d.d.x), false), vec2<bool>(false, true))), _wgslsmith_sub_vec2_i32(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(global0.d.c.x, 58545i), arg_2.yz)), arg_0.a.c.yx & vec2<i32>(-arg_2.x, arg_0.a.c.x)), vec2<bool>(true, any(!(!vec2<bool>(false, global0.d.d.x)))));
    let var_1 = min(_wgslsmith_mult_vec3_i32(min(global0.d.c, vec3<i32>(global1[_wgslsmith_index_u32(var_0.a.d.a, 10u)], global1[_wgslsmith_index_u32(arg_0.a.a, 10u)], global0.d.c.x)) | -vec3<i32>(arg_0.a.c.x, arg_2.x, 20684i), firstTrailingBit(_wgslsmith_mod_vec3_i32(global0.d.c, vec3<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(2692u, 10u)])))) & reverseBits(min(arg_2, global0.d.c) << (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-var_0.a.c, arg_2.x, 1i), arg_2, countOneBits(vec3<i32>(1i, global1[_wgslsmith_index_u32(1u, 10u)], -1i))));
    global2 = _wgslsmith_f_op_f32(var_0.a.d.b * global0.b);
    var_0 = Struct_4(var_0.a, global0.d.d.yx, min(_wgslsmith_mult_vec2_i32(arg_0.a.c.xx, arg_2.yz) ^ abs(var_0.a.d.c.yz), -(~vec2<i32>(-52130i, arg_2.x))) ^ vec2<i32>(~(-558i), -2147483647i), select(global0.d.d.zy, vec2<bool>(false, !var_0.a.d.d.x && true), global0.d.d.yx));
    let var_2 = false;
    return any(!vec4<bool>(arg_0.a.d.x, false, var_0.b.x, any(select(vec2<bool>(false, arg_3), global0.d.d.yx, true))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(min(273f, -404f));
    let var_0 = true;
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.b) - 134f), -abs(_wgslsmith_clamp_i32(~(-36884i), -1i, 1i)), Struct_1(~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.d.b), -1000f, var_0))), vec3<i32>(arg_0.x, global0.d.c.x, 28895i), select(global0.d.d, global0.d.d, !func_3(Struct_5(global0.d), vec3<u32>(u_input.b, global0.d.a, global0.d.a), vec3<i32>(-25000i, -16275i, 65180i), true))));
    var var_2 = Struct_3(414f, global0.d.b, _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), u_input.a.yy), ~(~(~u_input.a.xx)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(10502u, u_input.a.x, 55939u), var_1.d.a), ~min(55717u, 54140u))), !global0.d.d.x || (var_1.a || func_3(Struct_5(global0.d), select(u_input.a.xyy, u_input.a.wxx, var_0), arg_0.zxz, true)));
    let var_3 = _wgslsmith_mult_u32(u_input.a.x, abs(var_2.c.x) | ~var_1.d.a);
    return Struct_1(19047u, _wgslsmith_f_op_f32(trunc(global0.b)), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(1i), -_wgslsmith_clamp_i32(-1i, global1[_wgslsmith_index_u32(0u, 10u)], -19001i)), arg_0.x, select(-14693i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.c.x, global1[_wgslsmith_index_u32(var_3, 10u)]), firstLeadingBit(vec2<i32>(-20180i, global0.d.c.x))), true)), select(!(!vec3<bool>(var_2.d, true, var_1.a)), global0.d.d, select(!(!vec3<bool>(var_2.d, var_2.d, global0.a)), var_1.d.d, var_1.d.d)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = global0.c;
    global1 = array<i32, 10>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-378f)))), _wgslsmith_f_op_f32(f32(-1f) * -2221f));
    let var_2 = 1i;
    let var_3 = !global0.a;
    return Struct_4(arg_3, vec2<bool>(var_3, func_3(Struct_5(func_2(vec4<i32>(-1i, 29457i, -26326i, arg_0.c.x))), u_input.a.yxw, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(55017u, 10u)], -2526i, 29836i), vec3<i32>(arg_3.c, arg_3.c, 2051i)), vec3<i32>(-2019i, 1i, var_2)), select(!arg_0.d.x, false, true))), _wgslsmith_mult_vec2_i32(max(_wgslsmith_div_vec2_i32(~arg_3.d.c.zz, firstLeadingBit(arg_3.d.c.xx)), ~vec2<i32>(global1[_wgslsmith_index_u32(1u, 10u)], 0i)), arg_3.d.c.zy), arg_3.d.d.zy);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_5 {
    let var_0 = global0.d.c.xz;
    let var_1 = -select(min(global0.d.c.zy ^ vec2<i32>(global1[_wgslsmith_index_u32(11219u, 10u)], 18615i), vec2<i32>(global0.d.c.x, arg_0.a.c)), firstLeadingBit(-vec2<i32>(arg_1.x, var_0.x)), global0.d.d.yz) >> (abs(abs(u_input.a.wy << (vec2<u32>(4294967295u, 6690u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = ~(~func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -2147483647i, global1[_wgslsmith_index_u32(0u, 10u)], -72i), vec4<i32>(-35752i, -1i, arg_1.x, global1[_wgslsmith_index_u32(global0.d.a, 10u)])) ^ abs(vec4<i32>(569i, -199i, 2147483647i, 39211i))).a);
    var var_3 = u_input.a.yxz;
    global2 = _wgslsmith_f_op_f32(-arg_0.a.b);
    return Struct_5(global0.d);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - _wgslsmith_f_op_f32(-global0.d.b)) + -649f), global0.d.b) - -1000f);
    var var_1 = !select(select(select(vec4<bool>(true, global0.a, global0.d.d.x, true), arg_1, select(arg_1, vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(true, false, false, arg_1.x))), arg_1, true), arg_1, arg_1.x);
    var_1 = select(arg_1, select(!select(select(arg_1, vec4<bool>(arg_1.x, true, false, true), global0.d.d.x), arg_1, arg_1), arg_1, !(!vec4<bool>(false, var_1.x, true, arg_1.x))), arg_1);
    global2 = global0.d.b;
    let var_2 = func_5(func_4(func_2(countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 10u)], 1i, global1[_wgslsmith_index_u32(global0.d.a, 10u)], 2147483647i)) & vec4<i32>(1i, 0i, global1[_wgslsmith_index_u32(global0.d.a, 10u)], 16429i)), global0.d.c.x, global0.b, Struct_2(any(!vec2<bool>(var_1.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, -1092f)), 1i, global0.d)), global0.d.c);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 319f;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(1072f - global0.d.b), _wgslsmith_div_f32(912f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(689f, global0.b))))), ~vec2<u32>(func_1(global0.d.a, vec4<bool>(true, false, global0.a, true)), ~_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(global0.d.a, global0.d.a))), global0.a);
    var var_2 = Struct_1(_wgslsmith_add_u32(global0.d.a, ~global0.d.a & 4294967295u), var_1.a, _wgslsmith_add_vec3_i32(global0.d.c, global0.d.c), !func_2(firstTrailingBit(~vec4<i32>(global1[_wgslsmith_index_u32(34550u, 10u)], 37170i, -2147483647i, 30880i))).d);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(round(var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1263f))) + -333f), vec2<u32>(1u, global0.d.a & 27282u), var_2.d.x & false);
    var var_4 = _wgslsmith_mult_i32(67170i, firstLeadingBit(-(~countOneBits(1i))));
    var var_5 = vec4<f32>(global0.b, -861f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f))))), var_3.b);
    var var_6 = 44707u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(round(474f)))))));
}

