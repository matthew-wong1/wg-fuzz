struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 4> = array<vec3<bool>, 4>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = arg_2;
    let var_1 = Struct_1(global1.a, !(221f >= _wgslsmith_f_op_f32(-arg_1)), select(global0.xz, select(select(global1.d.xw, global0.yx, global1.c), global1.c, vec2<bool>(arg_1 >= -842f, select(arg_0, true, arg_0))), any(global1.d)), global1.d);
    let var_2 = vec4<bool>(true, arg_0, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1, arg_1, false)) - arg_1) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(806f))))), all(vec3<bool>(global0.x && var_1.c.x, false && (true | global0.x), true)));
    global1 = var_1;
    global0 = vec3<bool>(!select(global0.x, !all(var_2.yx), arg_0), var_1.c.x, all(vec2<bool>(_wgslsmith_f_op_f32(-1121f - 1081f) > _wgslsmith_f_op_f32(round(-255f)), global0.x)));
    return 8639u;
}

fn func_2() -> Struct_1 {
    var var_0 = !all(vec2<bool>(true, true));
    let var_1 = Struct_1(vec3<u32>(func_3(select(all(global1.d), true, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f * 287f)), _wgslsmith_mult_i32(2147483647i >> (global1.a.x % 32u), -14972i << (global1.a.x % 32u))), abs(~global1.a.x ^ 0u), max(u_input.b, abs(_wgslsmith_mult_u32(1u, global1.a.x)))), false, vec2<bool>(true, true), !(!vec4<bool>(global0.x, all(vec2<bool>(true, false)), select(global0.x, global1.b, global1.d.x), u_input.a < 3229i)));
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, u_input.d)), vec2<i32>(20946i, 34700i)), ~(-firstTrailingBit(u_input.a)), 1i);
    var var_3 = 39722u;
    global0 = select(select(global1.d.xyx, !select(vec3<bool>(false, true, var_1.d.x), var_1.d.wzy, global1.d.wzz), !vec3<bool>(!global0.x, all(vec4<bool>(global0.x, var_1.d.x, true, global1.d.x)), all(global0.zy))), global1.d.wxw, false);
    return Struct_1(~(~var_1.a), var_1.b, vec2<bool>(!(all(var_1.d) & var_1.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1915f))) == _wgslsmith_f_op_f32(ceil(1f))), vec4<bool>(all(select(select(vec3<bool>(true, var_1.d.x, false), vec3<bool>(global1.b, true, var_1.b), global2[_wgslsmith_index_u32(61304u, 4u)]), !global1.d.wyw, !global1.d.x)), true, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global2 = array<vec3<bool>, 4>();
    let var_0 = func_2();
    return global1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    global0 = select(vec3<bool>(global0.x, false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1035f - 210f))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global2[_wgslsmith_index_u32(21788u, 4u)], vec3<bool>(func_4(func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-220f)), _wgslsmith_f_op_f32(min(-438f, -176f)))), min(vec4<u32>(83215u, arg_0.x, 34408u, 4294967295u) << (vec4<u32>(4294967295u, arg_2.a.x, global1.a.x, global1.a.x) % vec4<u32>(32u)), vec4<u32>(7842u, 0u, arg_0.x, u_input.b)), func_2()), any(func_2().d), false));
    let var_0 = Struct_1(arg_2.a, global0.x, arg_1.zz, vec4<bool>(firstTrailingBit(~u_input.b) > _wgslsmith_sub_u32(arg_2.a.x, 4294967295u), false, false, true));
    var var_1 = var_0;
    let var_2 = vec4<i32>(-3345i, 0i, -u_input.e, min(-36353i ^ firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(firstLeadingBit(firstLeadingBit(u_input.d)), firstLeadingBit(2147483647i) | u_input.e)));
    global2 = array<vec3<bool>, 4>();
    return _wgslsmith_div_u32(func_3(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-1153f))) * 1027f), -1i), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(47477u, func_1(global1.a.zz, global1.d, Struct_1(select(u_input.c, vec3<u32>(1u, 0u, global1.a.x), global1.d.wwz), !global1.b, !global1.d.ww, global1.d)), ~global1.a.x), select(any(func_2().d.xw), !(global1.d.x && false) | true, true), !global1.d.xw, global1.d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-711f))) - -1162f);
    global2 = array<vec3<bool>, 4>();
    var var_2 = u_input.a;
    var var_3 = countOneBits(~(~vec4<u32>(_wgslsmith_div_u32(var_0.a.x, 1u), 1u, ~0u, min(4294967295u, 0u))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(558f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-311f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -932f))))) * 450f);
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-572f))))), -383f));
    let var_4 = abs(u_input.e);
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~(~var_4) ^ (var_4 & u_input.d), countOneBits(max(_wgslsmith_add_i32(1i, u_input.d), _wgslsmith_dot_vec3_i32(vec3<i32>(55610i, 13914i, var_4), vec3<i32>(57578i, var_4, 38282i))))), vec3<i32>(_wgslsmith_div_i32(-9860i, abs(var_4)), _wgslsmith_mod_i32(~(-7335i), firstTrailingBit(u_input.e)), firstTrailingBit(~u_input.a)) << (firstTrailingBit(var_5) % vec3<u32>(32u)));
}

