struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-42553i, i32(-2147483648)), vec2<i32>(-1i, 30240i), vec2<i32>(6061i, i32(-2147483648)), vec2<i32>(17513i, 19738i), vec2<i32>(-41059i, 915i), vec2<i32>(4808i, -14658i), vec2<i32>(-2278i, i32(-2147483648)), vec2<i32>(-6109i, 0i), vec2<i32>(5125i, i32(-2147483648)), vec2<i32>(2817i, 9463i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 26245i), vec2<i32>(-27073i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), 9176i), vec2<i32>(-1i, 27139i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(select(select(global0.b.wy, vec2<bool>(global0.a.x, true), false), vec2<bool>(true, false), true), select(!vec4<bool>(true, any(global0.b.yx), !global0.b.x, any(global0.b)), !select(select(global0.b, global0.b, false), vec4<bool>(true, global0.a.x, false, global0.a.x), global0.b), !(global0.b.x & true)), !(any(select(vec4<bool>(global0.a.x, global0.c, false, true), vec4<bool>(global0.b.x, true, true, false), vec4<bool>(false, true, global0.a.x, true))) || any(vec3<bool>(global0.b.x, global0.c, true))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(205f, 492f)))) * -671f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-756f * 1476f), _wgslsmith_f_op_f32(f32(-1f) * -1189f))))), 223f);
    var var_2 = vec2<u32>(9489u, _wgslsmith_div_u32(4294967295u, u_input.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(505f)), var_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), 714f), _wgslsmith_f_op_f32(-var_1.x)), -1956f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1134f, var_1.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 1153f) * vec4<f32>(465f, -1456f, var_1.x, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -212f), -252f), global0.a.x))));
    global1 = array<vec2<i32>, 16>();
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) + vec3<f32>(610f, arg_0, -1095f))), vec3<f32>(-564f, _wgslsmith_f_op_f32(step(arg_0, arg_0)), arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-431f * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(110f + -126f), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(353f, arg_0, arg_0) - vec3<f32>(arg_0, 2492f, -951f))) - vec3<f32>(793f, 782f, 546f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, var_0.x, 1775f) + vec3<f32>(-311f, arg_0, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(878f, arg_0, -611f) * vec3<f32>(arg_0, -148f, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 2911f, var_0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(327f, var_0.x, -528f)))))))));
    var var_2 = Struct_1(select(global0.a, !(!global0.b.xy), false), !(!arg_1.b), select(true, all(select(vec4<bool>(true, false, arg_2.x, false), !global0.b, !global0.b.x)), arg_2.x));
    let var_3 = u_input.b.x << (~_wgslsmith_mod_u32(_wgslsmith_sub_u32(min(95783u, u_input.b.x), 0u), firstLeadingBit(0u)) % 32u);
    var var_4 = Struct_1(!(!(!vec2<bool>(false, global0.c))), select(!arg_1.b, select(select(global0.b, !vec4<bool>(var_2.b.x, global0.a.x, arg_2.x, var_2.c), vec4<bool>(false, arg_1.b.x, arg_2.x, false)), var_2.b, global0.b), select(vec4<bool>(global0.c, true, any(vec4<bool>(true, arg_1.c, true, arg_2.x)), var_2.b.x | arg_2.x), vec4<bool>(true, true, true, true), select(global0.b, var_2.b, !vec4<bool>(global0.b.x, global0.b.x, false, true)))), arg_1.b.x);
    return Struct_1(vec2<bool>(true == (max(u_input.a, 51524u) == ~14362u), true), vec4<bool>(global0.b.x, true, true, all(!var_2.b)), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(781f, -206f), _wgslsmith_f_op_f32(258f + 1785f)))), 424f))));
    let var_1 = Struct_1(func_2(_wgslsmith_f_op_f32(-239f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(747f, -829f))), func_2(1f, arg_1, select(vec4<bool>(true, true, true, arg_1.a.x), arg_1.b, true)), vec4<bool>(global0.b.x, global0.c, all(select(vec3<bool>(true, true, true), arg_0.b.zxw, global0.a.x)), arg_1.b.x)).a, !arg_1.b, global0.c);
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1254f), _wgslsmith_f_op_f32(max(1654f, 2021f)), false)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-667f, _wgslsmith_f_op_f32(ceil(753f)), func_2(-735f, Struct_1(global0.a, vec4<bool>(arg_0.b.x, false, false, arg_1.c), var_1.c), vec4<bool>(arg_0.c, arg_1.c, true, true)).c)))), Struct_1(global0.b.yy, vec4<bool>(true, !all(vec3<bool>(false, false, var_1.a.x)), true, select(true, global0.c, !var_1.b.x)), arg_0.c), vec4<bool>(arg_0.a.x, false || all(!arg_1.b), any(!vec3<bool>(arg_1.c, true, true)) && false, func_2(-1000f, Struct_1(vec2<bool>(true, false), select(global0.b, vec4<bool>(false, arg_0.a.x, global0.b.x, true), arg_1.b), var_1.c != false), func_2(_wgslsmith_f_op_f32(-768f - -351f), func_2(253f, Struct_1(vec2<bool>(arg_0.b.x, global0.b.x), vec4<bool>(arg_0.a.x, var_1.b.x, arg_0.b.x, arg_1.a.x), false), global0.b), vec4<bool>(arg_0.c, false, global0.c, global0.a.x)).b).c));
    global1 = array<vec2<i32>, 16>();
    global1 = array<vec2<i32>, 16>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1310f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(200f)) * _wgslsmith_f_op_f32(f32(-1f) * -1256f))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = array<vec2<i32>, 16>();
    let var_0 = -(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(_wgslsmith_div_i32(16027i, 3044i), 3009i)) | _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2400i, -12294i), global1[_wgslsmith_index_u32(0u, 16u)])), firstLeadingBit(-2147483647i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(func_2(-1000f, Struct_1(!global0.a, select(vec4<bool>(global0.b.x, global0.b.x, false, false), vec4<bool>(false, true, false, false), true), global0.c), global0.b), func_2(_wgslsmith_f_op_f32(f32(-1f) * -539f), func_2(-160f, func_2(-235f, Struct_1(global0.b.yx, global0.b, global0.b.x), global0.b), func_2(-105f, Struct_1(vec2<bool>(global0.c, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.b.x, global0.a.x), false), global0.b).b), vec4<bool>(true, any(vec2<bool>(global0.a.x, global0.b.x)), select(false, false, true), true)))));
    global0 = Struct_1(vec2<bool>(~var_0 >= firstLeadingBit(-2147483647i), global0.c), select(global0.b, vec4<bool>(select(global0.a.x, false, global0.c != false), global0.c, any(func_2(var_1.x, Struct_1(global0.a, vec4<bool>(true, false, false, global0.b.x), false), global0.b).b.zwx), true), false), global0.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -1641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -761f))))))));
    return func_2(-312f, Struct_1(!vec2<bool>(global0.a.x != false, global0.b.x), global0.b, all(select(!vec3<bool>(global0.b.x, global0.b.x, false), vec3<bool>(global0.c, global0.c, global0.b.x), true))), !global0.b).a;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global0 = Struct_1(arg_1.a, arg_1.b, select(true, true, true));
    var var_0 = !select(vec4<bool>(true, global0.a.x, func_2(_wgslsmith_f_op_f32(-arg_0.x), func_2(arg_0.x, arg_2, vec4<bool>(false, true, global0.b.x, false)), arg_1.b).a.x, true && global0.b.x), arg_1.b, true);
    let var_1 = select(arg_1.a, !func_1(vec3<u32>(firstLeadingBit(u_input.a), u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 72357u, u_input.a), vec4<u32>(43101u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(64863u, 4294967295u, u_input.b.x, 1u)) ^ vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a)), arg_1.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, 1f, _wgslsmith_f_op_f32(arg_0.x - 628f), _wgslsmith_f_op_vec2_f32(func_4(Struct_1(var_0.zx, vec4<bool>(var_0.x, false, arg_1.c, false), false), Struct_1(vec2<bool>(arg_2.b.x, arg_1.c), arg_2.b, global0.b.x))).x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1374f, 225f, -400f, 1437f) - vec4<f32>(arg_0.x, -514f, -3049f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 329f, -509f, arg_0.x) + vec4<f32>(-1871f, 477f, arg_0.x, 701f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, arg_0.x, -508f, -1867f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-844f, arg_0.x, 1049f, 244f), vec4<f32>(arg_0.x, 517f, -244f, -1334f), vec4<bool>(arg_1.a.x, false, true, arg_1.c)))))), any(!vec3<bool>(true, true, any(vec4<bool>(global0.b.x, true, global0.a.x, false))))));
    global0 = func_2(arg_0.x, arg_2, arg_1.b);
    return StorageBuffer(112f, global1[_wgslsmith_index_u32(firstTrailingBit(122874u) & 1u, 16u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -1122f, -354f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(512f, -1000f, -448f), vec3<f32>(705f, 365f, 449f)))), false)), Struct_1(!func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 25324u, u_input.b.x), u_input.b), countOneBits(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), !select(global0.b, !vec4<bool>(false, global0.b.x, global0.c, false), global0.c | global0.b.x), global0.c), Struct_1(!select(vec2<bool>(global0.a.x, global0.b.x), vec2<bool>(global0.c, global0.b.x), func_2(-1000f, Struct_1(vec2<bool>(global0.b.x, true), vec4<bool>(true, false, global0.b.x, global0.c), true), vec4<bool>(false, false, global0.c, global0.c)).b.zy), global0.b, true));
}

