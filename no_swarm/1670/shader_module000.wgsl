struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_i32(0i, max(global1.b.x, -6935i));
    let var_1 = global1.b.xx;
    let var_2 = Struct_3(3767u, global0.zz, Struct_2(Struct_1(global0.x, firstLeadingBit(vec4<i32>(var_1.x, global1.b.x, -21271i, var_1.x)) >> (_wgslsmith_sub_vec4_u32(global1.c, global1.c) % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, ~1u, countOneBits(u_input.b.x), global1.c.x | global1.c.x), select(global1.d, select(global1.d, global1.d, false), select(global1.d, global1.d, true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) - _wgslsmith_f_op_f32(sign(316f))), ~global1.b ^ -vec4<i32>(var_1.x, -5087i, -27206i, 4322i), abs(abs(global1.c)), select(vec2<bool>(global1.d.x, false), !global1.d, any(vec3<bool>(true, global1.d.x, false)))), Struct_1(global1.a, vec4<i32>(-1i, _wgslsmith_add_i32(-62341i, -1i), var_1.x, global1.b.x), vec4<u32>(~0u, 4294967295u, ~28922u, ~u_input.a.x), vec2<bool>(true, true)), select(select(global1.d, vec2<bool>(true, global1.d.x), global1.d.x), global1.d, false)), vec4<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a * global1.a), _wgslsmith_f_op_f32(-global1.a))) < _wgslsmith_f_op_f32(-876f * _wgslsmith_f_op_f32(135f * global1.a)), !all(vec3<bool>(global1.d.x, true, global1.d.x)), select(!any(vec3<bool>(false, true, global1.d.x)), select(!global1.d.x, global1.d.x, true), select(false, select(false, true, true), true))), _wgslsmith_f_op_f32(floor(global1.a)));
    var var_3 = _wgslsmith_f_op_f32(trunc(var_2.e));
    var_3 = global1.a;
    return vec2<bool>(!all(!global1.d), var_2.c.b.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> bool {
    return true;
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(global1.d.x, true);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -530f, global1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a, global0.x, global1.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(785f, global1.a, -289f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 2921f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-211f, -228f, 1000f) - vec3<f32>(993f, global1.a, global1.a)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, global1.a, -864f)));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(global1.c.x, 2712u ^ global1.c.x), reverseBits(15268u), global1.c.x);
    var var_2 = vec2<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-452f + -2337f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = select(!(!select(!vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), global1.d.x)), !vec4<bool>(_wgslsmith_mult_i32(-19313i, -8332i) < global1.b.x, false, all(global1.d), global1.d.x), vec4<bool>(!any(vec4<bool>(false, global1.d.x, var_0.x, var_0.x)), false, select(!global1.d.x, global1.d.x, !var_0.x), func_4(Struct_2(Struct_1(-985f, global1.b, u_input.b, global1.d), Struct_1(var_2.x, global1.b, global1.c, global1.d), Struct_1(global0.x, vec4<i32>(global1.b.x, global1.b.x, -2147483647i, -1i), global1.c, global1.d), global1.d), ~global1.b.x, Struct_1(_wgslsmith_f_op_f32(max(var_2.x, global0.x)), global1.b, u_input.b, func_3()))));
    return 161f;
}

fn func_5(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global1.c.x), vec2<u32>(105466u, u_input.b.x)) | _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.c) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.x, 7599u, u_input.a.x), vec3<u32>(global1.c.x, u_input.c, 1u)), 1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xy + vec2<f32>(1030f, global1.a)))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))), vec4<i32>(1i, -34920i, firstLeadingBit(-36730i), -12650i), select(~u_input.a, vec4<u32>(1u, 24333u, u_input.d.x, u_input.c), select(vec4<bool>(global1.d.x, true, true, global1.d.x), vec4<bool>(false, true, false, false), false)), select(select(vec2<bool>(global1.d.x, global1.d.x), global1.d, global1.d.x), select(global1.d, global1.d, global1.d), select(vec2<bool>(global1.d.x, global1.d.x), vec2<bool>(false, global1.d.x), vec2<bool>(true, global1.d.x)))), Struct_1(1208f, vec4<i32>(-14588i, _wgslsmith_sub_i32(2147483647i, 50931i), 19136i, ~(-1i)), vec4<u32>(max(u_input.d.x, u_input.c), _wgslsmith_sub_u32(4294967295u, 32014u), 4294967295u, 4294967295u), func_3()), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), arg_0)), ~vec4<i32>(-1i, global1.b.x, -1i, global1.b.x), vec4<u32>(select(global1.c.x, u_input.b.x, global1.d.x), _wgslsmith_mult_u32(u_input.b.x, 4294967295u), global1.c.x, abs(u_input.a.x)), vec2<bool>(global1.d.x, true)), select(vec2<bool>(true && global1.d.x, true), select(func_3(), func_3(), true), vec2<bool>(global1.d.x != true, global1.d.x))), select(select(vec4<bool>(func_3().x, !global1.d.x, true, !global1.d.x), vec4<bool>(all(global1.d), true, !global1.d.x, global1.d.x), select(select(vec4<bool>(global1.d.x, global1.d.x, global1.d.x, true), vec4<bool>(global1.d.x, true, false, global1.d.x), vec4<bool>(global1.d.x, global1.d.x, false, global1.d.x)), !vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x), global1.d.x | false)), vec4<bool>(true, global1.d.x, global1.d.x, true), true), _wgslsmith_f_op_f32(ceil(arg_0)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-882f))), _wgslsmith_f_op_f32(arg_0 - global0.x), _wgslsmith_f_op_f32(sign(462f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 219f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 170f, -1933f))), vec3<f32>(_wgslsmith_f_op_f32(min(-582f, -165f)), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(max(global1.a, 349f))), !(!vec3<bool>(false, global1.d.x, true)))))));
    global1 = var_0.c.c;
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0)), -690f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.a, -280f)))), _wgslsmith_f_op_f32(f32(-1f) * -3091f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(917f, -104f, 633f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(430f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, global0.x))), 306f)));
    var_0 = Struct_3(~global1.c.x, global0.zz, var_0.c, var_0.d, global0.x);
    return Struct_3(_wgslsmith_dot_vec2_u32(countOneBits(select(vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), false)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.c.c.x, var_0.a), ~vec2<u32>(global1.c.x, 1u)), vec2<u32>(reverseBits(66512u), _wgslsmith_mod_u32(30373u, var_0.c.c.c.x) ^ var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yz), global0.zz), _wgslsmith_f_op_vec2_f32(global0.yz + _wgslsmith_f_op_vec2_f32(-global0.xx)), vec2<bool>(all(var_0.d.wz), true)))), Struct_2(var_0.c.c, var_0.c.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * var_0.e), (global1.b >> (u_input.a % vec4<u32>(32u))) ^ (var_0.c.c.b & global1.b), global1.c, !func_3()), !select(vec2<bool>(global1.d.x, var_0.c.b.d.x), global1.d, var_0.d.zy)), var_0.d, 1000f);
}

