struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -895f;

var<private> global1: vec4<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    global1 = !select(!vec4<bool>(u_input.a.x != -2147483647i, !arg_1.c.x, true, true), select(select(select(vec4<bool>(arg_0.c.x, false, arg_2.c.x, arg_0.c.x), vec4<bool>(arg_2.c.x, global1.x, false, global1.x), false), select(vec4<bool>(true, false, arg_2.c.x, true), vec4<bool>(arg_0.d.x, arg_2.c.x, true, false), arg_2.d.x), true), !select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_0.d.x, arg_1.c.x), vec4<bool>(false, global1.x, false, arg_2.c.x), global1.x), any(vec2<bool>(arg_0.c.x, false))), vec4<bool>(true, true, true, true));
    var var_0 = Struct_1(arg_0.a, arg_1.b, select(vec2<bool>(arg_0.d.x, true), arg_1.d, !select(vec2<bool>(true, arg_0.d.x), arg_2.d, arg_0.c)), vec2<bool>(true, any(vec2<bool>(arg_3.x <= arg_3.x, true))), arg_1.b.x);
    var var_1 = 4294967295u;
    var var_2 = arg_2;
    var_0 = Struct_1(var_0.a, vec2<i32>(-1i, -u_input.b.x), !(!vec2<bool>(true, any(global1.wwz))), !select(arg_1.c, vec2<bool>(all(global1.yy), arg_1.c.x), var_2.c), _wgslsmith_sub_i32(-7904i, firstLeadingBit(-_wgslsmith_mult_i32(u_input.a.x, u_input.b.x))));
    return abs(-34102i);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 5140u, 0u), vec3<u32>(0u, 1u, 23620u)), 1u), 1u), ~15352u) ^ countOneBits(~max(1u, 1u));
    var var_1 = select(!(!vec4<bool>(all(vec4<bool>(arg_0, false, true, true)), any(global1.zz), !arg_1.d.x, !arg_0)), select(select(select(vec4<bool>(arg_0, arg_1.d.x, false, arg_0), vec4<bool>(false, arg_0, true, false), global1.x), !vec4<bool>(global1.x, false, false, global1.x), select(!vec4<bool>(true, true, true, arg_0), !vec4<bool>(arg_1.d.x, true, false, false), !vec4<bool>(arg_1.c.x, true, arg_1.d.x, true))), vec4<bool>(false, true, !arg_0, false), select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_1.c.x), vec4<bool>(arg_1.d.x, false, false, arg_0), !vec4<bool>(arg_1.d.x, false, true, false)), vec4<bool>(arg_0, false, false, true), select(select(vec4<bool>(arg_1.c.x, arg_0, true, global1.x), vec4<bool>(arg_0, true, false, arg_0), global1.x), select(vec4<bool>(arg_1.d.x, true, arg_0, global1.x), vec4<bool>(arg_0, arg_1.d.x, true, global1.x), true), arg_1.d.x != arg_0))), arg_0);
    var var_2 = -max(reverseBits(_wgslsmith_mod_i32(u_input.a.x, ~arg_1.e)), arg_3);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_1.a)), vec2<i32>(arg_2, _wgslsmith_sub_i32(arg_3, arg_3)), !(!global1.zx), vec2<bool>(true, select(!arg_0, all(vec3<bool>(false, arg_1.c.x, arg_1.d.x)), !var_1.x) || (425f >= _wgslsmith_f_op_f32(select(arg_1.a.x, arg_1.a.x, arg_0)))), arg_3);
    var var_4 = arg_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -158f);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = false;
    var_0 = !(!arg_0.x);
    let var_2 = _wgslsmith_f_op_f32(func_4(true, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * 368f), _wgslsmith_f_op_f32(f32(-1f) * -1954f)), vec2<i32>(-u_input.c.x, func_3(Struct_1(vec2<f32>(arg_2.x, -1000f), vec2<i32>(838i, u_input.a.x), vec2<bool>(false, arg_1), vec2<bool>(false, true), u_input.b.x), Struct_1(arg_2.yy, vec2<i32>(0i, -40351i), global1.zx, vec2<bool>(false, global1.x), u_input.c.x), Struct_1(arg_2.yx, u_input.a.zz, vec2<bool>(true, true), global1.ww, u_input.b.x), vec2<u32>(arg_3, 1u))), select(vec2<bool>(!arg_1, global1.x), vec2<bool>(any(vec2<bool>(global1.x, false)), arg_1), _wgslsmith_f_op_f32(-700f - arg_2.x) > _wgslsmith_f_op_f32(-arg_2.x)), select(vec2<bool>(true, u_input.b.x != u_input.a.x), arg_0.yx, arg_1), -1i), u_input.c.x, 2147483647i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(round(1000f))) * var_2);
    return Struct_1(arg_2.zz, u_input.b, vec2<bool>(any(!(!arg_0.zy)), arg_1), global1.xw, -1i);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = func_2(!select(select(!vec3<bool>(arg_0, false, false), !vec3<bool>(false, false, global1.x), !global1.yxx), global1.xwx, select(vec3<bool>(true, true, false), select(vec3<bool>(global1.x, global1.x, global1.x), global1.ywy, false), vec3<bool>(false, global1.x, true))), arg_0 || arg_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-656f, -458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -562f))))), 0u >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, firstLeadingBit(arg_1.x), reverseBits(arg_1.x)), _wgslsmith_sub_u32(4294967295u, 23851u) & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 1u, arg_1.x), arg_1)) % 32u));
    let var_1 = vec3<bool>(true, 0i > u_input.c.x, arg_0);
    let var_2 = ~_wgslsmith_mod_u32(arg_1.x, 16242u);
    var var_3 = any(global1.xwx);
    var var_4 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) + _wgslsmith_f_op_f32(min(179f, -123f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-348f, -1190f)))))), select(u_input.b, -vec2<i32>(~var_0.e, max(-1i, 2147483647i)), var_0.c), select(var_0.d, global1.yy, global1.xw), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) != _wgslsmith_f_op_f32(sign(var_0.a.x)), arg_0), 2147483647i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, var_4.a.x))))), firstTrailingBit(-(vec2<i32>(-1i) * -var_0.b)), vec2<bool>(true, false), vec2<bool>(min(var_4.b.x, 1i) > ~var_0.e, (var_4.a.x <= _wgslsmith_f_op_f32(max(var_0.a.x, -952f))) || global1.x), ~(-16069i));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = 631f;
    global0 = _wgslsmith_f_op_f32(-arg_2.a.x);
    let var_1 = arg_0.c.x;
    var var_2 = vec3<u32>(4294967295u, 1u, arg_3);
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(~(select(11397u, 51079u, true) << (abs(55116u) % 32u)), 1u));
    return StorageBuffer(firstTrailingBit(u_input.c | (-u_input.a << (vec3<u32>(86182u, 0u, 4294967295u) % vec3<u32>(32u)))), countOneBits(-31908i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, arg_2.a.x, -157f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(298f, 181f, arg_1.a.x, -243f)), true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, arg_1.a.x, 847f, arg_1.a.x) - vec4<f32>(-1939f, 706f, arg_1.a.x, arg_1.a.x))), vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(sign(arg_2.a.x)), arg_2.a.x, 1148f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    var_0 = u_input.c.x;
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-505f, 776f))) * vec2<f32>(-1603f, -920f))), vec2<f32>(_wgslsmith_f_op_f32(-1031f * -289f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(448f)), -1000f)))), u_input.b, global1.zy, vec2<bool>(true, false), select(u_input.c.x ^ -1i, 6823i, global1.x));
    var var_2 = true;
    var var_3 = vec2<u32>(1u, 1u);
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, -1199f, 465f), vec3<f32>(-1000f, -988f, var_1.a.x), vec3<bool>(global1.x, false, false))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1709f, -713f, -1087f))))))));
    let x = u_input.a;
    s_output = func_6(-1i, func_5(func_1(true, ~select(vec3<u32>(var_3.x, 1u, 4294967295u), vec3<u32>(var_3.x, 36589u, 53915u), vec3<bool>(true, true, true))), firstLeadingBit(~(~u_input.a.x)), func_2(select(vec3<bool>(false, var_1.d.x, var_1.d.x), vec3<bool>(var_1.d.x, var_1.c.x, global1.x), global1.wyz), var_1.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, var_1.a.x))), reverseBits(var_3.x)), var_3.x), func_5(var_1, var_1.e, var_1, 1u));
}

