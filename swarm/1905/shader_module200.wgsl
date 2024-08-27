struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> u32 {
    var var_0 = Struct_1(select(~firstTrailingBit(vec3<u32>(u_input.e, u_input.e, 4294967295u)), ~select(vec3<u32>(0u, 1u, u_input.e), vec3<u32>(2502u, 0u, u_input.e), arg_2.x | false), u_input.e == _wgslsmith_clamp_u32(u_input.e | u_input.e, reverseBits(u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(2897u, u_input.e, u_input.e), vec3<u32>(4294967295u, 1u, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(398f + 701f))))), _wgslsmith_f_op_f32(max(355f, -1743f)));
    var var_1 = false;
    global0 = arg_0.yzw;
    let var_2 = select(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.e, var_0.a.x) & var_0.a.zz), select(vec2<u32>(33215u, u_input.e) | var_0.a.xy, var_0.a.yx, select(vec2<bool>(true, arg_2.x), vec2<bool>(false, false), vec2<bool>(global0.x, true)))) >> (~1u % 32u), 7887u, arg_0.x);
    var var_3 = abs(var_2);
    return 37421u;
}

fn func_2(arg_0: bool) -> bool {
    global0 = vec3<bool>(arg_0, true == (_wgslsmith_clamp_u32(0u, func_3(vec4<bool>(false, arg_0, true, global0.x), vec2<f32>(-308f, -991f), vec4<bool>(true, true, true, true)), ~u_input.e) <= ~u_input.e), global0.x);
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 30770u, 1u), ~(~(~vec3<u32>(u_input.e, u_input.e, 4294967295u)))), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-356f, 264f, false)))))));
    global0 = select(select(vec3<bool>(true, u_input.d < -u_input.b.x, global0.x), !(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, true), false)), select(select(!vec3<bool>(arg_0, true, false), !vec3<bool>(global0.x, global0.x, false), true), !select(vec3<bool>(false, true, true), vec3<bool>(arg_0, false, true), vec3<bool>(true, true, false)), true)), select(!select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), false), select(vec3<bool>(true, arg_0, global0.x), vec3<bool>(true, true, arg_0), true), arg_0 && global0.x), vec3<bool>(false, any(vec3<bool>(false, true, true)) || !global0.x, select(all(vec2<bool>(false, global0.x)), !global0.x, true)), false), select(!(!vec3<bool>(true, true, global0.x)), vec3<bool>(global0.x, false, !global0.x), true));
    var var_1 = select(~(~(~vec3<u32>(1u, u_input.e, 0u))), var_0.a >> ((var_0.a & vec3<u32>(~var_0.a.x, ~u_input.e, firstTrailingBit(var_0.a.x))) % vec3<u32>(32u)), vec3<bool>(false, !(all(vec3<bool>(global0.x, global0.x, global0.x)) || !arg_0), false));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c))) > 1000f;
}

fn func_1() -> f32 {
    global0 = select(!(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, false)))), vec3<bool>(true || func_2(global0.x), any(select(vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), global0.yz)), any(vec4<bool>(global0.x, false, !global0.x, true))), vec3<bool>(true, u_input.e >= 26126u, !global0.x));
    global0 = vec3<bool>(global0.x, global0.x, true);
    global0 = select(!select(vec3<bool>(global0.x, true, true), vec3<bool>(false, -2147483647i >= u_input.a.x, global0.x), !(!global0.x)), vec3<bool>(global0.x, !(_wgslsmith_div_u32(u_input.e, 20820u) < ~1u), (1i & u_input.c) <= (-11930i | countOneBits(u_input.c))), select(!(!vec3<bool>(global0.x, global0.x, false)), select(!select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x)), select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, false, global0.x), true), vec3<bool>(global0.x, true, true), select(vec3<bool>(true, global0.x, true), vec3<bool>(false, false, false), global0.x)), global0.x), select(vec3<bool>(global0.x | true, false, true), select(!vec3<bool>(global0.x, global0.x, false), !vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), false)));
    var var_0 = ~(-2147483647i);
    var var_1 = vec3<bool>(global0.x, !any(select(global0.xx, vec2<bool>(global0.x, false), global0.zy)) | global0.x, 414f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-645f)) + _wgslsmith_f_op_f32(1208f + -1000f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -220f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = select(vec2<bool>((51342u ^ select(u_input.e, 0u, global0.x)) == 1u, !(!global0.x) && true), select(vec2<bool>(any(!vec4<bool>(true, global0.x, global0.x, false)), global0.x), !select(!vec2<bool>(false, global0.x), !vec2<bool>(global0.x, global0.x), !global0.yx), select(vec2<bool>(true, true), select(vec2<bool>(true, false), global0.zz, global0.zz), !vec2<bool>(true, global0.x))), global0.xz);
    let var_2 = countOneBits(_wgslsmith_sub_u32(1u, 1u));
    let var_3 = Struct_1(vec3<u32>(reverseBits(~firstLeadingBit(1u)), abs(0u), ~u_input.e), var_0, _wgslsmith_f_op_f32(-var_0));
    let var_4 = var_3;
    global0 = select(!select(vec3<bool>(all(vec3<bool>(global0.x, var_1.x, true)), u_input.d < u_input.c, global0.x), vec3<bool>(var_1.x && global0.x, all(vec3<bool>(true, false, var_1.x)), true), vec3<bool>(global0.x, true, false)), select(select(vec3<bool>(any(vec3<bool>(var_1.x, var_1.x, global0.x)), 17686i < u_input.c, var_1.x), !(!vec3<bool>(true, false, var_1.x)), _wgslsmith_f_op_f32(-508f + var_3.b) < _wgslsmith_f_op_f32(-var_3.c)), vec3<bool>(true, global0.x, !global0.x), true), true);
    global0 = select(vec3<bool>(var_1.x, all(vec3<bool>(true, true, true)), global0.x && true), !vec3<bool>(true, true, global0.x), vec3<bool>(!global0.x & var_1.x, select(true, _wgslsmith_f_op_f32(ceil(var_0)) > 1082f, (true && global0.x) | !global0.x), func_2(true)));
    let var_5 = 1364f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz);
}