fn func_1() -> Struct_3 {
    var var_0 = func_5(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_2())));
    var var_1 = var_0.c;
    var var_2 = !var_0.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -2266f, global1.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -743f, global1.a), vec3<f32>(var_1.c.a, 907f, var_0.b.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, global0.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1928f, global0.x, 1401f)), var_0.d.yxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, -1606f, global1.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.a, global0.x) - vec3<f32>(global1.a, global0.x, -676f)))))));
    var var_4 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 941f), 1f)))).d.yyy;
    return func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1088f))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_1.c.a.b ^ abs(select(vec4<i32>(arg_2.a.b.x | arg_1.c.a.b.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.b.x, arg_2.a.b.x, -1i), vec4<i32>(-31817i, 45357i, global1.b.x, -33776i)), arg_2.b.b.x), func_5(_wgslsmith_f_op_f32(arg_1.c.c.a * arg_1.e)).c.b.b, arg_2.d.x));
    global1 = func_1().c.b;
    global1 = arg_1.c.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1659f), -abs(vec4<i32>(_wgslsmith_div_i32(arg_2.b.b.x, global1.b.x), ~global1.b.x, 2147483647i ^ global1.b.x, -1i)), max(abs(u_input.b), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.c.a.c.xw | u_input.b.yw, _wgslsmith_add_vec2_u32(arg_2.a.c.zx, vec2<u32>(0u, 32006u))), 42498u, func_5(_wgslsmith_div_f32(global1.a, arg_0.x)).a, ~(u_input.c >> (19807u % 32u)))), !func_3());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1854f))) + arg_1.c.a.a);
    return arg_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global0.xy - vec2<f32>(1000f, global1.a)))))), func_1(), Struct_2(func_1().c.a, func_1().c.a, Struct_1(_wgslsmith_f_op_f32(select(1145f, _wgslsmith_f_op_f32(f32(-1f) * -958f), global1.d.x)), global1.b, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.d.x, u_input.c, 0u, 4294967295u) & vec4<u32>(1u, u_input.d.x, 0u, u_input.c)), global1.d), !select(select(global1.d, global1.d, global1.d.x), !global1.d, select(vec2<bool>(true, false), global1.d, global1.d.x))));
    var var_0 = Struct_2(Struct_1(-1674f, vec4<i32>(global1.b.x, max(-1613i, global1.b.x), 0i, reverseBits(-2147483647i)), _wgslsmith_sub_vec4_u32(u_input.a, global1.c), global1.d), Struct_1(-1761f, global1.b, u_input.a, vec2<bool>(!all(vec3<bool>(global1.d.x, global1.d.x, global1.d.x)), all(vec3<bool>(true, global1.d.x, global1.d.x)))), Struct_1(_wgslsmith_f_op_f32(-global0.x), func_5(998f).c.a.b, max(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, global1.c.x), func_5(-1124f).a, max(20741u, u_input.c), ~global1.c.x), ~global1.c << (reverseBits(vec4<u32>(49230u, global1.c.x, global1.c.x, 52605u)) % vec4<u32>(32u))), global1.d), vec2<bool>(true, global1.d.x));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1257f), var_0.b.a, var_0.a.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, var_0.b.a, 174f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1123f, 272f, global1.a) * vec3<f32>(-609f, 1576f, -1124f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(global0.x + global1.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.a - -430f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(569f)) - -2633f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a * 547f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global1.a)))), vec3<bool>(func_5(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(select(global1.a, global0.x, false)))).d.x, false, var_0.d.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global1.a, global1.a, 1817f), vec4<f32>(-217f, var_0.c.a, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, global0.x, 705f, -593f) + vec4<f32>(global0.x, -508f, 1000f, global0.x))))));
    var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1103f, -1918f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(ceil(global1.a))) * var_0.a.a), 696f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1334f, 230f, var_0.a.a, global0.x))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -575f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-892f + -658f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f * 546f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(global0.x)), var_0.b.b.x, 4294967295u, 1i);
}

