struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<i32, 11>;

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 5> = array<bool, 5>(true, false, false, true, false);

var<private> global4: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<u32>) -> vec4<bool> {
    global1 = array<i32, 11>();
    let var_0 = arg_1;
    global2 = select(vec2<bool>(all(var_0.c.d), global3[_wgslsmith_index_u32(54799u, 5u)]), global4.yx, vec2<bool>(!var_0.c.e.x, false));
    var var_1 = Struct_3(vec4<bool>(true, true, false, !(!(arg_2.x > 27073u))), arg_1.c);
    global1 = array<i32, 11>();
    return var_1.b.d;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(select(select(arg_1.c.a, vec3<bool>(global2.x && global2.x, true, true), true), !(!(!arg_1.c.d.wzy)), arg_1.c.e), (_wgslsmith_f_op_f32(f32(-1f) * -491f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * arg_2.a))) & (arg_1.c.b && false), !all(!(!arg_1.c.d.xzz)), select(!(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global2.x, false, global4.x)), vec4<bool>(global2.x, arg_2.b < arg_1.b, true, true), !arg_1.c.d), vec3<bool>(all(func_3(Struct_5(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<f32>(-434f, 262f, -1834f, arg_1.a)), Struct_2(arg_1.a, arg_1.a, Struct_1(vec3<bool>(arg_2.c.c, true, false), false, arg_1.c.b, arg_2.c.d, vec3<bool>(false, global4.x, true))), ~vec2<u32>(1u, 38342u))), (-1136i >> (reverseBits(0u) % 32u)) <= arg_0, !(arg_1.c.e.x != all(global4.xz))));
    return !(!(!arg_2.c.d));
}

