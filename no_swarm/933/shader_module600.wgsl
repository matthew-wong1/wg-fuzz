struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(20616u, 0u, 0u, 65058u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(46845u), Struct_3(72479u), Struct_3(62864u), Struct_3(31693u), Struct_3(63957u), Struct_3(1u), Struct_3(4294967295u), Struct_3(0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = any(vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true)) | any(vec2<bool>(true, true));
    let var_1 = ~(~(~(vec4<u32>(32186u, 9735u, global0[_wgslsmith_index_u32(0u, 6u)], 58689u) & vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], 35165u, global0[_wgslsmith_index_u32(72814u, 6u)]))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(1u), ~u_input.b, global0[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b), vec4<u32>(~u_input.a.x, reverseBits(39291u), ~12091u, ~14047u)) % vec4<u32>(32u)));
    global1 = array<Struct_3, 8>();
    let var_2 = vec2<i32>(-(~abs(1i)), 2147483647i);
    global0 = array<u32, 6>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(-260f, _wgslsmith_f_op_f32(select(296f, -1111f, var_0))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1052f, 1094f)), -252f)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = 98241u;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3())));
    return global1[_wgslsmith_index_u32(~4294967295u, 8u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_dot_vec2_u32(arg_1.yw, ~(vec2<u32>(var_0.a, max(arg_3.a, arg_2.a)) >> (min(~arg_1.xw, vec2<u32>(arg_1.x, 0u)) % vec2<u32>(32u))));
    var var_2 = arg_2.c.x;
    global1 = array<Struct_3, 8>();
    let var_3 = 30261i;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1015f, 1228f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(abs(-664f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1457f, -408f)))))));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global1 = array<Struct_3, 8>();
    let var_0 = ~120701u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1534f, -629f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f + 1659f)), _wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(vec3<f32>(802f, -1000f, -1193f)), vec4<u32>(u_input.b, 1u, 0u, var_0), Struct_1(4294967295u, u_input.a, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.xxx, -7334i), func_2(vec3<f32>(-680f, 1787f, 238f)))))));
    var var_2 = Struct_2(Struct_1(func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(1000f)), 1f, _wgslsmith_f_op_f32(floor(-1654f)))).a, firstTrailingBit(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(7779u, 1u)), vec2<u32>(48598u, 32360u), vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 6u)]))), vec4<bool>(var_1.x == -1494f, !(arg_0.x && arg_0.x), true, false), select(vec3<bool>(true, true, any(vec2<bool>(arg_0.x, arg_0.x))), arg_0.ywx, arg_0.x | (false && arg_0.x)), ~firstTrailingBit(1i)), Struct_1(var_0, vec2<u32>(0u, u_input.b), select(vec4<bool>(true, true, true, true), arg_0, vec4<bool>(!arg_0.x, arg_0.x, all(arg_0.yyz), true)), vec3<bool>(any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)) && arg_0.x, all(arg_0) & (arg_0.x | false), arg_0.x), _wgslsmith_div_i32(-2147483647i, countOneBits(~(-14527i)))), !arg_0.x, arg_0.x, Struct_1(~var_0, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], var_0), _wgslsmith_sub_u32(2662u, u_input.a.x)), 15629u), select(!arg_0, arg_0, !arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, true)), 1i));
    var_2 = Struct_2(var_2.e, var_2.a, arg_0.x, false, var_2.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>((all(vec2<bool>(true, false)) || true) && all(vec3<bool>(false, false, false)), true), all(vec2<bool>(true, true)) || func_1(vec4<bool>(true, true, true, true)));
    var var_1 = var_0.x;
    var var_2 = Struct_3(4391u);
    var var_3 = Struct_1(~u_input.a.x, u_input.a, select(select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(true, var_0.x, var_0.x, any(vec3<bool>(var_0.x, false, var_0.x))), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x | var_0.x)), !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, false, var_0.x, false))), vec4<bool>(any(select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), false, any(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), true)), !select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, false), func_1(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), -56380i);
    var_1 = func_1(select(var_3.c, select(select(var_3.c, !var_3.c, vec4<bool>(true, var_0.x, var_3.d.x, var_3.d.x)), !(!vec4<bool>(false, var_0.x, var_3.d.x, false)), vec4<bool>(all(vec3<bool>(false, false, var_0.x)), !var_0.x, var_3.c.x, true)), !(!vec4<bool>(var_0.x, var_0.x, true, true))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1051f, -548f, var_3.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1513f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), 253f, -1318f) - vec3<f32>(1190f, _wgslsmith_f_op_f32(round(-652f)), _wgslsmith_f_op_f32(trunc(-1313f)))), !var_0.x | false)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1635f, 795f, 865f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(~var_3.e, ~(var_3.e >> (u_input.b % 32u))), var_4.yz, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1637f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1359f + var_4.x), _wgslsmith_f_op_f32(round(1225f))), _wgslsmith_f_op_f32(var_4.x * var_4.x), -894f))), _wgslsmith_div_i32(select(0i, var_3.e, var_0.x), -29533i & -var_3.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, _wgslsmith_f_op_f32(var_4.x - var_4.x), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(var_4.x * 334f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 1732f, 919f, var_4.x)) * vec4<f32>(-132f, _wgslsmith_f_op_f32(-var_4.x), var_4.x, var_4.x))));
}

