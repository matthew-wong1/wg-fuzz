struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = Struct_3(Struct_1(!vec3<bool>(true, all(vec3<bool>(true, false, false)), arg_2 == u_input.b), _wgslsmith_f_op_f32(-arg_3), false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1601f, _wgslsmith_f_op_f32(step(-441f, -233f)), arg_1.x))))), _wgslsmith_f_op_f32(round(110f)), max(countOneBits(abs(~vec3<u32>(4294967295u, 0u, 1u))), vec3<u32>(1u, ~45135u, arg_2) & ((vec3<u32>(90122u, 64560u, arg_2) | vec3<u32>(20213u, 1u, 22039u)) ^ ~vec3<u32>(arg_2, u_input.a, arg_2))), Struct_1(vec3<bool>(all(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), true, false), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1998f + 110f), arg_3)))), ((arg_1.x && arg_1.x) & true) || true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) + arg_3)))), !select(arg_1.yy, arg_1.zx, any(vec3<bool>(false, true, false))));
    let var_1 = Struct_2(Struct_1(var_0.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f - var_0.d.d) * _wgslsmith_f_op_f32(f32(-1f) * -202f)), !(min(arg_2, 40670u) <= arg_2), arg_3));
    let var_2 = Struct_3(Struct_1(vec3<bool>(all(vec4<bool>(true, var_0.d.a.x, arg_1.x, var_1.a.a.x)), arg_1.x, arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + var_1.a.d)))), any(select(select(vec3<bool>(var_0.d.a.x, var_0.a.a.x, arg_1.x), var_0.d.a, false), var_1.a.a, all(vec4<bool>(false, false, true, arg_1.x)))), -224f), 672f, vec3<u32>(~30686u, firstLeadingBit(var_0.c.x), _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(~var_0.c.x, u_input.b, min(var_0.c.x, 150u)))), var_0.a, !(!(!var_1.a.a.xx)));
    var var_3 = abs((_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, 2147483647i, global0[_wgslsmith_index_u32(1u, 32u)], -39707i), select(vec4<i32>(2510i, 2147483647i, u_input.c, arg_0), vec4<i32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], arg_0, -22218i), var_0.d.c)) >> (~vec4<u32>(9450u, 57192u, var_0.c.x, 4294967295u) % vec4<u32>(32u))) & ~(~vec4<i32>(47462i, global0[_wgslsmith_index_u32(40290u, 32u)], u_input.c, 2938i)));
    var var_4 = u_input.c;
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(Struct_2(Struct_1(vec3<bool>(any(vec3<bool>(false, true, false)), func_3(1i, vec3<bool>(false, false, true), 4294967295u, -641f), true), _wgslsmith_f_op_f32(sign(-937f)), true, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-576f, -1449f), _wgslsmith_f_op_f32(f32(-1f) * -1339f))))), ~(-abs(vec4<i32>(u_input.c, 1i, global0[_wgslsmith_index_u32(u_input.a, 32u)], 2147483647i))) << (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(1u, u_input.b, 16983u, 61027u)), max(vec4<u32>(u_input.b, 1u, u_input.b, 0u), vec4<u32>(4294967295u, 62658u, u_input.a, 0u)) & vec4<u32>(u_input.b, 60307u, u_input.b, u_input.b)) % vec4<u32>(32u)), select(all(vec3<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, false)), false)), abs(select(4294967295u, 28945u, true)) >= ~2336u, any(vec4<bool>(true, true, true, true))), vec4<i32>(-global0[_wgslsmith_index_u32(41467u, 32u)], _wgslsmith_sub_i32(~firstLeadingBit(u_input.c), -(~u_input.c)), u_input.c, 1i), Struct_1(vec3<bool>(select(false, false, false) && func_3(2147483647i, vec3<bool>(true, false, true), 40220u, 877f), true, true), _wgslsmith_f_op_f32(1f + 1540f), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(840f, -738f) + _wgslsmith_f_op_f32(1047f - 1000f))))));
    global0 = array<i32, 32>();
    let var_1 = Struct_2(Struct_1(var_0.e.a, var_0.a.a.d, true, 333f));
    var var_2 = var_1.a;
    var var_3 = var_0.a.a;
    return var_0.e;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: i32) -> f32 {
    global0 = array<i32, 32>();
    let var_0 = func_2();
    let var_1 = Struct_1(!select(var_0.a, vec3<bool>(true, true, func_3(arg_3, var_0.a, u_input.a, arg_2)), (u_input.b <= 26559u) && var_0.c), _wgslsmith_f_op_f32(var_0.b - 225f), var_0.a.x, _wgslsmith_f_op_f32(max(-586f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(291f + 868f)))))));
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) - _wgslsmith_f_op_f32(-var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(any(vec3<bool>(false, true, false)) == true, u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1497f), ~global0[_wgslsmith_index_u32(u_input.a, 32u)] ^ select(u_input.c, global0[_wgslsmith_index_u32(18049u, 32u)], false))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f), -830f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1834f + -284f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -739f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-613f)), 763f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(655f - -1360f))));
    var var_1 = firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 0u), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 790u, 23903u, u_input.a), vec4<u32>(3161u, 12672u, 65441u, 2402u)), 2955u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<i32>(12357i, -28533i, -33725i, -101130i)) << (~max(vec4<u32>(u_input.b, u_input.b, u_input.a, 20611u), vec4<u32>(76954u, 72766u, 0u, 4294967295u)) % vec4<u32>(32u))), 2147483647i);
}

