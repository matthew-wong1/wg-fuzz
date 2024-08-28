struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 14>;

var<private> global2: array<bool, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1307f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1804f + 598f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.a * 958f)))), 1f, -238f)));
    global0 = Struct_1(_wgslsmith_f_op_f32(max(-1533f, 1438f)), true, u_input.a.x);
    global2 = array<bool, 28>();
    let var_1 = Struct_1(1000f, true, ~4294967295u);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_f32(f32(-1f) * -495f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -349f, var_1.a, arg_1.a) * vec4<f32>(-204f, global0.a, 1860f, 838f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-979f, -1773f, var_0.x, -130f) + vec4<f32>(var_1.a, global0.a, arg_1.a, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_0.x, -718f, arg_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1286f, arg_1.a, -162f, 926f), vec4<f32>(var_1.a, var_1.a, global0.a, arg_1.a)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1670f, -1446f, var_0.x, -352f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1.a, arg_1.a, global0.a) * vec4<f32>(arg_1.a, var_1.a, -1249f, 3056f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-179f, 1000f, var_1.a, arg_1.a), vec4<f32>(var_0.x, var_0.x, var_0.x, -653f)))))), false));
    return u_input.b;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, global0.a, false)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-863f, -1000f, false)) + _wgslsmith_f_op_f32(min(-267f, global0.a))))), global2[_wgslsmith_index_u32(min(reverseBits(u_input.a.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.wz >> (u_input.a.zw % vec2<u32>(32u)), abs(u_input.a.yz)), reverseBits(func_3(1u, Struct_1(-185f, global0.b, 11442u))))), 28u)], ~_wgslsmith_sub_u32(0u >> (func_3(1648u, Struct_1(global0.a, global0.b, 119134u)) % 32u), _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(u_input.b, 71322u)) ^ ~4294967295u));
    let var_0 = ~vec2<i32>(~_wgslsmith_clamp_i32(~858i, 1i, 0i), 16241i);
    var var_1 = !vec2<bool>(true, any(!select(vec4<bool>(true, true, global0.b, false), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.c, 28u)], global0.b, global0.b), true)));
    global1 = array<vec3<i32>, 14>();
    var var_2 = Struct_1(-1216f, !global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(3357u, select(u_input.b, 3584u, true)), 28u)], u_input.d);
    return Struct_1(-1000f, var_1.x, global0.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    global2 = array<bool, 28>();
    var var_0 = Struct_1(func_2().a, global2[_wgslsmith_index_u32(0u, 28u)], 16273u);
    let var_1 = select(vec4<bool>(any(!select(vec4<bool>(false, true, global0.b, global2[_wgslsmith_index_u32(u_input.b, 28u)]), arg_0, arg_0)), func_3(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(61009u, 0u)), func_2()) >= ~arg_1.x, true, true), !(!arg_0), select(vec4<bool>(true, all(vec4<bool>(false, false, false, var_0.b)), all(arg_0.xy), true), !vec4<bool>(all(vec2<bool>(false, arg_2.b)), false, true, any(arg_0)), !any(arg_0)));
    var_0 = func_2();
    global0 = Struct_1(-344f, !(!(_wgslsmith_div_f32(-1662f, arg_2.a) <= 1000f)), u_input.d);
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_0, u_input.a, func_2(), -23133i, arg_3.e);
    let var_1 = Struct_2(2147483647i, ~vec4<u32>(arg_1.c, firstLeadingBit(~1u), 16051u, u_input.a.x), arg_3.c, select(~(-22630i), var_0.a, true), vec2<f32>(func_2().a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-187f, arg_3.e.x)), 2384f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), all(vec4<bool>(false, var_0.c.b, var_0.c.b, global0.b))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-641f, var_0.e.x, 0u != global0.c))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.e.x, -1046f) - -1000f)), -1294f);
    let var_3 = Struct_2(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-40824i, arg_0 << (4294967295u % 32u))), firstTrailingBit(u_input.c)), ~arg_3.b, func_2(), var_1.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a, 2585f)) + arg_3.e.x)), func_4(vec4<bool>(true, all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.c.c, 28u)], false, false)), !arg_1.b, all(vec2<bool>(var_0.c.b, var_0.c.b))), vec3<u32>(arg_1.c, u_input.a.x, u_input.b) << (var_1.b.wyy % vec3<u32>(32u)), func_4(!vec4<bool>(arg_3.c.b, arg_3.c.b, true, global0.b), var_0.b.xww, Struct_1(-1332f, true, arg_3.b.x))).a));
    var var_4 = global0.c;
    return ~22209u;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = func_5(24268i, func_4(select(vec4<bool>(1u >= arg_0.x, true, global0.b, true), !select(vec4<bool>(false, global0.b, false, true), vec4<bool>(global2[_wgslsmith_index_u32(35032u, 28u)], true, true, global0.b), vec4<bool>(global0.b, global0.b, global2[_wgslsmith_index_u32(24897u, 28u)], false)), any(vec2<bool>(global2[_wgslsmith_index_u32(35306u, 28u)], false))), vec3<u32>(_wgslsmith_div_u32(u_input.d, 1u), u_input.d, reverseBits(1u)) | vec3<u32>(22053u, global0.c, 97717u), func_2()), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c), Struct_2(-2147483647i, u_input.a, Struct_1(global0.a, any(!vec2<bool>(global0.b, true)), ~1u), ~(-2147483647i >> (0u % 32u)) | -_wgslsmith_mult_i32(u_input.c.x, -24228i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-915f, global0.a)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), global0.a)), !all(!vec3<bool>(global2[_wgslsmith_index_u32(global0.c, 28u)], false, true)), 1u);
    var var_2 = vec3<u32>(var_0, func_4(vec4<bool>(true, false, true, true), arg_0.xzy, func_2()).c, _wgslsmith_dot_vec3_u32(vec3<u32>(42890u, var_1.c, var_1.c), _wgslsmith_clamp_vec3_u32(~abs(arg_0.zxx), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, var_1.c, 4294967295u), ~u_input.a.zwy), select(~vec3<u32>(31296u, 4294967295u, u_input.b), vec3<u32>(var_0, u_input.d, u_input.d) >> (arg_0.xyy % vec3<u32>(32u)), !vec3<bool>(var_1.b, var_1.b, var_1.b)))));
    global2 = array<bool, 28>();
    var var_3 = ~(u_input.a.zw >> (vec2<u32>(12122u, 11609u >> ((u_input.b & var_1.c) % 32u)) % vec2<u32>(32u)));
    return Struct_2(-27910i, vec4<u32>(_wgslsmith_sub_u32(~global0.c, ~(var_0 & 0u)), min(17800u, firstTrailingBit(select(global0.c, u_input.a.x, global2[_wgslsmith_index_u32(arg_0.x, 28u)]))), 53778u, 58130u), func_2(), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))) + vec2<f32>(var_1.a, global0.a)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1211f, -1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, 1101f), vec2<f32>(var_1.a, var_1.a))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, 1382f), vec2<f32>(600f, 875f), vec2<bool>(global2[_wgslsmith_index_u32(var_1.c, 28u)], false))), vec2<f32>(var_1.a, -2306f)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_2 {
    global2 = array<bool, 28>();
    global0 = Struct_1(arg_0.e.x, !(_wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(sign(global0.a))) < 813f), ~(~(~u_input.a.x)));
    global0 = func_4(!select(vec4<bool>(arg_0.c.b || true, arg_0.c.b, true, all(vec4<bool>(arg_0.c.b, global2[_wgslsmith_index_u32(global0.c, 28u)], false, false))), vec4<bool>(true, select(false, global0.b, global2[_wgslsmith_index_u32(arg_1.x, 28u)]), true, global2[_wgslsmith_index_u32(global0.c, 28u)]), vec4<bool>(func_1(arg_0.b).c.b, all(vec2<bool>(false, true)), global0.b & global2[_wgslsmith_index_u32(23072u, 28u)], global0.b | false)), arg_1.yzx, Struct_1(158f, arg_0.c.b, _wgslsmith_dot_vec3_u32(min(~vec3<u32>(arg_0.b.x, u_input.a.x, 0u), arg_0.b.zzz), ~min(vec3<u32>(1u, 31339u, 1u), arg_0.b.zzz))));
    let var_0 = arg_0.c;
    let var_1 = vec2<bool>(true, ~arg_0.a != 52453i);
    return func_1(vec4<u32>(abs(_wgslsmith_sub_u32(70149u, _wgslsmith_clamp_u32(arg_1.x, 11607u, global0.c))), arg_0.b.x, func_5(~(-79351i), func_2(), u_input.c.x, arg_0) & arg_0.b.x, func_3(_wgslsmith_div_u32(countOneBits(4351u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, arg_1.x), u_input.a.zx)), var_0)));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = arg_3.yxw;
    var var_1 = Struct_2(2147483647i, func_6(func_6(Struct_2(-2147483647i, arg_1.b, Struct_1(arg_1.c.a, global2[_wgslsmith_index_u32(u_input.d, 28u)], 57007u), arg_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-174f, -1000f) * vec2<f32>(1015f, -370f))), vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, ~global0.c)), func_1(vec4<u32>(1u, u_input.d, 23363u, 3603u) ^ vec4<u32>(0u, global0.c, 1u, 0u)).b).b, func_6(Struct_2(~arg_1.d, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_1.c.c, arg_0.x, u_input.b), max(arg_1.b, vec4<u32>(0u, arg_1.b.x, 0u, arg_0.x))), func_1(arg_1.b).c, ~1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, arg_2), arg_1.e))), vec4<u32>(41457u, 32932u, ~(u_input.b | u_input.a.x), 1u)).c, 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.e))));
    global0 = func_2();
    let var_2 = vec2<u32>(var_1.c.c, var_1.c.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.a - arg_1.c.a));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-855f, -481f, 739f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -375f, 1295f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_7(u_input.a.zwz, func_6(func_1(vec4<u32>(0u, 18250u, _wgslsmith_sub_u32(4294967295u, 31931u), firstLeadingBit(global0.c))), ~firstTrailingBit(u_input.a) & u_input.a), -403f, !select(!vec4<bool>(true, global0.b, true, true), !select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(50508u, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.c, 28u)], false), vec4<bool>(global0.b, true, true, global0.b)), vec4<bool>(global0.b != true, false, true, !global0.b))));
    var var_1 = global1[_wgslsmith_index_u32(func_1(~u_input.a).b.x, 14u)];
    let var_2 = func_1(vec4<u32>(~1u, u_input.b, global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, global0.c), ~vec2<u32>(u_input.d, 26711u)))).b.x | (u_input.b >> (u_input.b % 32u));
    let var_3 = var_0;
    let var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(global0.c, firstTrailingBit(u_input.b)), 115164u, global0.c | ~(~var_2), var_2 << (~var_2 % 32u)));
}

