struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    global0 = array<Struct_3, 24>();
    var var_0 = -218f;
    var var_1 = reverseBits(109961u);
    global0 = array<Struct_3, 24>();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-reverseBits(u_input.b.xy), u_input.e.yy), ~u_input.a.x);
    return select(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), any(vec2<bool>(false, true))), any(vec2<bool>(true, true))), vec2<bool>(true, true), any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(false, any(vec2<bool>(false, false))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 24>();
    var var_0 = func_3();
    global0 = array<Struct_3, 24>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.b) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1163f * arg_2.a), arg_2.b.b))), _wgslsmith_div_f32(767f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.c.a.a))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = !vec4<bool>(true, false, all(func_3()), !all(vec4<bool>(true, true, false, true)) == (any(vec4<bool>(false, false, true, true)) & true));
    let var_1 = ~(~vec3<i32>(8398i, u_input.a.x, min(u_input.e.x, u_input.b.x) ^ arg_3.x));
    var var_2 = ~_wgslsmith_dot_vec2_u32(arg_1.zx, u_input.d);
    let var_3 = _wgslsmith_clamp_u32(arg_1.x, _wgslsmith_div_u32(abs(abs(u_input.d.x)), abs(89620u)), _wgslsmith_dot_vec2_u32((~vec2<u32>(u_input.d.x, arg_1.x) & u_input.d) << (firstLeadingBit(vec2<u32>(u_input.d.x, 4294967295u)) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(select(u_input.d.x, 10641u, true), ~arg_1.x))));
    var var_4 = func_2(var_1.x, 1i, Struct_3(-844f, Struct_1(-111f, _wgslsmith_f_op_f32(arg_2 - 2058f)), arg_0)).a;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2)), -276f)) + arg_0.a.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_f32(-arg_0.a.a), var_4.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2476f, arg_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, arg_2, var_0.x)) + -1847f), _wgslsmith_f_op_f32(var_4.a * -882f), 510f)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 795f, 549f, -860f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2068f, -225f, 400f, -224f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_2(var_0, 12047i, global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec4<u32>(13027u, u_input.d.x, 1u, 61393u), _wgslsmith_f_op_f32(568f * 2476f), _wgslsmith_div_vec2_i32(u_input.e.yz, vec2<i32>(0i, 0i)))))));
    var var_2 = func_2(min(~34958i, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, 10454i, -var_0, var_0), vec4<i32>(firstTrailingBit(var_0), _wgslsmith_sub_i32(0i, var_0), u_input.b.x, abs(u_input.b.x)))), max(-max(1i, 83277i), _wgslsmith_add_i32(countOneBits(-10089i), ~_wgslsmith_add_i32(-51675i, 34874i))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, u_input.d.x)), ~u_input.d))), 24u)]);
    let var_3 = vec2<f32>(110f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_div_f32(var_2.a.a, _wgslsmith_f_op_f32(-var_2.a.b)))));
    global0 = array<Struct_3, 24>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_3.x)), var_1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-940f, var_1.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(var_0, 0i, Struct_3(377f, Struct_1(445f, 133f), Struct_2(Struct_1(-1750f, var_3.x)))).a.a, _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(var_2.a.b, var_2.a.b)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), 446f, vec2<i32>(u_input.c, var_0))).x))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = func_2(abs(~(_wgslsmith_div_i32(30111i, -2147483647i) & _wgslsmith_add_i32(arg_2.x, -29285i))), -firstTrailingBit(~arg_2.x), Struct_3(arg_0.x, func_2(countOneBits(firstLeadingBit(arg_2.x)), -54265i ^ max(u_input.e.x, u_input.c), Struct_3(arg_0.x, func_2(u_input.b.x, 64849i, Struct_3(arg_0.x, Struct_1(arg_0.x, -830f), Struct_2(Struct_1(1089f, arg_0.x)))).a, Struct_2(Struct_1(arg_0.x, arg_0.x)))).a, func_2(-16270i, -_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.a.x, arg_2.x, u_input.a.x, arg_2.x)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -106f), Struct_1(-748f, 340f), func_2(31327i, arg_2.x, Struct_3(arg_0.x, Struct_1(arg_0.x, 743f), Struct_2(Struct_1(arg_0.x, 852f))))))));
    let var_1 = true;
    let var_2 = -vec3<i32>(_wgslsmith_sub_i32(select(u_input.e.x, -19874i, 29999u != arg_1.x), 0i), -firstLeadingBit(firstTrailingBit(arg_2.x)), arg_2.x);
    let var_3 = func_2(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(0i, -4899i), -1i)), reverseBits(var_2.x), global0[_wgslsmith_index_u32(0u, 24u)]).a;
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + var_0.a.b), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(arg_0.x, 1831f)), arg_1, -1681f, -u_input.e.yz)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(507f * -1410f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(377f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f - arg_0.x) + _wgslsmith_f_op_f32(-var_0.a.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(~abs(0i), 2147483647i);
    var var_1 = Struct_1(642f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(525f, -187f)) + _wgslsmith_f_op_f32(-1000f + -330f)) + _wgslsmith_f_op_f32(1513f * _wgslsmith_f_op_f32(max(655f, -677f))))));
    var_1 = func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -416f), var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b, -1401f) * vec2<f32>(1000f, var_1.a)), vec2<f32>(-241f, 824f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-646f, var_1.b))) + _wgslsmith_f_op_vec2_f32(func_1(false)))))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 47031u), vec4<u32>(9774u, u_input.d.x, 32374u, u_input.d.x)), ~vec4<u32>(9226u, u_input.d.x, 60443u, 4294967295u)), select(select(vec4<u32>(u_input.d.x, u_input.d.x, 25537u, 87693u), vec4<u32>(1u, 0u, 0u, 4405u), true), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<bool>(true, false, true, true))), vec3<i32>(6192i, max(i32(-1i) * -53427i, ~(-4058i)), 17239i), 4294967295u < _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d.x, abs(0u), ~u_input.d.x), select(vec3<u32>(4294967295u, 78132u, u_input.d.x) >> (vec3<u32>(u_input.d.x, 1u, 48320u) % vec3<u32>(32u)), vec3<u32>(42201u, u_input.d.x, u_input.d.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))));
    global0 = array<Struct_3, 24>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(20713i, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 24u)]).a.b, _wgslsmith_f_op_f32(-var_1.a))))));
    var var_3 = Struct_3(var_2.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_2(Struct_1(var_1.b, 1087f)), ~vec4<u32>(u_input.d.x, 15563u, 4294967295u, 236u), _wgslsmith_f_op_f32(749f - -1043f), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.a.x, var_0.x)))).x - _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(148f * var_1.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-func_2(var_0.x, 8506i, global0[_wgslsmith_index_u32(u_input.d.x, 24u)]).a.a)))), Struct_2(Struct_1(var_1.b, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(round(395f)))))));
    var var_4 = Struct_1(func_5(vec2<f32>(-723f, var_1.a), reverseBits(select(vec4<u32>(35788u, 4294967295u, 14833u, u_input.d.x), vec4<u32>(18851u, u_input.d.x, 0u, u_input.d.x), true)) << (~firstTrailingBit(vec4<u32>(u_input.d.x, 56121u, 1u, 1u)) % vec4<u32>(32u)), u_input.b.zzw, any(vec3<bool>(false, false, false)) || true).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~_wgslsmith_mult_u32(u_input.d.x, u_input.d.x)), u_input.d.x), vec4<u32>(_wgslsmith_mult_u32(135742u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 92738u, 11688u), vec4<u32>(u_input.d.x, u_input.d.x, 1u, 2409u))) & ~select(54259u, 4294967295u, true), u_input.d.x, min(61974u, u_input.d.x), 34032u), _wgslsmith_f_op_vec4_f32(func_4(var_3.c, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, firstLeadingBit(4294967295u), _wgslsmith_sub_u32(u_input.d.x, 52153u), abs(u_input.d.x)), min(vec4<u32>(48057u, u_input.d.x, u_input.d.x, 47112u) >> (vec4<u32>(668u, 44608u, u_input.d.x, 0u) % vec4<u32>(32u)), abs(vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.d.x)))), var_1.b, u_input.b.zx >> (~countOneBits(u_input.d) % vec2<u32>(32u)))).wz, 1u);
}

