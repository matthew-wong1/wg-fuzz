struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    return Struct_2(!vec3<bool>(arg_0.x, true, arg_0.x), -375f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-351f)), _wgslsmith_f_op_f32(-525f - -286f), _wgslsmith_div_f32(-146f, 190f), _wgslsmith_f_op_f32(trunc(-485f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, -1000f, 583f, -584f)))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = !vec4<bool>(true, ~1u != _wgslsmith_sub_u32(~4294967295u, arg_0.b.x), _wgslsmith_f_op_f32(arg_0.e.d.x * _wgslsmith_div_f32(arg_0.a.b, arg_2.x)) < 746f, true);
    var var_1 = arg_2.x;
    var_1 = arg_1.d.x;
    return _wgslsmith_f_op_vec4_f32(exp2(arg_0.c.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(vec3<bool>(arg_2.a.a.x, all(!arg_2.c.a), select(select(false, arg_3.x, arg_0.a.x), arg_2.e.a == u_input.a, arg_2.c.a.x)), 522f, vec4<f32>(2060f, _wgslsmith_f_op_f32(abs(arg_1.c.x)), arg_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -777f))))), vec3<u32>(12405u << (0u % 32u), arg_2.b.x, 34444u), func_2(!func_2(select(vec2<bool>(arg_1.a.x, false), arg_0.a.zz, vec2<bool>(true, false)), arg_2.b.x).a.zx, 4294967295u), true, Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -471f), vec4<i32>(15170i, -_wgslsmith_div_i32(-19300i, -3172i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 1i, 1i, arg_2.e.a), _wgslsmith_mult_vec4_i32(arg_2.e.c, arg_2.e.c)), 0i ^ (u_input.b >> (32914u % 32u))), vec3<f32>(-920f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(908f * -792f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_2.a.c.x, arg_0.b)), 1f)))));
    let var_1 = select(countOneBits(~min(vec2<u32>(1u, arg_2.b.x), vec2<u32>(4294967295u, 4294967295u)) & (vec2<u32>(var_0.b.x, var_0.b.x) ^ abs(arg_2.b.xy))), ~var_0.b.zy, !arg_3);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b)) - arg_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.c.c.x)) * _wgslsmith_f_op_f32(-777f - var_0.a.b)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2, -1194f);
    var_3 = _wgslsmith_f_op_vec3_f32(arg_0.c.yzw + arg_1.c.zwx);
    return Struct_1(-reverseBits(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1534f, var_3.x)))))), arg_2.e.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.c.yxx), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(arg_2.a.c.xzz))))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> bool {
    var var_0 = func_4(func_2(!(!select(vec2<bool>(false, false), vec2<bool>(false, arg_1), arg_1)), arg_0.x), Struct_2(!vec3<bool>(u_input.b < 1i, true, false), 1f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1131f * 906f), -1128f, _wgslsmith_f_op_f32(abs(-1142f)), _wgslsmith_f_op_f32(abs(-708f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(vec3<bool>(false, arg_1, arg_1), -164f, vec4<f32>(948f, -2234f, 1262f, -734f)), vec3<u32>(arg_0.x, 1u, arg_0.x), Struct_2(vec3<bool>(true, arg_1, false), 866f, vec4<f32>(-1252f, 300f, 1520f, 2757f)), true, Struct_1(u_input.b, 1078f, vec4<i32>(-41233i, 2147483647i, -41630i, 16188i), vec3<f32>(892f, -288f, 335f))), Struct_1(-1i, -135f, vec4<i32>(u_input.b, 1i, -64773i, -1i), vec3<f32>(-1391f, -808f, -345f)), vec3<f32>(921f, -554f, 1256f))))))), Struct_3(func_2(vec2<bool>(select(true, arg_1, false), arg_1), ~select(arg_0.x, arg_0.x, arg_1)), abs(arg_0.wyw), Struct_2(!(!vec3<bool>(false, true, arg_1)), -881f, vec4<f32>(-241f, _wgslsmith_div_f32(346f, -159f), _wgslsmith_div_f32(343f, -1000f), -1000f)), !arg_1, Struct_1(0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1798f, -114f, arg_1)) - _wgslsmith_f_op_f32(-756f * -155f)), -max(vec4<i32>(42502i, u_input.b, -23174i, -1i), vec4<i32>(46682i, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 460f, 775f) * vec3<f32>(1000f, 1484f, 353f)))), !(!(!(!vec2<bool>(arg_1, true)))));
    var_0 = Struct_1(_wgslsmith_add_i32(u_input.a, -(i32(-1i) * -1i) >> (arg_0.x % 32u)), 1861f, abs(-((vec4<i32>(-30079i, var_0.a, var_0.c.x, var_0.a) >> (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u) % vec4<u32>(32u))) >> (~vec4<u32>(27851u, 1u, arg_0.x, arg_0.x) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x))), var_0.d.x, var_0.d.x));
    var_0 = func_4(func_2(vec2<bool>(false & arg_1, true), 4294967295u), Struct_2(vec3<bool>(true, any(!vec2<bool>(arg_1, false)), true), var_0.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(831f, -1228f, var_0.d.x, -604f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -535f, -1496f)), false)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, -1000f, var_0.b, -342f), vec4<f32>(var_0.d.x, -1893f, var_0.b, -1058f)))))), Struct_3(func_2(!select(vec2<bool>(false, true), vec2<bool>(true, arg_1), vec2<bool>(false, arg_1)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(76397u, arg_0.x, arg_0.x, arg_0.x), arg_0)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(arg_0.x, 1u)), countOneBits(~12666u), arg_0.x), Struct_2(select(!vec3<bool>(true, arg_1, false), func_2(vec2<bool>(false, arg_1), arg_0.x).a, vec3<bool>(false, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -128f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.x, var_0.b, -936f, var_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1238f, -824f, 300f, -1421f)))), arg_1, func_4(func_2(vec2<bool>(true, true), 1u), Struct_2(!vec3<bool>(arg_1, arg_1, false), _wgslsmith_f_op_f32(floor(var_0.d.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, 1114f, 1051f, 234f) - vec4<f32>(var_0.b, var_0.b, var_0.d.x, var_0.b))), Struct_3(func_2(vec2<bool>(arg_1, true), arg_0.x), firstLeadingBit(vec3<u32>(10704u, 4294967295u, 13567u)), Struct_2(vec3<bool>(true, arg_1, true), var_0.d.x, vec4<f32>(1209f, var_0.b, var_0.d.x, 1090f)), true, func_4(Struct_2(vec3<bool>(arg_1, arg_1, false), 1648f, vec4<f32>(628f, 965f, var_0.d.x, 419f)), Struct_2(vec3<bool>(arg_1, true, arg_1), 552f, vec4<f32>(var_0.b, -1075f, var_0.d.x, var_0.b)), Struct_3(Struct_2(vec3<bool>(arg_1, false, arg_1), var_0.b, vec4<f32>(1683f, var_0.b, -1464f, var_0.d.x)), vec3<u32>(1u, arg_0.x, 8030u), Struct_2(vec3<bool>(arg_1, arg_1, arg_1), -3001f, vec4<f32>(var_0.d.x, var_0.b, 861f, var_0.b)), arg_1, Struct_1(-1i, -1000f, vec4<i32>(-2147483647i, var_0.c.x, 10274i, var_0.c.x), vec3<f32>(var_0.b, var_0.d.x, -485f))), vec2<bool>(arg_1, arg_1))), select(!vec2<bool>(arg_1, false), !vec2<bool>(arg_1, true), true | arg_1))), vec2<bool>(true, true));
    var var_1 = func_4(func_2(select(!vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, false), false), arg_0.x), func_2(!func_2(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), vec2<bool>(false, true)), ~1u).a.yz, ~(~_wgslsmith_add_u32(arg_0.x, arg_0.x))), Struct_3(Struct_2(!func_2(vec2<bool>(arg_1, arg_1), arg_0.x).a, _wgslsmith_f_op_f32(265f + 688f), _wgslsmith_f_op_vec4_f32(vec4<f32>(653f, var_0.d.x, -1072f, var_0.d.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1587f, var_0.b, -228f, var_0.d.x), vec4<f32>(-1293f, -768f, -711f, -1131f), vec4<bool>(arg_1, arg_1, true, arg_1))))), arg_0.yzw, Struct_2(vec3<bool>(!arg_1, false, -14442i > var_0.c.x), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-991f, 245f, var_0.b, -1005f) * vec4<f32>(1095f, -1496f, 563f, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -1225f) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.x - 979f))), Struct_1(~(i32(-1i) * -52596i), var_0.b, ~firstTrailingBit(vec4<i32>(-10356i, u_input.a, -1i, 28987i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, 1063f, 235f)))), vec2<bool>(arg_1, true));
    var var_2 = Struct_3(func_2(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_1), !vec2<bool>(false, arg_1)), !select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_1), arg_1), true), ~_wgslsmith_div_u32(~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(62844u, arg_0.x), vec2<u32>(1u, arg_0.x)))), vec3<u32>(arg_0.x, 24033u, ~(max(arg_0.x, 0u) ^ arg_0.x)), Struct_2(vec3<bool>(true, false, true), -398f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-995f, var_0.d.x, var_1.b, var_1.d.x), vec4<f32>(-976f, 1000f, var_0.b, 601f), vec4<bool>(arg_1, true, arg_1, arg_1)))))), (_wgslsmith_f_op_f32(step(665f, -791f)) != var_1.b) | false, func_4(func_2(select(vec2<bool>(false, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), _wgslsmith_dot_vec4_u32(arg_0, arg_0)), func_2(vec2<bool>(true, arg_1), ~arg_0.x), Struct_3(func_2(vec2<bool>(true, arg_1), ~8005u), select(arg_0.yzz, arg_0.wxx, vec3<bool>(true, arg_1, arg_1)) ^ arg_0.zwx, func_2(select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), arg_1), arg_0.x), arg_1, Struct_1(-var_0.c.x, -1581f, vec4<i32>(-28001i, var_0.a, -1i, u_input.b), vec3<f32>(var_1.b, var_1.d.x, 484f))), !(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1))));
    return all(vec3<bool>(any(var_2.a.a), false, any(vec4<bool>(false, !var_2.c.a.x, var_1.c.x < -73019i, -574f != var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_1 = Struct_2(vec3<bool>(true, -2147483647i != (u_input.a ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-26366i, -37439i, u_input.a, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))), func_1(~(~vec4<u32>(932u, 4294967295u, 4294967295u, 1u)), var_0.x)), 139f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(125f, -817f, 857f, 901f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1521f, -905f, -1653f, -242f) - vec4<f32>(-211f, -1000f, -147f, -112f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-565f, -723f, -867f, -411f) + vec4<f32>(610f, -1675f, -1000f, -110f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 100f, -100f, -1609f) * vec4<f32>(414f, -447f, 1301f, -1029f)))))));
    var_0 = var_1.a.zz;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec2<bool>(true, false), max(4294967295u, 4294967295u)).c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1380f + -935f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), -203f)))));
    let var_3 = _wgslsmith_add_u32(16169u, ~_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, 1u), ~vec3<u32>(0u, 0u, 19417u)), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(53554u, var_3)), _wgslsmith_div_i32(~(~min(-2147483647i, 4737i)), -firstTrailingBit(u_input.b)));
}

