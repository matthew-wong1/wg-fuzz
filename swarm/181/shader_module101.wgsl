struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 27>;

var<private> global2: vec3<bool>;

var<private> global3: vec4<u32> = vec4<u32>(28516u, 0u, 0u, 36123u);

var<private> global4: bool;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> bool {
    return !(!all(select(vec4<bool>(arg_0, arg_1.b.d.a.x, global0.x, global0.x), vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_0))) == !select(any(!vec2<bool>(arg_2.a.x, true)), true, false);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global1 = array<u32, 27>();
    let var_0 = ~0u;
    global4 = any(vec2<bool>(select(func_3(false, Struct_3(Struct_2(vec3<u32>(33163u, arg_2, u_input.c.x), arg_1, Struct_1(vec2<bool>(arg_1.a.x, global0.x), vec2<i32>(-2147483647i, arg_1.b.x), arg_1.b.x), arg_1), Struct_2(vec3<u32>(global1[_wgslsmith_index_u32(global3.x, 27u)], u_input.c.x, 4294967295u), arg_1, Struct_1(arg_1.a, u_input.a, 2147483647i), Struct_1(global2.zz, u_input.a, 58621i)), vec2<bool>(false, true), vec2<f32>(-1027f, -1000f)), arg_1, arg_1.c) && (u_input.d.x < 43027u), !global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.x, u_input.a.x, -47603i), vec3<i32>(u_input.e, 9400i, u_input.a.x)) <= u_input.e), true));
    let var_1 = reverseBits(-17691i);
    global4 = arg_1.a.x;
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(firstLeadingBit(abs(abs(~vec3<u32>(arg_1.a.x, global3.x, 38398u)))), arg_1.c, func_2(select(vec4<bool>(true, arg_1.c.a.x || false, all(global2.yx), !global2.x), vec4<bool>(true, any(vec3<bool>(global0.x, false, true)), true, true), !(u_input.e == arg_2.b.x)), arg_1.b, global3.x), func_2(!vec4<bool>(any(vec2<bool>(true, arg_1.b.a.x)), global2.x, any(vec4<bool>(arg_2.a.x, arg_2.a.x, true, false)), global0.x), func_2(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), arg_2.a.x), func_2(vec4<bool>(global0.x, global0.x, global0.x, false), Struct_1(arg_1.c.a, vec2<i32>(arg_2.c, 2147483647i), u_input.a.x), abs(12429u)), ~(~4294967295u)), 1u));
    let var_1 = arg_1;
    global4 = !(!var_0.d.a.x && func_2(!vec4<bool>(global2.x, false, arg_1.d.a.x, global0.x), func_2(vec4<bool>(true, true, false, false), Struct_1(global2.xz, vec2<i32>(-47188i, u_input.e), u_input.e), 49569u), var_0.a.x).a.x) & any(!select(vec4<bool>(var_1.b.a.x, var_0.b.a.x, false, false), !vec4<bool>(arg_2.a.x, global0.x, global0.x, true), select(vec4<bool>(var_1.b.a.x, var_0.c.a.x, var_1.b.a.x, true), vec4<bool>(false, arg_2.a.x, false, true), vec4<bool>(false, global2.x, false, false))));
    global0 = select(!(!select(select(vec4<bool>(arg_2.a.x, arg_1.b.a.x, false, false), vec4<bool>(global2.x, global0.x, false, false), false), vec4<bool>(false, arg_2.a.x, global0.x, false), !arg_1.d.a.x)), select(!(!vec4<bool>(global2.x, var_0.d.a.x, false, global0.x)), !select(!vec4<bool>(global0.x, false, true, var_1.b.a.x), select(vec4<bool>(global0.x, true, false, arg_2.a.x), vec4<bool>(true, arg_1.c.a.x, false, arg_1.b.a.x), arg_2.a.x), true), true), !vec4<bool>(global2.x, !(2147483647i >= u_input.a.x), true, global0.x));
    var var_2 = ~max(min(u_input.d, arg_1.a.yx), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.xy & vec2<u32>(var_1.a.x, var_0.a.x), _wgslsmith_sub_vec2_u32(global3.zx, vec2<u32>(global3.x, 1u)), u_input.c.xz), abs(vec2<u32>(1u, u_input.b))));
    return Struct_1(arg_2.a, _wgslsmith_div_vec2_i32(var_0.b.b, countOneBits(_wgslsmith_sub_vec2_i32(~u_input.a, _wgslsmith_div_vec2_i32(var_1.d.b, vec2<i32>(arg_2.c, var_0.c.b.x))))), -46149i);
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_2(vec4<bool>(global2.x, arg_0.c.a.x, true, (global3.x > ~16801u) | true), Struct_1(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-827f)) + -1171f), Struct_2(~vec3<u32>(arg_0.a.x, global1[_wgslsmith_index_u32(u_input.b, 27u)], 12409u), Struct_1(arg_0.d.a, arg_0.d.b, arg_0.b.b.x), Struct_1(arg_0.b.a, vec2<i32>(16784i, u_input.a.x), arg_0.c.b.x), Struct_1(arg_0.d.a, vec2<i32>(51678i, u_input.e), -2147483647i)), func_4(_wgslsmith_f_op_f32(max(-245f, 1050f)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), arg_0.b, arg_0.c, Struct_1(global2.yy, vec2<i32>(22793i, u_input.e), 41044i)), arg_0.d)).a, ~func_2(vec4<bool>(global0.x, arg_0.d.a.x, global2.x, true), Struct_1(global2.zy, vec2<i32>(arg_0.b.b.x, 11694i), arg_0.b.b.x), ~global1[_wgslsmith_index_u32(0u, 27u)]).b, -2147483647i), global1[_wgslsmith_index_u32(u_input.c.x, 27u)]).a;
    global4 = false != var_0.x;
    let var_1 = Struct_2(firstTrailingBit(~abs(global3.yxx)), func_2(!select(select(vec4<bool>(arg_0.c.a.x, global2.x, false, false), vec4<bool>(false, false, false, false), vec4<bool>(global0.x, var_0.x, true, arg_0.b.a.x)), select(vec4<bool>(var_0.x, false, global2.x, global2.x), vec4<bool>(false, false, false, false), vec4<bool>(true, var_0.x, false, false)), var_0.x), arg_0.d, global3.x), arg_0.b, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1088f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-190f + -943f) + -137f)), Struct_2(~abs(vec3<u32>(u_input.b, 4294967295u, u_input.b)), func_4(_wgslsmith_f_op_f32(max(-315f, 2906f)), Struct_2(vec3<u32>(global3.x, 21434u, 5292u), Struct_1(vec2<bool>(var_0.x, false), u_input.a, arg_0.b.c), arg_0.c, arg_0.b), Struct_1(global2.yy, arg_0.d.b, -53433i)), func_2(!vec4<bool>(global0.x, false, global2.x, global2.x), arg_0.b, u_input.b & 4294967295u), arg_0.b), func_2(select(vec4<bool>(false, global2.x, true, arg_0.c.a.x), !vec4<bool>(arg_0.b.a.x, false, global2.x, false), vec4<bool>(false, false, true, arg_0.d.a.x)), arg_0.d, ~(~9794u))));
    let var_2 = Struct_2(reverseBits(max(~abs(u_input.c), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, global1[_wgslsmith_index_u32(1u, 27u)]), 30115u, var_1.a.x))), Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-382f * -288f)), arg_0, Struct_1(select(var_1.c.a, vec2<bool>(false, global2.x), true), countOneBits(vec2<i32>(0i, arg_0.c.c)), ~var_1.c.c)).a, ~select(var_1.b.b, vec2<i32>(u_input.e, -25525i), select(vec2<bool>(var_0.x, global2.x), global2.yz, var_0.x)), var_1.d.b.x), var_1.c, func_2(vec4<bool>(arg_0.b.a.x, global0.x, false, any(!vec4<bool>(true, var_0.x, false, false))), func_2(!vec4<bool>(var_0.x, var_1.d.a.x, var_0.x, true), func_2(select(vec4<bool>(true, global0.x, var_0.x, false), vec4<bool>(global2.x, var_1.b.a.x, global0.x, true), arg_0.d.a.x), var_1.c, abs(u_input.b)), 4294967295u ^ firstTrailingBit(global1[_wgslsmith_index_u32(22880u, 27u)])), ~min(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(30045u, u_input.b), var_1.a.xz))));
    global0 = !select(vec4<bool>(select(global2.x, var_2.b.b.x > 0i, global2.x), abs(var_2.c.c) < ~var_2.b.b.x, -1267f <= _wgslsmith_f_op_f32(floor(-1000f)), false), select(vec4<bool>(arg_0.a.x < var_1.a.x, any(global2.xx), var_2.c.a.x, var_0.x), !vec4<bool>(true, global2.x, true, false), select(select(vec4<bool>(arg_0.b.a.x, var_1.c.a.x, false, arg_0.c.a.x), vec4<bool>(arg_0.d.a.x, global0.x, var_2.c.a.x, true), vec4<bool>(true, false, var_2.d.a.x, true)), select(vec4<bool>(arg_0.c.a.x, false, global2.x, false), vec4<bool>(false, true, var_1.b.a.x, var_0.x), vec4<bool>(false, false, true, arg_0.d.a.x)), vec4<bool>(false, false, var_1.c.a.x, false))), vec4<bool>(var_2.d.a.x, any(var_2.b.a), -694f == _wgslsmith_f_op_f32(sign(-303f)), !(var_1.c.c != 2147483647i)));
    return Struct_2((u_input.c & firstTrailingBit(countOneBits(var_1.a))) >> (select(arg_0.a, ~min(vec3<u32>(38404u, 24732u, u_input.c.x), var_2.a), var_1.c.a.x) % vec3<u32>(32u)), Struct_1(!vec2<bool>(false, var_2.b.a.x || var_2.d.a.x), select(-u_input.a, vec2<i32>(-9156i, _wgslsmith_clamp_i32(593i, var_2.b.c, var_1.c.b.x)), !func_4(1047f, Struct_2(var_2.a, arg_0.d, arg_0.c, Struct_1(vec2<bool>(arg_0.c.a.x, global0.x), var_2.c.b, arg_0.c.b.x)), arg_0.d).a), var_1.c.c), Struct_1(select(global2.xz, arg_0.d.a, arg_0.d.a), countOneBits(~var_2.b.b) & func_4(_wgslsmith_f_op_f32(min(1000f, 1192f)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), var_2.c, Struct_1(global2.yy, var_1.c.b, u_input.e), Struct_1(var_2.d.a, vec2<i32>(arg_0.d.c, arg_0.c.b.x), var_1.c.b.x)), Struct_1(vec2<bool>(false, false), vec2<i32>(arg_0.b.c, 8226i), u_input.e)).b, 0i), Struct_1(select(!global0.wy, select(vec2<bool>(true, true), select(var_2.d.a, vec2<bool>(true, var_2.d.a.x), global0.wy), global0.yy), false), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, firstTrailingBit(var_1.c.c)), u_input.a), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.b.x, 47592i, var_2.c.c), vec3<i32>(arg_0.b.b.x, -61398i, 58159i)) >> (~var_1.a.x % 32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -arg_0.c;
    let var_1 = 80035u;
    var var_2 = func_5(Struct_2(u_input.c, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(624f, -1548f)) * 1532f), Struct_2(global3.wzy, Struct_1(global2.yx, u_input.a, 24826i), func_2(vec4<bool>(global0.x, true, global0.x, global0.x), Struct_1(global2.yx, vec2<i32>(-12931i, arg_0.b.x), arg_0.b.x), 86771u), Struct_1(global0.zz, vec2<i32>(arg_0.b.x, -40033i), u_input.a.x)), func_2(select(vec4<bool>(true, global2.x, global2.x, arg_0.a.x), vec4<bool>(false, global0.x, true, false), vec4<bool>(true, true, global2.x, global2.x)), func_2(vec4<bool>(arg_0.a.x, true, global0.x, global2.x), arg_0, 23599u), 3146u)), Struct_1(global0.ww, select(vec2<i32>(u_input.e, arg_0.c), vec2<i32>(16311i, u_input.e), true), 2147483647i), Struct_1(!(!vec2<bool>(arg_0.a.x, true)), _wgslsmith_div_vec2_i32(vec2<i32>(43674i, 2147483647i), -arg_0.b), u_input.a.x)));
    var var_3 = firstTrailingBit(0u) & ~18415u;
    let var_4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-762f, -2352f))))), -970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2228f) + _wgslsmith_f_op_f32(f32(-1f) * -757f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(f32(-1f) * -665f)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1220f - -276f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-367f * -1141f), _wgslsmith_f_op_f32(-1956f * -1045f))), _wgslsmith_f_op_f32(f32(-1f) * -120f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-100f, 1242f, _wgslsmith_f_op_f32(round(-796f))), vec3<f32>(_wgslsmith_f_op_f32(-971f * -1212f), 1f, -348f), vec3<bool>(false, func_5(Struct_2(global3.zyz, Struct_1(arg_0.a, u_input.a, -6903i), Struct_1(vec2<bool>(arg_0.a.x, global0.x), vec2<i32>(arg_0.b.x, arg_0.c), -2147483647i), Struct_1(vec2<bool>(global2.x, true), u_input.a, var_2.d.b.x))).d.a.x, arg_0.a.x)))))));
    return func_2(!select(select(vec4<bool>(var_2.c.a.x, global0.x, false, true), !vec4<bool>(false, var_2.d.a.x, global2.x, false), false), !select(vec4<bool>(true, var_2.b.a.x, true, true), vec4<bool>(true, arg_0.a.x, arg_0.a.x, false), global0.x), arg_0.a.x), arg_0, countOneBits(select(_wgslsmith_add_u32(0u, global3.x), 55026u, true)) & (4294967295u ^ global1[_wgslsmith_index_u32(~reverseBits(u_input.c.x), 27u)]));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    var var_0 = firstTrailingBit(~vec4<u32>(4294967295u, countOneBits(abs(43590u)), _wgslsmith_sub_u32(~global3.x, 49239u & u_input.c.x), select(arg_0.a.x, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_1, 27u)], 27u)], global2.x)));
    global0 = arg_3;
    let var_1 = Struct_3(Struct_2(var_0.wyw, Struct_1(!global0.wx, func_2(!vec4<bool>(false, global2.x, true, true), Struct_1(arg_0.d.a, arg_0.d.b, 2147483647i), ~arg_1).b, _wgslsmith_mod_i32(0i, countOneBits(19952i))), Struct_1(func_1(func_4(1395f, Struct_2(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], var_0.x, 0u), arg_0.c, Struct_1(vec2<bool>(arg_2.a.d.a.x, arg_0.c.a.x), u_input.a, arg_2.a.c.c), arg_0.c), Struct_1(arg_3.zz, arg_0.c.b, 1i))).a, vec2<i32>(29683i, -2147483647i), 1853i), Struct_1(!(!vec2<bool>(arg_2.a.b.a.x, false)), arg_0.b.b, arg_0.c.b.x)), func_5(arg_0), select(!(!global0.zy), global0.wx, !func_4(_wgslsmith_f_op_f32(step(979f, 207f)), arg_0, arg_0.b).a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(sign(-983f)), true)), 2114f)));
    global1 = array<u32, 27>();
    return _wgslsmith_f_op_f32(step(-1377f, _wgslsmith_f_op_f32(-var_1.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 27>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1074f);
    global4 = !(!all(!(!global0.yy)));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~select(_wgslsmith_clamp_u32(41023u, 4294967295u, 78210u), 60136u, true), u_input.d.x, 4294u), vec3<u32>(global3.x, global3.x ^ 4294967295u, global3.x));
    var var_2 = -557f;
    var var_3 = Struct_1(select(global2.yz, !vec2<bool>(any(vec4<bool>(global0.x, global2.x, true, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(233f - 135f), 658f)) != -700f), u_input.a, _wgslsmith_div_i32(-u_input.a.x | u_input.e, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(667f, _wgslsmith_f_op_f32(f32(-1f) * -523f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(443f, -1000f), vec2<f32>(-1590f, -1501f), global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1055f, 186f))))), u_input.e, vec3<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(u_input.c, func_1(Struct_1(global0.yw, u_input.a, var_3.c)), func_2(vec4<bool>(var_3.a.x, true, false, global2.x), Struct_1(vec2<bool>(false, false), u_input.a, var_3.c), var_1.x), Struct_1(var_3.a, vec2<i32>(0i, 51066i), 21131i)), global3.x, Struct_3(Struct_2(vec3<u32>(global1[_wgslsmith_index_u32(76165u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], u_input.b), Struct_1(var_3.a, u_input.a, 1i), Struct_1(var_3.a, vec2<i32>(-20735i, u_input.e), u_input.a.x), Struct_1(vec2<bool>(true, var_3.a.x), vec2<i32>(0i, 2147483647i), -22969i)), func_5(Struct_2(global3.zwy, Struct_1(vec2<bool>(true, false), u_input.a, var_3.c), Struct_1(var_3.a, vec2<i32>(var_3.b.x, var_3.c), -1i), Struct_1(vec2<bool>(var_3.a.x, global2.x), var_3.b, var_3.c))), vec2<bool>(global0.x, false), vec2<f32>(-1000f, 439f)), !select(vec4<bool>(false, true, false, false), vec4<bool>(var_3.a.x, global0.x, var_3.a.x, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1308f + 1572f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1642f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f + 400f)))), -(u_input.a.x | 2147483647i));
}

