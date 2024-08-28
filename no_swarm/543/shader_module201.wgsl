struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-745i);

var<private> global1: vec3<f32>;

var<private> global2: i32 = 1i;

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<i32> {
    var var_0 = arg_0;
    var var_1 = Struct_1(any(vec2<bool>(false, true)) | !(!arg_0.c.a), global3.b, vec3<i32>(global3.a.c.x, -global3.c.c.x, _wgslsmith_dot_vec4_i32(~global3.e, arg_0.e)));
    let var_2 = -469f;
    var_1 = Struct_1(!(1u < reverseBits(arg_0.d)) & false, !(any(select(vec2<bool>(var_0.a.b, false), vec2<bool>(false, global3.c.b), vec2<bool>(false, var_1.a))) && (-1485f > global1.x)), arg_1);
    let var_3 = arg_0;
    return _wgslsmith_sub_vec4_i32(-arg_0.e, vec4<i32>(global3.a.c.x, global3.c.c.x, _wgslsmith_mod_i32(15474i, _wgslsmith_div_i32(var_3.a.c.x, -38305i)), -(~(-139i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_3, true, global3.c, max(~_wgslsmith_dot_vec4_u32(u_input.b, abs(vec4<u32>(u_input.b.x, u_input.c, 42667u, u_input.c))), _wgslsmith_div_u32(max(0u, ~global3.d), u_input.b.x)), -(vec4<i32>(-1i, global0[_wgslsmith_index_u32(~global3.d, 1u)], 8267i, arg_1.c.x) | ~reverseBits(vec4<i32>(arg_1.c.x, -21452i, arg_3.c.x, 73700i))));
    var var_1 = arg_1.a;
    let var_2 = Struct_2(Struct_1(global3.a.b, !var_0.b, arg_3.c), true, Struct_1(~34181u == ~abs(global3.d), !(!all(vec2<bool>(true, true))), arg_1.c), ~(u_input.c >> (u_input.c % 32u)), firstTrailingBit(func_3(Struct_2(global3.a, var_0.c.b, arg_1, var_0.d, var_0.e), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.x, -18676i, 1i), vec3<i32>(arg_3.c.x, 0i, 2147483647i)))) >> (~(~vec4<u32>(4294967295u, 7796u, 24752u, var_0.d)) % vec4<u32>(32u)));
    var var_3 = Struct_1(true, !arg_1.a && (_wgslsmith_add_i32(1i, max(44931i, 5262i)) < arg_3.c.x), -abs(var_0.e.xwy));
    let var_4 = vec4<u32>(max(~var_0.d, ~u_input.c), 1u, firstLeadingBit(reverseBits(countOneBits(0u))), u_input.c) & select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(global3.d, 1u, 7797u, u_input.a.x), ~vec4<u32>(11207u, 4294967295u, u_input.c, u_input.b.x), ~vec4<u32>(28383u, var_2.d, var_0.d, u_input.b.x)) | vec4<u32>(min(0u, 1u), ~u_input.b.x, ~var_0.d, abs(39503u)), ~(~select(vec4<u32>(var_0.d, 14633u, 7766u, var_2.d), u_input.b, false)), select(select(!vec4<bool>(arg_1.b, var_3.a, true, var_2.b), select(vec4<bool>(true, arg_3.a, false, global3.c.b), vec4<bool>(true, false, false, true), var_0.c.a), true), vec4<bool>(arg_0.x, true, global3.c.b, var_0.a.b), var_3.b));
    return Struct_2(arg_3, false, Struct_1(var_3.b && true, all(vec4<bool>(true, true, true || var_0.b, var_3.b)), vec3<i32>(abs(firstLeadingBit(-1i)), reverseBits(var_2.e.x), _wgslsmith_sub_i32(abs(0i), reverseBits(2147483647i)))), ~2920u, select(abs(vec4<i32>(arg_2.x, 48294i, global3.c.c.x, arg_2.x) ^ ~vec4<i32>(0i, arg_2.x, 0i, var_2.c.c.x)), global3.e, !select(select(vec4<bool>(arg_0.x, false, false, true), vec4<bool>(false, var_0.a.a, true, global3.a.b), var_0.b), select(vec4<bool>(arg_0.x, var_2.a.b, var_0.c.b, arg_1.a), vec4<bool>(true, var_3.a, var_2.b, var_3.b), false), select(vec4<bool>(arg_1.a, arg_3.a, false, true), vec4<bool>(arg_3.a, false, true, arg_3.a), true))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<f32>) -> i32 {
    global2 = -_wgslsmith_dot_vec3_i32(func_2(vec2<bool>(any(vec3<bool>(arg_1.a.b, true, false)), false), Struct_1(true, true, _wgslsmith_add_vec3_i32(arg_1.e.zyx, vec3<i32>(global0[_wgslsmith_index_u32(52254u, 1u)], 17571i, 17232i))), vec3<i32>(global3.c.c.x, -2147483647i, ~39888i), arg_1.c).c.c, ~abs(vec3<i32>(global3.a.c.x, -1i, arg_0)));
    return reverseBits(global3.e.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(-5937i, func_2(select(select(vec2<bool>(global3.b, global3.b), vec2<bool>(false, global3.a.a), true), select(vec2<bool>(global3.b, false), vec2<bool>(true, global3.a.a), true), vec2<bool>(false, global3.a.b)), global3.c, global3.a.c, Struct_1(true, all(vec3<bool>(global3.c.a, global3.b, false)), -global3.c.c)), _wgslsmith_mult_vec3_u32(~u_input.b.zxz, select(~vec3<u32>(38923u, 4294967295u, 0u), ~vec3<u32>(51724u, u_input.b.x, u_input.a.x), any(vec2<bool>(false, true)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), global1.x)) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(global3.d) | global3.d, _wgslsmith_dot_vec3_u32(~vec3<u32>(global3.d, 12979u, u_input.a.x), vec3<u32>(u_input.a.x, 30124u, u_input.b.x)), 0u), ~(global3.d >> (u_input.c % 32u)) >> (u_input.b.x % 32u)) % 32u);
    let var_1 = 1568u;
    var var_2 = global3.e ^ _wgslsmith_div_vec4_i32(-global3.e, -firstTrailingBit(vec4<i32>(0i, -6441i, 2370i, global3.e.x)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(898f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) + _wgslsmith_f_op_f32(floor(global1.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(2510f * -211f), _wgslsmith_f_op_f32(-global1.x), global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + -1835f), 215f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(720f - global1.x)))));
    let var_3 = vec3<bool>(_wgslsmith_f_op_f32(select(global1.x, global1.x, true)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(540f, _wgslsmith_f_op_f32(-270f * global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(272f)))) != global1.x, all(select(select(!vec3<bool>(global3.b, global3.a.b, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, global3.c.b), global3.a.a), true & global3.a.a), select(!vec3<bool>(true, global3.c.b, true), vec3<bool>(global3.b, false, true), vec3<bool>(true, true, global3.a.b)), !select(vec3<bool>(global3.b, global3.b, global3.a.a), vec3<bool>(global3.b, global3.c.a, global3.a.a), vec3<bool>(global3.a.a, true, true)))));
    return func_2(select(!select(select(var_3.yz, var_3.xy, false), vec2<bool>(var_3.x, false), all(vec2<bool>(global3.c.b, var_3.x))), vec2<bool>(any(!var_3.zz), all(!vec4<bool>(false, true, var_3.x, false))), vec2<bool>(all(vec2<bool>(var_3.x, false)), var_3.x)), func_2(select(var_3.xy, vec2<bool>(true, false), all(var_3.zz) & any(vec4<bool>(global3.b, global3.c.a, false, true))), Struct_1(any(vec4<bool>(true, global3.b, global3.a.b, true)), all(vec4<bool>(false, false, true, global3.c.b)) || true, -abs(global3.a.c)), global3.e.yxz, func_2(!(!vec2<bool>(var_3.x, false)), Struct_1(global3.c.b, func_2(var_3.zy, global3.c, vec3<i32>(-1i, global3.e.x, -42823i), global3.a).a.a, countOneBits(global3.e.zyz)), var_2.yxz, Struct_1(u_input.b.x == 1847u, func_2(vec2<bool>(false, true), global3.a, vec3<i32>(var_2.x, var_0, 19597i), Struct_1(var_3.x, global3.a.a, vec3<i32>(global3.c.c.x, -662i, 9020i))).b, _wgslsmith_clamp_vec3_i32(var_2.zww, vec3<i32>(global0[_wgslsmith_index_u32(global3.d, 1u)], global0[_wgslsmith_index_u32(16254u, 1u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 54840i, var_0)))).a).a, ~global3.c.c, global3.c).a;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -1901f))), -519f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-733f, global1.x, arg_0.a)))), -1973f) - vec4<f32>(740f, global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -169f))), global1.x), -116f));
    global1 = vec3<f32>(1499f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 1109f)) + _wgslsmith_f_op_f32(var_0.x - 134f)));
    let var_1 = select(!vec3<bool>(true, arg_0.c.x == -278i, true), select(!(!select(vec3<bool>(global3.b, global3.b, false), vec3<bool>(true, global3.c.b, global3.a.a), arg_0.a)), select(!vec3<bool>(true, false, arg_0.b), !(!vec3<bool>(false, global3.b, global3.c.a)), true), vec3<bool>(true, true, (global0[_wgslsmith_index_u32(4294967295u, 1u)] != 30589i) == true)), !vec3<bool>(func_1().a, all(vec4<bool>(global3.c.a, global3.a.a, false, false)) & false, arg_0.b));
    var var_2 = abs(vec2<u32>(u_input.a.x, global3.d));
    global3 = func_2(select(vec2<bool>(all(vec2<bool>(arg_0.b, var_1.x)) && true, all(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_1.x, global3.b, arg_0.b, true), var_1.x))), var_1.zz, !vec2<bool>(var_1.x, !arg_0.a)), Struct_1(-956f >= _wgslsmith_f_op_f32(-global1.x), true, vec3<i32>(-2147483647i, func_2(select(vec2<bool>(global3.b, var_1.x), var_1.yz, var_1.yy), arg_0, func_3(Struct_2(Struct_1(arg_0.b, global3.b, vec3<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 1u)], global3.a.c.x)), false, Struct_1(false, false, vec3<i32>(arg_0.c.x, 2147483647i, -2147483647i)), 1u, global3.e), arg_0.c).yzy, Struct_1(global3.b, global3.c.a, arg_0.c)).c.c.x, _wgslsmith_mod_i32(~arg_0.c.x, _wgslsmith_mult_i32(-7174i, global3.e.x)))), -firstLeadingBit(-abs(arg_0.c)), func_2(!var_1.yy, global3.a, vec3<i32>(2147483647i, 0i, _wgslsmith_add_i32(global3.a.c.x, -7579i)), func_2(var_1.zz, Struct_1(any(var_1), func_1().a, firstTrailingBit(global3.c.c)), global3.e.yzw | ~vec3<i32>(global3.a.c.x, global0[_wgslsmith_index_u32(var_2.x, 1u)], arg_0.c.x), func_2(select(vec2<bool>(global3.a.a, arg_0.a), vec2<bool>(var_1.x, true), arg_0.a), Struct_1(arg_0.b, arg_0.b, arg_0.c), arg_0.c, global3.a).a).a).c);
    return func_2(select(select(var_1.zy, !var_1.xz, all(select(vec4<bool>(false, false, arg_0.a, false), vec4<bool>(global3.c.b, false, true, var_1.x), vec4<bool>(global3.b, false, true, false)))), var_1.xy, func_2(vec2<bool>(true, global3.d >= var_2.x), func_1(), -arg_0.c, global3.c).b), func_1(), arg_0.c, global3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(func_1());
    var var_0 = u_input.c << (~global3.d % 32u);
    let var_1 = global3.d;
    global2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec3<i32>(global3.a.c.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.e.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], -11814i), vec3<i32>(global0[_wgslsmith_index_u32(global3.d, 1u)], global0[_wgslsmith_index_u32(global3.d, 1u)], global3.e.x))), vec3<i32>(global3.c.c.x | global0[_wgslsmith_index_u32(14368u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], func_2(vec2<bool>(global3.c.a, global3.a.a), Struct_1(false, global3.c.a, global3.e.ywz), global3.c.c, global3.a).a.c.x)));
}