fn func_1(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = arg_0.a;
    global1 = array<i32, 11>();
    let var_1 = Struct_3(!(!arg_0.c.d), Struct_1(arg_0.c.a, arg_0.c.a.x, true, select(func_2(-2147483647i, arg_0, Struct_2(1272f, 685f, arg_0.c)), !arg_0.c.d, true), arg_0.c.a));
    let var_2 = min(vec2<u32>(4294967295u, 15969u), ~(~firstLeadingBit(~vec2<u32>(1u, 11609u))));
    var var_3 = !var_1.a.xy;
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(998f))), var_0) * vec4<f32>(_wgslsmith_f_op_f32(886f - 244f), arg_0.b, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, arg_0.b), _wgslsmith_f_op_f32(-248f - 1220f)), 492f)), vec4<f32>(var_0, 1067f, arg_0.b, _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-1567f - _wgslsmith_f_op_f32(abs(arg_0.b)))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<f32>) -> Struct_2 {
    global2 = vec2<bool>(!((1u | _wgslsmith_clamp_u32(4294967295u, arg_2.x, 4294967295u)) >= _wgslsmith_clamp_u32(114164u, ~arg_2.x, 12227u)), any(vec3<bool>(global3[_wgslsmith_index_u32(~arg_2.x & arg_2.x, 5u)], all(!vec4<bool>(global4.x, global4.x, global2.x, arg_1)), all(!arg_0.a))));
    var var_0 = Struct_5(~vec3<u32>(max(~4294967295u, min(49454u, arg_2.x)), ~0u, arg_2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1140f, arg_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) * _wgslsmith_f_op_f32(step(-1666f, arg_3.x))), _wgslsmith_f_op_f32(-arg_3.x), -1000f)));
    var var_1 = Struct_1(vec3<bool>(false, true, true == (_wgslsmith_div_f32(var_0.b.x, arg_3.x) < _wgslsmith_f_op_f32(floor(arg_3.x)))), !select(_wgslsmith_f_op_f32(-1629f * 660f) < _wgslsmith_f_op_f32(var_0.b.x - 214f), func_2(global1[_wgslsmith_index_u32(1660u, 11u)], Struct_2(arg_3.x, 1111f, arg_0.b), Struct_2(var_0.b.x, 817f, arg_0.b)).x, any(!arg_0.b.d.ww)), (631f != _wgslsmith_f_op_f32(-var_0.b.x)) && false, func_3(Struct_5(_wgslsmith_clamp_vec3_u32(arg_2.yzw & var_0.a, _wgslsmith_add_vec3_u32(vec3<u32>(39762u, 4294967295u, 73841u), vec3<u32>(arg_2.x, var_0.a.x, arg_2.x)), vec3<u32>(arg_2.x, arg_2.x, 65790u)), _wgslsmith_f_op_vec4_f32(floor(var_0.b))), Struct_2(678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.x, 1000f))), Struct_1(vec3<bool>(global2.x, false, arg_0.b.a.x), any(arg_0.b.e), var_0.b.x > -135f, vec4<bool>(global4.x, false, true, arg_0.a.x), arg_0.a.wwz)), _wgslsmith_div_vec2_u32(vec2<u32>(9287u, var_0.a.x), ~vec2<u32>(arg_2.x, arg_2.x))), arg_0.b.a);
    let var_2 = u_input.a;
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(-809f, 219f, Struct_1(vec3<bool>(arg_0.b.c, true, arg_0.b.b), true, global2.x, arg_0.b.d, var_1.a)))).x, var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(800f + 1055f), -1282f), arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_4) -> f32 {
    global1 = array<i32, 11>();
    var var_0 = ~((1i | (u_input.c.x ^ ~global1[_wgslsmith_index_u32(arg_1.x, 11u)])) >> (~arg_1.x % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-162f, _wgslsmith_f_op_f32(step(-169f, arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.a)))))));
    var var_2 = func_4(Struct_3(!arg_0.c.d, Struct_1(!(!arg_0.c.e), !(!arg_2.a.x), func_3(Struct_5(vec3<u32>(arg_1.x, 4294967295u, 40749u), vec4<f32>(-1233f, var_1.x, -602f, var_1.x)), func_4(Struct_3(vec4<bool>(false, false, arg_0.c.a.x, true), arg_0.c), arg_2.a.x, vec4<u32>(arg_1.x, arg_1.x, 1u, 4294967295u), vec4<f32>(arg_0.a, arg_0.a, arg_0.b, -578f)), arg_1.ww | arg_1.yy).x, vec4<bool>(true || global2.x, global4.x, arg_2.a.x, any(arg_2.a.yz)), arg_2.a)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(~(~0u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 64284u), ~arg_1.x, _wgslsmith_dot_vec2_u32(arg_1.zz, arg_1.zy)))), 5u)], vec4<u32>(~arg_1.x, ~0u, 4294967295u, ~(~(~33488u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_0.b, -450f, 489f) - vec4<f32>(262f, 527f, arg_0.a, -538f))))))).c;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(928f, -1000f)), var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1636f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1289f, -1230f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(func_1(arg_0)), !vec4<bool>(arg_0.c.e.x, global4.x, global4.x, var_2.c)))) + vec4<f32>(238f, arg_0.b, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -887f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b) - vec4<f32>(182f, arg_0.a, -2186f, arg_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, arg_0.a, -1300f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-486f, arg_0.b, 2234f, -733f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -729f, 245f, arg_0.b))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1082f, var_1.x)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(var_1.x, arg_0.b, var_2.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x))) + _wgslsmith_f_op_f32(-214f - var_1.x)))) * _wgslsmith_f_op_f32(-471f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_1.x) - var_1.x)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_vec4_f32(func_1(func_4(Struct_3(func_4(Struct_3(vec4<bool>(false, global2.x, false, false), Struct_1(vec3<bool>(false, global4.x, global4.x), global3[_wgslsmith_index_u32(16467u, 5u)], global2.x, vec4<bool>(true, global3[_wgslsmith_index_u32(52091u, 5u)], global3[_wgslsmith_index_u32(arg_0.a.x, 5u)], false), vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), global3[_wgslsmith_index_u32(55465u, 5u)], vec4<u32>(1u, 1u, 13436u, 43150u), vec4<f32>(arg_0.b.x, -466f, arg_2, 388f)).c.d, Struct_1(vec3<bool>(true, global4.x, global2.x), false, arg_3.x, vec4<bool>(false, arg_3.x, false, true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 5u)]))), global3[_wgslsmith_index_u32(arg_0.a.x, 5u)], ~vec4<u32>(37853u, arg_0.a.x, 50949u, arg_1.a.x), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(arg_2, arg_2, Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(7955u, 5u)], global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], arg_3.x), global4.x, false, vec4<bool>(global4.x, global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], global4.x, global3[_wgslsmith_index_u32(52362u, 5u)]), vec3<bool>(arg_3.x, global2.x, false)))))))).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(385f + _wgslsmith_f_op_f32(arg_1.b.x - arg_2)))));
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<u32>(arg_0.a.x, arg_0.a.x, 4294967295u)), ~1u) << (max(~arg_1.a.x, ~37656u) % 32u)), ~min(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, arg_0.a.x, 5624u), arg_1.a), ~abs(arg_0.a)));
    let var_2 = ~u_input.c.yx;
    let var_3 = func_4(Struct_3(func_2(u_input.c.x, func_4(Struct_3(vec4<bool>(true, arg_3.x, false, true), Struct_1(vec3<bool>(false, global2.x, global2.x), global4.x, false, vec4<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], global4.x, false, arg_3.x), vec3<bool>(true, global4.x, global3[_wgslsmith_index_u32(0u, 5u)]))), true, vec4<u32>(49673u, arg_0.a.x, 0u, 53679u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1997f, arg_0.b.x, 1000f) - arg_0.b)), Struct_2(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_1.b.x), func_4(Struct_3(vec4<bool>(false, arg_3.x, true, true), Struct_1(vec3<bool>(true, global2.x, global2.x), global4.x, arg_3.x, vec4<bool>(true, true, true, arg_3.x), vec3<bool>(arg_3.x, global4.x, global2.x))), true, vec4<u32>(var_1.x, 29400u, var_1.x, arg_0.a.x), vec4<f32>(arg_2, -1954f, var_0.x, var_0.x)).c)), Struct_1(!(!vec3<bool>(arg_3.x, global2.x, arg_3.x)), select(global3[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(arg_1.a.x, 11u)] == 39274i, global2.x), var_1.x <= 4294967295u, func_4(Struct_3(vec4<bool>(global2.x, false, true, global3[_wgslsmith_index_u32(arg_1.a.x, 5u)]), Struct_1(vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 5u)]), global2.x, false, vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.a.x, 5u)], true, false), vec3<bool>(true, true, true))), true, vec4<u32>(arg_0.a.x, 61743u, 1u, arg_0.a.x), arg_0.b).c.d, !vec3<bool>(true, global2.x, false))), global2.x, ~vec4<u32>(~arg_0.a.x, (arg_0.a.x & 1u) & ~77030u, _wgslsmith_div_u32(4294967295u, abs(var_1.x)), 1u), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(-273f - _wgslsmith_f_op_f32(min(771f, arg_2))), true != func_4(Struct_3(vec4<bool>(true, global2.x, false, global3[_wgslsmith_index_u32(37081u, 5u)]), Struct_1(vec3<bool>(global4.x, global2.x, false), true, global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], vec4<bool>(global4.x, arg_3.x, arg_3.x, global2.x), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.a.x, 5u)], false, false))), true, vec4<u32>(arg_1.a.x, 58341u, 4765u, arg_1.a.x), arg_1.b).c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -547f))), _wgslsmith_f_op_f32(-arg_2), 2202f)).c;
    let var_4 = ~(~(~vec4<u32>(~1u, arg_0.a.x, ~arg_1.a.x, var_1.x)));
    return func_4(Struct_3(vec4<bool>(true, all(vec3<bool>(false, arg_3.x, false)), !global2.x, true), func_4(Struct_3(!vec4<bool>(false, false, arg_3.x, true), var_3), all(arg_3), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(32231u, arg_0.a.x, var_4.x, 4294967295u), var_4), ~vec4<u32>(81826u, 54102u, 1u, arg_1.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b - arg_1.b), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(394f, arg_1.b.x, -633f, 436f))))).c), any(var_3.d.yw), vec4<u32>(1u, ~(~var_1.x), _wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(var_4.zx, arg_1.a.xz)), vec2<u32>(~arg_0.a.x, arg_0.a.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_4.x, arg_0.a.x >> (22134u % 32u)), ~1u)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(arg_0.b.x, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1326f, arg_0.b.x)), func_4(Struct_3(vec4<bool>(true, true, var_3.b, global4.x), var_3), global4.x, vec4<u32>(arg_0.a.x, var_4.x, arg_0.a.x, 42857u), arg_0.b).c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_5(min(~vec3<u32>(4294967295u, 37723u, 27597u), vec3<u32>(_wgslsmith_mod_u32(66973u, 9202u), 1u, 4294967295u)), vec4<f32>(494f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(min(-477f, -703f))), -1091f, _wgslsmith_f_op_f32(f32(-1f) * -196f))), Struct_5(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 1u), ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-569f, 1370f, -386f, 152f) + vec4<f32>(-2065f, -318f, 724f, -1039f)))), _wgslsmith_f_op_f32(func_5(func_4(Struct_3(select(vec4<bool>(global4.x, false, false, true), vec4<bool>(false, true, global4.x, global3[_wgslsmith_index_u32(46049u, 5u)]), vec4<bool>(global2.x, global3[_wgslsmith_index_u32(38234u, 5u)], global2.x, global4.x)), Struct_1(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(30086u, 5u)], true), global4.x, false, vec4<bool>(true, false, false, false), vec3<bool>(true, false, global2.x))), !(!global4.x), ~vec4<u32>(77291u, 57988u, 75599u, 4u), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1449f, -1751f, 1000f, 1201f), vec4<f32>(-211f, -1827f, -1000f, -1101f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(1432f, 411f, Struct_1(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], true, global2.x), false, global3[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(global2.x, global2.x, true, global3[_wgslsmith_index_u32(176435u, 5u)]), vec3<bool>(global2.x, global4.x, global2.x))))))), abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(2609u, 1u, 1u, 34534u), vec4<u32>(34548u, 20092u, 1u, 0u)), firstTrailingBit(vec4<u32>(4294967295u, 0u, 1u, 67928u)), vec4<bool>(true, true, true, true))), Struct_4(select(!vec3<bool>(false, global4.x, global2.x), select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], false), vec3<bool>(false, global4.x, false), global4.x), true)))), !global4.zz);
    var var_1 = vec4<f32>(1f, _wgslsmith_f_op_f32(min(var_0.b, var_0.a)), var_0.b, var_0.a);
    global1 = array<i32, 11>();
    global2 = global4.xz;
    let var_2 = Struct_5(~(vec3<u32>(min(24605u, 47438u), ~0u, ~0u) | select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), global3[_wgslsmith_index_u32(1u, 5u)])), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_1(func_6(Struct_5(vec3<u32>(0u, 4294967295u, 1u), vec4<f32>(var_1.x, -145f, var_1.x, var_1.x)), Struct_5(vec3<u32>(60504u, 4294967295u, 42557u), vec4<f32>(-727f, var_1.x, var_1.x, 687f)), var_1.x, vec2<bool>(var_0.c.e.x, false)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_2.a.x, 4294967295u), 6u)], global1[_wgslsmith_index_u32(var_2.a.x, 11u)], ~(~0u), var_2.b);
}

